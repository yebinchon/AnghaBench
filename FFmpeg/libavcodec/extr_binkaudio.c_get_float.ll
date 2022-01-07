; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_binkaudio.c_get_float.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_binkaudio.c_get_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32*)* @get_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @get_float(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @get_bits(i32* %5, i32 5)
  store i32 %6, i32* %3, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @get_bits_long(i32* %7, i32 23)
  %9 = load i32, i32* %3, align 4
  %10 = sub nsw i32 %9, 23
  %11 = call float @ldexpf(i32 %8, i32 %10)
  store float %11, float* %4, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i64 @get_bits1(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load float, float* %4, align 4
  %17 = fneg float %16
  store float %17, float* %4, align 4
  br label %18

18:                                               ; preds = %15, %1
  %19 = load float, float* %4, align 4
  ret float %19
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local float @ldexpf(i32, i32) #1

declare dso_local i32 @get_bits_long(i32*, i32) #1

declare dso_local i64 @get_bits1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
