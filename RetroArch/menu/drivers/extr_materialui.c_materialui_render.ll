; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_render.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_17__ = type { float, i32, i32, i32, i64, float, i32, float, i32, float, i64, i64, i64, i32, i32, i64, i64, i32, i32, i64, %struct.TYPE_18__, %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_18__ = type { i64, i64, i64, i64, i32, i64, i64 }
%struct.TYPE_25__ = type { i32, i64, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_22__ }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_27__ = type { float, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }

@MUI_DIP_BASE_UNIT_SIZE = common dso_local global float 0.000000e+00, align 4
@MUI_ONSCREEN_ENTRY_CENTRE = common dso_local global i32 0, align 4
@MENU_POINTER_DISABLED = common dso_local global i64 0, align 8
@MENU_INPUT_PRESS_TIME_SHORT = common dso_local global i64 0, align 8
@MUI_LIST_VIEW_DEFAULT = common dso_local global i64 0, align 8
@MUI_LIST_VIEW_PLAYLIST = common dso_local global i64 0, align 8
@MENU_THUMBNAIL_RIGHT = common dso_local global i32 0, align 4
@MENU_ENTRIES_CTL_SET_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32)* @materialui_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @materialui_render(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i64, align 8
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca %struct.TYPE_27__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %28 = call %struct.TYPE_26__* (...) @config_get_ptr()
  store %struct.TYPE_26__* %28, %struct.TYPE_26__** %9, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %10, align 8
  %31 = call i32 (...) @menu_display_get_header_height()
  store i32 %31, i32* %11, align 4
  %32 = call i64 (...) @menu_entries_get_size()
  store i64 %32, i64* %12, align 8
  %33 = call i32* @menu_entries_get_selection_buf_ptr(i32 0)
  store i32* %33, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %35 = icmp ne %struct.TYPE_26__* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %38 = icmp ne %struct.TYPE_17__* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32*, i32** %13, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %36, %4
  br label %559

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call float @menu_display_get_dpi_scale(i32 %44, i32 %45)
  store float %46, float* %18, align 4
  %47 = load float, float* %18, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load float, float* %49, align 8
  %51 = fcmp une float %47, %50
  br i1 %51, label %83, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %83, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %83, label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %69, %72
  br i1 %73, label %83, label %74

74:                                               ; preds = %64
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %78, %81
  br i1 %82, label %83, label %118

83:                                               ; preds = %74, %64, %58, %52, %43
  %84 = load float, float* %18, align 4
  %85 = load float, float* @MUI_DIP_BASE_UNIT_SIZE, align 4
  %86 = fmul float %84, %85
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 5
  store float %86, float* %88, align 8
  %89 = load float, float* %18, align 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  store float %89, float* %91, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 4
  store i64 %108, i64* %110, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %112 = load i32, i32* @MUI_ONSCREEN_ENTRY_CENTRE, align 4
  %113 = call i32 @materialui_auto_select_onscreen_entry(%struct.TYPE_17__* %111, i32 %112)
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %115 = call i32 (...) @video_driver_is_threaded()
  %116 = call i32 @materialui_layout(%struct.TYPE_17__* %114, i32 %115)
  %117 = call i32 (...) @video_driver_monitor_reset()
  br label %118

118:                                              ; preds = %83, %74
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %155

123:                                              ; preds = %118
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 7
  %126 = ptrtoint float* %125 to i64
  store i64 %126, i64* %19, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 22
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %123
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 22
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %133
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @materialui_compute_entries_box(%struct.TYPE_17__* %141, i32 %142, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %140, %133, %123
  %147 = call i32 @menu_animation_kill_by_tag(i64* %19)
  %148 = call i32 @menu_input_set_pointer_y_accel(float 0.000000e+00)
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %150 = call float @materialui_get_scroll(%struct.TYPE_17__* %149)
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 7
  store float %150, float* %152, align 8
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 6
  store i32 0, i32* %154, align 4
  br label %155

155:                                              ; preds = %146, %118
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @menu_display_set_width(i32 %156)
  %158 = load i32, i32* %7, align 4
  %159 = call i32 @menu_display_set_height(i32 %158)
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 20
  %162 = call i32 @menu_input_get_pointer_state(%struct.TYPE_18__* %161)
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 20
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @MENU_POINTER_DISABLED, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %252

169:                                              ; preds = %155
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 21
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %241

175:                                              ; preds = %169
  %176 = load i32, i32* %7, align 4
  %177 = uitofp i32 %176 to float
  %178 = load i32, i32* %11, align 4
  %179 = uitofp i32 %178 to float
  %180 = fsub float %177, %179
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 8
  %183 = load i32, i32* %182, align 4
  %184 = uitofp i32 %183 to float
  %185 = fsub float %180, %184
  store float %185, float* %20, align 4
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 20
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = sitofp i64 %189 to float
  %191 = load i32, i32* %11, align 4
  %192 = uitofp i32 %191 to float
  %193 = fsub float %190, %192
  store float %193, float* %21, align 4
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 9
  %196 = load float, float* %195, align 8
  %197 = load float, float* %20, align 4
  %198 = fsub float %196, %197
  store float %198, float* %22, align 4
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 21
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = sitofp i32 %202 to float
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 21
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = sitofp i64 %207 to float
  %209 = fdiv float %208, 2.000000e+00
  %210 = fadd float %203, %209
  %211 = load float, float* %21, align 4
  %212 = fsub float %211, %210
  store float %212, float* %21, align 4
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 21
  %215 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = mul nsw i32 2, %216
  %218 = sext i32 %217 to i64
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 21
  %221 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %218, %222
  %224 = sitofp i64 %223 to float
  %225 = load float, float* %20, align 4
  %226 = fsub float %225, %224
  store float %226, float* %20, align 4
  %227 = load float, float* %20, align 4
  %228 = fcmp ogt float %227, 0.000000e+00
  br i1 %228, label %229, label %237

229:                                              ; preds = %175
  %230 = load float, float* %22, align 4
  %231 = load float, float* %21, align 4
  %232 = load float, float* %20, align 4
  %233 = fdiv float %231, %232
  %234 = fmul float %230, %233
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 7
  store float %234, float* %236, align 8
  br label %240

237:                                              ; preds = %175
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 7
  store float 0.000000e+00, float* %239, align 8
  br label %240

240:                                              ; preds = %237, %229
  br label %251

241:                                              ; preds = %169
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 20
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 6
  %245 = load i64, i64* %244, align 8
  %246 = sitofp i64 %245 to float
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 7
  %249 = load float, float* %248, align 8
  %250 = fsub float %249, %246
  store float %250, float* %248, align 8
  br label %251

251:                                              ; preds = %241, %240
  br label %252

252:                                              ; preds = %251, %155
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 7
  %255 = load float, float* %254, align 8
  %256 = fcmp olt float %255, 0.000000e+00
  br i1 %256, label %257, label %260

257:                                              ; preds = %252
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 7
  store float 0.000000e+00, float* %259, align 8
  br label %260

260:                                              ; preds = %257, %252
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 9
  %263 = load float, float* %262, align 8
  %264 = load i32, i32* %7, align 4
  %265 = uitofp i32 %264 to float
  %266 = fsub float %263, %265
  %267 = load i32, i32* %11, align 4
  %268 = uitofp i32 %267 to float
  %269 = fadd float %266, %268
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 8
  %272 = load i32, i32* %271, align 4
  %273 = uitofp i32 %272 to float
  %274 = fadd float %269, %273
  store float %274, float* %17, align 4
  %275 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 7
  %277 = load float, float* %276, align 8
  %278 = load float, float* %17, align 4
  %279 = fcmp ogt float %277, %278
  br i1 %279, label %280, label %284

280:                                              ; preds = %260
  %281 = load float, float* %17, align 4
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 7
  store float %281, float* %283, align 8
  br label %284

284:                                              ; preds = %280, %260
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i32 0, i32 9
  %287 = load float, float* %286, align 8
  %288 = load i32, i32* %7, align 4
  %289 = load i32, i32* %11, align 4
  %290 = sub i32 %288, %289
  %291 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 8
  %293 = load i32, i32* %292, align 4
  %294 = sub i32 %290, %293
  %295 = uitofp i32 %294 to float
  %296 = fcmp olt float %287, %295
  br i1 %296, label %297, label %300

297:                                              ; preds = %284
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 7
  store float 0.000000e+00, float* %299, align 8
  br label %300

300:                                              ; preds = %297, %284
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %302 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %301, i32 0, i32 10
  store i64 0, i64* %302, align 8
  %303 = load i64, i64* %12, align 8
  %304 = icmp ugt i64 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %300
  %306 = load i64, i64* %12, align 8
  %307 = sub i64 %306, 1
  br label %309

308:                                              ; preds = %300
  br label %309

309:                                              ; preds = %308, %305
  %310 = phi i64 [ %307, %305 ], [ 0, %308 ]
  %311 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %312 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %311, i32 0, i32 11
  store i64 %310, i64* %312, align 8
  store i64 0, i64* %16, align 8
  br label %313

313:                                              ; preds = %551, %309
  %314 = load i64, i64* %16, align 8
  %315 = load i64, i64* %12, align 8
  %316 = icmp ult i64 %314, %315
  br i1 %316, label %317, label %554

317:                                              ; preds = %313
  %318 = load i32*, i32** %13, align 8
  %319 = load i64, i64* %16, align 8
  %320 = call i64 @file_list_get_userdata_at_offset(i32* %318, i64 %319)
  %321 = inttoptr i64 %320 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %321, %struct.TYPE_27__** %23, align 8
  %322 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %323 = icmp ne %struct.TYPE_27__* %322, null
  br i1 %323, label %325, label %324

324:                                              ; preds = %317
  br label %554

325:                                              ; preds = %317
  %326 = load i32, i32* %11, align 4
  %327 = uitofp i32 %326 to float
  %328 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %329 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %328, i32 0, i32 7
  %330 = load float, float* %329, align 8
  %331 = fsub float %327, %330
  %332 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %333 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %332, i32 0, i32 0
  %334 = load float, float* %333, align 4
  %335 = fadd float %331, %334
  %336 = fptosi float %335 to i32
  store i32 %336, i32* %24, align 4
  %337 = load i32, i32* %14, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %352, label %339

339:                                              ; preds = %325
  %340 = load i32, i32* %24, align 4
  %341 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %342 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = add nsw i32 %340, %343
  %345 = load i32, i32* %11, align 4
  %346 = icmp sgt i32 %344, %345
  br i1 %346, label %347, label %351

347:                                              ; preds = %339
  %348 = load i64, i64* %16, align 8
  %349 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %350 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %349, i32 0, i32 10
  store i64 %348, i64* %350, align 8
  store i32 1, i32* %14, align 4
  br label %351

351:                                              ; preds = %347, %339
  br label %374

352:                                              ; preds = %325
  %353 = load i32, i32* %15, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %373, label %355

355:                                              ; preds = %352
  %356 = load i32, i32* %24, align 4
  %357 = load i32, i32* %7, align 4
  %358 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %359 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %358, i32 0, i32 8
  %360 = load i32, i32* %359, align 4
  %361 = sub nsw i32 %357, %360
  %362 = icmp sgt i32 %356, %361
  br i1 %362, label %363, label %372

363:                                              ; preds = %355
  %364 = load i64, i64* %16, align 8
  %365 = icmp ugt i64 %364, 0
  br i1 %365, label %366, label %371

366:                                              ; preds = %363
  %367 = load i64, i64* %16, align 8
  %368 = sub i64 %367, 1
  %369 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %370 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %369, i32 0, i32 11
  store i64 %368, i64* %370, align 8
  store i32 1, i32* %15, align 4
  br label %371

371:                                              ; preds = %366, %363
  br label %372

372:                                              ; preds = %371, %355
  br label %373

373:                                              ; preds = %372, %352
  br label %374

374:                                              ; preds = %373, %351
  %375 = load i32, i32* %14, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %488

377:                                              ; preds = %374
  %378 = load i32, i32* %15, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %488, label %380

380:                                              ; preds = %377
  %381 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %382 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %381, i32 0, i32 20
  %383 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %382, i32 0, i32 0
  %384 = load i64, i64* %383, align 8
  %385 = load i64, i64* @MENU_POINTER_DISABLED, align 8
  %386 = icmp ne i64 %384, %385
  br i1 %386, label %387, label %488

387:                                              ; preds = %380
  %388 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %389 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %388, i32 0, i32 21
  %390 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %389, i32 0, i32 1
  %391 = load i64, i64* %390, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %488, label %393

393:                                              ; preds = %387
  %394 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %395 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %394, i32 0, i32 20
  %396 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %395, i32 0, i32 2
  %397 = load i64, i64* %396, align 8
  store i64 %397, i64* %25, align 8
  %398 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %399 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %398, i32 0, i32 20
  %400 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %399, i32 0, i32 1
  %401 = load i64, i64* %400, align 8
  store i64 %401, i64* %26, align 8
  %402 = load i64, i64* %25, align 8
  %403 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %404 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %403, i32 0, i32 12
  %405 = load i64, i64* %404, align 8
  %406 = icmp sgt i64 %402, %405
  br i1 %406, label %407, label %487

407:                                              ; preds = %393
  %408 = load i64, i64* %25, align 8
  %409 = load i32, i32* %6, align 4
  %410 = zext i32 %409 to i64
  %411 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %412 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %411, i32 0, i32 12
  %413 = load i64, i64* %412, align 8
  %414 = sub nsw i64 %410, %413
  %415 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %416 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %415, i32 0, i32 13
  %417 = load i32, i32* %416, align 8
  %418 = zext i32 %417 to i64
  %419 = sub nsw i64 %414, %418
  %420 = icmp slt i64 %408, %419
  br i1 %420, label %421, label %487

421:                                              ; preds = %407
  %422 = load i64, i64* %26, align 8
  %423 = load i32, i32* %11, align 4
  %424 = zext i32 %423 to i64
  %425 = icmp sge i64 %422, %424
  br i1 %425, label %426, label %487

426:                                              ; preds = %421
  %427 = load i64, i64* %26, align 8
  %428 = load i32, i32* %7, align 4
  %429 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %430 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %429, i32 0, i32 8
  %431 = load i32, i32* %430, align 4
  %432 = sub i32 %428, %431
  %433 = zext i32 %432 to i64
  %434 = icmp sle i64 %427, %433
  br i1 %434, label %435, label %487

435:                                              ; preds = %426
  %436 = load i64, i64* %26, align 8
  %437 = load i32, i32* %24, align 4
  %438 = sext i32 %437 to i64
  %439 = icmp sgt i64 %436, %438
  br i1 %439, label %440, label %486

440:                                              ; preds = %435
  %441 = load i64, i64* %26, align 8
  %442 = load i32, i32* %24, align 4
  %443 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %444 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %443, i32 0, i32 1
  %445 = load i32, i32* %444, align 4
  %446 = add nsw i32 %442, %445
  %447 = sext i32 %446 to i64
  %448 = icmp slt i64 %441, %447
  br i1 %448, label %449, label %486

449:                                              ; preds = %440
  %450 = load i64, i64* %16, align 8
  %451 = call i32 @menu_input_set_pointer_selection(i64 %450)
  %452 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %453 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %452, i32 0, i32 20
  %454 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %453, i32 0, i32 5
  %455 = load i64, i64* %454, align 8
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %457, label %485

457:                                              ; preds = %449
  %458 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %459 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %458, i32 0, i32 20
  %460 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %459, i32 0, i32 4
  %461 = load i32, i32* %460, align 8
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %485, label %463

463:                                              ; preds = %457
  %464 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %465 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %464, i32 0, i32 14
  %466 = load i32, i32* %465, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %484

468:                                              ; preds = %463
  %469 = load i64, i64* %16, align 8
  %470 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %471 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %470, i32 0, i32 15
  store i64 %469, i64* %471, align 8
  %472 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %473 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %472, i32 0, i32 20
  %474 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %473, i32 0, i32 3
  %475 = load i64, i64* %474, align 8
  %476 = load i64, i64* @MENU_INPUT_PRESS_TIME_SHORT, align 8
  %477 = icmp sge i64 %475, %476
  br i1 %477, label %478, label %483

478:                                              ; preds = %468
  %479 = load i64, i64* %16, align 8
  %480 = call i32 @menu_navigation_set_selection(i64 %479)
  %481 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %482 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %481, i32 0, i32 14
  store i32 0, i32* %482, align 4
  br label %483

483:                                              ; preds = %478, %468
  br label %484

484:                                              ; preds = %483, %463
  br label %485

485:                                              ; preds = %484, %457, %449
  br label %486

486:                                              ; preds = %485, %440, %435
  br label %487

487:                                              ; preds = %486, %426, %421, %407, %393
  br label %488

488:                                              ; preds = %487, %387, %380, %377, %374
  %489 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %490 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %489, i32 0, i32 16
  %491 = load i64, i64* %490, align 8
  %492 = load i64, i64* @MUI_LIST_VIEW_DEFAULT, align 8
  %493 = icmp ne i64 %491, %492
  br i1 %493, label %494, label %545

494:                                              ; preds = %488
  %495 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %496 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %495, i32 0, i32 16
  %497 = load i64, i64* %496, align 8
  %498 = load i64, i64* @MUI_LIST_VIEW_PLAYLIST, align 8
  %499 = icmp ne i64 %497, %498
  br i1 %499, label %500, label %545

500:                                              ; preds = %494
  %501 = load i32, i32* %14, align 4
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %507

503:                                              ; preds = %500
  %504 = load i32, i32* %15, align 4
  %505 = icmp ne i32 %504, 0
  %506 = xor i1 %505, true
  br label %507

507:                                              ; preds = %503, %500
  %508 = phi i1 [ false, %500 ], [ %506, %503 ]
  %509 = zext i1 %508 to i32
  store i32 %509, i32* %27, align 4
  %510 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %511 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %510, i32 0, i32 19
  %512 = load i64, i64* %511, align 8
  %513 = icmp ne i64 %512, 0
  br i1 %513, label %514, label %530

514:                                              ; preds = %507
  %515 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %516 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %515, i32 0, i32 18
  %517 = load i32, i32* %516, align 4
  %518 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %519 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %518, i32 0, i32 17
  %520 = load i32, i32* %519, align 8
  %521 = load i64, i64* %16, align 8
  %522 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %523 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %522, i32 0, i32 2
  %524 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %523, i32 0, i32 0
  %525 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %526 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %525, i32 0, i32 2
  %527 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %526, i32 0, i32 1
  %528 = load i32, i32* %27, align 4
  %529 = call i32 @menu_thumbnail_process_streams(i32 %517, i32 %520, i64 %521, i32* %524, i32* %527, i32 %528)
  br label %544

530:                                              ; preds = %507
  %531 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %532 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %531, i32 0, i32 18
  %533 = load i32, i32* %532, align 4
  %534 = load i32, i32* @MENU_THUMBNAIL_RIGHT, align 4
  %535 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %536 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %535, i32 0, i32 17
  %537 = load i32, i32* %536, align 8
  %538 = load i64, i64* %16, align 8
  %539 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %540 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %539, i32 0, i32 2
  %541 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %540, i32 0, i32 0
  %542 = load i32, i32* %27, align 4
  %543 = call i32 @menu_thumbnail_process_stream(i32 %533, i32 %534, i32 %537, i64 %538, i32* %541, i32 %542)
  br label %544

544:                                              ; preds = %530, %514
  br label %550

545:                                              ; preds = %494, %488
  %546 = load i32, i32* %15, align 4
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %549

548:                                              ; preds = %545
  br label %554

549:                                              ; preds = %545
  br label %550

550:                                              ; preds = %549, %544
  br label %551

551:                                              ; preds = %550
  %552 = load i64, i64* %16, align 8
  %553 = add i64 %552, 1
  store i64 %553, i64* %16, align 8
  br label %313

554:                                              ; preds = %548, %324, %313
  %555 = load i32, i32* @MENU_ENTRIES_CTL_SET_START, align 4
  %556 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %557 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %556, i32 0, i32 10
  %558 = call i32 @menu_entries_ctl(i32 %555, i64* %557)
  br label %559

559:                                              ; preds = %554, %42
  ret void
}

declare dso_local %struct.TYPE_26__* @config_get_ptr(...) #1

declare dso_local i32 @menu_display_get_header_height(...) #1

declare dso_local i64 @menu_entries_get_size(...) #1

declare dso_local i32* @menu_entries_get_selection_buf_ptr(i32) #1

declare dso_local float @menu_display_get_dpi_scale(i32, i32) #1

declare dso_local i32 @materialui_auto_select_onscreen_entry(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @materialui_layout(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @video_driver_is_threaded(...) #1

declare dso_local i32 @video_driver_monitor_reset(...) #1

declare dso_local i32 @materialui_compute_entries_box(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @menu_animation_kill_by_tag(i64*) #1

declare dso_local i32 @menu_input_set_pointer_y_accel(float) #1

declare dso_local float @materialui_get_scroll(%struct.TYPE_17__*) #1

declare dso_local i32 @menu_display_set_width(i32) #1

declare dso_local i32 @menu_display_set_height(i32) #1

declare dso_local i32 @menu_input_get_pointer_state(%struct.TYPE_18__*) #1

declare dso_local i64 @file_list_get_userdata_at_offset(i32*, i64) #1

declare dso_local i32 @menu_input_set_pointer_selection(i64) #1

declare dso_local i32 @menu_navigation_set_selection(i64) #1

declare dso_local i32 @menu_thumbnail_process_streams(i32, i32, i64, i32*, i32*, i32) #1

declare dso_local i32 @menu_thumbnail_process_stream(i32, i32, i32, i64, i32*, i32) #1

declare dso_local i32 @menu_entries_ctl(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
