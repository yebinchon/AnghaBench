; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_msg_queue_push.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_msg_queue_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i32, i32, i32, i32, i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, float, i32, i32, i32, float, i32, i32, i32, float, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32*, i64, i64, i32, %struct.TYPE_13__*, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, float, float*, %struct.TYPE_14__*, i32 (%struct.TYPE_14__*)*, i32 }

@msg_queue = common dso_local global i32 0, align 4
@msg_queue_has_icons = common dso_local global i64 0, align 8
@font_regular = common dso_local global i32 0, align 4
@msg_queue_text_scale_factor = common dso_local global i32 0, align 4
@simple_widget_padding = common dso_local global i32 0, align 4
@msg_queue_default_rect_width = common dso_local global i32 0, align 4
@msg_queue_glyph_width = common dso_local global i32 0, align 4
@EASING_OUT_QUAD = common dso_local global i32 0, align 4
@MSG_QUEUE_ANIMATION_DURATION = common dso_local global i32 0, align 4
@msg_queue_height = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_widgets_msg_queue_push(%struct.TYPE_13__* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_12__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %17, align 8
  %27 = load i32, i32* @msg_queue, align 4
  %28 = call i64 @fifo_write_avail(i32 %27)
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %355

30:                                               ; preds = %8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %32 = icmp ne %struct.TYPE_13__* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 6
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = icmp ne %struct.TYPE_14__* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 6
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %17, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 23
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %44, align 8
  br label %45

45:                                               ; preds = %38, %33, %30
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %47 = icmp ne %struct.TYPE_14__* %46, null
  br i1 %47, label %238, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** %10, align 8
  store i8* %49, i8** %18, align 8
  %50 = call i64 @calloc(i32 1, i32 136)
  %51 = inttoptr i64 %50 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %51, %struct.TYPE_14__** %17, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %53 = icmp ne %struct.TYPE_13__* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %18, align 8
  br label %58

58:                                               ; preds = %54, %48
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 24
  store i64 0, i64* %63, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  store float 1.000000e+00, float* %65, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  store i32 0, i32* %67, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 3
  store i32 0, i32* %69, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 20
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 23
  store %struct.TYPE_13__* %72, %struct.TYPE_13__** %74, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 4
  store i32 0, i32* %76, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 19
  store i32* null, i32** %78, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 5
  store float 0.000000e+00, float* %80, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 6
  store i32 0, i32* %82, align 8
  %83 = load i64, i64* @msg_queue_has_icons, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %58
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 7
  store i32 0, i32* %87, align 4
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 8
  store i32 0, i32* %89, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 9
  store float 0.000000e+00, float* %91, align 4
  br label %99

92:                                               ; preds = %58
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 7
  store i32 1, i32* %94, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 8
  store i32 0, i32* %96, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 9
  store float 1.000000e+00, float* %98, align 4
  br label %99

99:                                               ; preds = %92, %85
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %101 = icmp ne %struct.TYPE_13__* %100, null
  br i1 %101, label %102, label %163

102:                                              ; preds = %99
  %103 = load i8*, i8** %18, align 8
  %104 = call i8* @strdup(i8* %103)
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 10
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** %18, align 8
  %108 = call i64 @strlen(i8* %107)
  %109 = trunc i64 %108 to i32
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 11
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 18
  store i32 %114, i32* %116, align 4
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 17
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 16
  store i32 %124, i32* %126, align 4
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 15
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 22
  store i32 %134, i32* %136, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 12
  store i8* %139, i8** %141, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 13
  store i32 1, i32* %143, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 7
  store i32 1, i32* %145, align 4
  %146 = load i32, i32* @font_regular, align 4
  %147 = load i8*, i8** %18, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 11
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @msg_queue_text_scale_factor, align 4
  %152 = call i32 @font_driver_get_message_width(i32 %146, i8* %147, i32 %150, i32 %151)
  %153 = load i32, i32* @simple_widget_padding, align 4
  %154 = sdiv i32 %153, 2
  %155 = add nsw i32 %152, %154
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 14
  store i32 %155, i32* %157, align 4
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 6
  store %struct.TYPE_14__* %158, %struct.TYPE_14__** %160, align 8
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 21
  store i64 0, i64* %162, align 8
  br label %235

163:                                              ; preds = %99
  %164 = load i8*, i8** %18, align 8
  %165 = call i64 @strlen(i8* %164)
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %19, align 4
  %167 = load i8*, i8** %18, align 8
  %168 = call i8* @strdup(i8* %167)
  store i8* %168, i8** %20, align 8
  %169 = load i32, i32* @msg_queue_default_rect_width, align 4
  store i32 %169, i32* %21, align 4
  %170 = load i32, i32* @font_regular, align 4
  %171 = load i8*, i8** %18, align 8
  %172 = load i32, i32* %19, align 4
  %173 = load i32, i32* @msg_queue_text_scale_factor, align 4
  %174 = call i32 @font_driver_get_message_width(i32 %170, i8* %171, i32 %172, i32 %173)
  store i32 %174, i32* %22, align 4
  %175 = call %struct.TYPE_12__* (...) @config_get_ptr()
  store %struct.TYPE_12__* %175, %struct.TYPE_12__** %23, align 8
  %176 = load i32, i32* @msg_queue_text_scale_factor, align 4
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = mul nsw i32 %176, %180
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 6
  store i32 %181, i32* %183, align 8
  %184 = load i32, i32* %22, align 4
  %185 = load i32, i32* %21, align 4
  %186 = icmp ugt i32 %184, %185
  br i1 %186, label %187, label %212

187:                                              ; preds = %163
  %188 = load i32, i32* %22, align 4
  %189 = udiv i32 %188, 2
  %190 = load i32, i32* %21, align 4
  %191 = icmp ugt i32 %189, %190
  br i1 %191, label %192, label %199

192:                                              ; preds = %187
  %193 = load i32, i32* %22, align 4
  %194 = udiv i32 %193, 2
  store i32 %194, i32* %21, align 4
  %195 = load i32, i32* @msg_queue_glyph_width, align 4
  %196 = mul nsw i32 10, %195
  %197 = load i32, i32* %21, align 4
  %198 = add i32 %197, %196
  store i32 %198, i32* %21, align 4
  br label %199

199:                                              ; preds = %192, %187
  %200 = load i8*, i8** %20, align 8
  %201 = load i8*, i8** %20, align 8
  %202 = load i32, i32* %19, align 4
  %203 = udiv i32 %202, 2
  %204 = add i32 %203, 10
  %205 = call i32 @word_wrap(i8* %200, i8* %201, i32 %204, i32 0, i32 2)
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 8
  %209 = sitofp i32 %208 to float
  %210 = fmul float %209, 2.500000e+00
  %211 = fptosi float %210 to i32
  store i32 %211, i32* %207, align 8
  br label %220

212:                                              ; preds = %163
  %213 = load i32, i32* %22, align 4
  store i32 %213, i32* %21, align 4
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 8
  %217 = sitofp i32 %216 to float
  %218 = fmul float %217, 0x3FF59999A0000000
  %219 = fptosi float %218 to i32
  store i32 %219, i32* %215, align 8
  br label %220

220:                                              ; preds = %212, %199
  %221 = load i8*, i8** %20, align 8
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 10
  store i8* %221, i8** %223, align 8
  %224 = load i8*, i8** %20, align 8
  %225 = call i64 @strlen(i8* %224)
  %226 = trunc i64 %225 to i32
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 11
  store i32 %226, i32* %228, align 8
  %229 = load i32, i32* %21, align 4
  %230 = load i32, i32* @simple_widget_padding, align 4
  %231 = sdiv i32 %230, 2
  %232 = add i32 %229, %231
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 14
  store i32 %232, i32* %234, align 4
  br label %235

235:                                              ; preds = %220, %102
  %236 = load i32, i32* @msg_queue, align 4
  %237 = call i32 @fifo_write(i32 %236, %struct.TYPE_14__** %17, i32 8)
  br label %354

238:                                              ; preds = %45
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %238
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 20
  %246 = call i32 @menu_timer_kill(i64* %245)
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 4
  store i32 0, i32* %248, align 8
  br label %249

249:                                              ; preds = %243, %238
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 12
  %255 = load i8*, i8** %254, align 8
  %256 = icmp ne i8* %252, %255
  br i1 %256, label %257, label %333

257:                                              ; preds = %249
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 0
  %260 = load i8*, i8** %259, align 8
  %261 = call i64 @strlen(i8* %260)
  %262 = trunc i64 %261 to i32
  store i32 %262, i32* %24, align 4
  %263 = load i32, i32* @font_regular, align 4
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 0
  %266 = load i8*, i8** %265, align 8
  %267 = load i32, i32* %24, align 4
  %268 = load i32, i32* @msg_queue_text_scale_factor, align 4
  %269 = call i32 @font_driver_get_message_width(i32 %263, i8* %266, i32 %267, i32 %268)
  store i32 %269, i32* %25, align 4
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 19
  %272 = load i32*, i32** %271, align 8
  %273 = icmp ne i32* %272, null
  br i1 %273, label %274, label %281

274:                                              ; preds = %257
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 19
  %277 = load i32*, i32** %276, align 8
  %278 = call i32 @free(i32* %277)
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 19
  store i32* null, i32** %280, align 8
  br label %281

281:                                              ; preds = %274, %257
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 0
  %284 = load i8*, i8** %283, align 8
  %285 = call i8* @strdup(i8* %284)
  %286 = bitcast i8* %285 to i32*
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 19
  store i32* %286, i32** %288, align 8
  %289 = load i32, i32* %24, align 4
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 11
  store i32 %289, i32* %291, align 8
  %292 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 0
  %294 = load i8*, i8** %293, align 8
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 12
  store i8* %294, i8** %296, align 8
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 5
  store float 0.000000e+00, float* %298, align 4
  %299 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 5
  %301 = load i32, i32* %300, align 8
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %322, label %303

303:                                              ; preds = %281
  %304 = load i32, i32* @EASING_OUT_QUAD, align 4
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 6
  store i32 %304, i32* %305, align 8
  %306 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %307 = ptrtoint %struct.TYPE_14__* %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  store i64 %307, i64* %308, align 8
  %309 = load i32, i32* @MSG_QUEUE_ANIMATION_DURATION, align 4
  %310 = mul nsw i32 %309, 2
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  store i32 %310, i32* %311, align 8
  %312 = load float, float* @msg_queue_height, align 4
  %313 = fdiv float %312, 2.000000e+00
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 2
  store float %313, float* %314, align 4
  %315 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 5
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 3
  store float* %316, float** %317, align 8
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 5
  store i32 (%struct.TYPE_14__*)* @msg_widget_msg_transition_animation_done, i32 (%struct.TYPE_14__*)** %318, align 8
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 4
  store %struct.TYPE_14__* %319, %struct.TYPE_14__** %320, align 8
  %321 = call i32 @menu_animation_push(%struct.TYPE_15__* %26)
  br label %325

322:                                              ; preds = %281
  %323 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %324 = call i32 @msg_widget_msg_transition_animation_done(%struct.TYPE_14__* %323)
  br label %325

325:                                              ; preds = %322, %303
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i32 0, i32 13
  %328 = load i32, i32* %327, align 8
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %327, align 8
  %330 = load i32, i32* %25, align 4
  %331 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %331, i32 0, i32 14
  store i32 %330, i32* %332, align 4
  br label %333

333:                                              ; preds = %325, %249
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %335 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i32 0, i32 4
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %338 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %337, i32 0, i32 18
  store i32 %336, i32* %338, align 4
  %339 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 3
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %343 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %342, i32 0, i32 17
  store i32 %341, i32* %343, align 8
  %344 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %348 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %347, i32 0, i32 16
  store i32 %346, i32* %348, align 4
  %349 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 8
  %352 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %353 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %352, i32 0, i32 15
  store i32 %351, i32* %353, align 8
  br label %354

354:                                              ; preds = %333, %235
  br label %355

355:                                              ; preds = %354, %8
  ret void
}

declare dso_local i64 @fifo_write_avail(i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @font_driver_get_message_width(i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @config_get_ptr(...) #1

declare dso_local i32 @word_wrap(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @fifo_write(i32, %struct.TYPE_14__**, i32) #1

declare dso_local i32 @menu_timer_kill(i64*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @msg_widget_msg_transition_animation_done(%struct.TYPE_14__*) #1

declare dso_local i32 @menu_animation_push(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
