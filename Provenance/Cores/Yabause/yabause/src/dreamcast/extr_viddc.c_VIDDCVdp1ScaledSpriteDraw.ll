; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_VIDDCVdp1ScaledSpriteDraw.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_VIDDCVdp1ScaledSpriteDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, float, float }
%struct.TYPE_13__ = type { i32, i32, float, i32, i32, float, i32, i32, float, i32, i32, i8*, i8*, i8*, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@Vdp1Regs = common dso_local global %struct.TYPE_15__* null, align 8
@cur_spr = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@PVR_LIST_TR_POLY = common dso_local global i32 0, align 4
@tr_sprite_hdr = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@pt_sprite_hdr = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@PVR_LIST_PT_POLY = common dso_local global i32 0, align 4
@PVR_CMD_VERTEX_EOL = common dso_local global i32 0, align 4
@priority_levels = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @VIDDCVdp1ScaledSpriteDraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @VIDDCVdp1ScaledSpriteDraw() #0 {
  %1 = alloca %struct.TYPE_12__, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Vdp1Regs, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @Vdp1ReadCommand(%struct.TYPE_12__* %1, i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Vdp1Regs, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %15, %18
  store i32 %19, i32* %4, align 4
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Vdp1Regs, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  store i32 %25, i32* %5, align 4
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 8
  %29 = and i32 %28, 63
  %30 = mul nsw i32 %29, 8
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 0), align 4
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 255
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 1), align 4
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 7
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %48

38:                                               ; preds = %0
  %39 = load i32, i32* @PVR_LIST_TR_POLY, align 4
  store i32 %39, i32* %8, align 4
  %40 = call i32 @Vdp1ReadTexture(%struct.TYPE_12__* %1, %struct.TYPE_13__* @tr_sprite_hdr)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %314

44:                                               ; preds = %38
  %45 = load i32, i32* @PVR_LIST_TR_POLY, align 4
  %46 = call i32 @pvr_list_prim(i32 %45, %struct.TYPE_13__* @tr_sprite_hdr, i32 4)
  br label %47

47:                                               ; preds = %44
  br label %58

48:                                               ; preds = %0
  %49 = call i32 @Vdp1ReadTexture(%struct.TYPE_12__* %1, %struct.TYPE_13__* @pt_sprite_hdr)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* @PVR_LIST_PT_POLY, align 4
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %314

54:                                               ; preds = %48
  %55 = load i32, i32* @PVR_LIST_PT_POLY, align 4
  %56 = call i32 @pvr_list_prim(i32 %55, %struct.TYPE_13__* @pt_sprite_hdr, i32 4)
  br label %57

57:                                               ; preds = %54
  br label %58

58:                                               ; preds = %57, %47
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 3840
  %62 = ashr i32 %61, 8
  switch i32 %62, label %203 [
    i32 0, label %63
    i32 5, label %82
    i32 6, label %89
    i32 7, label %102
    i32 9, label %114
    i32 10, label %127
    i32 11, label %144
    i32 13, label %160
    i32 14, label %172
    i32 15, label %188
  ]

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %4, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Vdp1Regs, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %67, %70
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %2, align 4
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %5, align 4
  %76 = sub nsw i32 %74, %75
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Vdp1Regs, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %76, %79
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %204

82:                                               ; preds = %58
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %2, align 4
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %204

89:                                               ; preds = %58
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %2, align 4
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 8
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %2, align 4
  %96 = sdiv i32 %95, 2
  %97 = sub nsw i32 %94, %96
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %2, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %2, align 4
  %100 = load i32, i32* %3, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %3, align 4
  br label %204

102:                                              ; preds = %58
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %2, align 4
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 8
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %3, align 4
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* %2, align 4
  %109 = sub nsw i32 %107, %108
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %2, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %2, align 4
  %112 = load i32, i32* %3, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %3, align 4
  br label %204

