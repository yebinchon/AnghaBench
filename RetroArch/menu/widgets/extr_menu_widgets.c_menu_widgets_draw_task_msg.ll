; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_draw_task_msg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_draw_task_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_24__ = type { i32, float, float, i32, i32, i8*, i32, i8*, i32, i64, i64 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }

@glyph_width = common dso_local global i32 0, align 4
@simple_widget_padding = common dso_local global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [12 x i8] c"Task failed\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%i%%\00", align 1
@msg_queue_task_progress_1 = common dso_local global float* null, align 8
@msg_queue_task_progress_2 = common dso_local global float* null, align 8
@msg_queue_background = common dso_local global float* null, align 8
@msg_queue_rect_start_x = common dso_local global i32 0, align 4
@msg_queue_icon_size_x = common dso_local global i32 0, align 4
@msg_queue_height = common dso_local global i32 0, align 4
@msg_queue_task_rect_start_x = common dso_local global i32 0, align 4
@menu_widgets_pure_white = common dso_local global float* null, align 8
@menu_widgets_icons_textures = common dso_local global i32* null, align 8
@MENU_WIDGETS_ICON_CHECK = common dso_local global i64 0, align 8
@MENU_WIDGETS_ICON_HOURGLASS = common dso_local global i64 0, align 8
@msg_queue_task_hourglass_x = common dso_local global i32 0, align 4
@font_regular = common dso_local global i32 0, align 4
@font_raster_regular = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@msg_queue_task_text_start_x = common dso_local global i64 0, align 8
@msg_queue_text_scale_factor = common dso_local global i32 0, align 4
@TEXT_ALIGN_LEFT = common dso_local global i32 0, align 4
@msg_queue_glyph_width = common dso_local global i64 0, align 8
@TEXT_ALIGN_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_22__*)* @menu_widgets_draw_task_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_widgets_draw_task_msg(%struct.TYPE_24__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [256 x i8], align 16
  %15 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  store i32 0, i32* %13, align 4
  %16 = bitcast [256 x i8]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 256, i1 false)
  %17 = call %struct.TYPE_23__* (...) @config_get_ptr()
  store %struct.TYPE_23__* %17, %struct.TYPE_23__** %15, align 8
  %18 = load i32, i32* @glyph_width, align 4
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 10
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 12, i32 5
  %25 = mul nsw i32 %18, %24
  %26 = sitofp i32 %25 to float
  %27 = load float, float* @simple_widget_padding, align 4
  %28 = fmul float %27, 1.250000e+00
  %29 = fadd float %26, %28
  %30 = fptoui float %29 to i32
  store i32 %30, i32* %13, align 4
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 9
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %2
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 10
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %42 = call i32 @strlcpy(i8* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 256)
  br label %46

43:                                               ; preds = %35
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %45 = call i32 @strlcpy(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 256)
  br label %46

46:                                               ; preds = %43, %40
  br label %64

