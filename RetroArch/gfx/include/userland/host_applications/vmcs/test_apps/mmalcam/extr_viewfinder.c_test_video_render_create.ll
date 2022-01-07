; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalcam/extr_viewfinder.c_test_video_render_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalcam/extr_viewfinder.c_test_video_render_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_20__**, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_16__, %struct.TYPE_17__, i64, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_16__, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }

@MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"couldn't create video render\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"video render doesn't have input ports\00", align 1
@MMAL_EINVAL = common dso_local global i32 0, align 4
@MMAL_PARAMETER_DISPLAYREGION = common dso_local global i32 0, align 4
@MMAL_DISPLAY_SET_LAYER = common dso_local global i32 0, align 4
@MMAL_DISPLAY_SET_DEST_RECT = common dso_local global i32 0, align 4
@MMAL_DISPLAY_SET_FULLSCREEN = common dso_local global i32 0, align 4
@MMAL_ENOSYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"could not set video render display properties (%u)\00", align 1
@MMAL_PARAMETER_ZERO_COPY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"failed to set zero copy on render input\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"enabled zero copy on render\00", align 1
@MMAL_ENCODING_OPAQUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"video render component couldn't be enabled (%u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_23__* (%struct.TYPE_24__*, i32*)* @test_video_render_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_23__* @test_video_render_create(%struct.TYPE_24__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_22__, align 8
  %9 = alloca %struct.TYPE_21__, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %7, align 8
  %10 = load i32, i32* @MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER, align 4
  %11 = call i32 @mmal_component_create(i32 %10, %struct.TYPE_23__** %6)
  %12 = load i32*, i32** %5, align 8
  store i32 %11, i32* %12, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MMAL_SUCCESS, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %139

19:                                               ; preds = %2
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @MMAL_EINVAL, align 4
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  br label %139

28:                                               ; preds = %19
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %31, i64 0
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  store %struct.TYPE_20__* %33, %struct.TYPE_20__** %7, align 8
  %34 = load i32, i32* @MMAL_PARAMETER_DISPLAYREGION, align 4
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  store i32 48, i32* %38, align 4
  %39 = load i32, i32* @MMAL_DISPLAY_SET_LAYER, align 4
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 4
  store i32 %43, i32* %44, align 8
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %28
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %50
  %57 = load i32, i32* @MMAL_DISPLAY_SET_DEST_RECT, align 4
  %58 = load i32, i32* @MMAL_DISPLAY_SET_FULLSCREEN, align 4
  %59 = or i32 %57, %58
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 2
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 1
  %67 = bitcast %struct.TYPE_17__* %64 to i8*
  %68 = bitcast %struct.TYPE_17__* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 16, i1 false)
  br label %69

69:                                               ; preds = %56, %50, %28
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  %72 = call i32 @mmal_port_parameter_set(%struct.TYPE_20__* %70, %struct.TYPE_16__* %71)
  %73 = load i32*, i32** %5, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MMAL_SUCCESS, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %69
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MMAL_ENOSYS, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %139

87:                                               ; preds = %78, %69
  %88 = call i64 (...) @enable_zero_copy()
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %115

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %92 = load i32, i32* @MMAL_PARAMETER_ZERO_COPY, align 4
  store i32 %92, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  store i32 1, i32* %94, align 4
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  store i32 0, i32* %95, align 4
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 2
  %97 = bitcast %struct.TYPE_18__* %96 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %97, i8 0, i64 8, i1 false)
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 1
  %100 = call i32 @mmal_port_parameter_set(%struct.TYPE_20__* %98, %struct.TYPE_16__* %99)
  %101 = load i32*, i32** %5, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @MMAL_SUCCESS, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %90
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @MMAL_ENOSYS, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %139

113:                                              ; preds = %106, %90
  %114 = call i32 @LOG_INFO(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %87
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load i32, i32* @MMAL_ENCODING_OPAQUE, align 4
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  store i32 %121, i32* %125, align 4
  br label %126

126:                                              ; preds = %120, %115
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %128 = call i32 @mmal_component_enable(%struct.TYPE_23__* %127)
  %129 = load i32*, i32** %5, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i32*, i32** %5, align 8
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = load i32*, i32** %5, align 8
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %135)
  br label %139

137:                                              ; preds = %126
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_23__* %138, %struct.TYPE_23__** %3, align 8
  br label %146

139:                                              ; preds = %133, %111, %83, %24, %17
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %141 = icmp ne %struct.TYPE_23__* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %144 = call i32 @mmal_component_destroy(%struct.TYPE_23__* %143)
  br label %145

145:                                              ; preds = %142, %139
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %3, align 8
  br label %146

146:                                              ; preds = %145, %137
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  ret %struct.TYPE_23__* %147
}

declare dso_local i32 @mmal_component_create(i32, %struct.TYPE_23__**) #1

declare dso_local i32 @LOG_ERROR(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mmal_port_parameter_set(%struct.TYPE_20__*, %struct.TYPE_16__*) #1

declare dso_local i64 @enable_zero_copy(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @LOG_INFO(i8*) #1

declare dso_local i32 @mmal_component_enable(%struct.TYPE_23__*) #1

declare dso_local i32 @mmal_component_destroy(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
