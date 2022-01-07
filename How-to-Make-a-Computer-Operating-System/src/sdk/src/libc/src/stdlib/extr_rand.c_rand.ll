; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdlib/extr_rand.c_rand.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdlib/extr_rand.c_rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_seed2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rand() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @_seed2, align 4
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
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %1, align 4
  %12 = mul i32 %11, 1103515245
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = add i32 %13, 12345
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %2, align 4
  %16 = shl i32 %15, 10
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %1, align 4
  %18 = udiv i32 %17, 65536
  %19 = urem i32 %18, 1024
  %20 = load i32, i32* %2, align 4
  %21 = xor i32 %20, %19
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %1, align 4
  %23 = mul i32 %22, 1103515245
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = add i32 %24, 12345
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %2, align 4
  %27 = shl i32 %26, 10
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %1, align 4
  %29 = udiv i32 %28, 65536
  %30 = urem i32 %29, 1024
  %31 = load i32, i32* %2, align 4
  %32 = xor i32 %31, %30
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %1, align 4
  store i32 %33, i32* @_seed2, align 4
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
