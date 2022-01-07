; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_draw_regular_msg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_draw_regular_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_25__ = type { float, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }

@menu_widgets_icons_textures = common dso_local global i64* null, align 8
@MENU_WIDGETS_ICON_INFO = common dso_local global i64 0, align 8
@msg_queue_info = common dso_local global i32 0, align 4
@menu_widgets_pure_white = common dso_local global i32 0, align 4
@msg_queue_background = common dso_local global i32 0, align 4
@font_regular = common dso_local global i32 0, align 4
@font_bold = common dso_local global i32 0, align 4
@font_raster_regular = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@font_raster_bold = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@msg_queue_scissor_start_x = common dso_local global i32 0, align 4
@simple_widget_padding = common dso_local global i32 0, align 4
@msg_queue_has_icons = common dso_local global i64 0, align 8
@msg_queue_icon_size_x = common dso_local global i32 0, align 4
@msg_queue_icon_size_y = common dso_local global i32 0, align 4
@msg_queue_icon_rect = common dso_local global i64 0, align 8
@msg_queue_spacing = common dso_local global i64 0, align 8
@msg_queue_icon_offset_y = common dso_local global i32 0, align 4
@msg_queue_rect_start_x = common dso_local global i32 0, align 4
@msg_queue_height = common dso_local global i32 0, align 4
@msg_queue_regular_text_start = common dso_local global i64 0, align 8
@msg_queue_regular_text_base_y = common dso_local global i32 0, align 4
@TEXT_ALIGN_LEFT = common dso_local global i32 0, align 4
@msg_queue_text_scale_factor = common dso_local global i32 0, align 4
@msg_queue_icon = common dso_local global i64 0, align 8
@msg_queue_icon_outline = common dso_local global i64 0, align 8
@msg_queue_internal_icon_size = common dso_local global i32 0, align 4
@msg_queue_internal_icon_offset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_24__*)* @menu_widgets_draw_regular_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_widgets_draw_regular_msg(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load i64*, i64** @menu_widgets_icons_textures, align 8
  %12 = load i64, i64* @MENU_WIDGETS_ICON_INFO, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  br label %15

15:                                               ; preds = %10, %2
  %16 = load i32, i32* @msg_queue_info, align 4
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 0
  %19 = load float, float* %18, align 8
  %20 = call i32 @menu_display_set_alpha(i32 %16, float %19)
  %21 = load i32, i32* @menu_widgets_pure_white, align 4
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 0
  %24 = load float, float* %23, align 8
  %25 = call i32 @menu_display_set_alpha(i32 %21, float %24)
  %26 = load i32, i32* @msg_queue_background, align 4
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 0
  %29 = load float, float* %28, align 8
  %30 = call i32 @menu_display_set_alpha(i32 %26, float %29)
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %15
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %77

40:                                               ; preds = %35, %15
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @font_regular, align 4
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %49 = call i32 @font_driver_flush(i32 %43, i32 %46, i32 %47, %struct.TYPE_24__* %48)
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @font_bold, align 4
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %58 = call i32 @font_driver_flush(i32 %52, i32 %55, i32 %56, %struct.TYPE_24__* %57)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @font_raster_regular, i32 0, i32 0, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @font_raster_bold, i32 0, i32 0, i32 0, i32 0), align 8
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %60 = load i32, i32* @msg_queue_scissor_start_x, align 4
  %61 = load i32, i32* @msg_queue_scissor_start_x, align 4
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %61, %64
  %66 = load i32, i32* @simple_widget_padding, align 4
  %67 = mul nsw i32 %66, 2
  %68 = sub nsw i32 %65, %67
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = mul nsw i32 %68, %71
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @menu_display_scissor_begin(%struct.TYPE_24__* %59, i32 %60, i32 0, i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %40, %35
  %78 = load i64, i64* @msg_queue_has_icons, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %107

80:                                               ; preds = %77
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %82 = call i32 @menu_display_blend_begin(%struct.TYPE_24__* %81)
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %84 = load i32, i32* @msg_queue_icon_size_x, align 4
  %85 = load i32, i32* @msg_queue_icon_size_y, align 4
  %86 = load i64, i64* @msg_queue_icon_rect, align 8
  %87 = load i64, i64* @msg_queue_spacing, align 8
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %90, %93
  %95 = load i32, i32* @msg_queue_icon_offset_y, align 4
  %96 = sub nsw i32 %94, %95
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @msg_queue_background, align 4
  %104 = call i32 @menu_widgets_draw_icon(%struct.TYPE_24__* %83, i32 %84, i32 %85, i64 %86, i64 %87, i32 %96, i32 %99, i32 %102, i32 0, i32 1, i32 %103)
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %106 = call i32 @menu_display_blend_end(%struct.TYPE_24__* %105)
  br label %107

107:                                              ; preds = %80, %77
  %108 = load i32, i32* @simple_widget_padding, align 4
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %108, %111
  store i32 %112, i32* %6, align 4
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %114 = load i32, i32* @msg_queue_rect_start_x, align 4
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %117, %120
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @msg_queue_height, align 4
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @msg_queue_background, align 4
  %131 = call i32 @menu_display_draw_quad(%struct.TYPE_24__* %113, i32 %114, i32 %121, i32 %122, i32 %123, i32 %126, i32 %129, i32 %130)
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 0
  %134 = load float, float* %133, align 8
  %135 = fmul float %134, 2.550000e+02
  %136 = fptoui float %135 to i32
  %137 = call i32 @COLOR_TEXT_ALPHA(i32 -256, i32 %136)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* @font_regular, align 4
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 4
  %142 = load i64, i64* @msg_queue_regular_text_start, align 8
  %143 = sitofp i64 %142 to float
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = sitofp i32 %146 to float
  %148 = fsub float 1.000000e+00, %147
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = sitofp i32 %151 to float
  %153 = fmul float %148, %152
  %154 = fdiv float %153, 2.000000e+00
  %155 = fsub float %143, %154
  %156 = fptosi float %155 to i64
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 %159, %162
  %164 = load i32, i32* @msg_queue_regular_text_base_y, align 4
  %165 = add nsw i32 %163, %164
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = sdiv i32 %168, 2
  %170 = sub nsw i32 %165, %169
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* @TEXT_ALIGN_LEFT, align 4
  %179 = load i32, i32* @msg_queue_text_scale_factor, align 4
  %180 = call i32 @menu_display_draw_text(i32 %138, i32 %141, i64 %156, i32 %170, i32 %173, i32 %176, i32 %177, i32 %178, i32 %179, i32 0, i32 0, i32 1)
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %107
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 5
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %211

190:                                              ; preds = %185, %107
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @font_regular, align 4
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %199 = call i32 @font_driver_flush(i32 %193, i32 %196, i32 %197, %struct.TYPE_24__* %198)
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @font_bold, align 4
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %208 = call i32 @font_driver_flush(i32 %202, i32 %205, i32 %206, %struct.TYPE_24__* %207)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @font_raster_regular, i32 0, i32 0, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @font_raster_bold, i32 0, i32 0, i32 0, i32 0), align 8
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %210 = call i32 @menu_display_scissor_end(%struct.TYPE_24__* %209)
  br label %211

