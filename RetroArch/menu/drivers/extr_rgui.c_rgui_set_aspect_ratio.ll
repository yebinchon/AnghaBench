; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_set_aspect_ratio.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_set_aspect_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32* }
%struct.TYPE_21__ = type { i32, i32, i32* }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32* }
%struct.TYPE_18__ = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32 }

@fs_thumbnail = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@mini_thumbnail = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@mini_left_thumbnail = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@rgui_frame_buf = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@rgui_term_layout = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@FONT_HEIGHT_STRIDE = common dso_local global i32 0, align 4
@FONT_WIDTH_STRIDE = common dso_local global i32 0, align 4
@RGUI_ENTRY_VALUE_MAXLEN = common dso_local global i64 0, align 8
@rgui_background_buf = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@mini_thumbnail_max_width = common dso_local global i8* null, align 8
@mini_thumbnail_max_height = common dso_local global i8* null, align 8
@RGUI_ASPECT_RATIO_LOCK_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32)* @rgui_set_aspect_ratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rgui_set_aspect_ratio(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call %struct.TYPE_17__* (...) @config_get_ptr()
  store %struct.TYPE_17__* %8, %struct.TYPE_17__** %7, align 8
  %9 = call i32 (...) @rgui_framebuffer_free()
  %10 = call i32 (...) @rgui_background_free()
  %11 = call i32 @rgui_thumbnail_free(%struct.TYPE_19__* @fs_thumbnail)
  %12 = call i32 @rgui_thumbnail_free(%struct.TYPE_19__* @mini_thumbnail)
  %13 = call i32 @rgui_thumbnail_free(%struct.TYPE_19__* @mini_left_thumbnail)
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  store i32 240, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rgui_frame_buf, i32 0, i32 0), align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %29 [
    i32 129, label %23
    i32 128, label %25
    i32 131, label %26
    i32 130, label %28
  ]

23:                                               ; preds = %2
  store i32 426, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rgui_frame_buf, i32 0, i32 1), align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rgui_frame_buf, i32 0, i32 1), align 4
  store i32 %24, i32* %6, align 4
  br label %31

25:                                               ; preds = %2
  store i32 426, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rgui_frame_buf, i32 0, i32 1), align 4
  store i32 320, i32* %6, align 4
  br label %31

26:                                               ; preds = %2
  store i32 384, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rgui_frame_buf, i32 0, i32 1), align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rgui_frame_buf, i32 0, i32 1), align 4
  store i32 %27, i32* %6, align 4
  br label %31

28:                                               ; preds = %2
  store i32 384, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rgui_frame_buf, i32 0, i32 1), align 4
  store i32 320, i32* %6, align 4
  br label %31

29:                                               ; preds = %2
  store i32 320, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rgui_frame_buf, i32 0, i32 1), align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rgui_frame_buf, i32 0, i32 1), align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %29, %28, %26, %25, %23
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rgui_frame_buf, i32 0, i32 1), align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rgui_frame_buf, i32 0, i32 0), align 8
  %34 = mul i32 %32, %33
  %35 = call i64 @calloc(i32 %34, i32 4)
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rgui_frame_buf, i32 0, i32 2), align 8
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rgui_frame_buf, i32 0, i32 2), align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %178

