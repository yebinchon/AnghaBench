; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_48__ = type { i32, i32, i64 }
%struct.TYPE_50__ = type { i64, float, i8*, %struct.TYPE_47__, %struct.TYPE_52__, %struct.TYPE_51__, i32, i64, %struct.TYPE_44__, i64, %struct.TYPE_59__, %struct.TYPE_58__, i64 }
%struct.TYPE_47__ = type { %struct.TYPE_46__, %struct.TYPE_45__, %struct.TYPE_53__ }
%struct.TYPE_46__ = type { i32, %struct.TYPE_54__ }
%struct.TYPE_54__ = type { %struct.TYPE_56__ }
%struct.TYPE_56__ = type { %struct.TYPE_55__ }
%struct.TYPE_55__ = type { i64 }
%struct.TYPE_45__ = type { i32, %struct.TYPE_54__ }
%struct.TYPE_53__ = type { i32, %struct.TYPE_54__ }
%struct.TYPE_52__ = type { i64, i32, i32 }
%struct.TYPE_51__ = type { i32* }
%struct.TYPE_44__ = type { i32, i32 }
%struct.TYPE_59__ = type { i32, i32 }
%struct.TYPE_58__ = type { i32, i32 }
%struct.TYPE_49__ = type { %struct.TYPE_60__, %struct.TYPE_57__ }
%struct.TYPE_60__ = type { i64 }
%struct.TYPE_57__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"%s\0A%s\00", align 1
@MUI_TEXTURE_KEY_HOVER = common dso_local global i64 0, align 8
@MENU_POINTER_DISABLED = common dso_local global i64 0, align 8
@__const.materialui_frame.color_white = private unnamed_addr constant [16 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 16
@MUI_TEXTURE_POINTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_48__*)* @materialui_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @materialui_frame(i8* %0, %struct.TYPE_48__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_48__*, align 8
  %5 = alloca %struct.TYPE_50__*, align 8
  %6 = alloca %struct.TYPE_49__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [255 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [16 x float], align 16
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_48__* %1, %struct.TYPE_48__** %4, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_50__*
  store %struct.TYPE_50__* %17, %struct.TYPE_50__** %5, align 8
  %18 = call %struct.TYPE_49__* (...) @config_get_ptr()
  store %struct.TYPE_49__* %18, %struct.TYPE_49__** %6, align 8
  %19 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = call i32 (...) @menu_display_get_header_height()
  store i32 %25, i32* %9, align 4
  %26 = call i64 (...) @menu_navigation_get_selection()
  store i64 %26, i64* %10, align 8
  %27 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %28 = icmp ne %struct.TYPE_50__* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %31 = icmp ne %struct.TYPE_49__* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29, %2
  br label %441

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @menu_display_set_viewport(i32 %34, i32 %35)
  %37 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %44, i32 0, i32 1
  %46 = call i32 @font_driver_bind_block(i32 %41, %struct.TYPE_54__* %45)
  %47 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %54, i32 0, i32 1
  %56 = call i32 @font_driver_bind_block(i32 %51, %struct.TYPE_54__* %55)
  %57 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %64, i32 0, i32 1
  %66 = call i32 @font_driver_bind_block(i32 %61, %struct.TYPE_54__* %65)
  %67 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  %88 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %33
  %96 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %97 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @materialui_prepare_colors(%struct.TYPE_50__* %96, i32 %100)
  %102 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = zext i32 %105 to i64
  %107 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %95, %33
  %110 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %114, i32 0, i32 12
  store i64 %113, i64* %115, align 8
  %116 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %116, i32 0, i32 12
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %109
  %121 = call i32 (...) @menu_animation_get_ticker_pixel_idx()
  %122 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %122, i32 0, i32 11
  %124 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %123, i32 0, i32 1
  store i32 %121, i32* %124, align 4
  %125 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  %130 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %130, i32 0, i32 11
  %132 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 8
  br label %146

133:                                              ; preds = %109
  %134 = call i32 (...) @menu_animation_get_ticker_idx()
  %135 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %135, i32 0, i32 10
  %137 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %136, i32 0, i32 1
  store i32 %134, i32* %137, align 4
  %138 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %143, i32 0, i32 10
  %145 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %144, i32 0, i32 0
  store i32 %142, i32* %145, align 8
  br label %146

146:                                              ; preds = %133, %120
  %147 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %148 = call i32 @materialui_colors_set_transition_alpha(%struct.TYPE_50__* %147)
  %149 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %149, i32 0, i32 1
  %151 = load float, float* %150, align 8
  %152 = load i32, i32* %7, align 4
  %153 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %153, i32 0, i32 9
  %155 = load i64, i64* %154, align 8
  %156 = trunc i64 %155 to i32
  %157 = sub nsw i32 %152, %156
  %158 = sitofp i32 %157 to float
  %159 = fmul float %151, %158
  %160 = fptosi float %159 to i32
  store i32 %160, i32* %11, align 4
  %161 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %162 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %163 = call i32 @materialui_render_background(%struct.TYPE_50__* %161, %struct.TYPE_48__* %162)
  %164 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %165 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %11, align 4
  %170 = call i32 @materialui_render_landscape_border(%struct.TYPE_50__* %164, %struct.TYPE_48__* %165, i32 %166, i32 %167, i32 %168, i32 %169)
  %171 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %172 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %11, align 4
  %177 = load i64, i64* %10, align 8
  %178 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %178, i32 0, i32 8
  %180 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @materialui_render_selection_highlight(%struct.TYPE_50__* %171, %struct.TYPE_48__* %172, i32 %173, i32 %174, i32 %175, i32 %176, i64 %177, i32 %181)
  %183 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %184 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* %11, align 4
  %189 = load i64, i64* %10, align 8
  %190 = call i32 @materialui_render_entry_touch_feedback(%struct.TYPE_50__* %183, %struct.TYPE_48__* %184, i32 %185, i32 %186, i32 %187, i32 %188, i64 %189)
  %191 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* %11, align 4
  %196 = call i32 @materialui_update_scrollbar(%struct.TYPE_50__* %191, i32 %192, i32 %193, i32 %194, i32 %195)
  %197 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %198 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* %8, align 4
  %201 = load i32, i32* %11, align 4
  %202 = call i32 @materialui_render_menu_list(%struct.TYPE_50__* %197, %struct.TYPE_48__* %198, i32 %199, i32 %200, i32 %201)
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* %8, align 4
  %205 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %211 = call i32 @font_driver_flush(i32 %203, i32 %204, i32 %209, %struct.TYPE_48__* %210)
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* %8, align 4
  %214 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %220 = call i32 @font_driver_flush(i32 %212, i32 %213, i32 %218, %struct.TYPE_48__* %219)
  %221 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %226, i32 0, i32 0
  store i64 0, i64* %227, align 8
  %228 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %228, i32 0, i32 3
  %230 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %233, i32 0, i32 0
  store i64 0, i64* %234, align 8
  %235 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %236 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %237 = load i32, i32* %7, align 4
  %238 = load i32, i32* %8, align 4
  %239 = call i32 @materialui_render_header(%struct.TYPE_50__* %235, %struct.TYPE_48__* %236, i32 %237, i32 %238)
  %240 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %241 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %242 = load i32, i32* %7, align 4
  %243 = load i32, i32* %8, align 4
  %244 = call i32 @materialui_render_nav_bar(%struct.TYPE_50__* %240, %struct.TYPE_48__* %241, i32 %242, i32 %243)
  %245 = load i32, i32* %7, align 4
  %246 = load i32, i32* %8, align 4
  %247 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %253 = call i32 @font_driver_flush(i32 %245, i32 %246, i32 %251, %struct.TYPE_48__* %252)
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* %8, align 4
  %256 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %262 = call i32 @font_driver_flush(i32 %254, i32 %255, i32 %260, %struct.TYPE_48__* %261)
  %263 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %268, i32 0, i32 0
  store i64 0, i64* %269, align 8
  %270 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %270, i32 0, i32 3
  %272 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %275, i32 0, i32 0
  store i64 0, i64* %276, align 8
  %277 = call i64 (...) @menu_input_dialog_get_display_kb()
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %335

279:                                              ; preds = %146
  %280 = call i8* (...) @menu_input_dialog_get_buffer()
  store i8* %280, i8** %13, align 8
  %281 = call i8* (...) @menu_input_dialog_get_label_buffer()
  store i8* %281, i8** %14, align 8
  %282 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %282, align 16
  %283 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %284 = load i32, i32* %7, align 4
  %285 = load i32, i32* %8, align 4
  %286 = load i32, i32* %7, align 4
  %287 = load i32, i32* %8, align 4
  %288 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %288, i32 0, i32 8
  %290 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @menu_display_draw_quad(%struct.TYPE_48__* %283, i32 0, i32 0, i32 %284, i32 %285, i32 %286, i32 %287, i32 %291)
  %293 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %294 = load i8*, i8** %14, align 8
  %295 = load i8*, i8** %13, align 8
  %296 = call i32 @snprintf(i8* %293, i32 255, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %294, i8* %295)
  %297 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %298 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %299 = load i32, i32* %8, align 4
  %300 = udiv i32 %299, 4
  %301 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %302 = call i32 @materialui_render_messagebox(%struct.TYPE_50__* %297, %struct.TYPE_48__* %298, i32 %300, i8* %301)
  %303 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %303, i32 0, i32 5
  %305 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %304, i32 0, i32 0
  %306 = load i32*, i32** %305, align 8
  %307 = load i64, i64* @MUI_TEXTURE_KEY_HOVER, align 8
  %308 = getelementptr inbounds i32, i32* %306, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %310, i32 0, i32 3
  %312 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %316 = call i32 (...) @menu_event_get_osk_grid()
  %317 = call i32 (...) @menu_event_get_osk_ptr()
  %318 = call i32 @menu_display_draw_keyboard(i32 %309, i32 %314, %struct.TYPE_48__* %315, i32 %316, i32 %317, i32 -1)
  %319 = load i32, i32* %7, align 4
  %320 = load i32, i32* %8, align 4
  %321 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %321, i32 0, i32 3
  %323 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %327 = call i32 @font_driver_flush(i32 %319, i32 %320, i32 %325, %struct.TYPE_48__* %326)
  %328 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %328, i32 0, i32 3
  %330 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %333, i32 0, i32 0
  store i64 0, i64* %334, align 8
  br label %335

335:                                              ; preds = %279, %146
  %336 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %336, i32 0, i32 2
  %338 = load i8*, i8** %337, align 8
  %339 = call i32 @string_is_empty(i8* %338)
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %380, label %341

341:                                              ; preds = %335
  %342 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %343 = load i32, i32* %7, align 4
  %344 = load i32, i32* %8, align 4
  %345 = load i32, i32* %7, align 4
  %346 = load i32, i32* %8, align 4
  %347 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %347, i32 0, i32 8
  %349 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = call i32 @menu_display_draw_quad(%struct.TYPE_48__* %342, i32 0, i32 0, i32 %343, i32 %344, i32 %345, i32 %346, i32 %350)
  %352 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %353 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %354 = load i32, i32* %8, align 4
  %355 = udiv i32 %354, 2
  %356 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %356, i32 0, i32 2
  %358 = load i8*, i8** %357, align 8
  %359 = call i32 @materialui_render_messagebox(%struct.TYPE_50__* %352, %struct.TYPE_48__* %353, i32 %355, i8* %358)
  %360 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %360, i32 0, i32 2
  %362 = load i8*, i8** %361, align 8
  %363 = getelementptr inbounds i8, i8* %362, i64 0
  store i8 0, i8* %363, align 1
  %364 = load i32, i32* %7, align 4
  %365 = load i32, i32* %8, align 4
  %366 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %367 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %366, i32 0, i32 3
  %368 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %372 = call i32 @font_driver_flush(i32 %364, i32 %365, i32 %370, %struct.TYPE_48__* %371)
  %373 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %373, i32 0, i32 3
  %375 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %378, i32 0, i32 0
  store i64 0, i64* %379, align 8
  br label %380

380:                                              ; preds = %341, %335
  %381 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %382 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %381, i32 0, i32 7
  %383 = load i64, i64* %382, align 8
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %417

385:                                              ; preds = %380
  %386 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %387 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %386, i32 0, i32 4
  %388 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = load i64, i64* @MENU_POINTER_DISABLED, align 8
  %391 = icmp ne i64 %389, %390
  br i1 %391, label %392, label %417

392:                                              ; preds = %385
  %393 = bitcast [16 x float]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %393, i8* align 16 bitcast ([16 x float]* @__const.materialui_frame.color_white to i8*), i64 64, i1 false)
  %394 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %395 = getelementptr inbounds [16 x float], [16 x float]* %15, i64 0, i64 0
  %396 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %397 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %396, i32 0, i32 6
  %398 = load i32, i32* %397, align 8
  %399 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %399, i32 0, i32 5
  %401 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %400, i32 0, i32 0
  %402 = load i32*, i32** %401, align 8
  %403 = load i64, i64* @MUI_TEXTURE_POINTER, align 8
  %404 = getelementptr inbounds i32, i32* %402, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %407 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %406, i32 0, i32 4
  %408 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 4
  %410 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %411 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %410, i32 0, i32 4
  %412 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 8
  %414 = load i32, i32* %7, align 4
  %415 = load i32, i32* %8, align 4
  %416 = call i32 @menu_display_draw_cursor(%struct.TYPE_48__* %394, float* %395, i32 %398, i32 %405, i32 %409, i32 %413, i32 %414, i32 %415)
  br label %417

417:                                              ; preds = %392, %385, %380
  %418 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %419 = call i32 @materialui_colors_reset_transition_alpha(%struct.TYPE_50__* %418)
  %420 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %421 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %420, i32 0, i32 3
  %422 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %421, i32 0, i32 2
  %423 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = call i32 @font_driver_bind_block(i32 %424, %struct.TYPE_54__* null)
  %426 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %427 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %426, i32 0, i32 3
  %428 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %427, i32 0, i32 1
  %429 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = call i32 @font_driver_bind_block(i32 %430, %struct.TYPE_54__* null)
  %432 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %433 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %432, i32 0, i32 3
  %434 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  %437 = call i32 @font_driver_bind_block(i32 %436, %struct.TYPE_54__* null)
  %438 = load i32, i32* %7, align 4
  %439 = load i32, i32* %8, align 4
  %440 = call i32 @menu_display_unset_viewport(i32 %438, i32 %439)
  br label %441

441:                                              ; preds = %417, %32
  ret void
}

