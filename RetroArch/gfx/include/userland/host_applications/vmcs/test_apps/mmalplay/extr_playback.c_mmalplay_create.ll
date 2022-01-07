; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalplay/extr_playback.c_mmalplay_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalplay/extr_playback.c_mmalplay_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i8*, i32, i32, %struct.TYPE_19__*, i32, i32, %struct.TYPE_21__, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32 }

@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MMAL_ENOMEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"MMALTest\00", align 1
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@MMALPLAY_MAX_RENDERERS = common dso_local global i32 0, align 4
@MMAL_COMPONENT_DEFAULT_CONTAINER_READER = common dso_local global i32 0, align 4
@MMAL_ENOSPC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @mmalplay_create(i8* %0, %struct.TYPE_21__* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_20__, align 8
  %15 = alloca i32, align 4
  %16 = alloca { i64, i32 }, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store i64* %2, i64** %7, align 8
  %17 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %17, i64* %8, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i64*, i64** %7, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i64, i64* @MMAL_ENOMEM, align 8
  %24 = load i64*, i64** %7, align 8
  store i64 %23, i64* %24, align 8
  br label %25

25:                                               ; preds = %22, %3
  %26 = call %struct.TYPE_20__* @malloc(i32 40)
  store %struct.TYPE_20__* %26, %struct.TYPE_20__** %12, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %28 = icmp ne %struct.TYPE_20__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %4, align 8
  br label %195

30:                                               ; preds = %25
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %32 = call i32 @memset(%struct.TYPE_20__* %31, i32 0, i32 40)
  %33 = call i32 @memset(%struct.TYPE_20__* %14, i32 0, i32 40)
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 7
  %36 = call i64 @vcos_semaphore_create(i32* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %37 = load i64, i64* @VCOS_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %41 = call i32 @free(%struct.TYPE_20__* %40)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %4, align 8
  br label %195

42:                                               ; preds = %30
  %43 = load i8*, i8** %5, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %47 = icmp ne %struct.TYPE_21__* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 6
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %52 = bitcast %struct.TYPE_21__* %50 to i8*
  %53 = bitcast %struct.TYPE_21__* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 4 %53, i64 4, i1 false)
  br label %54

54:                                               ; preds = %48, %42
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @MMAL_MAX(i32 %58, i32 1)
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @MMALPLAY_MAX_RENDERERS, align 4
  %68 = call i32 @MMAL_MIN(i32 %66, i32 %67)
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  store i32 0, i32* %72, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %74 = load i32, i32* @MMAL_COMPONENT_DEFAULT_CONTAINER_READER, align 4
  %75 = call i32* @mmalplay_component_create(%struct.TYPE_20__* %73, i32 %74, i64* %8)
  store i32* %75, i32** %13, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %54
  br label %180

79:                                               ; preds = %54
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @mmalplay_pipeline_video_create(%struct.TYPE_20__* %80, i32 %83, %struct.TYPE_20__* %14)
  store i64 %84, i64* %10, align 8
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @mmalplay_pipeline_audio_create(%struct.TYPE_20__* %85, i32 %88, %struct.TYPE_20__* %14)
  store i64 %89, i64* %9, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %91 = call i64 @mmalplay_pipeline_clock_create(%struct.TYPE_20__* %90, %struct.TYPE_20__* %14)
  store i64 %91, i64* %11, align 8
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* @MMAL_SUCCESS, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %79
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* @MMAL_SUCCESS, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* @MMAL_SUCCESS, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i64, i64* %10, align 8
  store i64 %104, i64* %8, align 8
  br label %180

105:                                              ; preds = %99, %95, %79
  store i32 0, i32* %15, align 4
  br label %106

106:                                              ; preds = %140, %105
  %107 = load i32, i32* %15, align 4
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp ult i32 %107, %109
  br i1 %110, label %111, label %143

111:                                              ; preds = %106
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 3
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %113, align 8
  %115 = load i32, i32* %15, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 3
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %120, align 8
  %122 = load i32, i32* %15, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 3
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %127, align 8
  %129 = load i32, i32* %15, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @mmalplay_connection_create(%struct.TYPE_20__* %112, i32 %119, i32 %126, i32 %133)
  store i64 %134, i64* %8, align 8
  %135 = load i64, i64* %8, align 8
  %136 = load i64, i64* @MMAL_SUCCESS, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %111
  br label %180

139:                                              ; preds = %111
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %15, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %15, align 4
  br label %106

143:                                              ; preds = %106
  store i32 0, i32* %15, align 4
  br label %144

144:                                              ; preds = %169, %143
  %145 = load i32, i32* %15, align 4
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = icmp ult i32 %145, %148
  br i1 %149, label %150, label %172

150:                                              ; preds = %144
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %152, align 8
  %154 = load i32, i32* %15, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i64 %155
  %157 = bitcast { i64, i32 }* %16 to i8*
  %158 = bitcast %struct.TYPE_19__* %156 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %157, i8* align 4 %158, i64 12, i1 false)
  %159 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %160 = load i64, i64* %159, align 4
  %161 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @mmal_connection_enable(i64 %160, i32 %162)
  store i64 %163, i64* %8, align 8
  %164 = load i64, i64* %8, align 8
  %165 = load i64, i64* @MMAL_SUCCESS, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %150
  br label %180

168:                                              ; preds = %150
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %15, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %15, align 4
  br label %144

172:                                              ; preds = %144
  %173 = load i64*, i64** %7, align 8
  %174 = icmp ne i64* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i64, i64* @MMAL_SUCCESS, align 8
  %177 = load i64*, i64** %7, align 8
  store i64 %176, i64* %177, align 8
  br label %178

178:                                              ; preds = %175, %172
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_20__* %179, %struct.TYPE_20__** %4, align 8
  br label %195

180:                                              ; preds = %167, %138, %103, %78
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %182 = call i32 @mmalplay_destroy(%struct.TYPE_20__* %181)
  %183 = load i64, i64* %8, align 8
  %184 = load i64, i64* @MMAL_SUCCESS, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %180
  %187 = load i64, i64* @MMAL_ENOSPC, align 8
  store i64 %187, i64* %8, align 8
  br label %188

188:                                              ; preds = %186, %180
  %189 = load i64*, i64** %7, align 8
  %190 = icmp ne i64* %189, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load i64, i64* %8, align 8
  %193 = load i64*, i64** %7, align 8
  store i64 %192, i64* %193, align 8
  br label %194

194:                                              ; preds = %191, %188
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %4, align 8
  br label %195

195:                                              ; preds = %194, %178, %39, %29
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  ret %struct.TYPE_20__* %196
}

declare dso_local i32 @LOG_TRACE(i8*, i8*) #1

declare dso_local %struct.TYPE_20__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i64 @vcos_semaphore_create(i32*, i8*, i32) #1

declare dso_local i32 @free(%struct.TYPE_20__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MMAL_MAX(i32, i32) #1

declare dso_local i32 @MMAL_MIN(i32, i32) #1

declare dso_local i32* @mmalplay_component_create(%struct.TYPE_20__*, i32, i64*) #1

declare dso_local i64 @mmalplay_pipeline_video_create(%struct.TYPE_20__*, i32, %struct.TYPE_20__*) #1

declare dso_local i64 @mmalplay_pipeline_audio_create(%struct.TYPE_20__*, i32, %struct.TYPE_20__*) #1

declare dso_local i64 @mmalplay_pipeline_clock_create(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i64 @mmalplay_connection_create(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i64 @mmal_connection_enable(i64, i32) #1

declare dso_local i32 @mmalplay_destroy(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
