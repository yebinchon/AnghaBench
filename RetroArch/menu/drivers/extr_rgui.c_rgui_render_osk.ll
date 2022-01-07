; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_render_osk.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_render_osk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__, i64, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i8*, i32, i8*, i32 }
%struct.TYPE_15__ = type { i32, i32, i8*, i8*, i32, i32* }

@rgui_frame_buf = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@FONT_WIDTH = common dso_local global i32 0, align 4
@FONT_HEIGHT = common dso_local global i32 0, align 4
@OSK_CHARS_PER_LINE = common dso_local global i32 0, align 4
@FONT_HEIGHT_STRIDE = common dso_local global i32 0, align 4
@FONT_WIDTH_STRIDE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s\0A%s\00", align 1
@RGUI_SYMBOL_TEXT_CURSOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Bksp\00", align 1
@RGUI_SYMBOL_BACKSPACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"Enter\00", align 1
@RGUI_SYMBOL_ENTER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@RGUI_SYMBOL_SHIFT_UP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1
@RGUI_SYMBOL_SHIFT_DOWN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"Next\00", align 1
@RGUI_SYMBOL_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_15__*, i32)* @rgui_render_osk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgui_render_osk(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, %struct.TYPE_15__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i8**, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca [255 x i8], align 16
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca [255 x i8], align 16
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i8*, align 8
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  store i32 %3, i32* %8, align 4
  %59 = call i32 (...) @menu_event_get_osk_ptr()
  store i32 %59, i32* %33, align 4
  %60 = call i8** (...) @menu_event_get_osk_grid()
  store i8** %60, i8*** %34, align 8
  %61 = call i8* (...) @menu_input_dialog_get_buffer()
  store i8* %61, i8** %35, align 8
  %62 = call i8* (...) @menu_input_dialog_get_label_buffer()
  store i8* %62, i8** %36, align 8
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @rgui_frame_buf, i32 0, i32 0), align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %4
  %66 = load i32, i32* %33, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %33, align 4
  %70 = icmp sge i32 %69, 44
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = load i8**, i8*** %34, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %71, %68, %65, %4
  br label %745

77:                                               ; preds = %71
  %78 = call i32 @menu_display_get_fb_size(i32* %10, i32* %11, i64* %9)
  store i32 8, i32* %19, align 4
  store i32 6, i32* %20, align 4
  %79 = load i32, i32* @FONT_WIDTH, align 4
  %80 = load i32, i32* %19, align 4
  %81 = mul i32 %80, 2
  %82 = add i32 %79, %81
  store i32 %82, i32* %17, align 4
  %83 = load i32, i32* @FONT_HEIGHT, align 4
  %84 = load i32, i32* %20, align 4
  %85 = mul i32 %84, 2
  %86 = add i32 %83, %85
  store i32 %86, i32* %18, align 4
  store i32 2, i32* %23, align 4
  store i32 2, i32* %24, align 4
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* %23, align 4
  %89 = mul i32 %88, 2
  %90 = sub i32 %87, %89
  store i32 %90, i32* %21, align 4
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* %24, align 4
  %93 = mul i32 %92, 2
  %94 = sub i32 %91, %93
  store i32 %94, i32* %22, align 4
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* @OSK_CHARS_PER_LINE, align 4
  %97 = mul i32 %95, %96
  store i32 %97, i32* %25, align 4
  %98 = load i32, i32* %18, align 4
  %99 = mul i32 %98, 4
  store i32 %99, i32* %26, align 4
  store i32 10, i32* %27, align 4
  %100 = load i32, i32* @FONT_HEIGHT_STRIDE, align 4
  %101 = mul nsw i32 2, %100
  %102 = add nsw i32 25, %101
  store i32 %102, i32* %28, align 4
  %103 = load i32, i32* %25, align 4
  %104 = load i32, i32* @FONT_WIDTH_STRIDE, align 4
  %105 = udiv i32 %103, %104
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = sub i32 %106, 1
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %25, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @FONT_WIDTH_STRIDE, align 4
  %111 = mul i32 %109, %110
  %112 = sub i32 %108, %111
  %113 = udiv i32 %112, 2
  %114 = add i32 10, %113
  store i32 %114, i32* %15, align 4
  store i32 10, i32* %16, align 4
  %115 = load i32, i32* %25, align 4
  %116 = add i32 %115, 20
  store i32 %116, i32* %29, align 4
  %117 = load i32, i32* %28, align 4
  %118 = load i32, i32* %26, align 4
  %119 = add i32 %117, %118
  %120 = add i32 %119, 10
  store i32 %120, i32* %30, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %29, align 4
  %123 = sub i32 %121, %122
  %124 = udiv i32 %123, 2
  store i32 %124, i32* %31, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %30, align 4
  %127 = sub i32 %125, %126
  %128 = udiv i32 %127, 2
  store i32 %128, i32* %32, align 4
  %129 = load i32, i32* %29, align 4
  %130 = add i32 %129, 2
  %131 = load i32, i32* %10, align 4
  %132 = icmp ugt i32 %130, %131
  br i1 %132, label %138, label %133