40:                                               ; preds = %31
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rgui_frame_buf, i32 0, i32 1), align 4
  %42 = call i32 @menu_display_set_width(i32 %41)
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rgui_frame_buf, i32 0, i32 0), align 8
  %44 = call i32 @menu_display_set_height(i32 %43)
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rgui_frame_buf, i32 0, i32 1), align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = call i32 @menu_display_set_framebuffer_pitch(i32 %48)
  store i32 16, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @rgui_term_layout, i32 0, i32 0), align 4
  %50 = load i32, i32* @FONT_HEIGHT_STRIDE, align 4
  %51 = add nsw i32 15, %50
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @rgui_term_layout, i32 0, i32 1), align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @rgui_term_layout, i32 0, i32 0), align 4
  %54 = mul nsw i32 2, %53
  %55 = sub i32 %52, %54
  %56 = load i32, i32* @FONT_WIDTH_STRIDE, align 4
  %57 = udiv i32 %55, %56
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @rgui_term_layout, i32 0, i32 2), align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rgui_frame_buf, i32 0, i32 0), align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @rgui_term_layout, i32 0, i32 1), align 4
  %60 = mul nsw i32 2, %59
  %61 = sub i32 %58, %60
  %62 = load i32, i32* @FONT_HEIGHT_STRIDE, align 4
  %63 = udiv i32 %61, %62
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @rgui_term_layout, i32 0, i32 3), align 4
  %64 = load i64, i64* @RGUI_ENTRY_VALUE_MAXLEN, align 8
  %65 = sitofp i64 %64 to float
  %66 = load i32, i32* %6, align 4
  %67 = uitofp i32 %66 to float
  %68 = fmul float %65, %67
  %69 = fdiv float %68, 3.200000e+02
  %70 = fpext float %69 to double
  %71 = fadd double %70, 5.000000e-01
  %72 = fptoui double %71 to i32
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @rgui_term_layout, i32 0, i32 4), align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rgui_frame_buf, i32 0, i32 1), align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @rgui_term_layout, i32 0, i32 2), align 4
  %75 = load i32, i32* @FONT_WIDTH_STRIDE, align 4
  %76 = mul i32 %74, %75
  %77 = sub i32 %73, %76
  %78 = udiv i32 %77, 2
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @rgui_term_layout, i32 0, i32 0), align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rgui_frame_buf, i32 0, i32 0), align 8
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @rgui_term_layout, i32 0, i32 3), align 4
  %81 = load i32, i32* @FONT_HEIGHT_STRIDE, align 4
  %82 = mul nsw i32 %80, %81
  %83 = sub i32 %79, %82
  %84 = udiv i32 %83, 2
  store i32 %84, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @rgui_term_layout, i32 0, i32 1), align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rgui_frame_buf, i32 0, i32 1), align 4
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @rgui_background_buf, i32 0, i32 0), align 8
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rgui_frame_buf, i32 0, i32 0), align 8
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @rgui_background_buf, i32 0, i32 1), align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @rgui_background_buf, i32 0, i32 0), align 8
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @rgui_background_buf, i32 0, i32 1), align 4
  %89 = mul nsw i32 %87, %88
  %90 = call i64 @calloc(i32 %89, i32 4)
  %91 = inttoptr i64 %90 to i32*
  store i32* %91, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @rgui_background_buf, i32 0, i32 2), align 8
  %92 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @rgui_background_buf, i32 0, i32 2), align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %178

95:                                               ; preds = %40
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rgui_frame_buf, i32 0, i32 1), align 4
  store i32 %96, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @fs_thumbnail, i32 0, i32 0), align 8
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @rgui_frame_buf, i32 0, i32 0), align 8
  store i32 %97, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @fs_thumbnail, i32 0, i32 1), align 4
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @fs_thumbnail, i32 0, i32 0), align 8
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @fs_thumbnail, i32 0, i32 1), align 4
  %100 = mul nsw i32 %98, %99
  %101 = call i64 @calloc(i32 %100, i32 4)
  %102 = inttoptr i64 %101 to i32*
  store i32* %102, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @fs_thumbnail, i32 0, i32 2), align 8
  %103 = load i32*, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @fs_thumbnail, i32 0, i32 2), align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %178

106:                                              ; preds = %95
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @rgui_term_layout, i32 0, i32 2), align 4
  %108 = sub i32 %107, 4
  %109 = icmp ugt i32 %108, 19
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %114

111:                                              ; preds = %106
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @rgui_term_layout, i32 0, i32 2), align 4
  %113 = sub i32 %112, 4
  br label %114