114:                                              ; preds = %58
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 7
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %2, align 4
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 8
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %3, align 4
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %3, align 4
  %121 = sdiv i32 %120, 2
  %122 = sub nsw i32 %119, %121
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %2, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %2, align 4
  %125 = load i32, i32* %3, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %3, align 4
  br label %204

127:                                              ; preds = %58
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %2, align 4
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 8
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %3, align 4
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* %2, align 4
  %134 = sdiv i32 %133, 2
  %135 = sub nsw i32 %132, %134
  store i32 %135, i32* %4, align 4
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %3, align 4
  %138 = sdiv i32 %137, 2
  %139 = sub nsw i32 %136, %138
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %2, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %2, align 4
  %142 = load i32, i32* %3, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %3, align 4
  br label %204

144:                                              ; preds = %58
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 7
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %2, align 4
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 8
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %3, align 4
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* %2, align 4
  %151 = sub nsw i32 %149, %150
  store i32 %151, i32* %4, align 4
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* %3, align 4
  %154 = sdiv i32 %153, 2
  %155 = sub nsw i32 %152, %154
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* %2, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %2, align 4
  %158 = load i32, i32* %3, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %3, align 4
  br label %204

160:                                              ; preds = %58
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 7
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %2, align 4
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 8
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %3, align 4
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* %3, align 4
  %167 = sub nsw i32 %165, %166
  store i32 %167, i32* %5, align 4
  %168 = load i32, i32* %2, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %2, align 4
  %170 = load i32, i32* %3, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %3, align 4
  br label %204

172:                                              ; preds = %58
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 7
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %2, align 4
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 8
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %3, align 4
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* %2, align 4
  %179 = sdiv i32 %178, 2
  %180 = sub nsw i32 %177, %179
  store i32 %180, i32* %4, align 4
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* %3, align 4
  %183 = sub nsw i32 %181, %182
  store i32 %183, i32* %5, align 4
  %184 = load i32, i32* %2, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %2, align 4
  %186 = load i32, i32* %3, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %3, align 4
  br label %204

188:                                              ; preds = %58
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 7
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %2, align 4
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 8
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %3, align 4
  %193 = load i32, i32* %4, align 4
  %194 = load i32, i32* %2, align 4
  %195 = sub nsw i32 %193, %194
  store i32 %195, i32* %4, align 4
  %196 = load i32, i32* %5, align 4
  %197 = load i32, i32* %3, align 4
  %198 = sub nsw i32 %196, %197
  store i32 %198, i32* %5, align 4
  %199 = load i32, i32* %2, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %2, align 4
  %201 = load i32, i32* %3, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %3, align 4
  br label %204

203:                                              ; preds = %58
  br label %204

204:                                              ; preds = %203, %188, %172, %160, %144, %127, %114, %102, %89, %82, %63
  %205 = call i64 @Vdp1ReadPriority(%struct.TYPE_12__* %1)
  store i64 %205, i64* %6, align 8
  %206 = load i32, i32* @PVR_CMD_VERTEX_EOL, align 4
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 14
  store i32 %206, i32* %207, align 8
  %208 = load i32, i32* %4, align 4
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  store i32 %208, i32* %209, align 8
  %210 = load i32, i32* %5, align 4
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  store i32 %210, i32* %211, align 4
  %212 = load float*, float** @priority_levels, align 8
  %213 = load i64, i64* %6, align 8
  %214 = getelementptr inbounds float, float* %212, i64 %213
  %215 = load float, float* %214, align 4
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  store float %215, float* %216, align 8
  %217 = load i32, i32* %4, align 4
  %218 = load i32, i32* %2, align 4
  %219 = add nsw i32 %217, %218
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 3
  store i32 %219, i32* %220, align 4
  %221 = load i32, i32* %5, align 4
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 4
  store i32 %221, i32* %222, align 8
  %223 = load float*, float** @priority_levels, align 8
  %224 = load i64, i64* %6, align 8
  %225 = getelementptr inbounds float, float* %223, i64 %224
  %226 = load float, float* %225, align 4
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 5
  store float %226, float* %227, align 4
  %228 = load i32, i32* %4, align 4
  %229 = load i32, i32* %2, align 4
  %230 = add nsw i32 %228, %229
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 6
  store i32 %230, i32* %231, align 8
  %232 = load i32, i32* %5, align 4
  %233 = load i32, i32* %3, align 4
  %234 = add nsw i32 %232, %233
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 7
  store i32 %234, i32* %235, align 4
  %236 = load float*, float** @priority_levels, align 8
  %237 = load i64, i64* %6, align 8
  %238 = getelementptr inbounds float, float* %236, i64 %237
  %239 = load float, float* %238, align 4
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 8
  store float %239, float* %240, align 8
  %241 = load i32, i32* %4, align 4
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 9
  store i32 %241, i32* %242, align 4
  %243 = load i32, i32* %5, align 4
  %244 = load i32, i32* %3, align 4
  %245 = add nsw i32 %243, %244
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 10
  store i32 %245, i32* %246, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 4
  %248 = load i32, i32* %247, align 4
  %249 = and i32 %248, 16
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %204
  %252 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 2), align 4
  br label %254

