; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_buffer.c_av_buffer_alloc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_buffer.c_av_buffer_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@av_buffer_default_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @av_buffer_alloc(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32* @av_malloc(i32 %6)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %22

11:                                               ; preds = %1
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @av_buffer_default_free, align 4
  %15 = call i32* @av_buffer_create(i32* %12, i32 %13, i32 %14, i32* null, i32 0)
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  %19 = call i32 @av_freep(i32** %5)
  br label %20

20:                                               ; preds = %18, %11
  %21 = load i32*, i32** %4, align 8
  store i32* %21, i32** %2, align 8
  br label %22

22:                                               ; preds = %20, %10
  %23 = load i32*, i32** %2, align 8
  ret i32* %23
}

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32* @av_buffer_create(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
