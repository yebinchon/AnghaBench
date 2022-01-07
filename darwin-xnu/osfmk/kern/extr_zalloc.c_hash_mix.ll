; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_hash_mix.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_hash_mix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hash_mix(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = shl i64 %3, 32
  %5 = xor i64 %4, -1
  %6 = load i64, i64* %2, align 8
  %7 = add i64 %6, %5
  store i64 %7, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = lshr i64 %8, 22
  %10 = load i64, i64* %2, align 8
  %11 = xor i64 %10, %9
  store i64 %11, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = shl i64 %12, 13
  %14 = xor i64 %13, -1
  %15 = load i64, i64* %2, align 8
  %16 = add i64 %15, %14
  store i64 %16, i64* %2, align 8
  %17 = load i64, i64* %2, align 8
  %18 = lshr i64 %17, 8
  %19 = load i64, i64* %2, align 8
  %20 = xor i64 %19, %18
  store i64 %20, i64* %2, align 8
  %21 = load i64, i64* %2, align 8
  %22 = shl i64 %21, 3
  %23 = load i64, i64* %2, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %2, align 8
  %25 = load i64, i64* %2, align 8
  %26 = lshr i64 %25, 15
  %27 = load i64, i64* %2, align 8
  %28 = xor i64 %27, %26
  store i64 %28, i64* %2, align 8
  %29 = load i64, i64* %2, align 8
  %30 = shl i64 %29, 27
  %31 = xor i64 %30, -1
  %32 = load i64, i64* %2, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %2, align 8
  %34 = load i64, i64* %2, align 8
  %35 = lshr i64 %34, 31
  %36 = load i64, i64* %2, align 8
  %37 = xor i64 %36, %35
  store i64 %37, i64* %2, align 8
  %38 = load i64, i64* %2, align 8
  ret i64 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
