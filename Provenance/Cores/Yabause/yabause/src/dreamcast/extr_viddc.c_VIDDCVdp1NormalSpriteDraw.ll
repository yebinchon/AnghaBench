; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_VIDDCVdp1NormalSpriteDraw.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_VIDDCVdp1NormalSpriteDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, float, float }
%struct.TYPE_13__ = type { i32, i32, float, i32, i32, float, i32, i32, float, i32, i32, i8*, i8*, i8*, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }

@Vdp1Regs = common dso_local global %struct.TYPE_15__* null, align 8
@cur_spr = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@PVR_LIST_TR_POLY = common dso_local global i32 0, align 4
@tr_sprite_hdr = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@pt_sprite_hdr = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@PVR_LIST_PT_POLY = common dso_local global i32 0, align 4
@PVR_CMD_VERTEX_EOL = common dso_local global i32 0, align 4
@priority_levels = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @VIDDCVdp1NormalSpriteDraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @VIDDCVdp1NormalSpriteDraw() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__, align 4
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca i32, align 4
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Vdp1Regs, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @Vdp1ReadCommand(%struct.TYPE_12__* %5, i32 %10)
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Vdp1Regs, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %14, %16
  store i32 %17, i32* %1, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Vdp1Regs, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %20, %22
  store i32 %23, i32* %2, align 4
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 8
  %27 = and i32 %26, 63
  %28 = shl i32 %27, 3
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 0), align 4
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 255
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 1), align 4
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 7
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %46

36:                                               ; preds = %0
  %37 = load i32, i32* @PVR_LIST_TR_POLY, align 4
  store i32 %37, i32* %7, align 4
  %38 = call i32 @Vdp1ReadTexture(%struct.TYPE_12__* %5, %struct.TYPE_13__* @tr_sprite_hdr)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %166

42:                                               ; preds = %36
  %43 = load i32, i32* @PVR_LIST_TR_POLY, align 4
  %44 = call i32 @pvr_list_prim(i32 %43, %struct.TYPE_13__* @tr_sprite_hdr, i32 4)
  br label %45

45:                                               ; preds = %42
  br label %56

46:                                               ; preds = %0
  %47 = call i32 @Vdp1ReadTexture(%struct.TYPE_12__* %5, %struct.TYPE_13__* @pt_sprite_hdr)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* @PVR_LIST_PT_POLY, align 4
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %166

52:                                               ; preds = %46
  %53 = load i32, i32* @PVR_LIST_PT_POLY, align 4
  %54 = call i32 @pvr_list_prim(i32 %53, %struct.TYPE_13__* @pt_sprite_hdr, i32 4)
  br label %55

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %55, %45
  %57 = call i64 @Vdp1ReadPriority(%struct.TYPE_12__* %5)
  store i64 %57, i64* %4, align 8
  %58 = load i32, i32* @PVR_CMD_VERTEX_EOL, align 4
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 14
  store i32 %58, i32* %59, align 8
  %60 = load i32, i32* %1, align 4
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  %62 = load i32, i32* %2, align 4
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = load float*, float** @priority_levels, align 8
  %65 = load i64, i64* %4, align 8
  %66 = getelementptr inbounds float, float* %64, i64 %65
  %67 = load float, float* %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  store float %67, float* %68, align 8
  %69 = load i32, i32* %1, align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 0), align 4
  %71 = add nsw i32 %69, %70
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 3
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %2, align 4
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 4
  store i32 %73, i32* %74, align 8
  %75 = load float*, float** @priority_levels, align 8
  %76 = load i64, i64* %4, align 8
  %77 = getelementptr inbounds float, float* %75, i64 %76
  %78 = load float, float* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 5
  store float %78, float* %79, align 4
  %80 = load i32, i32* %1, align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 0), align 4
  %82 = add nsw i32 %80, %81
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 6
  store i32 %82, i32* %83, align 8
  %84 = load i32, i32* %2, align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 1), align 4
  %86 = add nsw i32 %84, %85
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 7
  store i32 %86, i32* %87, align 4
  %88 = load float*, float** @priority_levels, align 8
  %89 = load i64, i64* %4, align 8
  %90 = getelementptr inbounds float, float* %88, i64 %89
  %91 = load float, float* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 8
  store float %91, float* %92, align 8
  %93 = load i32, i32* %1, align 4
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 9
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %2, align 4
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 1), align 4
  %97 = add nsw i32 %95, %96
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 10
  store i32 %97, i32* %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 16
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %56
  %104 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 2), align 4
  br label %106

105:                                              ; preds = %56
  br label %106

106:                                              ; preds = %105, %103
  %107 = phi float [ %104, %103 ], [ 0.000000e+00, %105 ]
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 32
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 3), align 4
  br label %115

114:                                              ; preds = %106
  br label %115

115:                                              ; preds = %114, %112
  %116 = phi float [ %113, %112 ], [ 0.000000e+00, %114 ]
  %117 = call i8* @PVR_PACK_16BIT_UV(float %107, float %116)
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 13
  store i8* %117, i8** %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 16
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  br label %126

124:                                              ; preds = %115
  %125 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 2), align 4
  br label %126

126:                                              ; preds = %124, %123
  %127 = phi float [ 0.000000e+00, %123 ], [ %125, %124 ]
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 32
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 3), align 4
  br label %135

134:                                              ; preds = %126
  br label %135

135:                                              ; preds = %134, %132
  %136 = phi float [ %133, %132 ], [ 0.000000e+00, %134 ]
  %137 = call i8* @PVR_PACK_16BIT_UV(float %127, float %136)
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 12
  store i8* %137, i8** %138, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 16
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  br label %146

144:                                              ; preds = %135
  %145 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 2), align 4
  br label %146

146:                                              ; preds = %144, %143
  %147 = phi float [ 0.000000e+00, %143 ], [ %145, %144 ]
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, 32
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %155

153:                                              ; preds = %146
  %154 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 3), align 4
  br label %155

155:                                              ; preds = %153, %152
  %156 = phi float [ 0.000000e+00, %152 ], [ %154, %153 ]
  %157 = call i8* @PVR_PACK_16BIT_UV(float %147, float %156)
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 11
  store i8* %157, i8** %158, align 8
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @pvr_list_prim(i32 %159, %struct.TYPE_13__* %6, i32 80)
  %161 = load float*, float** @priority_levels, align 8
  %162 = load i64, i64* %4, align 8
  %163 = getelementptr inbounds float, float* %161, i64 %162
  %164 = load float, float* %163, align 4
  %165 = fadd float %164, 0x3EB0C6F7A0000000
  store float %165, float* %163, align 4
  br label %166

166:                                              ; preds = %155, %51, %41
  ret void
}

declare dso_local i32 @Vdp1ReadCommand(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @Vdp1ReadTexture(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @pvr_list_prim(i32, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @Vdp1ReadPriority(%struct.TYPE_12__*) #1

declare dso_local i8* @PVR_PACK_16BIT_UV(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
