; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_mem68k.c_pico_read_byte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_mem68k.c_pico_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32** }

@region_code = common dso_local global i32 0, align 4
@input = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@pico_current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pico_read_byte(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 255
  switch i32 %5, label %48 [
    i32 1, label %6
    i32 3, label %9
    i32 5, label %14
    i32 7, label %21
    i32 9, label %28
    i32 11, label %35
    i32 13, label %42
    i32 16, label %46
    i32 17, label %46
    i32 18, label %47
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @region_code, align 4
  %8 = ashr i32 %7, 1
  store i32 %8, i32* %2, align 4
  br label %51

9:                                                ; preds = %1
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @input, i32 0, i32 0), align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = xor i32 %12, -1
  store i32 %13, i32* %2, align 4
  br label %51

14:                                               ; preds = %1
  %15 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @input, i32 0, i32 1), align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 8
  store i32 %20, i32* %2, align 4
  br label %51

21:                                               ; preds = %1
  %22 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @input, i32 0, i32 1), align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 255
  store i32 %27, i32* %2, align 4
  br label %51

28:                                               ; preds = %1
  %29 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @input, i32 0, i32 1), align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 8
  store i32 %34, i32* %2, align 4
  br label %51

35:                                               ; preds = %1
  %36 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @input, i32 0, i32 1), align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 255
  store i32 %41, i32* %2, align 4
  br label %51

42:                                               ; preds = %1
  %43 = load i32, i32* @pico_current, align 4
  %44 = shl i32 1, %43
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %51

46:                                               ; preds = %1, %1
  store i32 255, i32* %2, align 4
  br label %51

47:                                               ; preds = %1
  store i32 128, i32* %2, align 4
  br label %51

48:                                               ; preds = %1
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @m68k_read_bus_8(i32 %49)
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %48, %47, %46, %42, %35, %28, %21, %14, %9, %6
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @m68k_read_bus_8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
