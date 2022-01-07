; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_mmap_add_bits_down.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_mmap_add_bits_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @mmap_add_bits_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmap_add_bits_down(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = lshr i64 %3, 1
  %5 = load i64, i64* %2, align 8
  %6 = or i64 %5, %4
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = lshr i64 %7, 2
  %9 = load i64, i64* %2, align 8
  %10 = or i64 %9, %8
  store i64 %10, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = lshr i64 %11, 4
  %13 = load i64, i64* %2, align 8
  %14 = or i64 %13, %12
  store i64 %14, i64* %2, align 8
  %15 = load i64, i64* %2, align 8
  %16 = lshr i64 %15, 8
  %17 = load i64, i64* %2, align 8
  %18 = or i64 %17, %16
  store i64 %18, i64* %2, align 8
  %19 = load i64, i64* %2, align 8
  %20 = lshr i64 %19, 16
  %21 = load i64, i64* %2, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %2, align 8
  %23 = load i64, i64* %2, align 8
  %24 = lshr i64 %23, 16
  %25 = lshr i64 %24, 16
  %26 = load i64, i64* %2, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %2, align 8
  %28 = load i64, i64* %2, align 8
  ret i64 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
