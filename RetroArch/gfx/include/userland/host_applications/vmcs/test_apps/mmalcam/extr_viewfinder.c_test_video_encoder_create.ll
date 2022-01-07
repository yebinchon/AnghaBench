; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalcam/extr_viewfinder.c_test_video_encoder_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalcam/extr_viewfinder.c_test_video_encoder_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__**, %struct.TYPE_17__**, i32, i32 }
%struct.TYPE_17__ = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_20__ = type { i64, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }

@MMAL_COMPONENT_DEFAULT_VIDEO_ENCODER = common dso_local global i8* null, align 8
@MMAL_EINVAL = common dso_local global i32 0, align 4
@MMAL_ENCODING_JPEG = common dso_local global i64 0, align 8
@MMAL_COMPONENT_DEFAULT_IMAGE_ENCODER = common dso_local global i8* null, align 8
@MMAL_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"couldn't create video encoder\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"video encoder doesn't have input/output ports\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"format not set on video encoder output port\00", align 1
@MMAL_PARAMETER_ZERO_COPY = common dso_local global i32 0, align 4
@MMAL_ENOSYS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"failed to set zero copy on encoder output\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"failed to set zero copy on encoder input\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"enabled zero copy on encoder\00", align 1
@MMAL_ENCODING_OPAQUE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [44 x i8] c"video encoder component couldn't be enabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_20__*, i32*)* @test_video_encoder_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @test_video_encoder_create(%struct.TYPE_20__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_18__, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %8, align 8
  %12 = load i8*, i8** @MMAL_COMPONENT_DEFAULT_VIDEO_ENCODER, align 8
  store i8* %12, i8** %9, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @parse_vformat(i32 %15, i32 0, i32 0, i64* %10)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @MMAL_EINVAL, align 4
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  br label %192

21:                                               ; preds = %2
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @MMAL_ENCODING_JPEG, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i8*, i8** @MMAL_COMPONENT_DEFAULT_IMAGE_ENCODER, align 8
  store i8* %26, i8** %9, align 8
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @mmal_component_create(i8* %28, %struct.TYPE_19__** %6)
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MMAL_SUCCESS, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %192

37:                                               ; preds = %27
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42, %37
  %48 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @MMAL_EINVAL, align 4
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  br label %192

51:                                               ; preds = %42
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %54, i64 0
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %55, align 8
  store %struct.TYPE_17__* %56, %struct.TYPE_17__** %7, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %59, i64 0
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  store %struct.TYPE_17__* %61, %struct.TYPE_17__** %8, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 6
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %63, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 6
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = call i32 @mmal_format_copy(%struct.TYPE_15__* %64, %struct.TYPE_15__* %67)
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 6
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  store i64 %69, i64* %73, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 6
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  store i32 %76, i32* %80, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %82 = call i32 @mmal_port_format_commit(%struct.TYPE_17__* %81)
  %83 = load i32*, i32** %5, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @MMAL_SUCCESS, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %51
  %89 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %192

90:                                               ; preds = %51
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %98, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %90
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %103, %90
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 3
  store i64 %112, i64* %114, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = icmp slt i64 %117, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %109
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 3
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %122, %109
  %129 = call i64 (...) @enable_zero_copy()
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %170

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %133 = load i32, i32* @MMAL_PARAMETER_ZERO_COPY, align 4
  store i32 %133, i32* %132, align 4
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  store i32 1, i32* %134, align 4
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %136 = bitcast %struct.TYPE_16__* %135 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %136, i8 0, i64 8, i1 false)
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %139 = call i32 @mmal_port_parameter_set(%struct.TYPE_17__* %137, i32* %138)
  %140 = load i32*, i32** %5, align 8
  store i32 %139, i32* %140, align 4
  %141 = load i32*, i32** %5, align 8
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @MMAL_SUCCESS, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %131
  %146 = load i32*, i32** %5, align 8
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @MMAL_ENOSYS, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %192

152:                                              ; preds = %145, %131
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %155 = call i32 @mmal_port_parameter_set(%struct.TYPE_17__* %153, i32* %154)
  %156 = load i32*, i32** %5, align 8
  store i32 %155, i32* %156, align 4
  %157 = load i32*, i32** %5, align 8
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @MMAL_SUCCESS, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %152
  %162 = load i32*, i32** %5, align 8
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @MMAL_ENOSYS, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %161
  %167 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %192

168:                                              ; preds = %161, %152
  %169 = call i32 @LOG_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %170

170:                                              ; preds = %168, %128
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load i64, i64* @MMAL_ENCODING_OPAQUE, align 8
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 6
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  store i64 %176, i64* %180, align 8
  br label %181

181:                                              ; preds = %175, %170
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %183 = call i32 @mmal_component_enable(%struct.TYPE_19__* %182)
  %184 = load i32*, i32** %5, align 8
  store i32 %183, i32* %184, align 4
  %185 = load i32*, i32** %5, align 8
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %181
  %189 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %192

190:                                              ; preds = %181
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_19__* %191, %struct.TYPE_19__** %3, align 8
  br label %199

192:                                              ; preds = %188, %166, %150, %88, %47, %35, %18
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %194 = icmp ne %struct.TYPE_19__* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %197 = call i32 @mmal_component_destroy(%struct.TYPE_19__* %196)
  br label %198

198:                                              ; preds = %195, %192
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  br label %199

199:                                              ; preds = %198, %190
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  ret %struct.TYPE_19__* %200
}

declare dso_local i64 @parse_vformat(i32, i32, i32, i64*) #1

declare dso_local i32 @mmal_component_create(i8*, %struct.TYPE_19__**) #1

declare dso_local i32 @LOG_ERROR(i8*) #1

declare dso_local i32 @mmal_format_copy(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @mmal_port_format_commit(%struct.TYPE_17__*) #1

declare dso_local i64 @enable_zero_copy(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mmal_port_parameter_set(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @LOG_INFO(i8*) #1

declare dso_local i32 @mmal_component_enable(%struct.TYPE_19__*) #1

declare dso_local i32 @mmal_component_destroy(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
