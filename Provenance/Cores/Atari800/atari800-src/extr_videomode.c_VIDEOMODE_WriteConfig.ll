; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_videomode.c_VIDEOMODE_WriteConfig.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_videomode.c_VIDEOMODE_WriteConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"VIDEOMODE_WINDOW_WIDTH=%u\0A\00", align 1
@window_resolution = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"VIDEOMODE_WINDOW_HEIGHT=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"VIDEOMODE_FULLSCREEN_WIDTH=%u\0A\00", align 1
@resolutions = common dso_local global %struct.TYPE_5__* null, align 8
@init_fs_resolution = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@current_resolution = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"VIDEOMODE_FULLSCREEN_HEIGHT=%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"VIDEOMODE_WINDOWED=%d\0A\00", align 1
@VIDEOMODE_windowed = common dso_local global i32 0, align 4
@VIDEOMODE_horizontal_area = common dso_local global i64 0, align 8
@VIDEOMODE_HORIZONTAL_CUSTOM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"VIDEOMODE_HORIZONTAL_AREA=%d\0A\00", align 1
@VIDEOMODE_custom_horizontal_area = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"VIDEOMODE_HORIZONTAL_AREA=%s\0A\00", align 1
@horizontal_area_cfg_strings = common dso_local global i8** null, align 8
@VIDEOMODE_vertical_area = common dso_local global i64 0, align 8
@VIDEOMODE_VERTICAL_CUSTOM = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [28 x i8] c"VIDEOMODE_VERTICAL_AREA=%d\0A\00", align 1
@VIDEOMODE_custom_vertical_area = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"VIDEOMODE_VERTICAL_AREA=%s\0A\00", align 1
@vertical_area_cfg_strings = common dso_local global i8** null, align 8
@.str.9 = private unnamed_addr constant [31 x i8] c"VIDEOMODE_HORIZONTAL_SHIFT=%d\0A\00", align 1
@VIDEOMODE_horizontal_offset = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"VIDEOMODE_VERTICAL_SHIFT=%d\0A\00", align 1
@VIDEOMODE_vertical_offset = common dso_local global i32 0, align 4
@VIDEOMODE_stretch = common dso_local global i64 0, align 8
@VIDEOMODE_STRETCH_CUSTOM = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [22 x i8] c"VIDEOMODE_STRETCH=%g\0A\00", align 1
@VIDEOMODE_custom_stretch = common dso_local global double 0.000000e+00, align 8
@.str.12 = private unnamed_addr constant [22 x i8] c"VIDEOMODE_STRETCH=%s\0A\00", align 1
@stretch_cfg_strings = common dso_local global i8** null, align 8
@.str.13 = private unnamed_addr constant [18 x i8] c"VIDEOMODE_FIT=%s\0A\00", align 1
@fit_cfg_strings = common dso_local global i8** null, align 8
@VIDEOMODE_fit = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [27 x i8] c"VIDEOMODE_IMAGE_ASPECT=%s\0A\00", align 1
@keep_aspect_cfg_strings = common dso_local global i8** null, align 8
@VIDEOMODE_keep_aspect = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [35 x i8] c"VIDEOMODE_HOST_ASPECT_RATIO=%g:%g\0A\00", align 1
@VIDEOMODE_host_aspect_ratio_w = common dso_local global double 0.000000e+00, align 8
@VIDEOMODE_host_aspect_ratio_h = common dso_local global double 0.000000e+00, align 8
@VIDEOMODE_80_column = common dso_local global i32 0, align 4
@VIDEOMODE_rotate90 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VIDEOMODE_WriteConfig(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @window_resolution, i32 0, i32 0), align 4
  %5 = call i32 (i32*, i8*, ...) @fprintf(i32* %3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @window_resolution, i32 0, i32 1), align 4
  %8 = call i32 (i32*, i8*, ...) @fprintf(i32* %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @resolutions, align 8
  %11 = icmp eq %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @init_fs_resolution, i32 0, i32 0), align 4
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @resolutions, align 8
  %16 = load i64, i64* @current_resolution, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  br label %20

