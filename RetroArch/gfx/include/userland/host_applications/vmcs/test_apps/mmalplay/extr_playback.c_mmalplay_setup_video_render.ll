; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalplay/extr_playback.c_mmalplay_setup_video_render.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalplay/extr_playback.c_mmalplay_setup_video_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i64, i32, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_12__**, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_13__, i64, i32, %struct.TYPE_14__, i32, i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_13__, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }

@MMAL_EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"%s doesn't have input ports\00", align 1
@video_render_num = common dso_local global i32 0, align 4
@MMAL_PARAMETER_DISPLAYREGION = common dso_local global i32 0, align 4
@MMAL_DISPLAY_SET_LAYER = common dso_local global i32 0, align 4
@MMAL_DISPLAY_SET_NUM = common dso_local global i32 0, align 4
@MMAL_DISPLAY_MODE_LETTERBOX = common dso_local global i32 0, align 4
@MMAL_DISPLAY_SET_DEST_RECT = common dso_local global i32 0, align 4
@MMAL_DISPLAY_SET_MODE = common dso_local global i32 0, align 4
@MMAL_DISPLAY_SET_FULLSCREEN = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@MMAL_ENOSYS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"could not set video render layer on %s\00", align 1
@MMAL_PARAMETER_ZERO_COPY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to set zero copy on %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*, %struct.TYPE_19__*)* @mmalplay_setup_video_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmalplay_setup_video_render(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__, align 8
  %8 = alloca %struct.TYPE_17__, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %9 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %136

19:                                               ; preds = %2
  %20 = load i32, i32* @video_render_num, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @video_render_num, align 4
  store i32 %20, i32* %6, align 4
  %22 = load i32, i32* @MMAL_PARAMETER_DISPLAYREGION, align 4
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  store i32 72, i32* %26, align 4
  %27 = load i32, i32* @MMAL_DISPLAY_SET_LAYER, align 4
  %28 = load i32, i32* @MMAL_DISPLAY_SET_NUM, align 4
  %29 = or i32 %27, %28
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 2
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 6
  store i64 %35, i64* %36, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 5
  store i32 %40, i32* %41, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %19
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  store i32 512, i32* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  store i32 256, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = mul i32 %56, %57
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @MMAL_DISPLAY_MODE_LETTERBOX, align 4
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 3
  store i32 %61, i32* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* @MMAL_DISPLAY_SET_DEST_RECT, align 4
  %65 = load i32, i32* @MMAL_DISPLAY_SET_MODE, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @MMAL_DISPLAY_SET_FULLSCREEN, align 4
  %68 = or i32 %66, %67
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %68
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %47, %19
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %75, i64 0
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  %79 = call i64 @mmal_port_parameter_set(%struct.TYPE_12__* %77, %struct.TYPE_13__* %78)
  store i64 %79, i64* %5, align 8
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* @MMAL_SUCCESS, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %72
  %84 = load i64, i64* %5, align 8
  %85 = load i64, i64* @MMAL_ENOSYS, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %90, i64 0
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  br label %136

96:                                               ; preds = %83, %72
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %134, label %102

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %104 = load i32, i32* @MMAL_PARAMETER_ZERO_COPY, align 4
  store i32 %104, i32* %103, align 4
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  store i32 1, i32* %106, align 4
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  store i32 0, i32* %107, align 4
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 2
  %109 = bitcast %struct.TYPE_16__* %108 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %109, i8 0, i64 8, i1 false)
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %112, i64 0
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %116 = call i64 @mmal_port_parameter_set(%struct.TYPE_12__* %114, %struct.TYPE_13__* %115)
  store i64 %116, i64* %5, align 8
  %117 = load i64, i64* %5, align 8
  %118 = load i64, i64* @MMAL_SUCCESS, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %133

120:                                              ; preds = %102
  %121 = load i64, i64* %5, align 8
  %122 = load i64, i64* @MMAL_ENOSYS, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %127, i64 0
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  br label %136

133:                                              ; preds = %120, %102
  br label %134

134:                                              ; preds = %133, %96
  %135 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %135, i64* %5, align 8
  br label %136

136:                                              ; preds = %134, %124, %87, %14
  %137 = load i64, i64* %5, align 8
  ret i64 %137
}

declare dso_local i32 @LOG_ERROR(i8*, i32) #1

declare dso_local i64 @mmal_port_parameter_set(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
