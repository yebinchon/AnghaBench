; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_cache.c_compute_bits.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_cache.c_compute_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bits_in_16bits = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @compute_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @compute_bits(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64*, i64** @bits_in_16bits, align 8
  %4 = load i32, i32* %2, align 4
  %5 = and i32 %4, 65535
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i64, i64* %3, i64 %6
  %8 = load i64, i64* %7, align 8
  %9 = load i64*, i64** @bits_in_16bits, align 8
  %10 = load i32, i32* %2, align 4
  %11 = ashr i32 %10, 16
  %12 = and i32 %11, 65535
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %9, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %8, %15
  %17 = load i64*, i64** @bits_in_16bits, align 8
  %18 = load i32, i32* %2, align 4
  %19 = ashr i32 %18, 32
  %20 = and i32 %19, 65535
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %17, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %16, %23
  %25 = load i64*, i64** @bits_in_16bits, align 8
  %26 = load i32, i32* %2, align 4
  %27 = ashr i32 %26, 48
  %28 = and i32 %27, 65535
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %25, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %24, %31
  ret i64 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
