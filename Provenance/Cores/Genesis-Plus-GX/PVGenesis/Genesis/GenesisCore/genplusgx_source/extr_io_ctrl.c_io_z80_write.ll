; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_io_ctrl.c_io_z80_write.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_io_ctrl.c_io_z80_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32)* }

@region_code = common dso_local global i32 0, align 4
@REGION_USA = common dso_local global i32 0, align 4
@port = common dso_local global %struct.TYPE_2__* null, align 8
@io_reg = common dso_local global i32* null, align 8
@hctab = common dso_local global i32* null, align 8
@MCYCLES_PER_LINE = common dso_local global i32 0, align 4
@hvc_latch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @io_z80_write(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %91

9:                                                ; preds = %3
  %10 = load i32, i32* @region_code, align 4
  %11 = load i32, i32* @REGION_USA, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %75

14:                                               ; preds = %9
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @port, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i32, i32)*, i32 (i32, i32)** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 %19, 1
  %21 = and i32 %20, 96
  %22 = load i32*, i32** @io_reg, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 15
  %24 = load i32, i32* %23, align 4
  %25 = xor i32 %24, -1
  %26 = shl i32 %25, 5
  %27 = and i32 %26, 96
  %28 = call i32 %18(i32 %21, i32 %27)
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @port, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (i32, i32)*, i32 (i32, i32)** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = lshr i32 %33, 1
  %35 = and i32 %34, 96
  %36 = load i32*, i32** @io_reg, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 15
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %38, -1
  %40 = shl i32 %39, 3
  %41 = and i32 %40, 96
  %42 = call i32 %32(i32 %35, i32 %41)
  %43 = load i32*, i32** @io_reg, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 15
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 128
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %14
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, 128
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %48, %14
  %53 = load i32*, i32** @io_reg, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 15
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, 32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %58, %48
  %63 = load i32*, i32** @hctab, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @MCYCLES_PER_LINE, align 4
  %66 = urem i32 %64, %65
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, 65536
  store i32 %70, i32* @hvc_latch, align 4
  br label %71

71:                                               ; preds = %62, %58, %52
  %72 = load i32, i32* %5, align 4
  %73 = load i32*, i32** @io_reg, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 15
  store i32 %72, i32* %74, align 4
  br label %90

75:                                               ; preds = %9
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, 5
  %78 = and i32 %77, 95
  %79 = load i32*, i32** @io_reg, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 15
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %5, align 4
  %82 = and i32 %81, 1
  %83 = shl i32 %82, 4
  %84 = load i32, i32* %5, align 4
  %85 = and i32 %84, 4
  %86 = shl i32 %85, 3
  %87 = or i32 %83, %86
  %88 = load i32*, i32** @io_reg, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 13
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %75, %71
  br label %98

91:                                               ; preds = %3
  %92 = load i32, i32* %5, align 4
  %93 = load i32*, i32** @io_reg, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 14
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %5, align 4
  %96 = xor i32 %95, -1
  %97 = call i32 @sms_cart_switch(i32 %96)
  br label %98

98:                                               ; preds = %91, %90
  ret void
}

declare dso_local i32 @sms_cart_switch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