47:                                               ; preds = %2
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sle i32 %55, 100
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @snprintf(i8* %58, i32 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %57, %52, %47
  br label %64

64:                                               ; preds = %63, %46
  %65 = load float, float* @simple_widget_padding, align 4
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 1
  %68 = load float, float* %67, align 4
  %69 = fadd float %65, %68
  %70 = load i32, i32* %13, align 4
  %71 = uitofp i32 %70 to float
  %72 = fadd float %69, %71
  %73 = fptoui float %72 to i32
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = mul i32 %74, %77
  %79 = uitofp i32 %78 to float
  %80 = fdiv float %79, 1.000000e+02
  %81 = fptoui float %80 to i32
  store i32 %81, i32* %6, align 4
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 2
  %84 = load float, float* %83, align 8
  %85 = fmul float %84, 2.550000e+02
  %86 = fptoui float %85 to i32
  %87 = call i32 @COLOR_TEXT_ALPHA(i32 -256, i32 %86)
  store i32 %87, i32* %5, align 4
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 9
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %64
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load float*, float** @msg_queue_task_progress_1, align 8
  store float* %98, float** %11, align 8
  br label %101

99:                                               ; preds = %92
  %100 = load float*, float** @msg_queue_task_progress_2, align 8
  store float* %100, float** %11, align 8
  br label %101

101:                                              ; preds = %99, %97
  br label %112

102:                                              ; preds = %64
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load float*, float** @msg_queue_background, align 8
  store float* %108, float** %11, align 8
  br label %111

109:                                              ; preds = %102
  %110 = load float*, float** @msg_queue_task_progress_1, align 8
  store float* %110, float** %11, align 8
  br label %111

111:                                              ; preds = %109, %107
  br label %112

112:                                              ; preds = %111, %101
  %113 = load i32, i32* @msg_queue_rect_start_x, align 4
  %114 = load i32, i32* @msg_queue_icon_size_x, align 4
  %115 = sub i32 %113, %114
  store i32 %115, i32* %7, align 4
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = sub i32 %118, %121
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* @msg_queue_height, align 4
  %124 = sdiv i32 %123, 2
  store i32 %124, i32* %10, align 4
  %125 = load float*, float** %11, align 8
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 2
  %128 = load float, float* %127, align 8
  %129 = call i32 @menu_display_set_alpha(float* %125, float %128)
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load float*, float** %11, align 8
  %142 = call i32 @menu_display_draw_quad(%struct.TYPE_22__* %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %137, i32 %140, float* %141)
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 9
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %188, label %147

147:                                              ; preds = %112
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp sge i32 %150, 0
  br i1 %151, label %152, label %188

152:                                              ; preds = %147
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp sle i32 %155, 100
  br i1 %156, label %157, label %188

157:                                              ; preds = %152
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = load float*, float** @msg_queue_task_progress_1, align 8
  store float* %163, float** %12, align 8
  br label %166

164:                                              ; preds = %157
  %165 = load float*, float** @msg_queue_task_progress_2, align 8
  store float* %165, float** %12, align 8
  br label %166

166:                                              ; preds = %164, %162
  %167 = load float*, float** %12, align 8
  %168 = call i32 @menu_display_set_alpha(float* %167, float 1.000000e+00)
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %170 = load i32, i32* @msg_queue_task_rect_start_x, align 4
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = sub i32 %173, %176
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* %10, align 4
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load float*, float** %12, align 8
  %187 = call i32 @menu_display_draw_quad(%struct.TYPE_22__* %169, i32 %170, i32 %177, i32 %178, i32 %179, i32 %182, i32 %185, float* %186)
  br label %188

188:                                              ; preds = %166, %152, %147, %112
  %189 = load float*, float** @menu_widgets_pure_white, align 8
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 2
  %192 = load float, float* %191, align 8
  %193 = call i32 @menu_display_set_alpha(float* %189, float %192)
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %195 = call i32 @menu_display_blend_begin(%struct.TYPE_22__* %194)
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %197 = load i32, i32* @msg_queue_height, align 4
  %198 = sdiv i32 %197, 2
  %199 = load i32, i32* @msg_queue_height, align 4
  %200 = sdiv i32 %199, 2
  %201 = load i32*, i32** @menu_widgets_icons_textures, align 8
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 9
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %188
  %207 = load i64, i64* @MENU_WIDGETS_ICON_CHECK, align 8
  br label %210

208:                                              ; preds = %188
  %209 = load i64, i64* @MENU_WIDGETS_ICON_HOURGLASS, align 8
  br label %210

210:                                              ; preds = %208, %206
  %211 = phi i64 [ %207, %206 ], [ %209, %208 ]
  %212 = getelementptr inbounds i32, i32* %201, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @msg_queue_task_hourglass_x, align 4
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = sub i32 %217, %220
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %228, i32 0, i32 9
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %210
  br label %237

233:                                              ; preds = %210
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %234, i32 0, i32 8
  %236 = load i32, i32* %235, align 8
  br label %237

237:                                              ; preds = %233, %232
  %238 = phi i32 [ 0, %232 ], [ %236, %233 ]
  %239 = load float*, float** @menu_widgets_pure_white, align 8
  %240 = call i32 @menu_widgets_draw_icon(%struct.TYPE_22__* %196, i32 %198, i32 %200, i32 %213, i32 %214, i32 %221, i32 %224, i32 %227, i32 %238, i32 1, float* %239)
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %242 = call i32 @menu_display_blend_end(%struct.TYPE_22__* %241)
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 5
  %245 = load i8*, i8** %244, align 8
  %246 = icmp ne i8* %245, null
  br i1 %246, label %247, label %313

247:                                              ; preds = %237
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @font_regular, align 4
  %255 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %256 = call i32 @font_driver_flush(i32 %250, i32 %253, i32 %254, %struct.TYPE_22__* %255)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @font_raster_regular, i32 0, i32 0, i32 0, i32 0), align 8
  %257 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %258 = load i32, i32* %7, align 4
  %259 = load i32, i32* %8, align 4
  %260 = load i32, i32* %9, align 4
  %261 = load i32, i32* %10, align 4
  %262 = call i32 @menu_display_scissor_begin(%struct.TYPE_22__* %257, i32 %258, i32 %259, i32 %260, i32 %261)
  %263 = load i32, i32* @font_regular, align 4
  %264 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %264, i32 0, i32 5
  %266 = load i8*, i8** %265, align 8
  %267 = load i64, i64* @msg_queue_task_text_start_x, align 8
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 8
  %274 = sub i32 %270, %273
  %275 = load i32, i32* @msg_queue_text_scale_factor, align 4
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %277 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = mul nsw i32 %275, %279
  %281 = add i32 %274, %280
  %282 = load i32, i32* @msg_queue_height, align 4
  %283 = sdiv i32 %282, 4
  %284 = add i32 %281, %283
  %285 = uitofp i32 %284 to float
  %286 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %287 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = sitofp i32 %289 to float
  %291 = fdiv float %290, 2.250000e+00
  %292 = fsub float %285, %291
  %293 = load i32, i32* @msg_queue_height, align 4
  %294 = sdiv i32 %293, 2
  %295 = sitofp i32 %294 to float
  %296 = fsub float %292, %295
  %297 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %297, i32 0, i32 6
  %299 = load i32, i32* %298, align 8
  %300 = sitofp i32 %299 to float
  %301 = fadd float %296, %300
  %302 = fptosi float %301 to i32
  %303 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* %5, align 4
  %310 = load i32, i32* @TEXT_ALIGN_LEFT, align 4
  %311 = load i32, i32* @msg_queue_text_scale_factor, align 4
  %312 = call i32 @menu_display_draw_text(i32 %263, i8* %266, i64 %267, i32 %302, i32 %305, i32 %308, i32 %309, i32 %310, i32 %311, i32 0, i32 0, i32 1)
  br label %313

