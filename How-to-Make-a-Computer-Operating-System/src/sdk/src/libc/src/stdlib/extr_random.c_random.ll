; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdlib/extr_random.c_random.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdlib/extr_random.c_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_seed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @random() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* @_seed, align 4
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = mul i32 %4, 1103515245
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = add i32 %6, 12345
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = udiv i32 %8, 65536
  %10 = urem i32 %9, 2048
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %2, align 8
  %12 = load i32, i32* %1, align 4
  %13 = mul i32 %12, 1103515245
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = add i32 %14, 12345
  store i32 %15, i32* %1, align 4
  %16 = load i64, i64* %2, align 8
  %17 = shl i64 %16, 10
  store i64 %17, i64* %2, align 8
  %18 = load i32, i32* %1, align 4
  %19 = udiv i32 %18, 65536
  %20 = urem i32 %19, 1024
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %2, align 8
  %23 = xor i64 %22, %21
  store i64 %23, i64* %2, align 8
  %24 = load i32, i32* %1, align 4
  %25 = mul i32 %24, 1103515245
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %1, align 4
  %27 = add i32 %26, 12345
  store i32 %27, i32* %1, align 4
  %28 = load i64, i64* %2, align 8
  %29 = shl i64 %28, 10
  store i64 %29, i64* %2, align 8
  %30 = load i32, i32* %1, align 4
  %31 = udiv i32 %30, 65536
  %32 = urem i32 %31, 1024
  %33 = zext i32 %32 to i64
  %34 = load i64, i64* %2, align 8
  %35 = xor i64 %34, %33
  store i64 %35, i64* %2, align 8
  %36 = load i32, i32* %1, align 4
  store i32 %36, i32* @_seed, align 4
  %37 = load i64, i64* %2, align 8
  ret i64 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