133:                                              ; preds = %77
  %134 = load i32, i32* %30, align 4
  %135 = add i32 %134, 2
  %136 = load i32, i32* %11, align 4
  %137 = icmp ugt i32 %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %133, %77
  %139 = getelementptr inbounds [255 x i8], [255 x i8]* %37, i64 0, i64 0
  store i8 0, i8* %139, align 16
  %140 = getelementptr inbounds [255 x i8], [255 x i8]* %37, i64 0, i64 0
  %141 = load i8*, i8** %36, align 8
  %142 = load i8*, i8** %35, align 8
  %143 = call i32 @snprintf(i8* %140, i32 255, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %141, i8* %142)
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %145 = getelementptr inbounds [255 x i8], [255 x i8]* %37, i64 0, i64 0
  %146 = call i32 @rgui_render_messagebox(%struct.TYPE_13__* %144, i8* %145)
  br label %745

147:                                              ; preds = %133
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @rgui_frame_buf, i32 0, i32 0), align 4
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %31, align 4
  %152 = add i32 %151, 5
  %153 = load i32, i32* %32, align 4
  %154 = add i32 %153, 5
  %155 = load i32, i32* %29, align 4
  %156 = sub i32 %155, 10
  %157 = load i32, i32* %30, align 4
  %158 = sub i32 %157, 10
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @rgui_fill_rect(i32 %148, i32 %149, i32 %150, i32 %152, i32 %154, i32 %156, i32 %158, i32 %162, i32 %166, i32 %169)
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %321

175:                                              ; preds = %147
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  store i32 %179, i32* %38, align 4
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %39, align 4
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %40, align 4
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %253

191:                                              ; preds = %175
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %41, align 4
  %196 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @rgui_frame_buf, i32 0, i32 0), align 4
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* %31, align 4
  %200 = add i32 %199, 5
  %201 = load i32, i32* %32, align 4
  %202 = add i32 %201, 5
  %203 = load i32, i32* %29, align 4
  %204 = sub i32 %203, 10
  %205 = load i32, i32* %41, align 4
  %206 = call i32 @rgui_color_rect(i32 %196, i32 %197, i32 %198, i32 %200, i32 %202, i32 %204, i32 1, i32 %205)
  %207 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @rgui_frame_buf, i32 0, i32 0), align 4
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* %31, align 4
  %211 = load i32, i32* %29, align 4
  %212 = add i32 %210, %211
  %213 = load i32, i32* %32, align 4
  %214 = add i32 %213, 1
  %215 = load i32, i32* %30, align 4
  %216 = load i32, i32* %41, align 4
  %217 = call i32 @rgui_color_rect(i32 %207, i32 %208, i32 %209, i32 %212, i32 %214, i32 1, i32 %215, i32 %216)
  %218 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @rgui_frame_buf, i32 0, i32 0), align 4
  %219 = load i32, i32* %10, align 4
  %220 = load i32, i32* %11, align 4
  %221 = load i32, i32* %31, align 4
  %222 = add i32 %221, 1
  %223 = load i32, i32* %32, align 4
  %224 = load i32, i32* %30, align 4
  %225 = add i32 %223, %224
  %226 = load i32, i32* %29, align 4
  %227 = load i32, i32* %41, align 4
  %228 = call i32 @rgui_color_rect(i32 %218, i32 %219, i32 %220, i32 %222, i32 %225, i32 %226, i32 1, i32 %227)
  %229 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @rgui_frame_buf, i32 0, i32 0), align 4
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* %11, align 4
  %232 = load i32, i32* %31, align 4
  %233 = add i32 %232, 5
  %234 = load i32, i32* %32, align 4
  %235 = add i32 %234, 5
  %236 = load i32, i32* %30, align 4
  %237 = sub i32 %236, 10
  %238 = load i32, i32* %41, align 4
  %239 = call i32 @rgui_color_rect(i32 %229, i32 %230, i32 %231, i32 %233, i32 %235, i32 1, i32 %237, i32 %238)
  %240 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @rgui_frame_buf, i32 0, i32 0), align 4
  %241 = load i32, i32* %10, align 4
  %242 = load i32, i32* %11, align 4
  %243 = load i32, i32* %31, align 4
  %244 = add i32 %243, 5
  %245 = load i32, i32* %32, align 4
  %246 = load i32, i32* %28, align 4
  %247 = add i32 %245, %246
  %248 = sub i32 %247, 5
  %249 = load i32, i32* %29, align 4
  %250 = sub i32 %249, 10
  %251 = load i32, i32* %41, align 4
  %252 = call i32 @rgui_color_rect(i32 %240, i32 %241, i32 %242, i32 %244, i32 %248, i32 %250, i32 1, i32 %251)
  br label %253

