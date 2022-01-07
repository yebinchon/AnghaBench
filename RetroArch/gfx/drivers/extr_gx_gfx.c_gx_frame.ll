; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gx_gfx.c_gx_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gx_gfx.c_gx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_20__ = type { i64, i64, i32, i8*, i32*, i64, %struct.TYPE_17__, i64, i64, i64 }
%struct.TYPE_17__ = type { i32 }

@GX_FALSE = common dso_local global i32 0, align 4
@GX_TRUE = common dso_local global i32 0, align 4
@g_vsync = common dso_local global i64 0, align 8
@g_draw_done = common dso_local global i32 0, align 4
@g_video_cond = common dso_local global i32 0, align 4
@g_tex = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@gx_old_width = common dso_local global i32 0, align 4
@gx_old_height = common dso_local global i32 0, align 4
@g_current_framebuf = common dso_local global i32 0, align 4
@menu_tex = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@GX_PNMTX0 = common dso_local global i32 0, align 4
@GX_TEXMAP0 = common dso_local global i32 0, align 4
@display_list = common dso_local global i32 0, align 4
@display_list_size = common dso_local global i32 0, align 4
@GX_PNMTX1 = common dso_local global i32 0, align 4
@referenceRetraceCount = common dso_local global i64 0, align 8
@retraceCount = common dso_local global i64 0, align 8
@FONT_HEIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"MEM1: %8d / %8d\00", align 1
@SYSMEM1_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i8*, %struct.TYPE_18__*)* @gx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gx_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, %struct.TYPE_18__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca [128 x i8], align 16
  %19 = alloca %struct.TYPE_19__*, align 8
  %20 = alloca %struct.TYPE_20__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca [128 x i8], align 16
  %27 = alloca [128 x i8], align 16
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store %struct.TYPE_18__* %7, %struct.TYPE_18__** %17, align 8
  %32 = call %struct.TYPE_19__* (...) @config_get_ptr()
  store %struct.TYPE_19__* %32, %struct.TYPE_19__** %19, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %34, %struct.TYPE_20__** %20, align 8
  %35 = load i32, i32* @GX_FALSE, align 4
  store i32 %35, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  store i8 0, i8* %36, align 16
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %38 = icmp ne %struct.TYPE_20__* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %8
  %40 = load i8*, i8** %11, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 7
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42, %39
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %49 = icmp ne %struct.TYPE_19__* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47, %42, %8
  store i32 1, i32* %9, align 4
  br label %347

51:                                               ; preds = %47
  %52 = load i8*, i8** %11, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store i32 4, i32* %13, align 4
  store i32 4, i32* %12, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %58, %62
  br i1 %63, label %73, label %64

64:                                               ; preds = %55
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %67, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %64, %55
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 2
  store i32 1, i32* %87, align 8
  br label %88

88:                                               ; preds = %73, %64
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %96 = call i32 @gx_resize(%struct.TYPE_20__* %94, %struct.TYPE_19__* %95)
  %97 = load i32, i32* @GX_TRUE, align 4
  store i32 %97, i32* %21, align 4
  br label %98

98:                                               ; preds = %93, %88
  br label %99

99:                                               ; preds = %113, %98
  %100 = load i64, i64* @g_vsync, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %99
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 7
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102, %99
  %108 = load i32, i32* @g_draw_done, align 4
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  br label %111

111:                                              ; preds = %107, %102
  %112 = phi i1 [ false, %102 ], [ %110, %107 ]
  br i1 %112, label %113, label %116

113:                                              ; preds = %111
  %114 = load i32, i32* @g_video_cond, align 4
  %115 = call i32 @OSSleepThread(i32 %114)
  br label %99

116:                                              ; preds = %111
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g_tex, i32 0, i32 3), align 4
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @MIN(i32 %117, i32 %118)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g_tex, i32 0, i32 2), align 4
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @MIN(i32 %120, i32 %121)
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @gx_old_width, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %130, label %126

126:                                              ; preds = %116
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* @gx_old_height, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %126, %116
  %131 = load i8*, i8** %10, align 8
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @init_texture(i8* %131, i32 %132, i32 %133)
  %135 = load i32, i32* %12, align 4
  store i32 %135, i32* @gx_old_width, align 4
  %136 = load i32, i32* %13, align 4
  store i32 %136, i32* @gx_old_height, align 4
  br label %137

137:                                              ; preds = %130, %126
  store i32 0, i32* @g_draw_done, align 4
  %138 = load i32, i32* @g_current_framebuf, align 4
  %139 = xor i32 %138, 1
  store i32 %139, i32* @g_current_framebuf, align 4
  %140 = load i8*, i8** %11, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %188

142:                                              ; preds = %137
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 9
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %142
  %148 = load i8*, i8** %11, align 8
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g_tex, i32 0, i32 1), align 4
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @convert_texture32(i8* %148, i32 %149, i32 %150, i32 %151, i32 %152)
  br label %175

