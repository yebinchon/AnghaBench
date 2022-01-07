; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_segment.c_open_null_ctx.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_segment.c_open_null_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**)* @open_null_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_null_ctx(i32** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  store i32 32768, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32* @av_malloc(i32 %6)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = call i32 @AVERROR(i32 %11)
  store i32 %12, i32* %2, align 4
  br label %28

13:                                               ; preds = %1
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %17 = call i32* @avio_alloc_context(i32* %14, i32 %15, i32 %16, i32* null, i32* null, i32* null, i32* null)
  %18 = load i32**, i32*** %3, align 8
  store i32* %17, i32** %18, align 8
  %19 = load i32**, i32*** %3, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %13
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @av_free(i32* %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = call i32 @AVERROR(i32 %25)
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %22, %10
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @avio_alloc_context(i32*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
