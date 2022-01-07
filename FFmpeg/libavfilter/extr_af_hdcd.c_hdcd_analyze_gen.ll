; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_hdcd.c_hdcd_analyze_gen.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_hdcd.c_hdcd_analyze_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hdcd_analyze_gen.r = internal constant i32 18, align 4
@hdcd_analyze_gen.m = internal constant i32 1024, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @hdcd_analyze_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdcd_analyze_gen(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = mul i32 %9, 18
  %11 = mul i32 %10, 1024
  %12 = load i32, i32* %6, align 4
  %13 = udiv i32 %11, %12
  %14 = add i32 1024, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = mul i32 %15, %16
  %18 = udiv i32 %17, 1024
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