253:                                              ; preds = %204
  br label %254

254:                                              ; preds = %253, %251
  %255 = phi float [ %252, %251 ], [ 0.000000e+00, %253 ]
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 4
  %257 = load i32, i32* %256, align 4
  %258 = and i32 %257, 32
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %254
  %261 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 3), align 4
  br label %263

262:                                              ; preds = %254
  br label %263

263:                                              ; preds = %262, %260
  %264 = phi float [ %261, %260 ], [ 0.000000e+00, %262 ]
  %265 = call i8* @PVR_PACK_16BIT_UV(float %255, float %264)
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 13
  store i8* %265, i8** %266, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 4
  %268 = load i32, i32* %267, align 4
  %269 = and i32 %268, 16
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %263
  br label %274

272:                                              ; preds = %263
  %273 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 2), align 4
  br label %274

274:                                              ; preds = %272, %271
  %275 = phi float [ 0.000000e+00, %271 ], [ %273, %272 ]
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 4
  %277 = load i32, i32* %276, align 4
  %278 = and i32 %277, 32
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %274
  %281 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 3), align 4
  br label %283

282:                                              ; preds = %274
  br label %283

283:                                              ; preds = %282, %280
  %284 = phi float [ %281, %280 ], [ 0.000000e+00, %282 ]
  %285 = call i8* @PVR_PACK_16BIT_UV(float %275, float %284)
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 12
  store i8* %285, i8** %286, align 8
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 4
  %288 = load i32, i32* %287, align 4
  %289 = and i32 %288, 16
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %283
  br label %294

292:                                              ; preds = %283
  %293 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 2), align 4
  br label %294

294:                                              ; preds = %292, %291
  %295 = phi float [ 0.000000e+00, %291 ], [ %293, %292 ]
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 4
  %297 = load i32, i32* %296, align 4
  %298 = and i32 %297, 32
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %294
  br label %303

301:                                              ; preds = %294
  %302 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_spr, i32 0, i32 3), align 4
  br label %303

303:                                              ; preds = %301, %300
  %304 = phi float [ 0.000000e+00, %300 ], [ %302, %301 ]
  %305 = call i8* @PVR_PACK_16BIT_UV(float %295, float %304)
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 11
  store i8* %305, i8** %306, align 8
  %307 = load i32, i32* %8, align 4
  %308 = call i32 @pvr_list_prim(i32 %307, %struct.TYPE_13__* %7, i32 80)
  %309 = load float*, float** @priority_levels, align 8
  %310 = load i64, i64* %6, align 8
  %311 = getelementptr inbounds float, float* %309, i64 %310
  %312 = load float, float* %311, align 4
  %313 = fadd float %312, 0x3EB0C6F7A0000000
  store float %313, float* %311, align 4
  br label %314

314:                                              ; preds = %303, %53, %43
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
