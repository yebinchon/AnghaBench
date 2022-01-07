; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiPreview.c_raspipreview_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiPreview.c_raspipreview_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_11__*, i32, i64, i32, i32 }
%struct.TYPE_11__ = type { i32**, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_12__, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"vc.null_sink\00", align 1
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to create null sink component\00", align 1
@MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Unable to create preview component\00", align 1
@MMAL_ENOSYS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"No input ports found on component\00", align 1
@MMAL_PARAMETER_DISPLAYREGION = common dso_local global i32 0, align 4
@MMAL_DISPLAY_SET_LAYER = common dso_local global i32 0, align 4
@PREVIEW_LAYER = common dso_local global i32 0, align 4
@MMAL_DISPLAY_SET_ALPHA = common dso_local global i32 0, align 4
@MMAL_DISPLAY_SET_FULLSCREEN = common dso_local global i32 0, align 4
@MMAL_DISPLAY_SET_DEST_RECT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"unable to set preview port parameters (%u)\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Unable to enable preview/null sink component (%u)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @raspipreview_create(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  store i32* null, i32** %5, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = call i64 @mmal_component_create(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__** %4)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @MMAL_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %110

19:                                               ; preds = %12
  br label %96

20:                                               ; preds = %1
  %21 = load i8*, i8** @MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER, align 8
  %22 = call i64 @mmal_component_create(i8* %21, %struct.TYPE_11__** %4)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @MMAL_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %110

28:                                               ; preds = %20
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* @MMAL_ENOSYS, align 8
  store i64 %34, i64* %6, align 8
  %35 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %110

36:                                               ; preds = %28
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 0
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %5, align 8
  %42 = load i32, i32* @MMAL_PARAMETER_DISPLAYREGION, align 4
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  store i32 28, i32* %46, align 4
  %47 = load i32, i32* @MMAL_DISPLAY_SET_LAYER, align 4
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @PREVIEW_LAYER, align 4
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 5
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @MMAL_DISPLAY_SET_ALPHA, align 4
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 4
  store i32 %57, i32* %58, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %36
  %64 = load i32, i32* @MMAL_DISPLAY_SET_FULLSCREEN, align 4
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %64
  store i32 %67, i32* %65, align 4
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  store i32 1, i32* %68, align 4
  br label %81

69:                                               ; preds = %36
  %70 = load i32, i32* @MMAL_DISPLAY_SET_DEST_RECT, align 4
  %71 = load i32, i32* @MMAL_DISPLAY_SET_FULLSCREEN, align 4
  %72 = or i32 %70, %71
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 4
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  store i32 0, i32* %76, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 3
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %69, %63
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %84 = call i64 @mmal_port_parameter_set(i32* %82, %struct.TYPE_12__* %83)
  store i64 %84, i64* %6, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* @MMAL_SUCCESS, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %81
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* @MMAL_ENOSYS, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i64, i64* %6, align 8
  %94 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64 %93)
  br label %110

95:                                               ; preds = %88, %81
  br label %96

96:                                               ; preds = %95, %19
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = call i64 @mmal_component_enable(%struct.TYPE_11__* %97)
  store i64 %98, i64* %6, align 8
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* @MMAL_SUCCESS, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i64, i64* %6, align 8
  %104 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i64 %103)
  br label %110

105:                                              ; preds = %96
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  store %struct.TYPE_11__* %106, %struct.TYPE_11__** %108, align 8
  %109 = load i64, i64* %6, align 8
  store i64 %109, i64* %2, align 8
  br label %118

110:                                              ; preds = %102, %92, %33, %26, %17
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %112 = icmp ne %struct.TYPE_11__* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %115 = call i32 @mmal_component_destroy(%struct.TYPE_11__* %114)
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i64, i64* %6, align 8
  store i64 %117, i64* %2, align 8
  br label %118

118:                                              ; preds = %116, %105
  %119 = load i64, i64* %2, align 8
  ret i64 %119
}

declare dso_local i64 @mmal_component_create(i8*, %struct.TYPE_11__**) #1

declare dso_local i32 @vcos_log_error(i8*, ...) #1

declare dso_local i64 @mmal_port_parameter_set(i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @mmal_component_enable(%struct.TYPE_11__*) #1

declare dso_local i32 @mmal_component_destroy(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
