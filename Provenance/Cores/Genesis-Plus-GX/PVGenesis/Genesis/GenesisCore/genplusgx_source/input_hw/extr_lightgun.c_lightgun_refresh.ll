; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/input_hw/extr_lightgun.c_lightgun_refresh.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/input_hw/extr_lightgun.c_lightgun_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32**, i32, i64*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@lightgun = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@input = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@v_counter = common dso_local global i32 0, align 4
@bitmap = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@io_reg = common dso_local global i32* null, align 8
@SYSTEM_MENACER = common dso_local global i64 0, align 8
@system_hw = common dso_local global i64 0, align 8
@SYSTEM_MCD = common dso_local global i64 0, align 8
@reg = common dso_local global i32* null, align 8
@hvc_latch = common dso_local global i32 0, align 4
@hc_320 = common dso_local global i32* null, align 8
@hc_256 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lightgun_refresh(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lightgun, i32 0, i32 0), align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %118

8:                                                ; preds = %1
  %9 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @input, i32 0, i32 0), align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32*, i32** %9, i64 %11
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @input, i32 0, i32 1), align 8
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @v_counter, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %111

21:                                               ; preds = %8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bitmap, i32 0, i32 0, i32 0), align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %111

25:                                               ; preds = %21
  %26 = load i32*, i32** @io_reg, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 5
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 128
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %110

31:                                               ; preds = %25
  %32 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @input, i32 0, i32 0), align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %4, align 4
  %39 = load i64*, i64** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @input, i32 0, i32 2), align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SYSTEM_MENACER, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %31
  %45 = load i64, i64* @system_hw, align 8
  %46 = load i64, i64* @SYSTEM_MCD, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  %50 = mul nsw i32 %49, 304
  %51 = sdiv i32 %50, 320
  store i32 %51, i32* %4, align 4
  br label %56

52:                                               ; preds = %44
  %53 = load i32, i32* %4, align 4
  %54 = mul nsw i32 %53, 289
  %55 = sdiv i32 %54, 320
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %56, %31
  %58 = load i32*, i32** @reg, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 11
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = call i32 @m68k_update_irq(i32 2)
  br label %65

65:                                               ; preds = %63, %57
  %66 = load i32*, i32** @reg, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 2
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* %3, align 4
  %73 = shl i32 %72, 8
  %74 = or i32 65536, %73
  store i32 %74, i32* @hvc_latch, align 4
  br label %79

75:                                               ; preds = %65
  %76 = load i32, i32* %3, align 4
  %77 = shl i32 %76, 8
  %78 = or i32 131072, %77
  store i32 %78, i32* @hvc_latch, align 4
  br label %79

79:                                               ; preds = %75, %71
  %80 = load i32*, i32** @reg, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 12
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 1
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %79
  %86 = load i32*, i32** @hc_320, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sdiv i32 %87, 2
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @input, i32 0, i32 3), align 8
  %90 = add nsw i32 %88, %89
  %91 = srem i32 %90, 210
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %86, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @hvc_latch, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* @hvc_latch, align 4
  br label %109

97:                                               ; preds = %79
  %98 = load i32*, i32** @hc_256, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sdiv i32 %99, 2
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @input, i32 0, i32 3), align 8
  %102 = add nsw i32 %100, %101
  %103 = srem i32 %102, 171
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %98, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @hvc_latch, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* @hvc_latch, align 4
  br label %109

109:                                              ; preds = %97, %85
  br label %110

110:                                              ; preds = %109, %25
  br label %117

111:                                              ; preds = %21, %8
  %112 = load i32, i32* @hvc_latch, align 4
  %113 = and i32 %112, 131072
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store i32 0, i32* @hvc_latch, align 4
  br label %116

116:                                              ; preds = %115, %111
  br label %117

117:                                              ; preds = %116, %110
  br label %118

118:                                              ; preds = %117, %1
  ret void
}

declare dso_local i32 @m68k_update_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