211:                                              ; preds = %190, %185
  %212 = load i64, i64* @msg_queue_has_icons, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %290

214:                                              ; preds = %211
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %216 = call i32 @menu_display_blend_begin(%struct.TYPE_24__* %215)
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %218 = load i32, i32* @msg_queue_icon_size_x, align 4
  %219 = load i32, i32* @msg_queue_icon_size_y, align 4
  %220 = load i64, i64* @msg_queue_icon, align 8
  %221 = load i64, i64* @msg_queue_spacing, align 8
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = sub nsw i32 %224, %227
  %229 = load i32, i32* @msg_queue_icon_offset_y, align 4
  %230 = sub nsw i32 %228, %229
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @msg_queue_info, align 4
  %238 = call i32 @menu_widgets_draw_icon(%struct.TYPE_24__* %217, i32 %218, i32 %219, i64 %220, i64 %221, i32 %230, i32 %233, i32 %236, i32 0, i32 1, i32 %237)
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %240 = load i32, i32* @msg_queue_icon_size_x, align 4
  %241 = load i32, i32* @msg_queue_icon_size_y, align 4
  %242 = load i64, i64* @msg_queue_icon_outline, align 8
  %243 = load i64, i64* @msg_queue_spacing, align 8
  %244 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = sub nsw i32 %246, %249
  %251 = load i32, i32* @msg_queue_icon_offset_y, align 4
  %252 = sub nsw i32 %250, %251
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @menu_widgets_pure_white, align 4
  %260 = call i32 @menu_widgets_draw_icon(%struct.TYPE_24__* %239, i32 %240, i32 %241, i64 %242, i64 %243, i32 %252, i32 %255, i32 %258, i32 0, i32 1, i32 %259)
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %262 = load i32, i32* @msg_queue_internal_icon_size, align 4
  %263 = load i32, i32* @msg_queue_internal_icon_size, align 4
  %264 = load i64, i64* %5, align 8
  %265 = load i64, i64* @msg_queue_spacing, align 8
  %266 = load i32, i32* @msg_queue_internal_icon_offset, align 4
  %267 = sext i32 %266 to i64
  %268 = add nsw i64 %265, %267
  %269 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = sub nsw i32 %271, %274
  %276 = load i32, i32* @msg_queue_icon_offset_y, align 4
  %277 = sub nsw i32 %275, %276
  %278 = load i32, i32* @msg_queue_internal_icon_offset, align 4
  %279 = add nsw i32 %277, %278
  %280 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @menu_widgets_pure_white, align 4
  %287 = call i32 @menu_widgets_draw_icon(%struct.TYPE_24__* %261, i32 %262, i32 %263, i64 %264, i64 %268, i32 %279, i32 %282, i32 %285, i32 0, i32 1, i32 %286)
  %288 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %289 = call i32 @menu_display_blend_end(%struct.TYPE_24__* %288)
  br label %290

290:                                              ; preds = %214, %211
  ret void
}

declare dso_local i32 @menu_display_set_alpha(i32, float) #1

declare dso_local i32 @font_driver_flush(i32, i32, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @menu_display_scissor_begin(%struct.TYPE_24__*, i32, i32, i32, i32) #1

declare dso_local i32 @menu_display_blend_begin(%struct.TYPE_24__*) #1

declare dso_local i32 @menu_widgets_draw_icon(%struct.TYPE_24__*, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @menu_display_blend_end(%struct.TYPE_24__*) #1

declare dso_local i32 @menu_display_draw_quad(%struct.TYPE_24__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @COLOR_TEXT_ALPHA(i32, i32) #1

declare dso_local i32 @menu_display_draw_text(i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @menu_display_scissor_end(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