253:                                              ; preds = %191, %175
  %254 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @rgui_frame_buf, i32 0, i32 0), align 4
  %255 = load i32, i32* %10, align 4
  %256 = load i32, i32* %11, align 4
  %257 = load i32, i32* %31, align 4
  %258 = load i32, i32* %32, align 4
  %259 = load i32, i32* %29, align 4
  %260 = sub i32 %259, 5
  %261 = load i32, i32* %38, align 4
  %262 = load i32, i32* %39, align 4
  %263 = load i32, i32* %40, align 4
  %264 = call i32 @rgui_fill_rect(i32 %254, i32 %255, i32 %256, i32 %257, i32 %258, i32 %260, i32 5, i32 %261, i32 %262, i32 %263)
  %265 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @rgui_frame_buf, i32 0, i32 0), align 4
  %266 = load i32, i32* %10, align 4
  %267 = load i32, i32* %11, align 4
  %268 = load i32, i32* %31, align 4
  %269 = load i32, i32* %29, align 4
  %270 = add i32 %268, %269
  %271 = sub i32 %270, 5
  %272 = load i32, i32* %32, align 4
  %273 = load i32, i32* %30, align 4
  %274 = sub i32 %273, 5
  %275 = load i32, i32* %38, align 4
  %276 = load i32, i32* %39, align 4
  %277 = load i32, i32* %40, align 4
  %278 = call i32 @rgui_fill_rect(i32 %265, i32 %266, i32 %267, i32 %271, i32 %272, i32 5, i32 %274, i32 %275, i32 %276, i32 %277)
  %279 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @rgui_frame_buf, i32 0, i32 0), align 4
  %280 = load i32, i32* %10, align 4
  %281 = load i32, i32* %11, align 4
  %282 = load i32, i32* %31, align 4
  %283 = add i32 %282, 5
  %284 = load i32, i32* %32, align 4
  %285 = load i32, i32* %30, align 4
  %286 = add i32 %284, %285
  %287 = sub i32 %286, 5
  %288 = load i32, i32* %29, align 4
  %289 = sub i32 %288, 5
  %290 = load i32, i32* %38, align 4
  %291 = load i32, i32* %39, align 4
  %292 = load i32, i32* %40, align 4
  %293 = call i32 @rgui_fill_rect(i32 %279, i32 %280, i32 %281, i32 %283, i32 %287, i32 %289, i32 5, i32 %290, i32 %291, i32 %292)
  %294 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @rgui_frame_buf, i32 0, i32 0), align 4
  %295 = load i32, i32* %10, align 4
  %296 = load i32, i32* %11, align 4
  %297 = load i32, i32* %31, align 4
  %298 = load i32, i32* %32, align 4
  %299 = add i32 %298, 5
  %300 = load i32, i32* %30, align 4
  %301 = sub i32 %300, 5
  %302 = load i32, i32* %38, align 4
  %303 = load i32, i32* %39, align 4
  %304 = load i32, i32* %40, align 4
  %305 = call i32 @rgui_fill_rect(i32 %294, i32 %295, i32 %296, i32 %297, i32 %299, i32 5, i32 %301, i32 %302, i32 %303, i32 %304)
  %306 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @rgui_frame_buf, i32 0, i32 0), align 4
  %307 = load i32, i32* %10, align 4
  %308 = load i32, i32* %11, align 4
  %309 = load i32, i32* %31, align 4
  %310 = add i32 %309, 5
  %311 = load i32, i32* %32, align 4
  %312 = load i32, i32* %28, align 4
  %313 = add i32 %311, %312
  %314 = sub i32 %313, 10
  %315 = load i32, i32* %29, align 4
  %316 = sub i32 %315, 10
  %317 = load i32, i32* %38, align 4
  %318 = load i32, i32* %39, align 4
  %319 = load i32, i32* %40, align 4
  %320 = call i32 @rgui_fill_rect(i32 %306, i32 %307, i32 %308, i32 %310, i32 %314, i32 %316, i32 5, i32 %317, i32 %318, i32 %319)
  br label %321

