; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_io_ctrl.c_io_gg_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_io_ctrl.c_io_gg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@io_reg = common dso_local global i32* null, align 8
@input = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@INPUT_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @io_gg_read(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %47 [
    i32 0, label %5
    i32 1, label %16
    i32 2, label %31
    i32 3, label %35
    i32 4, label %39
    i32 5, label %43
  ]

5:                                                ; preds = %1
  %6 = load i32*, i32** @io_reg, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @input, i32 0, i32 0), align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @INPUT_START, align 4
  %13 = and i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = and i32 %8, %14
  store i32 %15, i32* %2, align 4
  br label %48

16:                                               ; preds = %1
  %17 = load i32*, i32** @io_reg, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** @io_reg, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 127
  %24 = xor i32 %23, -1
  %25 = and i32 %19, %24
  %26 = load i32*, i32** @io_reg, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 127
  %30 = or i32 %25, %29
  store i32 %30, i32* %2, align 4
  br label %48

31:                                               ; preds = %1
  %32 = load i32*, i32** @io_reg, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %2, align 4
  br label %48

35:                                               ; preds = %1
  %36 = load i32*, i32** @io_reg, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %2, align 4
  br label %48

39:                                               ; preds = %1
  %40 = load i32*, i32** @io_reg, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %2, align 4
  br label %48

43:                                               ; preds = %1
  %44 = load i32*, i32** @io_reg, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 5
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %2, align 4
  br label %48

47:                                               ; preds = %1
  store i32 255, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %43, %39, %35, %31, %16, %5
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
