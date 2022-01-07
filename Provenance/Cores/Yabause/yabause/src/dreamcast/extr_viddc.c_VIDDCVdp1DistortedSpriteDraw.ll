; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_VIDDCVdp1DistortedSpriteDraw.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_VIDDCVdp1DistortedSpriteDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i32 }
%struct.TYPE_14__ = type { i32, i32, float, float }
%struct.TYPE_13__ = type { float, float, float, i8*, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }

@Vdp1Regs = common dso_local global %struct.TYPE_15__* null, align 8
@cur_spr = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@PVR_LIST_TR_POLY = common dso_local global i32 0, align 4
@tr_sprite_hdr = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@pt_sprite_hdr = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@PVR_LIST_PT_POLY = common dso_local global i32 0, align 4
@PVR_CMD_VERTEX_EOL = common dso_local global i32 0, align 4
@priority_levels = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @VIDDCVdp1DistortedSpriteDraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @VIDDCVdp1DistortedSpriteDraw() #0 {
  %1 = alloca %struct.TYPE_12__, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_13__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Vdp1Regs, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @Vdp1ReadCommand(%struct.TYPE_12__* %1, i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = ashr i32 %11, 8
  %13 = and i32 %12, 63
  %14 = mul nsw i32 %13, 8
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 0), align 4
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 255
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 1), align 4
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 7
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %32

22:                                               ; preds = %0
  %23 = load i32, i32* @PVR_LIST_TR_POLY, align 4
  store i32 %23, i32* %4, align 4
  %24 = call i32 @Vdp1ReadTexture(%struct.TYPE_12__* %1, %struct.TYPE_13__* @tr_sprite_hdr)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %188

28:                                               ; preds = %22
  %29 = load i32, i32* @PVR_LIST_TR_POLY, align 4
  %30 = call i32 @pvr_list_prim(i32 %29, %struct.TYPE_13__* @tr_sprite_hdr, i32 4)
  br label %31

31:                                               ; preds = %28
  br label %42

32:                                               ; preds = %0
  %33 = call i32 @Vdp1ReadTexture(%struct.TYPE_12__* %1, %struct.TYPE_13__* @pt_sprite_hdr)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @PVR_LIST_PT_POLY, align 4
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %188

38:                                               ; preds = %32
  %39 = load i32, i32* @PVR_LIST_PT_POLY, align 4
  %40 = call i32 @pvr_list_prim(i32 %39, %struct.TYPE_13__* @pt_sprite_hdr, i32 4)
  br label %41

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %41, %31
  %43 = call i64 @Vdp1ReadPriority(%struct.TYPE_12__* %1)
  store i64 %43, i64* %2, align 8
  %44 = load i32, i32* @PVR_CMD_VERTEX_EOL, align 4
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 14
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 10
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Vdp1Regs, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 13
  store i64 %51, i64* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 9
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Vdp1Regs, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 12
  store i64 %58, i64* %59, align 8
  %60 = load float*, float** @priority_levels, align 8
  %61 = load i64, i64* %2, align 8
  %62 = getelementptr inbounds float, float* %60, i64 %61
  %63 = load float, float* %62, align 4
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  store float %63, float* %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 8
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Vdp1Regs, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = add nsw i64 %70, 1
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 11
  store i64 %71, i64* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 7
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Vdp1Regs, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %74, %77
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 10
  store i64 %78, i64* %79, align 8
  %80 = load float*, float** @priority_levels, align 8
  %81 = load i64, i64* %2, align 8
  %82 = getelementptr inbounds float, float* %80, i64 %81
  %83 = load float, float* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 1
  store float %83, float* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Vdp1Regs, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %86, %89
  %91 = add nsw i64 %90, 1
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 9
  store i64 %91, i64* %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Vdp1Regs, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %94, %97
  %99 = add nsw i64 %98, 1
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 8
  store i64 %99, i64* %100, align 8
  %101 = load float*, float** @priority_levels, align 8
  %102 = load i64, i64* %2, align 8
  %103 = getelementptr inbounds float, float* %101, i64 %102
  %104 = load float, float* %103, align 4
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 2
  store float %104, float* %105, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Vdp1Regs, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %107, %110
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 7
  store i64 %111, i64* %112, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Vdp1Regs, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %114, %117
  %119 = add nsw i64 %118, 1
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 6
  store i64 %119, i64* %120, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = and i32 %122, 16
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %42
  %126 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 2), align 4
  br label %128

127:                                              ; preds = %42
  br label %128

128:                                              ; preds = %127, %125
  %129 = phi float [ %126, %125 ], [ 0.000000e+00, %127 ]
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = and i32 %131, 32
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 3), align 4
  br label %137

136:                                              ; preds = %128
  br label %137

137:                                              ; preds = %136, %134
  %138 = phi float [ %135, %134 ], [ 0.000000e+00, %136 ]
  %139 = call i8* @PVR_PACK_16BIT_UV(float %129, float %138)
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 5
  store i8* %139, i8** %140, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = and i32 %142, 16
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  br label %148

146:                                              ; preds = %137
  %147 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 2), align 4
  br label %148

148:                                              ; preds = %146, %145
  %149 = phi float [ 0.000000e+00, %145 ], [ %147, %146 ]
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = and i32 %151, 32
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 3), align 4
  br label %157

156:                                              ; preds = %148
  br label %157

157:                                              ; preds = %156, %154
  %158 = phi float [ %155, %154 ], [ 0.000000e+00, %156 ]
  %159 = call i8* @PVR_PACK_16BIT_UV(float %149, float %158)
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 4
  store i8* %159, i8** %160, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %162, 16
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %157
  br label %168

166:                                              ; preds = %157
  %167 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 2), align 4
  br label %168

168:                                              ; preds = %166, %165
  %169 = phi float [ 0.000000e+00, %165 ], [ %167, %166 ]
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = and i32 %171, 32
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  br label %177

175:                                              ; preds = %168
  %176 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 3), align 4
  br label %177

177:                                              ; preds = %175, %174
  %178 = phi float [ 0.000000e+00, %174 ], [ %176, %175 ]
  %179 = call i8* @PVR_PACK_16BIT_UV(float %169, float %178)
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 3
  store i8* %179, i8** %180, align 8
  %181 = load i32, i32* %4, align 4
  %182 = call i32 @pvr_list_prim(i32 %181, %struct.TYPE_13__* %3, i32 112)
  %183 = load float*, float** @priority_levels, align 8
  %184 = load i64, i64* %2, align 8
  %185 = getelementptr inbounds float, float* %183, i64 %184
  %186 = load float, float* %185, align 4
  %187 = fadd float %186, 0x3EB0C6F7A0000000
  store float %187, float* %185, align 4
  br label %188

188:                                              ; preds = %177, %37, %27
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