321:                                              ; preds = %253, %147
  %322 = load i8*, i8** %36, align 8
  %323 = call i32 @string_is_empty(i8* %322)
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %396, label %325

325:                                              ; preds = %321
  store i32 0, i32* %46, align 4
  %326 = getelementptr inbounds [255 x i8], [255 x i8]* %42, i64 0, i64 0
  store i8 0, i8* %326, align 16
  %327 = load i32, i32* %8, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %349

329:                                              ; preds = %325
  %330 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %330, i32 0, i32 0
  store i32 1, i32* %331, align 8
  %332 = load i32, i32* %13, align 4
  %333 = load i32, i32* @FONT_WIDTH_STRIDE, align 4
  %334 = mul i32 %332, %333
  %335 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %335, i32 0, i32 1
  store i32 %334, i32* %336, align 4
  %337 = load i8*, i8** %36, align 8
  %338 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %338, i32 0, i32 2
  store i8* %337, i8** %339, align 8
  %340 = getelementptr inbounds [255 x i8], [255 x i8]* %42, i64 0, i64 0
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %342 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i32 0, i32 3
  store i8* %340, i8** %342, align 8
  %343 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 4
  store i32 255, i32* %344, align 8
  %345 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %346 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %345, i32 0, i32 5
  store i32* %46, i32** %346, align 8
  %347 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %348 = call i32 @menu_animation_ticker_smooth(%struct.TYPE_15__* %347)
  br label %363

349:                                              ; preds = %325
  %350 = getelementptr inbounds [255 x i8], [255 x i8]* %42, i64 0, i64 0
  %351 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %352 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %351, i32 0, i32 0
  store i8* %350, i8** %352, align 8
  %353 = load i32, i32* %13, align 4
  %354 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %354, i32 0, i32 1
  store i32 %353, i32* %355, align 8
  %356 = load i8*, i8** %36, align 8
  %357 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i32 0, i32 2
  store i8* %356, i8** %358, align 8
  %359 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %360 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %359, i32 0, i32 3
  store i32 1, i32* %360, align 8
  %361 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %362 = call i32 @menu_animation_ticker(%struct.TYPE_14__* %361)
  br label %363

363:                                              ; preds = %349, %329
  %364 = getelementptr inbounds [255 x i8], [255 x i8]* %42, i64 0, i64 0
  %365 = call i32 @utf8len(i8* %364)
  %366 = load i32, i32* @FONT_WIDTH_STRIDE, align 4
  %367 = mul i32 %365, %366
  store i32 %367, i32* %43, align 4
  %368 = load i32, i32* %46, align 4
  %369 = load i32, i32* %31, align 4
  %370 = add i32 %368, %369
  %371 = load i32, i32* %15, align 4
  %372 = add i32 %370, %371
  %373 = load i32, i32* %13, align 4
  %374 = load i32, i32* @FONT_WIDTH_STRIDE, align 4
  %375 = mul i32 %373, %374
  %376 = load i32, i32* %43, align 4
  %377 = sub i32 %375, %376
  %378 = udiv i32 %377, 2
  %379 = add i32 %372, %378
  store i32 %379, i32* %44, align 4
  %380 = load i32, i32* %32, align 4
  %381 = load i32, i32* %16, align 4
  %382 = add i32 %380, %381
  store i32 %382, i32* %45, align 4
  %383 = load i32, i32* %10, align 4
  %384 = load i32, i32* %44, align 4
  %385 = load i32, i32* %45, align 4
  %386 = getelementptr inbounds [255 x i8], [255 x i8]* %42, i64 0, i64 0
  %387 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %387, i32 0, i32 2
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 8
  %391 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %392 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %391, i32 0, i32 2
  %393 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = call i32 @blit_line(i32 %383, i32 %384, i32 %385, i8* %386, i32 %390, i32 %394)
  br label %396

396:                                              ; preds = %363, %321
  %397 = load i8*, i8** %35, align 8
  %398 = call i64 @strlen(i8* %397)
  %399 = trunc i64 %398 to i32
  store i32 %399, i32* %51, align 4
  %400 = load i32, i32* %51, align 4
  %401 = load i32, i32* %14, align 4
  %402 = icmp ugt i32 %400, %401
  br i1 %402, label %403, label %408

403:                                              ; preds = %396
  %404 = load i32, i32* %51, align 4
  %405 = load i32, i32* %14, align 4
  %406 = sub i32 %404, %405
  store i32 %406, i32* %47, align 4
  %407 = load i32, i32* %14, align 4
  store i32 %407, i32* %51, align 4
  br label %409

