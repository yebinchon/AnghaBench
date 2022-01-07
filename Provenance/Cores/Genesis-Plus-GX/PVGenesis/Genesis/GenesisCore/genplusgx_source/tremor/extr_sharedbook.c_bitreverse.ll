; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_sharedbook.c_bitreverse.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_sharedbook.c_bitreverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bitreverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitreverse(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = ashr i32 %3, 16
  %5 = sext i32 %4 to i64
  %6 = and i64 %5, 65535
  %7 = load i32, i32* %2, align 4
  %8 = shl i32 %7, 16
  %9 = sext i32 %8 to i64
  %10 = and i64 %9, 4294901760
  %11 = or i64 %6, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = ashr i32 %13, 8
  %15 = sext i32 %14 to i64
  %16 = and i64 %15, 16711935
  %17 = load i32, i32* %2, align 4
  %18 = shl i32 %17, 8
  %19 = sext i32 %18 to i64
  %20 = and i64 %19, 4278255360
  %21 = or i64 %16, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = ashr i32 %23, 4
  %25 = sext i32 %24 to i64
  %26 = and i64 %25, 252645135
  %27 = load i32, i32* %2, align 4
  %28 = shl i32 %27, 4
  %29 = sext i32 %28 to i64
  %30 = and i64 %29, 4042322160
  %31 = or i64 %26, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = ashr i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = and i64 %35, 858993459
  %37 = load i32, i32* %2, align 4
  %38 = shl i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = and i64 %39, 3435973836
  %41 = or i64 %36, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = ashr i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = and i64 %45, 1431655765
  %47 = load i32, i32* %2, align 4
  %48 = shl i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = and i64 %49, 2863311530
  %51 = or i64 %46, %50
  %52 = trunc i64 %51 to i32
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