154:                                              ; preds = %142
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 7
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %154
  %160 = load i8*, i8** %11, align 8
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g_tex, i32 0, i32 1), align 4
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* %15, align 4
  %165 = call i32 @convert_texture16_conv(i8* %160, i32 %161, i32 %162, i32 %163, i32 %164)
  br label %174

166:                                              ; preds = %154
  %167 = load i8*, i8** %11, align 8
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g_tex, i32 0, i32 1), align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %15, align 4
  %172 = zext i32 %171 to i64
  %173 = call i32 @convert_texture16(i8* %167, i32 %168, i32 %169, i32 %170, i64 %172)
  br label %174

174:                                              ; preds = %166, %159
  br label %175

175:                                              ; preds = %174, %147
  %176 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g_tex, i32 0, i32 1), align 4
  %177 = load i32, i32* %13, align 4
  %178 = load i32, i32* %12, align 4
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 9
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i32 2, i32 1
  %185 = shl i32 %178, %184
  %186 = mul i32 %177, %185
  %187 = call i32 @DCFlushRange(i32 %176, i32 %186)
  br label %188

188:                                              ; preds = %175, %137
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 7
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %215

193:                                              ; preds = %188
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 3
  %196 = load i8*, i8** %195, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %215

198:                                              ; preds = %193
  %199 = call i32 @menu_display_get_fb_size(i32* %24, i32* %25, i64* %23)
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 3
  %202 = load i8*, i8** %201, align 8
  %203 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @menu_tex, i32 0, i32 1), align 4
  %204 = load i32, i32* %24, align 4
  %205 = load i32, i32* %25, align 4
  %206 = load i64, i64* %23, align 8
  %207 = call i32 @convert_texture16(i8* %202, i32 %203, i32 %204, i32 %205, i64 %206)
  %208 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @menu_tex, i32 0, i32 1), align 4
  %209 = load i32, i32* %24, align 4
  %210 = zext i32 %209 to i64
  %211 = load i64, i64* %23, align 8
  %212 = mul i64 %210, %211
  %213 = trunc i64 %212 to i32
  %214 = call i32 @DCFlushRange(i32 %208, i32 %213)
  br label %215

215:                                              ; preds = %198, %193, %188
  %216 = call i32 (...) @GX_InvalidateTexAll()
  %217 = load i32, i32* @GX_PNMTX0, align 4
  %218 = call i32 @GX_SetCurrentMtx(i32 %217)
  %219 = load i32, i32* @GX_TEXMAP0, align 4
  %220 = call i32 @GX_LoadTexObj(i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g_tex, i32 0, i32 0), i32 %219)
  %221 = load i32, i32* @display_list, align 4
  %222 = load i32, i32* @display_list_size, align 4
  %223 = call i32 @GX_CallDispList(i32 %221, i32 %222)
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 7
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %215
  %229 = load i32, i32* @GX_PNMTX1, align 4
  %230 = call i32 @GX_SetCurrentMtx(i32 %229)
  %231 = load i32, i32* @GX_TEXMAP0, align 4
  %232 = call i32 @GX_LoadTexObj(i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @menu_tex, i32 0, i32 0), i32 %231)
  %233 = load i32, i32* @display_list, align 4
  %234 = load i32, i32* @display_list_size, align 4
  %235 = call i32 @GX_CallDispList(i32 %233, i32 %234)
  br label %236

236:                                              ; preds = %228, %215
  %237 = load i32, i32* %22, align 4
  %238 = call i32 @_CPU_ISR_Disable(i32 %237)
  %239 = load i64, i64* @referenceRetraceCount, align 8
  %240 = load i64, i64* @retraceCount, align 8
  %241 = icmp sgt i64 %239, %240
  br i1 %241, label %242, label %248

242:                                              ; preds = %236
  %243 = load i64, i64* @g_vsync, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %242
  %246 = call i32 (...) @VIDEO_WaitVSync()
  br label %247

247:                                              ; preds = %245, %242
  br label %248

248:                                              ; preds = %247, %236
  %249 = load i64, i64* @retraceCount, align 8
  store i64 %249, i64* @referenceRetraceCount, align 8
  %250 = load i32, i32* %22, align 4
  %251 = call i32 @_CPU_ISR_Restore(i32 %250)
  %252 = call i32 (...) @GX_DrawDone()
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %287

