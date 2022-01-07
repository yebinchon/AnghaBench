; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_context_reset.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_context_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i8* }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"menu_widgets\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"xmb\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"monochrome\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"png\00", align 1
@MENU_WIDGETS_ICON_LAST = common dso_local global i32 0, align 4
@menu_widgets_icons_names = common dso_local global i8** null, align 8
@menu_widgets_icons_textures = common dso_local global i64* null, align 8
@TEXTURE_FILTER_MIPMAP_LINEAR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"msg_queue_icon.png\00", align 1
@msg_queue_icon = common dso_local global i64 0, align 8
@TEXTURE_FILTER_LINEAR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"msg_queue_icon_outline.png\00", align 1
@msg_queue_icon_outline = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"msg_queue_icon_rect.png\00", align 1
@msg_queue_icon_rect = common dso_local global i64 0, align 8
@TEXTURE_FILTER_NEAREST = common dso_local global i32 0, align 4
@msg_queue_has_icons = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"ozone\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"regular.ttf\00", align 1
@font_regular = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"bold.ttf\00", align 1
@font_bold = common dso_local global i8* null, align 8
@simple_widget_padding = common dso_local global i32 0, align 4
@simple_widget_height = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@glyph_width = common dso_local global float 0.000000e+00, align 4
@line_height = common dso_local global i32 0, align 4
@msg_queue_height = common dso_local global float 0.000000e+00, align 4
@msg_queue_icon_size_y = common dso_local global float 0.000000e+00, align 4
@msg_queue_icon_size_x = common dso_local global float 0.000000e+00, align 4
@msg_queue_text_scale_factor = common dso_local global float 0.000000e+00, align 4
@msg_queue_base_width = common dso_local global i32 0, align 4
@msg_queue_spacing = common dso_local global float 0.000000e+00, align 4
@msg_queue_glyph_width = common dso_local global i32 0, align 4
@msg_queue_rect_start_x = common dso_local global float 0.000000e+00, align 4
@msg_queue_internal_icon_size = common dso_local global float 0.000000e+00, align 4
@msg_queue_internal_icon_offset = common dso_local global float 0.000000e+00, align 4
@msg_queue_icon_offset_y = common dso_local global float 0.000000e+00, align 4
@msg_queue_scissor_start_x = common dso_local global float 0.000000e+00, align 4
@msg_queue_default_rect_width = common dso_local global i32 0, align 4
@msg_queue_regular_padding_x = common dso_local global float 0.000000e+00, align 4
@msg_queue_task_rect_start_x = common dso_local global float 0.000000e+00, align 4
@msg_queue_task_text_start_x = common dso_local global i32 0, align 4
@MENU_WIDGETS_ICON_HOURGLASS = common dso_local global i64 0, align 8
@msg_queue_regular_text_start = common dso_local global float 0.000000e+00, align 4
@msg_queue_regular_text_base_y = common dso_local global float 0.000000e+00, align 4
@msg_queue_task_hourglass_x = common dso_local global float 0.000000e+00, align 4
@generic_message_height = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_widgets_context_reset(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %23 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  %26 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %12, align 8
  %29 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %13, align 8
  %32 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %14, align 8
  %35 = call %struct.TYPE_7__* (...) @config_get_ptr()
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %15, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = trunc i64 %24 to i32
  %41 = call i32 @fill_pathname_join(i8* %25, i8* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = trunc i64 %17 to i32
  %47 = call i32 @fill_pathname_join(i8* %19, i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = trunc i64 %27 to i32
  %49 = call i32 @fill_pathname_join(i8* %28, i8* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = trunc i64 %21 to i32
  %51 = call i32 @fill_pathname_join(i8* %22, i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %68, %3
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @MENU_WIDGETS_ICON_LAST, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load i8**, i8*** @menu_widgets_icons_names, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load i64*, i64** @menu_widgets_icons_textures, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i32, i32* @TEXTURE_FILTER_MIPMAP_LINEAR, align 4
  %67 = call i32 @menu_display_reset_textures_list(i8* %61, i8* %22, i64* %65, i32 %66, i32* null, i32* null)
  br label %68

68:                                               ; preds = %56
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %52

71:                                               ; preds = %52
  %72 = load i32, i32* @TEXTURE_FILTER_LINEAR, align 4
  %73 = call i32 @menu_display_reset_textures_list(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %25, i64* @msg_queue_icon, i32 %72, i32* null, i32* null)
  %74 = load i32, i32* @TEXTURE_FILTER_LINEAR, align 4
  %75 = call i32 @menu_display_reset_textures_list(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %25, i64* @msg_queue_icon_outline, i32 %74, i32* null, i32* null)
  %76 = load i32, i32* @TEXTURE_FILTER_NEAREST, align 4
  %77 = call i32 @menu_display_reset_textures_list(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %25, i64* @msg_queue_icon_rect, i32 %76, i32* null, i32* null)
  %78 = load i64, i64* @msg_queue_icon, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %71
  %81 = load i64, i64* @msg_queue_icon_outline, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i64, i64* @msg_queue_icon_rect, align 8
  %85 = icmp ne i64 %84, 0
  br label %86

86:                                               ; preds = %83, %80, %71
  %87 = phi i1 [ false, %80 ], [ false, %71 ], [ %85, %83 ]
  %88 = zext i1 %87 to i32
  store i32 %88, i32* @msg_queue_has_icons, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = trunc i64 %30 to i32
  %94 = call i32 @fill_pathname_join(i8* %31, i8* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %93)
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %86
  %104 = trunc i64 %33 to i32
  %105 = call i32 @fill_pathname_join(i8* %34, i8* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %104)
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = call i8* @menu_display_font_file(i8* %34, i32 %109, i32 %110)
  store i8* %111, i8** @font_regular, align 8
  %112 = trunc i64 %33 to i32
  %113 = call i32 @fill_pathname_join(i8* %34, i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %112)
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %4, align 4
  %119 = call i8* @menu_display_font_file(i8* %34, i32 %117, i32 %118)
  store i8* %119, i8** @font_bold, align 8
  br label %141

120:                                              ; preds = %86
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %4, align 4
  %130 = call i8* @menu_display_font_file(i8* %124, i32 %128, i32 %129)
  store i8* %130, i8** @font_regular, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %4, align 4
  %140 = call i8* @menu_display_font_file(i8* %134, i32 %138, i32 %139)
  store i8* %140, i8** @font_bold, align 8
  br label %141

141:                                              ; preds = %120, %103
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = mul nsw i32 %145, 2
  %147 = sdiv i32 %146, 3
  store i32 %147, i32* @simple_widget_padding, align 4
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @simple_widget_padding, align 4
  %153 = add nsw i32 %151, %152
  store i32 %153, i32* @simple_widget_height, align 4
  %154 = load i8*, i8** @font_regular, align 8
  %155 = call float @font_driver_get_message_width(i8* %154, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 1, i32 1)
  store float %155, float* @glyph_width, align 4
  %156 = load i8*, i8** @font_regular, align 8
  %157 = call i32 @font_driver_get_line_height(i8* %156, i32 1)
  store i32 %157, i32* @line_height, align 4
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sitofp i32 %161 to float
  %163 = fmul float %162, 2.500000e+00
  store float %163, float* @msg_queue_height, align 4
  %164 = load i32, i32* @msg_queue_has_icons, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %141
  %167 = load float, float* @msg_queue_height, align 4
  %168 = fmul float %167, 0x3FF3C1AB60000000
  store float %168, float* @msg_queue_icon_size_y, align 4
  %169 = load float, float* @msg_queue_icon_size_y, align 4
  %170 = fmul float 0x3FEF8C9EA0000000, %169
  store float %170, float* @msg_queue_icon_size_x, align 4
  br label %172

171:                                              ; preds = %141
  store float 0.000000e+00, float* @msg_queue_icon_size_x, align 4
  store float 0.000000e+00, float* @msg_queue_icon_size_y, align 4
  br label %172

172:                                              ; preds = %171, %166
  store float 0x3FE6147AE0000000, float* @msg_queue_text_scale_factor, align 4
  %173 = load i32, i32* %5, align 4
  %174 = udiv i32 %173, 4
  store i32 %174, i32* @msg_queue_base_width, align 4
  %175 = load float, float* @msg_queue_height, align 4
  %176 = fdiv float %175, 3.000000e+00
  store float %176, float* @msg_queue_spacing, align 4
  %177 = load float, float* @glyph_width, align 4
  %178 = load float, float* @msg_queue_text_scale_factor, align 4
  %179 = fmul float %177, %178
  %180 = fptosi float %179 to i32
  store i32 %180, i32* @msg_queue_glyph_width, align 4
  %181 = load float, float* @msg_queue_spacing, align 4
  %182 = load float, float* @msg_queue_icon_size_x, align 4
  %183 = fadd float %181, %182
  store float %183, float* @msg_queue_rect_start_x, align 4
  %184 = load float, float* @msg_queue_icon_size_y, align 4
  store float %184, float* @msg_queue_internal_icon_size, align 4
  %185 = load float, float* @msg_queue_icon_size_y, align 4
  %186 = load float, float* @msg_queue_internal_icon_size, align 4
  %187 = fsub float %185, %186
  %188 = fdiv float %187, 2.000000e+00
  store float %188, float* @msg_queue_internal_icon_offset, align 4
  %189 = load float, float* @msg_queue_icon_size_y, align 4
  %190 = load float, float* @msg_queue_height, align 4
  %191 = fsub float %189, %190
  %192 = fdiv float %191, 2.000000e+00
  store float %192, float* @msg_queue_icon_offset_y, align 4
  %193 = load float, float* @msg_queue_spacing, align 4
  %194 = load float, float* @msg_queue_icon_size_x, align 4
  %195 = fadd float %193, %194
  %196 = load float, float* @msg_queue_icon_size_x, align 4
  %197 = fmul float %196, 0x3FD283A840000000
  %198 = fsub float %195, %197
  store float %198, float* @msg_queue_scissor_start_x, align 4
  %199 = load i32, i32* @msg_queue_glyph_width, align 4
  %200 = mul nsw i32 %199, 40
  store i32 %200, i32* @msg_queue_default_rect_width, align 4
  %201 = load i32, i32* @msg_queue_has_icons, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %172
  %204 = load i32, i32* @simple_widget_padding, align 4
  %205 = sdiv i32 %204, 2
  %206 = sitofp i32 %205 to float
  store float %206, float* @msg_queue_regular_padding_x, align 4
  br label %210

207:                                              ; preds = %172
  %208 = load i32, i32* @simple_widget_padding, align 4
  %209 = sitofp i32 %208 to float
  store float %209, float* @msg_queue_regular_padding_x, align 4
  br label %210

210:                                              ; preds = %207, %203
  %211 = load float, float* @msg_queue_rect_start_x, align 4
  %212 = load float, float* @msg_queue_icon_size_x, align 4
  %213 = fsub float %211, %212
  store float %213, float* @msg_queue_task_rect_start_x, align 4
  %214 = load float, float* @msg_queue_task_rect_start_x, align 4
  %215 = load float, float* @msg_queue_height, align 4
  %216 = fdiv float %215, 2.000000e+00
  %217 = fadd float %214, %216
  %218 = fptosi float %217 to i32
  store i32 %218, i32* @msg_queue_task_text_start_x, align 4
  %219 = load i64*, i64** @menu_widgets_icons_textures, align 8
  %220 = load i64, i64* @MENU_WIDGETS_ICON_HOURGLASS, align 8
  %221 = getelementptr inbounds i64, i64* %219, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %229, label %224

224:                                              ; preds = %210
  %225 = load i32, i32* @msg_queue_glyph_width, align 4
  %226 = mul nsw i32 %225, 2
  %227 = load i32, i32* @msg_queue_task_text_start_x, align 4
  %228 = sub nsw i32 %227, %226
  store i32 %228, i32* @msg_queue_task_text_start_x, align 4
  br label %229

229:                                              ; preds = %224, %210
  %230 = load float, float* @msg_queue_rect_start_x, align 4
  %231 = load float, float* @msg_queue_regular_padding_x, align 4
  %232 = fadd float %230, %231
  store float %232, float* @msg_queue_regular_text_start, align 4
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = sitofp i32 %236 to float
  %238 = load float, float* @msg_queue_text_scale_factor, align 4
  %239 = fmul float %237, %238
  %240 = load float, float* @msg_queue_height, align 4
  %241 = fdiv float %240, 2.000000e+00
  %242 = fadd float %239, %241
  store float %242, float* @msg_queue_regular_text_base_y, align 4
  %243 = load float, float* @msg_queue_rect_start_x, align 4
  %244 = load float, float* @msg_queue_icon_size_x, align 4
  %245 = fsub float %243, %244
  store float %245, float* @msg_queue_task_hourglass_x, align 4
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = mul nsw i32 %249, 2
  store i32 %250, i32* @generic_message_height, align 4
  %251 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %251)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_7__* @config_get_ptr(...) #2

declare dso_local i32 @fill_pathname_join(i8*, i8*, i8*, i32) #2

declare dso_local i32 @menu_display_reset_textures_list(i8*, i8*, i64*, i32, i32*, i32*) #2

declare dso_local i8* @menu_display_font_file(i8*, i32, i32) #2

declare dso_local float @font_driver_get_message_width(i8*, i8*, i32, i32) #2

declare dso_local i32 @font_driver_get_line_height(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
