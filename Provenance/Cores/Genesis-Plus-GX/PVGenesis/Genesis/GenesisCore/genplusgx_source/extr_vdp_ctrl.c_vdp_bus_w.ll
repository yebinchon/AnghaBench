; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_bus_w.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_bus_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@code = common dso_local global i32 0, align 4
@addr = common dso_local global i32 0, align 4
@vram = common dso_local global i32* null, align 8
@sat_base_mask = common dso_local global i32 0, align 4
@satb = common dso_local global i32 0, align 4
@sat = common dso_local global i32* null, align 8
@sat_addr_mask = common dso_local global i32 0, align 4
@cram = common dso_local global i32* null, align 8
@bordrr = common dso_local global i32 0, align 4
@v_counter = common dso_local global i32 0, align 4
@bitmap = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@reg = common dso_local global i32* null, align 8
@m68k = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@mcycles_vdp = common dso_local global i32 0, align 4
@vsram = common dso_local global i32* null, align 8
@M68K_REG_PC = common dso_local global i32 0, align 4
@MCYCLES_PER_LINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @vdp_bus_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdp_bus_w(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @code, align 4
  %9 = and i32 %8, 15
  switch i32 %9, label %145 [
    i32 1, label %10
    i32 3, label %52
    i32 5, label %113
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @addr, align 4
  %12 = and i32 %11, 65534
  store i32 %12, i32* %3, align 4
  %13 = load i32*, i32** @vram, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32* %16, i32** %4, align 8
  %17 = load i32, i32* @addr, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %10
  %21 = load i32, i32* %2, align 4
  %22 = lshr i32 %21, 8
  %23 = load i32, i32* %2, align 4
  %24 = shl i32 %23, 8
  %25 = or i32 %22, %24
  %26 = and i32 %25, 65535
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %20, %10
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @sat_base_mask, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @satb, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load i32, i32* %2, align 4
  %35 = load i32*, i32** @sat, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @sat_addr_mask, align 4
  %38 = and i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  store i32 %34, i32* %40, align 4
  br label %41

41:                                               ; preds = %33, %27
  %42 = load i32, i32* %2, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* %2, align 4
  %48 = load i32*, i32** %4, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @MARK_BG_DIRTY(i32 %49)
  br label %51

51:                                               ; preds = %46, %41
  br label %146

52:                                               ; preds = %1
  %53 = load i32*, i32** @cram, align 8
  %54 = load i32, i32* @addr, align 4
  %55 = and i32 %54, 126
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  store i32* %57, i32** %6, align 8
  %58 = load i32, i32* %2, align 4
  %59 = and i32 %58, 3584
  %60 = lshr i32 %59, 3
  %61 = load i32, i32* %2, align 4
  %62 = and i32 %61, 224
  %63 = lshr i32 %62, 2
  %64 = or i32 %60, %63
  %65 = load i32, i32* %2, align 4
  %66 = and i32 %65, 14
  %67 = lshr i32 %66, 1
  %68 = or i32 %64, %67
  store i32 %68, i32* %2, align 4
  %69 = load i32, i32* %2, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %69, %71
  br i1 %72, label %73, label %112

73:                                               ; preds = %52
  %74 = load i32, i32* @addr, align 4
  %75 = ashr i32 %74, 1
  %76 = and i32 %75, 63
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %2, align 4
  %78 = load i32*, i32** %6, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %79, 15
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %73
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @color_update_m5(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %73
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @bordrr, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* %2, align 4
  %92 = call i32 @color_update_m5(i32 0, i32 %91)
  br label %93

93:                                               ; preds = %90, %86
  %94 = load i32, i32* @v_counter, align 4
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bitmap, i32 0, i32 0, i32 0), align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %93
  %98 = load i32*, i32** @reg, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 64
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %97
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @m68k, i32 0, i32 0), align 4
  %105 = load i32, i32* @mcycles_vdp, align 4
  %106 = add nsw i32 %105, 860
  %107 = icmp sle i32 %104, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* @v_counter, align 4
  %110 = call i32 @remap_line(i32 %109)
  br label %111

111:                                              ; preds = %108, %103, %97, %93
  br label %112

112:                                              ; preds = %111, %52
  br label %146

113:                                              ; preds = %1
  %114 = load i32, i32* %2, align 4
  %115 = load i32*, i32** @vsram, align 8
  %116 = load i32, i32* @addr, align 4
  %117 = and i32 %116, 126
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  store i32 %114, i32* %119, align 4
  %120 = load i32*, i32** @reg, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 11
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %144

125:                                              ; preds = %113
  %126 = load i32, i32* @v_counter, align 4
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bitmap, i32 0, i32 0, i32 0), align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %143

129:                                              ; preds = %125
  %130 = load i32*, i32** @reg, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 64
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %129
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @m68k, i32 0, i32 0), align 4
  %137 = load i32, i32* @mcycles_vdp, align 4
  %138 = add nsw i32 %137, 860
  %139 = icmp sle i32 %136, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load i32, i32* @v_counter, align 4
  %142 = call i32 @render_line(i32 %141)
  br label %143

143:                                              ; preds = %140, %135, %129, %125
  br label %144

144:                                              ; preds = %143, %113
  br label %146

145:                                              ; preds = %1
  br label %146

146:                                              ; preds = %145, %144, %112, %51
  %147 = load i32*, i32** @reg, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 15
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @addr, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* @addr, align 4
  ret void
}

declare dso_local i32 @MARK_BG_DIRTY(i32) #1

declare dso_local i32 @color_update_m5(i32, i32) #1

declare dso_local i32 @remap_line(i32) #1

declare dso_local i32 @render_line(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
