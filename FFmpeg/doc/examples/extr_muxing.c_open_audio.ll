; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_muxing.c_open_audio.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_muxing.c_open_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__*, i8*, i8*, i64, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Could not open audio codec: %s\0A\00", align 1
@M_PI = common dso_local global i32 0, align 4
@AV_CODEC_CAP_VARIABLE_FRAME_SIZE = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_S16 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Could not copy the stream parameters\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Could not allocate resampler context\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"in_channel_count\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"in_sample_rate\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"in_sample_fmt\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"out_channel_count\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"out_sample_rate\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"out_sample_fmt\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Failed to initialize the resampling context\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_10__*, i32*)* @open_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @open_audio(i32* %0, i32* %1, %struct.TYPE_10__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %12, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 7
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %9, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @av_dict_copy(i32** %12, i32* %16, i32 0)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @avcodec_open2(%struct.TYPE_11__* %18, i32* %19, i32** %12)
  store i32 %20, i32* %11, align 4
  %21 = call i32 @av_dict_free(i32** %12)
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load i32, i32* @stderr, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i8* @av_err2str(i32 %26)
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = call i32 @exit(i32 1) #3
  unreachable

30:                                               ; preds = %4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 6
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @M_PI, align 4
  %34 = mul nsw i32 2, %33
  %35 = sitofp i32 %34 to double
  %36 = fmul double %35, 1.100000e+02
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sitofp i32 %39 to double
  %41 = fdiv double %36, %40
  %42 = fptosi double %41 to i32
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @M_PI, align 4
  %46 = mul nsw i32 2, %45
  %47 = sitofp i32 %46 to double
  %48 = fmul double %47, 1.100000e+02
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sitofp i32 %51 to double
  %53 = fdiv double %48, %52
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sitofp i32 %56 to double
  %58 = fdiv double %53, %57
  %59 = fptosi double %58 to i32
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 5
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @AV_CODEC_CAP_VARIABLE_FRAME_SIZE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %30
  store i32 10000, i32* %10, align 4
  br label %75

71:                                               ; preds = %30
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %71, %70
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i8* @alloc_audio_frame(i32 %78, i32 %81, i32 %84, i32 %85)
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 5
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* @AV_SAMPLE_FMT_S16, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i8* @alloc_audio_frame(i32 %89, i32 %92, i32 %95, i32 %96)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 4
  store i8* %97, i8** %99, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %106 = call i32 @avcodec_parameters_from_context(i32 %104, %struct.TYPE_11__* %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %75
  %110 = load i32, i32* @stderr, align 4
  %111 = call i32 (i32, i8*, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %112 = call i32 @exit(i32 1) #3
  unreachable

113:                                              ; preds = %75
  %114 = call i32 (...) @swr_alloc()
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %113
  %122 = load i32, i32* @stderr, align 4
  %123 = call i32 (i32, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %124 = call i32 @exit(i32 1) #3
  unreachable

125:                                              ; preds = %113
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @av_opt_set_int(i32 %128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %131, i32 0)
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @av_opt_set_int(i32 %135, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %138, i32 0)
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @AV_SAMPLE_FMT_S16, align 4
  %144 = call i32 @av_opt_set_sample_fmt(i32 %142, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %143, i32 0)
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @av_opt_set_int(i32 %147, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %150, i32 0)
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @av_opt_set_int(i32 %154, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %157, i32 0)
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @av_opt_set_sample_fmt(i32 %161, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %164, i32 0)
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @swr_init(i32 %168)
  store i32 %169, i32* %11, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %125
  %172 = load i32, i32* @stderr, align 4
  %173 = call i32 (i32, i8*, ...) @fprintf(i32 %172, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  %174 = call i32 @exit(i32 1) #3
  unreachable

175:                                              ; preds = %125
  ret void
}

declare dso_local i32 @av_dict_copy(i32**, i32*, i32) #1

declare dso_local i32 @avcodec_open2(%struct.TYPE_11__*, i32*, i32**) #1

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @av_err2str(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @alloc_audio_frame(i32, i32, i32, i32) #1

declare dso_local i32 @avcodec_parameters_from_context(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @swr_alloc(...) #1

declare dso_local i32 @av_opt_set_int(i32, i8*, i32, i32) #1

declare dso_local i32 @av_opt_set_sample_fmt(i32, i8*, i32, i32) #1

declare dso_local i32 @swr_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