313:                                              ; preds = %247, %237
  %314 = load i32, i32* @font_regular, align 4
  %315 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %315, i32 0, i32 7
  %317 = load i8*, i8** %316, align 8
  %318 = load i64, i64* @msg_queue_task_text_start_x, align 8
  %319 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %322, i32 0, i32 4
  %324 = load i32, i32* %323, align 8
  %325 = sub i32 %321, %324
  %326 = load i32, i32* @msg_queue_text_scale_factor, align 4
  %327 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %328 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = mul nsw i32 %326, %330
  %332 = add i32 %325, %331
  %333 = load i32, i32* @msg_queue_height, align 4
  %334 = sdiv i32 %333, 4
  %335 = add i32 %332, %334
  %336 = uitofp i32 %335 to float
  %337 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %338 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = sitofp i32 %340 to float
  %342 = fdiv float %341, 2.250000e+00
  %343 = fsub float %336, %342
  %344 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %344, i32 0, i32 6
  %346 = load i32, i32* %345, align 8
  %347 = sitofp i32 %346 to float
  %348 = fadd float %343, %347
  %349 = fptosi float %348 to i32
  %350 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %354 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* %5, align 4
  %357 = load i32, i32* @TEXT_ALIGN_LEFT, align 4
  %358 = load i32, i32* @msg_queue_text_scale_factor, align 4
  %359 = call i32 @menu_display_draw_text(i32 %314, i8* %317, i64 %318, i32 %349, i32 %352, i32 %355, i32 %356, i32 %357, i32 %358, i32 0, i32 0, i32 1)
  %360 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %360, i32 0, i32 5
  %362 = load i8*, i8** %361, align 8
  %363 = icmp ne i8* %362, null
  br i1 %363, label %364, label %376

