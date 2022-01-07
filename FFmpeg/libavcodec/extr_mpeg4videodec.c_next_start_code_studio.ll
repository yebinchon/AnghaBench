; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videodec.c_next_start_code_studio.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videodec.c_next_start_code_studio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @next_start_code_studio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @next_start_code_studio(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @align_get_bits(i32* %3)
  br label %5

5:                                                ; preds = %15, %1
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @get_bits_left(i32* %6)
  %8 = icmp sge i32 %7, 24
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @show_bits_long(i32* %10, i32 24)
  %12 = icmp ne i32 %11, 1
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i1 [ false, %5 ], [ %12, %9 ]
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @get_bits(i32* %16, i32 8)
  br label %5

18:                                               ; preds = %13
  ret void
}

declare dso_local i32 @align_get_bits(i32*) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @show_bits_long(i32*, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
