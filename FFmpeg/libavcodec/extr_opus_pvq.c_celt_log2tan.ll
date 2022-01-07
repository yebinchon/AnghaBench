; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_pvq.c_celt_log2tan.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_pvq.c_celt_log2tan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @celt_log2tan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @celt_log2tan(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @opus_ilog(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @opus_ilog(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sub nsw i32 15, %11
  %13 = load i32, i32* %4, align 4
  %14 = shl i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 15, %15
  %17 = load i32, i32* %3, align 4
  %18 = shl i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %6, align 4
  %20 = shl i32 %19, 11
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 %21, 11
  %23 = sub nsw i32 %20, %22
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @ROUND_MUL16(i32 %25, i32 -2597)
  %27 = add nsw i32 %26, 7932
  %28 = call i32 @ROUND_MUL16(i32 %24, i32 %27)
  %29 = add nsw i32 %23, %28
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @ROUND_MUL16(i32 %31, i32 -2597)
  %33 = add nsw i32 %32, 7932
  %34 = call i32 @ROUND_MUL16(i32 %30, i32 %33)
  %35 = sub nsw i32 %29, %34
  ret i32 %35
}

declare dso_local i32 @opus_ilog(i32) #1

declare dso_local i32 @ROUND_MUL16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
