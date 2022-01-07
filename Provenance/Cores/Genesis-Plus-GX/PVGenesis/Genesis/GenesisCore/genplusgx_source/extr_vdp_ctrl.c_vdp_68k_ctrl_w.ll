; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_68k_ctrl_w.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_68k_ctrl_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@pending = common dso_local global i32 0, align 4
@dma_length = common dso_local global i32 0, align 4
@dma_type = common dso_local global i32 0, align 4
@cached_write = common dso_local global i32 0, align 4
@m68k = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@reg = common dso_local global i32* null, align 8
@addr_latch = common dso_local global i32 0, align 4
@addr = common dso_local global i32 0, align 4
@code = common dso_local global i32 0, align 4
@dmafill = common dso_local global i32 0, align 4
@dma_src = common dso_local global i32 0, align 4
@system_hw = common dso_local global i32 0, align 4
@SYSTEM_MCD = common dso_local global i32 0, align 4
@scd = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@svp = common dso_local global i32 0, align 4
@fifo_latency = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdp_68k_ctrl_w(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @pending, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %42

5:                                                ; preds = %1
  %6 = load i32, i32* @dma_length, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load i32, i32* @dma_type, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  store i32 %12, i32* @cached_write, align 4
  br label %169

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %13, %5
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %15, 49152
  %17 = icmp eq i32 %16, 32768
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = lshr i32 %19, 8
  %21 = and i32 %20, 31
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %22, 255
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m68k, i32 0, i32 0), align 4
  %25 = call i32 @vdp_reg_w(i32 %21, i32 %23, i32 %24)
  br label %31

26:                                               ; preds = %14
  %27 = load i32*, i32** @reg, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 4
  store i32 %30, i32* @pending, align 4
  br label %31

31:                                               ; preds = %26, %18
  %32 = load i32, i32* @addr_latch, align 4
  %33 = load i32, i32* %2, align 4
  %34 = and i32 %33, 16383
  %35 = or i32 %32, %34
  store i32 %35, i32* @addr, align 4
  %36 = load i32, i32* @code, align 4
  %37 = and i32 %36, 60
  %38 = load i32, i32* %2, align 4
  %39 = lshr i32 %38, 14
  %40 = and i32 %39, 3
  %41 = or i32 %37, %40
  store i32 %41, i32* @code, align 4
  br label %155

42:                                               ; preds = %1
  store i32 0, i32* @pending, align 4
  %43 = load i32, i32* %2, align 4
  %44 = and i32 %43, 3
  %45 = shl i32 %44, 14
  store i32 %45, i32* @addr_latch, align 4
  %46 = load i32, i32* @addr_latch, align 4
  %47 = load i32, i32* @addr, align 4
  %48 = and i32 %47, 16383
  %49 = or i32 %46, %48
  store i32 %49, i32* @addr, align 4
  %50 = load i32, i32* @code, align 4
  %51 = and i32 %50, 3
  %52 = load i32, i32* %2, align 4
  %53 = lshr i32 %52, 2
  %54 = and i32 %53, 60
  %55 = or i32 %51, %54
  store i32 %55, i32* @code, align 4
  %56 = load i32, i32* @code, align 4
  %57 = and i32 %56, 32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %154

59:                                               ; preds = %42
  %60 = load i32*, i32** @reg, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 16
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %153

65:                                               ; preds = %59
  %66 = load i32*, i32** @reg, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 23
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 6
  switch i32 %69, label %94 [
    i32 2, label %70
    i32 3, label %71
  ]

70:                                               ; preds = %65
  store i32 256, i32* @dmafill, align 4
  br label %152

71:                                               ; preds = %65
  %72 = load i32*, i32** @reg, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 20
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 8
  %76 = load i32*, i32** @reg, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 19
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %75, %78
  store i32 %79, i32* @dma_length, align 4
  %80 = load i32, i32* @dma_length, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %71
  store i32 65536, i32* @dma_length, align 4
  br label %83

83:                                               ; preds = %82, %71
  %84 = load i32*, i32** @reg, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 22
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 8
  %88 = load i32*, i32** @reg, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 21
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %87, %90
  store i32 %91, i32* @dma_src, align 4
  store i32 3, i32* @dma_type, align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m68k, i32 0, i32 0), align 4
  %93 = call i32 @vdp_dma_update(i32 %92)
  br label %152

94:                                               ; preds = %65
  %95 = load i32*, i32** @reg, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 20
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 8
  %99 = load i32*, i32** @reg, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 19
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %98, %101
  store i32 %102, i32* @dma_length, align 4
  %103 = load i32, i32* @dma_length, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %94
  store i32 65536, i32* @dma_length, align 4
  br label %106

106:                                              ; preds = %105, %94
  %107 = load i32*, i32** @reg, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 22
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 8
  %111 = load i32*, i32** @reg, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 21
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %110, %113
  store i32 %114, i32* @dma_src, align 4
  %115 = load i32, i32* @system_hw, align 4
  %116 = load i32, i32* @SYSTEM_MCD, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %106
  %119 = load i32*, i32** @reg, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 23
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 112
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 0, i32 0), align 4
  %124 = ashr i32 %123, 1
  %125 = add nsw i32 %124, 16
  %126 = icmp eq i32 %122, %125
  br i1 %126, label %136, label %127

127:                                              ; preds = %118, %106
  %128 = load i32, i32* @svp, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %127
  %131 = load i32*, i32** @reg, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 23
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 96
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %130, %118
  %137 = load i32*, i32** @reg, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 15
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @addr, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* @addr, align 4
  %142 = load i32, i32* @dma_length, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* @dma_length, align 4
  br label %144

144:                                              ; preds = %136, %130, %127
  %145 = load i32, i32* @code, align 4
  %146 = and i32 %145, 6
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 0, i32 1
  store i32 %149, i32* @dma_type, align 4
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m68k, i32 0, i32 0), align 4
  %151 = call i32 @vdp_dma_update(i32 %150)
  br label %152

152:                                              ; preds = %144, %83, %70
  br label %153

153:                                              ; preds = %152, %59
  br label %154

154:                                              ; preds = %153, %42
  br label %155

155:                                              ; preds = %154, %31
  %156 = load i32*, i32** @reg, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 12
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 1
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i32 190, i32 214
  store i32 %162, i32* @fifo_latency, align 4
  %163 = load i32, i32* @code, align 4
  %164 = and i32 %163, 15
  %165 = icmp slt i32 %164, 3
  %166 = zext i1 %165 to i32
  %167 = load i32, i32* @fifo_latency, align 4
  %168 = shl i32 %167, %166
  store i32 %168, i32* @fifo_latency, align 4
  br label %169

169:                                              ; preds = %155, %11
  ret void
}

declare dso_local i32 @vdp_reg_w(i32, i32, i32) #1

declare dso_local i32 @vdp_dma_update(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
