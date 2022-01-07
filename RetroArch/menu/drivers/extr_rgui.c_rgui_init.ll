; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.video_viewport = type { i32, i32 }
%struct.TYPE_14__ = type { i8*, i8*, i32, i8*, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i32 }

@FONT_HEIGHT_STRIDE = common dso_local global i32 0, align 4
@MENU_ENTRIES_CTL_SET_START = common dso_local global i32 0, align 4
@rgui_frame_buf = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@RGUI_PARTICLE_EFFECT_NONE = common dso_local global i64 0, align 8
@fs_thumbnail = common dso_local global i32 0, align 4
@mini_thumbnail = common dso_local global i32 0, align 4
@mini_left_thumbnail = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, i32)* @rgui_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rgui_init(i8** %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.video_viewport, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  %12 = call %struct.TYPE_13__* (...) @config_get_ptr()
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %10, align 8
  %13 = call i64 @calloc(i32 1, i32 1)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %175

18:                                               ; preds = %2
  %19 = call i64 @calloc(i32 1, i32 144)
  %20 = inttoptr i64 %19 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %9, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %22 = icmp ne %struct.TYPE_14__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %163

24:                                               ; preds = %18
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %26 = bitcast %struct.TYPE_14__* %25 to i8*
  %27 = load i8**, i8*** %4, align 8
  store i8* %26, i8** %27, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 0, i8* %31, align 1
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 0, i8* %35, align 1
  %36 = call i32 (...) @rgui_set_pixel_format_function()
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 24
  %39 = call i32 @rgui_get_video_config(i32* %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 23
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 2
  store i32 0, i32* %47, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %49 = call i32 @rgui_set_aspect_ratio(%struct.TYPE_14__* %48, i32 0)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %24
  br label %163

52:                                               ; preds = %24
  %53 = load i32, i32* @FONT_HEIGHT_STRIDE, align 4
  %54 = mul nsw i32 %53, 2
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @menu_display_set_header_height(i32 %55)
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  store i8 0, i8* %60, align 1
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %63 = call i32 @prepare_rgui_colors(%struct.TYPE_14__* %61, %struct.TYPE_13__* %62)
  store i64 0, i64* %7, align 8
  %64 = load i32, i32* @MENU_ENTRIES_CTL_SET_START, align 4
  %65 = call i32 @menu_entries_ctl(i32 %64, i64* %7)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 22
  store i64 0, i64* %67, align 8
  %68 = call i32 (...) @rgui_init_font_lut()
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 21
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 20
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 19
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 18
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 4
  store i64 %96, i64* %98, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 17
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @rgui_frame_buf, i32 0, i32 1), align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 16
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @rgui_frame_buf, i32 0, i32 0), align 4
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 15
  store i32 %108, i32* %110, align 4
  %111 = call i32 @video_driver_get_viewport_info(%struct.video_viewport* %8)
  %112 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %8, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 14
  store i32 %113, i32* %115, align 8
  %116 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %8, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 13
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 5
  store i32 0, i32* %121, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @RGUI_PARTICLE_EFFECT_NONE, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %52
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %129 = call i32 @rgui_init_particle_effect(%struct.TYPE_14__* %128)
  br label %130

130:                                              ; preds = %127, %52
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @rgui_set_blit_functions(i32 %134, i32 %138)
  %140 = call i32 (...) @menu_thumbnail_path_init()
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 12
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 12
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %130
  br label %163

148:                                              ; preds = %130
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 11
  store i64 0, i64* %150, align 8
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 10
  store i64 0, i64* %152, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 6
  store i32 0, i32* %154, align 4
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 9
  store i64 0, i64* %156, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 7
  store i32 0, i32* %158, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 8
  %161 = call i32 @memset(i32* %160, i32 0, i32 4)
  %162 = load i8*, i8** %11, align 8
  store i8* %162, i8** %3, align 8
  br label %175

163:                                              ; preds = %147, %51, %23
  %164 = call i32 (...) @rgui_framebuffer_free()
  %165 = call i32 (...) @rgui_background_free()
  %166 = call i32 @rgui_thumbnail_free(i32* @fs_thumbnail)
  %167 = call i32 @rgui_thumbnail_free(i32* @mini_thumbnail)
  %168 = call i32 @rgui_thumbnail_free(i32* @mini_left_thumbnail)
  %169 = load i8*, i8** %11, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %174

171:                                              ; preds = %163
  %172 = load i8*, i8** %11, align 8
  %173 = call i32 @free(i8* %172)
  br label %174

174:                                              ; preds = %171, %163
  store i8* null, i8** %3, align 8
  br label %175

175:                                              ; preds = %174, %148, %17
  %176 = load i8*, i8** %3, align 8
  ret i8* %176
}

declare dso_local %struct.TYPE_13__* @config_get_ptr(...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @rgui_set_pixel_format_function(...) #1

declare dso_local i32 @rgui_get_video_config(i32*) #1

declare dso_local i32 @rgui_set_aspect_ratio(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @menu_display_set_header_height(i32) #1

declare dso_local i32 @prepare_rgui_colors(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @menu_entries_ctl(i32, i64*) #1

declare dso_local i32 @rgui_init_font_lut(...) #1

declare dso_local i32 @video_driver_get_viewport_info(%struct.video_viewport*) #1

declare dso_local i32 @rgui_init_particle_effect(%struct.TYPE_14__*) #1

declare dso_local i32 @rgui_set_blit_functions(i32, i32) #1

declare dso_local i32 @menu_thumbnail_path_init(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @rgui_framebuffer_free(...) #1

declare dso_local i32 @rgui_background_free(...) #1

declare dso_local i32 @rgui_thumbnail_free(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
