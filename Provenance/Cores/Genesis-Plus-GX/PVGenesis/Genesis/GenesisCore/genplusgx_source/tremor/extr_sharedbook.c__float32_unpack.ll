; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_sharedbook.c__float32_unpack.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_sharedbook.c__float32_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VQ_FMAN = common dso_local global i64 0, align 8
@VQ_FEXP_BIAS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32*)* @_float32_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_float32_unpack(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = and i64 %8, 2097151
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = and i64 %10, 2147483648
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load i64, i64* %3, align 8
  %14 = and i64 %13, 2145386496
  %15 = load i64, i64* @VQ_FMAN, align 8
  %16 = ashr i64 %14, %15
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* @VQ_FMAN, align 8
  %18 = sub nsw i64 %17, 1
  %19 = load i64, i64* @VQ_FEXP_BIAS, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i64, i64* %7, align 8
  %22 = sub nsw i64 %21, %20
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %31, %25
  %27 = load i64, i64* %5, align 8
  %28 = and i64 %27, 1073741824
  %29 = icmp ne i64 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i64, i64* %5, align 8
  %33 = shl i64 %32, 1
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = sub nsw i64 %34, 1
  store i64 %35, i64* %7, align 8
  br label %26

36:                                               ; preds = %26
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i64, i64* %5, align 8
  %41 = sub nsw i64 0, %40
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %39, %36
  br label %44

43:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i64 -9999, i64* %7, align 8
  br label %44

44:                                               ; preds = %43, %42
  %45 = load i64, i64* %7, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i32*, i32** %4, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i64, i64* %5, align 8
  ret i64 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