114:                                              ; preds = %111, %110
  %115 = phi i32 [ 19, %110 ], [ %113, %111 ]
  %116 = load i32, i32* @FONT_WIDTH_STRIDE, align 4
  %117 = mul i32 %115, %116
  %118 = zext i32 %117 to i64
  %119 = inttoptr i64 %118 to i8*
  store i8* %119, i8** @mini_thumbnail_max_width, align 8
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @rgui_term_layout, i32 0, i32 3), align 4
  %121 = load i32, i32* @FONT_HEIGHT_STRIDE, align 4
  %122 = mul nsw i32 %120, %121
  %123 = sitofp i32 %122 to float
  %124 = fmul float %123, 5.000000e-01
  %125 = fptoui float %124 to i32
  %126 = sub i32 %125, 2
  %127 = zext i32 %126 to i64
  %128 = inttoptr i64 %127 to i8*
  store i8* %128, i8** @mini_thumbnail_max_height, align 8
  %129 = load i8*, i8** @mini_thumbnail_max_width, align 8
  %130 = ptrtoint i8* %129 to i32
  store i32 %130, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @mini_thumbnail, i32 0, i32 0), align 8
  %131 = load i8*, i8** @mini_thumbnail_max_height, align 8
  %132 = ptrtoint i8* %131 to i32
  store i32 %132, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @mini_thumbnail, i32 0, i32 1), align 4
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @mini_thumbnail, i32 0, i32 0), align 8
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @mini_thumbnail, i32 0, i32 1), align 4
  %135 = mul nsw i32 %133, %134
  %136 = call i64 @calloc(i32 %135, i32 4)
  %137 = inttoptr i64 %136 to i32*
  store i32* %137, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @mini_thumbnail, i32 0, i32 2), align 8
  %138 = load i32*, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @mini_thumbnail, i32 0, i32 2), align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %114
  store i32 0, i32* %3, align 4
  br label %178

141:                                              ; preds = %114
  %142 = load i8*, i8** @mini_thumbnail_max_width, align 8
  %143 = ptrtoint i8* %142 to i32
  store i32 %143, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @mini_left_thumbnail, i32 0, i32 0), align 8
  %144 = load i8*, i8** @mini_thumbnail_max_height, align 8
  %145 = ptrtoint i8* %144 to i32
  store i32 %145, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @mini_left_thumbnail, i32 0, i32 1), align 4
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @mini_left_thumbnail, i32 0, i32 0), align 8
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @mini_left_thumbnail, i32 0, i32 1), align 4
  %148 = mul nsw i32 %146, %147
  %149 = call i64 @calloc(i32 %148, i32 4)
  %150 = inttoptr i64 %149 to i32*
  store i32* %150, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @mini_left_thumbnail, i32 0, i32 2), align 8
  %151 = load i32*, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @mini_left_thumbnail, i32 0, i32 2), align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %141
  store i32 0, i32* %3, align 4
  br label %178

154:                                              ; preds = %141
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 0
  store i8 0, i8* %158, align 1
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 1
  store i32 1, i32* %160, align 8
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 2
  store i32 1, i32* %162, align 4
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @RGUI_ASPECT_RATIO_LOCK_NONE, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %177

169:                                              ; preds = %154
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %171 = call i32 @rgui_update_menu_viewport(%struct.TYPE_18__* %170)
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 3
  %175 = load i32, i32* %5, align 4
  %176 = call i32 @rgui_set_video_config(%struct.TYPE_18__* %172, i32* %174, i32 %175)
  br label %177

177:                                              ; preds = %169, %154
  store i32 1, i32* %3, align 4
  br label %178

178:                                              ; preds = %177, %153, %140, %105, %94, %39
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local %struct.TYPE_17__* @config_get_ptr(...) #1

declare dso_local i32 @rgui_framebuffer_free(...) #1

declare dso_local i32 @rgui_background_free(...) #1

declare dso_local i32 @rgui_thumbnail_free(%struct.TYPE_19__*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @menu_display_set_width(i32) #1

declare dso_local i32 @menu_display_set_height(i32) #1

declare dso_local i32 @menu_display_set_framebuffer_pitch(i32) #1

declare dso_local i32 @rgui_update_menu_viewport(%struct.TYPE_18__*) #1

declare dso_local i32 @rgui_set_video_config(%struct.TYPE_18__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