408:                                              ; preds = %396
  store i32 0, i32* %47, align 4
  br label %409

409:                                              ; preds = %408, %403
  %410 = load i32, i32* %31, align 4
  %411 = load i32, i32* %15, align 4
  %412 = add i32 %410, %411
  store i32 %412, i32* %48, align 4
  %413 = load i32, i32* %32, align 4
  %414 = load i32, i32* %16, align 4
  %415 = add i32 %413, %414
  %416 = load i32, i32* @FONT_HEIGHT_STRIDE, align 4
  %417 = add i32 %415, %416
  store i32 %417, i32* %49, align 4
  %418 = load i8*, i8** %35, align 8
  %419 = load i32, i32* %47, align 4
  %420 = zext i32 %419 to i64
  %421 = getelementptr inbounds i8, i8* %418, i64 %420
  %422 = call i32 @string_is_empty(i8* %421)
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %441, label %424

424:                                              ; preds = %409
  %425 = load i32, i32* %10, align 4
  %426 = load i32, i32* %48, align 4
  %427 = load i32, i32* %49, align 4
  %428 = load i8*, i8** %35, align 8
  %429 = load i32, i32* %47, align 4
  %430 = zext i32 %429 to i64
  %431 = getelementptr inbounds i8, i8* %428, i64 %430
  %432 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %433 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %432, i32 0, i32 2
  %434 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %437 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %436, i32 0, i32 2
  %438 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 4
  %440 = call i32 @blit_line(i32 %425, i32 %426, i32 %427, i8* %431, i32 %435, i32 %439)
  br label %441

441:                                              ; preds = %424, %409
  %442 = load i32, i32* %31, align 4
  %443 = load i32, i32* %15, align 4
  %444 = add i32 %442, %443
  %445 = load i32, i32* %51, align 4
  %446 = load i32, i32* @FONT_WIDTH_STRIDE, align 4
  %447 = mul i32 %445, %446
  %448 = add i32 %444, %447
  store i32 %448, i32* %50, align 4
  %449 = load i32, i32* %10, align 4
  %450 = load i32, i32* %50, align 4
  %451 = load i32, i32* %49, align 4
  %452 = load i32, i32* @RGUI_SYMBOL_TEXT_CURSOR, align 4
  %453 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %454 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %453, i32 0, i32 2
  %455 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %454, i32 0, i32 2
  %456 = load i32, i32* %455, align 8
  %457 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %458 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %457, i32 0, i32 2
  %459 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %458, i32 0, i32 1
  %460 = load i32, i32* %459, align 4
  %461 = call i32 @blit_symbol(i32 %449, i32 %450, i32 %451, i32 %452, i32 %456, i32 %460)
  store i64 0, i64* %12, align 8
  br label %462

462:                                              ; preds = %742, %441
  %463 = load i64, i64* %12, align 8
  %464 = icmp ult i64 %463, 44
  br i1 %464, label %465, label %745