364:                                              ; preds = %313
  %365 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* @font_regular, align 4
  %372 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %373 = call i32 @font_driver_flush(i32 %367, i32 %370, i32 %371, %struct.TYPE_22__* %372)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @font_raster_regular, i32 0, i32 0, i32 0, i32 0), align 8
  %374 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %375 = call i32 @menu_display_scissor_end(%struct.TYPE_22__* %374)
  br label %376

376:                                              ; preds = %364, %313
  %377 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %378 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %377, i32 0, i32 2
  %379 = load float, float* %378, align 8
  %380 = fdiv float %379, 2.000000e+00
  %381 = fmul float %380, 2.550000e+02
  %382 = fptoui float %381 to i32
  %383 = call i32 @COLOR_TEXT_ALPHA(i32 -256, i32 %382)
  store i32 %383, i32* %5, align 4
  %384 = load i32, i32* @font_regular, align 4
  %385 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %386 = load i32, i32* @msg_queue_rect_start_x, align 4
  %387 = load i32, i32* @msg_queue_icon_size_x, align 4
  %388 = sub i32 %386, %387
  %389 = load i32, i32* %9, align 4
  %390 = add i32 %388, %389
  %391 = zext i32 %390 to i64
  %392 = load i64, i64* @msg_queue_glyph_width, align 8
  %393 = sub nsw i64 %391, %392
  %394 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %395 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %398 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %397, i32 0, i32 4
  %399 = load i32, i32* %398, align 8
  %400 = sub i32 %396, %399
  %401 = load i32, i32* @msg_queue_text_scale_factor, align 4
  %402 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %403 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 4
  %406 = mul nsw i32 %401, %405
  %407 = add i32 %400, %406
  %408 = load i32, i32* @msg_queue_height, align 4
  %409 = sdiv i32 %408, 4
  %410 = add i32 %407, %409
  %411 = uitofp i32 %410 to float
  %412 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %413 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 4
  %416 = sitofp i32 %415 to float
  %417 = fdiv float %416, 2.250000e+00
  %418 = fsub float %411, %417
  %419 = fptosi float %418 to i32
  %420 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %421 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %424 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* %5, align 4
  %427 = load i32, i32* @TEXT_ALIGN_RIGHT, align 4
  %428 = load i32, i32* @msg_queue_text_scale_factor, align 4
  %429 = call i32 @menu_display_draw_text(i32 %384, i8* %385, i64 %393, i32 %419, i32 %422, i32 %425, i32 %426, i32 %427, i32 %428, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_23__* @config_get_ptr(...) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @COLOR_TEXT_ALPHA(i32, i32) #2

declare dso_local i32 @menu_display_set_alpha(float*, float) #2

declare dso_local i32 @menu_display_draw_quad(%struct.TYPE_22__*, i32, i32, i32, i32, i32, i32, float*) #2

declare dso_local i32 @menu_display_blend_begin(%struct.TYPE_22__*) #2

declare dso_local i32 @menu_widgets_draw_icon(%struct.TYPE_22__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, float*) #2

declare dso_local i32 @menu_display_blend_end(%struct.TYPE_22__*) #2

declare dso_local i32 @font_driver_flush(i32, i32, i32, %struct.TYPE_22__*) #2

declare dso_local i32 @menu_display_scissor_begin(%struct.TYPE_22__*, i32, i32, i32, i32) #2

declare dso_local i32 @menu_display_draw_text(i32, i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @menu_display_scissor_end(%struct.TYPE_22__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