declare dso_local %struct.TYPE_49__* @config_get_ptr(...) #1

declare dso_local i32 @menu_display_get_header_height(...) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i32 @menu_display_set_viewport(i32, i32) #1

declare dso_local i32 @font_driver_bind_block(i32, %struct.TYPE_54__*) #1

declare dso_local i32 @materialui_prepare_colors(%struct.TYPE_50__*, i32) #1

declare dso_local i32 @menu_animation_get_ticker_pixel_idx(...) #1

declare dso_local i32 @menu_animation_get_ticker_idx(...) #1

declare dso_local i32 @materialui_colors_set_transition_alpha(%struct.TYPE_50__*) #1

declare dso_local i32 @materialui_render_background(%struct.TYPE_50__*, %struct.TYPE_48__*) #1

declare dso_local i32 @materialui_render_landscape_border(%struct.TYPE_50__*, %struct.TYPE_48__*, i32, i32, i32, i32) #1

declare dso_local i32 @materialui_render_selection_highlight(%struct.TYPE_50__*, %struct.TYPE_48__*, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @materialui_render_entry_touch_feedback(%struct.TYPE_50__*, %struct.TYPE_48__*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @materialui_update_scrollbar(%struct.TYPE_50__*, i32, i32, i32, i32) #1

declare dso_local i32 @materialui_render_menu_list(%struct.TYPE_50__*, %struct.TYPE_48__*, i32, i32, i32) #1

declare dso_local i32 @font_driver_flush(i32, i32, i32, %struct.TYPE_48__*) #1

declare dso_local i32 @materialui_render_header(%struct.TYPE_50__*, %struct.TYPE_48__*, i32, i32) #1

declare dso_local i32 @materialui_render_nav_bar(%struct.TYPE_50__*, %struct.TYPE_48__*, i32, i32) #1

declare dso_local i64 @menu_input_dialog_get_display_kb(...) #1

declare dso_local i8* @menu_input_dialog_get_buffer(...) #1

declare dso_local i8* @menu_input_dialog_get_label_buffer(...) #1

declare dso_local i32 @menu_display_draw_quad(%struct.TYPE_48__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @materialui_render_messagebox(%struct.TYPE_50__*, %struct.TYPE_48__*, i32, i8*) #1

declare dso_local i32 @menu_display_draw_keyboard(i32, i32, %struct.TYPE_48__*, i32, i32, i32) #1

declare dso_local i32 @menu_event_get_osk_grid(...) #1

declare dso_local i32 @menu_event_get_osk_ptr(...) #1

declare dso_local i32 @string_is_empty(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @menu_display_draw_cursor(%struct.TYPE_48__*, float*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @materialui_colors_reset_transition_alpha(%struct.TYPE_50__*) #1

declare dso_local i32 @menu_display_unset_viewport(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