257:                                              ; preds = %248
  store i32 15, i32* %28, align 4
  store i32 35, i32* %29, align 4
  %258 = getelementptr inbounds [128 x i8], [128 x i8]* %27, i64 0, i64 0
  store i8 0, i8* %258, align 16
  %259 = getelementptr inbounds [128 x i8], [128 x i8]* %26, i64 0, i64 0
  store i8 0, i8* %259, align 16
  %260 = getelementptr inbounds [128 x i8], [128 x i8]* %27, i64 0, i64 0
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %262 = load i32, i32* %28, align 4
  %263 = load i32, i32* %29, align 4
  %264 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %265 = call i32 @gx_blit_line(%struct.TYPE_20__* %261, i32 %262, i32 %263, i8* %264)
  %266 = load i32, i32* @FONT_HEIGHT, align 4
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %268 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %267, i32 0, i32 5
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  %271 = zext i1 %270 to i64
  %272 = select i1 %270, i32 1, i32 2
  %273 = mul nsw i32 %266, %272
  %274 = load i32, i32* %29, align 4
  %275 = add i32 %274, %273
  store i32 %275, i32* %29, align 4
  %276 = getelementptr inbounds [128 x i8], [128 x i8]* %26, i64 0, i64 0
  %277 = load i32, i32* @SYSMEM1_SIZE, align 4
  %278 = call i32 (...) @SYS_GetArena1Size()
  %279 = sub nsw i32 %277, %278
  %280 = load i32, i32* @SYSMEM1_SIZE, align 4
  %281 = call i32 @snprintf(i8* %276, i32 128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %279, i32 %280)
  %282 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %283 = load i32, i32* %28, align 4
  %284 = load i32, i32* %29, align 4
  %285 = getelementptr inbounds [128 x i8], [128 x i8]* %26, i64 0, i64 0
  %286 = call i32 @gx_blit_line(%struct.TYPE_20__* %282, i32 %283, i32 %284, i8* %285)
  br label %287

287:                                              ; preds = %257, %248
  %288 = load i8*, i8** %16, align 8
  %289 = icmp ne i8* %288, null
  br i1 %289, label %290, label %321

290:                                              ; preds = %287
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %291, i32 0, i32 7
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %321, label %295

295:                                              ; preds = %290
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 5
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  %300 = zext i1 %299 to i64
  %301 = select i1 %299, i32 1, i32 2
  %302 = mul nsw i32 7, %301
  store i32 %302, i32* %30, align 4
  %303 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %304 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %303, i32 0, i32 6
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %308 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %307, i32 0, i32 5
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  %311 = zext i1 %310 to i64
  %312 = select i1 %310, i32 1, i32 2
  %313 = mul nsw i32 35, %312
  %314 = sub nsw i32 %306, %313
  store i32 %314, i32* %31, align 4
  %315 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %316 = load i32, i32* %30, align 4
  %317 = load i32, i32* %31, align 4
  %318 = load i8*, i8** %16, align 8
  %319 = call i32 @gx_blit_line(%struct.TYPE_20__* %315, i32 %316, i32 %317, i8* %318)
  %320 = load i32, i32* @GX_TRUE, align 4
  store i32 %320, i32* %21, align 4
  br label %321

321:                                              ; preds = %295, %290, %287
  %322 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %323 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %322, i32 0, i32 4
  %324 = load i32*, i32** %323, align 8
  %325 = load i32, i32* @g_current_framebuf, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* %21, align 4
  %330 = call i32 @GX_CopyDisp(i32 %328, i32 %329)
  %331 = call i32 (...) @GX_Flush()
  %332 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %333 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %332, i32 0, i32 4
  %334 = load i32*, i32** %333, align 8
  %335 = load i32, i32* @g_current_framebuf, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @VIDEO_SetNextFramebuffer(i32 %338)
  %340 = call i32 (...) @VIDEO_Flush()
  %341 = load i32, i32* %22, align 4
  %342 = call i32 @_CPU_ISR_Disable(i32 %341)
  %343 = load i64, i64* @referenceRetraceCount, align 8
  %344 = add nsw i64 %343, 1
  store i64 %344, i64* @referenceRetraceCount, align 8
  %345 = load i32, i32* %22, align 4
  %346 = call i32 @_CPU_ISR_Restore(i32 %345)
  store i32 1, i32* %9, align 4
  br label %347

347:                                              ; preds = %321, %50
  %348 = load i32, i32* %9, align 4
  ret i32 %348
}

declare dso_local %struct.TYPE_19__* @config_get_ptr(...) #1

declare dso_local i32 @gx_resize(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @OSSleepThread(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @init_texture(i8*, i32, i32) #1

declare dso_local i32 @convert_texture32(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @convert_texture16_conv(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @convert_texture16(i8*, i32, i32, i32, i64) #1

declare dso_local i32 @DCFlushRange(i32, i32) #1

declare dso_local i32 @menu_display_get_fb_size(i32*, i32*, i64*) #1

declare dso_local i32 @GX_InvalidateTexAll(...) #1

declare dso_local i32 @GX_SetCurrentMtx(i32) #1

declare dso_local i32 @GX_LoadTexObj(i32*, i32) #1

declare dso_local i32 @GX_CallDispList(i32, i32) #1

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @VIDEO_WaitVSync(...) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i32 @GX_DrawDone(...) #1

declare dso_local i32 @gx_blit_line(%struct.TYPE_20__*, i32, i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @SYS_GetArena1Size(...) #1

declare dso_local i32 @GX_CopyDisp(i32, i32) #1

declare dso_local i32 @GX_Flush(...) #1

declare dso_local i32 @VIDEO_SetNextFramebuffer(i32) #1

declare dso_local i32 @VIDEO_Flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
