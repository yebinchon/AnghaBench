; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_io_ctrl.c_io_z80_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_io_ctrl.c_io_z80_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }

@port = common dso_local global %struct.TYPE_2__* null, align 8
@io_reg = common dso_local global i32* null, align 8
@IO_RESET_HI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @io_z80_read(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @port, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32 (...)*, i32 (...)** %7, align 8
  %9 = call i32 (...) %8()
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @port, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (...)*, i32 (...)** %12, align 8
  %14 = call i32 (...) %13()
  %15 = shl i32 %14, 8
  %16 = or i32 %9, %15
  store i32 %16, i32* %3, align 4
  %17 = load i32*, i32** @io_reg, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 15
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %77

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = lshr i32 %23, 10
  %25 = and i32 %24, 15
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 64
  %28 = or i32 %25, %27
  %29 = load i32, i32* %3, align 4
  %30 = lshr i32 %29, 7
  %31 = and i32 %30, 128
  %32 = or i32 %28, %31
  %33 = load i32*, i32** @io_reg, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 13
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %32, %35
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* @IO_RESET_HI, align 4
  %38 = load i32*, i32** @io_reg, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 13
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %22
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %46, -129
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, 128
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %45, %22
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, 2
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %3, align 4
  %58 = and i32 %57, -65
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, 32
  %61 = shl i32 %60, 1
  %62 = load i32, i32* %3, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %56, %52
  %65 = load i32, i32* %4, align 4
  %66 = and i32 %65, 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %3, align 4
  %70 = and i32 %69, -9
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %4, align 4
  %72 = and i32 %71, 64
  %73 = lshr i32 %72, 3
  %74 = load i32, i32* %3, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %68, %64
  br label %96

77:                                               ; preds = %1
  %78 = load i32, i32* %3, align 4
  %79 = and i32 %78, 63
  %80 = load i32, i32* %3, align 4
  %81 = lshr i32 %80, 2
  %82 = and i32 %81, 192
  %83 = or i32 %79, %82
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %4, align 4
  %85 = and i32 %84, 1
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %77
  %88 = load i32, i32* %3, align 4
  %89 = and i32 %88, -33
  store i32 %89, i32* %3, align 4
  %90 = load i32, i32* %4, align 4
  %91 = and i32 %90, 16
  %92 = shl i32 %91, 1
  %93 = load i32, i32* %3, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %87, %77
  br label %96

96:                                               ; preds = %95, %76
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
