; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_io_ctrl.c_io_reset.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_io_ctrl.c_io_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@system_hw = common dso_local global i32 0, align 4
@SYSTEM_PBC = common dso_local global i32 0, align 4
@SYSTEM_MD = common dso_local global i32 0, align 4
@region_code = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@io_reg = common dso_local global i32* null, align 8
@SYSTEM_MCD = common dso_local global i32 0, align 4
@IO_RESET_HI = common dso_local global i32 0, align 4
@IO_CONT1_HI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @io_reset() #0 {
  %1 = load i32, i32* @system_hw, align 4
  %2 = load i32, i32* @SYSTEM_PBC, align 4
  %3 = and i32 %1, %2
  %4 = load i32, i32* @SYSTEM_MD, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %52

6:                                                ; preds = %0
  %7 = load i32, i32* @region_code, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %9 = and i32 %8, 1
  %10 = or i32 %7, %9
  %11 = load i32*, i32** @io_reg, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %10, i32* %12, align 4
  %13 = load i32*, i32** @io_reg, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 0, i32* %14, align 4
  %15 = load i32*, i32** @io_reg, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  store i32 0, i32* %16, align 4
  %17 = load i32*, i32** @io_reg, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  store i32 0, i32* %18, align 4
  %19 = load i32*, i32** @io_reg, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 4
  store i32 0, i32* %20, align 4
  %21 = load i32*, i32** @io_reg, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 5
  store i32 0, i32* %22, align 4
  %23 = load i32*, i32** @io_reg, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 6
  store i32 0, i32* %24, align 4
  %25 = load i32*, i32** @io_reg, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 7
  store i32 255, i32* %26, align 4
  %27 = load i32*, i32** @io_reg, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 8
  store i32 0, i32* %28, align 4
  %29 = load i32*, i32** @io_reg, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 9
  store i32 0, i32* %30, align 4
  %31 = load i32*, i32** @io_reg, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 10
  store i32 255, i32* %32, align 4
  %33 = load i32*, i32** @io_reg, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 11
  store i32 0, i32* %34, align 4
  %35 = load i32*, i32** @io_reg, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 12
  store i32 0, i32* %36, align 4
  %37 = load i32*, i32** @io_reg, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 13
  store i32 251, i32* %38, align 4
  %39 = load i32*, i32** @io_reg, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 14
  store i32 0, i32* %40, align 4
  %41 = load i32*, i32** @io_reg, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 15
  store i32 0, i32* %42, align 4
  %43 = load i32, i32* @system_hw, align 4
  %44 = load i32, i32* @SYSTEM_MCD, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %6
  %47 = load i32*, i32** @io_reg, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, 32
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %46, %6
  br label %87

52:                                               ; preds = %0
  %53 = load i32, i32* @region_code, align 4
  %54 = ashr i32 %53, 1
  %55 = or i32 128, %54
  %56 = load i32*, i32** @io_reg, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %55, i32* %57, align 4
  %58 = load i32*, i32** @io_reg, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 0, i32* %59, align 4
  %60 = load i32*, i32** @io_reg, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  store i32 255, i32* %61, align 4
  %62 = load i32*, i32** @io_reg, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  store i32 0, i32* %63, align 4
  %64 = load i32*, i32** @io_reg, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  store i32 255, i32* %65, align 4
  %66 = load i32*, i32** @io_reg, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 5
  store i32 0, i32* %67, align 4
  %68 = load i32*, i32** @io_reg, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 6
  store i32 255, i32* %69, align 4
  %70 = load i32, i32* @IO_RESET_HI, align 4
  %71 = load i32*, i32** @io_reg, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 13
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @system_hw, align 4
  %74 = load i32, i32* @SYSTEM_PBC, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %52
  %77 = load i32, i32* @IO_CONT1_HI, align 4
  %78 = load i32*, i32** @io_reg, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 13
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %52
  %83 = load i32*, i32** @io_reg, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 14
  store i32 0, i32* %84, align 4
  %85 = load i32*, i32** @io_reg, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 15
  store i32 255, i32* %86, align 4
  br label %87

87:                                               ; preds = %82, %51
  %88 = call i32 (...) @input_reset()
  ret void
}

declare dso_local i32 @input_reset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