20:                                               ; preds = %14, %12
  %21 = phi i32 [ %13, %12 ], [ %19, %14 ]
  %22 = call i32 (i32*, i8*, ...) @fprintf(i32* %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @resolutions, align 8
  %25 = icmp eq %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @init_fs_resolution, i32 0, i32 1), align 4
  br label %34

28:                                               ; preds = %20
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @resolutions, align 8
  %30 = load i64, i64* @current_resolution, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  br label %34

34:                                               ; preds = %28, %26
  %35 = phi i32 [ %27, %26 ], [ %33, %28 ]
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* @VIDEOMODE_windowed, align 4
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %38)
  %40 = load i64, i64* @VIDEOMODE_horizontal_area, align 8
  %41 = load i64, i64* @VIDEOMODE_HORIZONTAL_CUSTOM, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* @VIDEOMODE_custom_horizontal_area, align 4
  %46 = call i32 (i32*, i8*, ...) @fprintf(i32* %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %45)
  br label %54

47:                                               ; preds = %34
  %48 = load i32*, i32** %2, align 8
  %49 = load i8**, i8*** @horizontal_area_cfg_strings, align 8
  %50 = load i64, i64* @VIDEOMODE_horizontal_area, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i32*, i8*, ...) @fprintf(i32* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %47, %43
  %55 = load i64, i64* @VIDEOMODE_vertical_area, align 8
  %56 = load i64, i64* @VIDEOMODE_VERTICAL_CUSTOM, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* @VIDEOMODE_custom_vertical_area, align 4
  %61 = call i32 (i32*, i8*, ...) @fprintf(i32* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %60)
  br label %69

62:                                               ; preds = %54
  %63 = load i32*, i32** %2, align 8
  %64 = load i8**, i8*** @vertical_area_cfg_strings, align 8
  %65 = load i64, i64* @VIDEOMODE_vertical_area, align 8
  %66 = getelementptr inbounds i8*, i8** %64, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (i32*, i8*, ...) @fprintf(i32* %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %62, %58
  %70 = load i32*, i32** %2, align 8
  %71 = load i32, i32* @VIDEOMODE_horizontal_offset, align 4
  %72 = call i32 (i32*, i8*, ...) @fprintf(i32* %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %71)
  %73 = load i32*, i32** %2, align 8
  %74 = load i32, i32* @VIDEOMODE_vertical_offset, align 4
  %75 = call i32 (i32*, i8*, ...) @fprintf(i32* %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %74)
  %76 = load i64, i64* @VIDEOMODE_stretch, align 8
  %77 = load i64, i64* @VIDEOMODE_STRETCH_CUSTOM, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %69
  %80 = load i32*, i32** %2, align 8
  %81 = load double, double* @VIDEOMODE_custom_stretch, align 8
  %82 = call i32 (i32*, i8*, ...) @fprintf(i32* %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), double %81)
  br label %90

83:                                               ; preds = %69
  %84 = load i32*, i32** %2, align 8
  %85 = load i8**, i8*** @stretch_cfg_strings, align 8
  %86 = load i64, i64* @VIDEOMODE_stretch, align 8
  %87 = getelementptr inbounds i8*, i8** %85, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i32*, i8*, ...) @fprintf(i32* %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %83, %79
  %91 = load i32*, i32** %2, align 8
  %92 = load i8**, i8*** @fit_cfg_strings, align 8
  %93 = load i64, i64* @VIDEOMODE_fit, align 8
  %94 = getelementptr inbounds i8*, i8** %92, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* %95)
  %97 = load i32*, i32** %2, align 8
  %98 = load i8**, i8*** @keep_aspect_cfg_strings, align 8
  %99 = load i64, i64* @VIDEOMODE_keep_aspect, align 8
  %100 = getelementptr inbounds i8*, i8** %98, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (i32*, i8*, ...) @fprintf(i32* %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i8* %101)
  %103 = load i32*, i32** %2, align 8
  %104 = load double, double* @VIDEOMODE_host_aspect_ratio_w, align 8
  %105 = load double, double* @VIDEOMODE_host_aspect_ratio_h, align 8
  %106 = call i32 (i32*, i8*, ...) @fprintf(i32* %103, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), double %104, double %105)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