465:                                              ; preds = %462
  %466 = load i64, i64* %12, align 8
  %467 = load i32, i32* @OSK_CHARS_PER_LINE, align 4
  %468 = zext i32 %467 to i64
  %469 = udiv i64 %466, %468
  %470 = trunc i64 %469 to i32
  store i32 %470, i32* %52, align 4
  %471 = load i64, i64* %12, align 8
  %472 = load i32, i32* %52, align 4
  %473 = load i32, i32* @OSK_CHARS_PER_LINE, align 4
  %474 = mul i32 %472, %473
  %475 = zext i32 %474 to i64
  %476 = sub i64 %471, %475
  %477 = trunc i64 %476 to i32
  store i32 %477, i32* %53, align 4
  %478 = load i32, i32* %31, align 4
  %479 = load i32, i32* %27, align 4
  %480 = add i32 %478, %479
  %481 = load i32, i32* %19, align 4
  %482 = add i32 %480, %481
  %483 = load i32, i32* %53, align 4
  %484 = load i32, i32* %17, align 4
  %485 = mul i32 %483, %484
  %486 = add i32 %482, %485
  store i32 %486, i32* %54, align 4
  %487 = load i32, i32* %32, align 4
  %488 = load i32, i32* %28, align 4
  %489 = add i32 %487, %488
  %490 = load i32, i32* %20, align 4
  %491 = add i32 %489, %490
  %492 = load i32, i32* %52, align 4
  %493 = load i32, i32* %18, align 4
  %494 = mul i32 %492, %493
  %495 = add i32 %491, %494
  store i32 %495, i32* %55, align 4
  %496 = load i8**, i8*** %34, align 8
  %497 = load i64, i64* %12, align 8
  %498 = getelementptr inbounds i8*, i8** %496, i64 %497
  %499 = load i8*, i8** %498, align 8
  store i8* %499, i8** %56, align 8
  %500 = load i8*, i8** %56, align 8
  %501 = call i64 @string_is_equal(i8* %500, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %502 = icmp ne i64 %501, 0
  br i1 %502, label %503, label %517

503:                                              ; preds = %465
  %504 = load i32, i32* %10, align 4
  %505 = load i32, i32* %54, align 4
  %506 = load i32, i32* %55, align 4
  %507 = load i32, i32* @RGUI_SYMBOL_BACKSPACE, align 4
  %508 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %509 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %508, i32 0, i32 2
  %510 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %509, i32 0, i32 2
  %511 = load i32, i32* %510, align 8
  %512 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %513 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %512, i32 0, i32 2
  %514 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %513, i32 0, i32 1
  %515 = load i32, i32* %514, align 4
  %516 = call i32 @blit_symbol(i32 %504, i32 %505, i32 %506, i32 %507, i32 %511, i32 %515)
  br label %607

517:                                              ; preds = %465
  %518 = load i8*, i8** %56, align 8
  %519 = call i64 @string_is_equal(i8* %518, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %520 = icmp ne i64 %519, 0
  br i1 %520, label %521, label %535

521:                                              ; preds = %517
  %522 = load i32, i32* %10, align 4
  %523 = load i32, i32* %54, align 4
  %524 = load i32, i32* %55, align 4
  %525 = load i32, i32* @RGUI_SYMBOL_ENTER, align 4
  %526 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %527 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %526, i32 0, i32 2
  %528 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %527, i32 0, i32 2
  %529 = load i32, i32* %528, align 8
  %530 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %531 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %530, i32 0, i32 2
  %532 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %531, i32 0, i32 1
  %533 = load i32, i32* %532, align 4
  %534 = call i32 @blit_symbol(i32 %522, i32 %523, i32 %524, i32 %525, i32 %529, i32 %533)
  br label %606

535:                                              ; preds = %517
  %536 = load i8*, i8** %56, align 8
  %537 = call i64 @string_is_equal(i8* %536, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %539, label %553

539:                                              ; preds = %535
  %540 = load i32, i32* %10, align 4
  %541 = load i32, i32* %54, align 4
  %542 = load i32, i32* %55, align 4
  %543 = load i32, i32* @RGUI_SYMBOL_SHIFT_UP, align 4
  %544 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %545 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %544, i32 0, i32 2
  %546 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %545, i32 0, i32 2
  %547 = load i32, i32* %546, align 8
  %548 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %549 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %548, i32 0, i32 2
  %550 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %549, i32 0, i32 1
  %551 = load i32, i32* %550, align 4
  %552 = call i32 @blit_symbol(i32 %540, i32 %541, i32 %542, i32 %543, i32 %547, i32 %551)
  br label %605

553:                                              ; preds = %535
  %554 = load i8*, i8** %56, align 8
  %555 = call i64 @string_is_equal(i8* %554, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %556 = icmp ne i64 %555, 0
  br i1 %556, label %557, label %571

557:                                              ; preds = %553
  %558 = load i32, i32* %10, align 4
  %559 = load i32, i32* %54, align 4
  %560 = load i32, i32* %55, align 4
  %561 = load i32, i32* @RGUI_SYMBOL_SHIFT_DOWN, align 4
  %562 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %563 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %562, i32 0, i32 2
  %564 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %563, i32 0, i32 2
  %565 = load i32, i32* %564, align 8
  %566 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %567 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %566, i32 0, i32 2
  %568 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %567, i32 0, i32 1
  %569 = load i32, i32* %568, align 4
  %570 = call i32 @blit_symbol(i32 %558, i32 %559, i32 %560, i32 %561, i32 %565, i32 %569)
  br label %604

571:                                              ; preds = %553
  %572 = load i8*, i8** %56, align 8
  %573 = call i64 @string_is_equal(i8* %572, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %574 = icmp ne i64 %573, 0
  br i1 %574, label %575, label %589

575:                                              ; preds = %571
  %576 = load i32, i32* %10, align 4
  %577 = load i32, i32* %54, align 4
  %578 = load i32, i32* %55, align 4
  %579 = load i32, i32* @RGUI_SYMBOL_NEXT, align 4
  %580 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %581 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %580, i32 0, i32 2
  %582 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %581, i32 0, i32 2
  %583 = load i32, i32* %582, align 8
  %584 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %585 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %584, i32 0, i32 2
  %586 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %585, i32 0, i32 1
  %587 = load i32, i32* %586, align 4
  %588 = call i32 @blit_symbol(i32 %576, i32 %577, i32 %578, i32 %579, i32 %583, i32 %587)
  br label %603

589:                                              ; preds = %571
  %590 = load i32, i32* %10, align 4
  %591 = load i32, i32* %54, align 4
  %592 = load i32, i32* %55, align 4
  %593 = load i8*, i8** %56, align 8
  %594 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %595 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %594, i32 0, i32 2
  %596 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %595, i32 0, i32 2
  %597 = load i32, i32* %596, align 8
  %598 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %599 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %598, i32 0, i32 2
  %600 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %599, i32 0, i32 1
  %601 = load i32, i32* %600, align 4
  %602 = call i32 @blit_line(i32 %590, i32 %591, i32 %592, i8* %593, i32 %597, i32 %601)
  br label %603

603:                                              ; preds = %589, %575
  br label %604

604:                                              ; preds = %603, %557
  br label %605

605:                                              ; preds = %604, %539
  br label %606

606:                                              ; preds = %605, %521
  br label %607

607:                                              ; preds = %606, %503
  %608 = load i64, i64* %12, align 8
  %609 = load i32, i32* %33, align 4
  %610 = sext i32 %609 to i64
  %611 = icmp eq i64 %608, %610
  br i1 %611, label %612, label %741

612:                                              ; preds = %607
  %613 = load i32, i32* %31, align 4
  %614 = load i32, i32* %27, align 4
  %615 = add i32 %613, %614
  %616 = load i32, i32* %23, align 4
  %617 = add i32 %615, %616
  %618 = load i32, i32* %53, align 4
  %619 = load i32, i32* %17, align 4
  %620 = mul i32 %618, %619
  %621 = add i32 %617, %620
  store i32 %621, i32* %57, align 4
  %622 = load i32, i32* %32, align 4
  %623 = load i32, i32* %28, align 4
  %624 = add i32 %622, %623
  %625 = load i32, i32* %24, align 4
  %626 = add i32 %624, %625
  %627 = load i32, i32* %52, align 4
  %628 = load i32, i32* %18, align 4
  %629 = mul i32 %627, %628
  %630 = add i32 %626, %629
  store i32 %630, i32* %58, align 4
  %631 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %632 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %631, i32 0, i32 3
  %633 = load i64, i64* %632, align 8
  %634 = icmp ne i64 %633, 0
  br i1 %634, label %635, label %690

635:                                              ; preds = %612
  %636 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @rgui_frame_buf, i32 0, i32 0), align 4
  %637 = load i32, i32* %10, align 4
  %638 = load i32, i32* %11, align 4
  %639 = load i32, i32* %57, align 4
  %640 = add i32 %639, 1
  %641 = load i32, i32* %58, align 4
  %642 = add i32 %641, 1
  %643 = load i32, i32* %22, align 4
  %644 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %645 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %644, i32 0, i32 2
  %646 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %645, i32 0, i32 1
  %647 = load i32, i32* %646, align 4
  %648 = call i32 @rgui_color_rect(i32 %636, i32 %637, i32 %638, i32 %640, i32 %642, i32 1, i32 %643, i32 %647)
  %649 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @rgui_frame_buf, i32 0, i32 0), align 4
  %650 = load i32, i32* %10, align 4
  %651 = load i32, i32* %11, align 4
  %652 = load i32, i32* %57, align 4
  %653 = add i32 %652, 1
  %654 = load i32, i32* %58, align 4
  %655 = add i32 %654, 1
  %656 = load i32, i32* %21, align 4
  %657 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %658 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %657, i32 0, i32 2
  %659 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %658, i32 0, i32 1
  %660 = load i32, i32* %659, align 4
  %661 = call i32 @rgui_color_rect(i32 %649, i32 %650, i32 %651, i32 %653, i32 %655, i32 %656, i32 1, i32 %660)
  %662 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @rgui_frame_buf, i32 0, i32 0), align 4
  %663 = load i32, i32* %10, align 4
  %664 = load i32, i32* %11, align 4
  %665 = load i32, i32* %57, align 4
  %666 = load i32, i32* %21, align 4
  %667 = add i32 %665, %666
  %668 = load i32, i32* %58, align 4
  %669 = add i32 %668, 1
  %670 = load i32, i32* %22, align 4
  %671 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %672 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %671, i32 0, i32 2
  %673 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %672, i32 0, i32 1
  %674 = load i32, i32* %673, align 4
  %675 = call i32 @rgui_color_rect(i32 %662, i32 %663, i32 %664, i32 %667, i32 %669, i32 1, i32 %670, i32 %674)
  %676 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @rgui_frame_buf, i32 0, i32 0), align 4
  %677 = load i32, i32* %10, align 4
  %678 = load i32, i32* %11, align 4
  %679 = load i32, i32* %57, align 4
  %680 = add i32 %679, 1
  %681 = load i32, i32* %58, align 4
  %682 = load i32, i32* %22, align 4
  %683 = add i32 %681, %682
  %684 = load i32, i32* %21, align 4
  %685 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %686 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %685, i32 0, i32 2
  %687 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %686, i32 0, i32 1
  %688 = load i32, i32* %687, align 4
  %689 = call i32 @rgui_color_rect(i32 %676, i32 %677, i32 %678, i32 %680, i32 %683, i32 %684, i32 1, i32 %688)
  br label %690

690:                                              ; preds = %635, %612
  %691 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @rgui_frame_buf, i32 0, i32 0), align 4
  %692 = load i32, i32* %10, align 4
  %693 = load i32, i32* %11, align 4
  %694 = load i32, i32* %57, align 4
  %695 = load i32, i32* %58, align 4
  %696 = load i32, i32* %22, align 4
  %697 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %698 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %697, i32 0, i32 2
  %699 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %698, i32 0, i32 0
  %700 = load i32, i32* %699, align 8
  %701 = call i32 @rgui_color_rect(i32 %691, i32 %692, i32 %693, i32 %694, i32 %695, i32 1, i32 %696, i32 %700)
  %702 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @rgui_frame_buf, i32 0, i32 0), align 4
  %703 = load i32, i32* %10, align 4
  %704 = load i32, i32* %11, align 4
  %705 = load i32, i32* %57, align 4
  %706 = load i32, i32* %58, align 4
  %707 = load i32, i32* %21, align 4
  %708 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %709 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %708, i32 0, i32 2
  %710 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %709, i32 0, i32 0
  %711 = load i32, i32* %710, align 8
  %712 = call i32 @rgui_color_rect(i32 %702, i32 %703, i32 %704, i32 %705, i32 %706, i32 %707, i32 1, i32 %711)
  %713 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @rgui_frame_buf, i32 0, i32 0), align 4
  %714 = load i32, i32* %10, align 4
  %715 = load i32, i32* %11, align 4
  %716 = load i32, i32* %57, align 4
  %717 = load i32, i32* %21, align 4
  %718 = add i32 %716, %717
  %719 = sub i32 %718, 1
  %720 = load i32, i32* %58, align 4
  %721 = load i32, i32* %22, align 4
  %722 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %723 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %722, i32 0, i32 2
  %724 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %723, i32 0, i32 0
  %725 = load i32, i32* %724, align 8
  %726 = call i32 @rgui_color_rect(i32 %713, i32 %714, i32 %715, i32 %719, i32 %720, i32 1, i32 %721, i32 %725)
  %727 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @rgui_frame_buf, i32 0, i32 0), align 4
  %728 = load i32, i32* %10, align 4
  %729 = load i32, i32* %11, align 4
  %730 = load i32, i32* %57, align 4
  %731 = load i32, i32* %58, align 4
  %732 = load i32, i32* %22, align 4
  %733 = add i32 %731, %732
  %734 = sub i32 %733, 1
  %735 = load i32, i32* %21, align 4
  %736 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %737 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %736, i32 0, i32 2
  %738 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %737, i32 0, i32 0
  %739 = load i32, i32* %738, align 8
  %740 = call i32 @rgui_color_rect(i32 %727, i32 %728, i32 %729, i32 %730, i32 %734, i32 %735, i32 1, i32 %739)
  br label %741

741:                                              ; preds = %690, %607
  br label %742

742:                                              ; preds = %741
  %743 = load i64, i64* %12, align 8
  %744 = add i64 %743, 1
  store i64 %744, i64* %12, align 8
  br label %462

745:                                              ; preds = %76, %138, %462
  ret void
}

declare dso_local i32 @menu_event_get_osk_ptr(...) #1

declare dso_local i8** @menu_event_get_osk_grid(...) #1

declare dso_local i8* @menu_input_dialog_get_buffer(...) #1

declare dso_local i8* @menu_input_dialog_get_label_buffer(...) #1

declare dso_local i32 @menu_display_get_fb_size(i32*, i32*, i64*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @rgui_render_messagebox(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @rgui_fill_rect(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rgui_color_rect(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @menu_animation_ticker_smooth(%struct.TYPE_15__*) #1

declare dso_local i32 @menu_animation_ticker(%struct.TYPE_14__*) #1

declare dso_local i32 @utf8len(i8*) #1

declare dso_local i32 @blit_line(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @blit_symbol(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
