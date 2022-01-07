; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_ff_stream_add_bitstream_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_ff_stream_add_bitstream_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__*, i32, i32* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { i32, i32* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { i8* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unknown bitstream filter '%s'\0A\00", align 1
@AVERROR_BSF_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"Automatically inserted bitstream filter '%s'; args='%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_stream_add_bitstream_filter(%struct.TYPE_15__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca [2 x i8*], align 16
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32* @av_bsf_get_by_name(i8* %14)
  store i32* %15, i32** %9, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @AV_LOG_ERROR, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 (i32*, i32, i8*, i8*, ...) @av_log(i32* null, i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* @AVERROR_BSF_NOT_FOUND, align 4
  store i32 %21, i32* %4, align 4
  br label %157

22:                                               ; preds = %3
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @av_bsf_alloc(i32* %23, %struct.TYPE_17__** %10)
  store i32 %24, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %157

28:                                               ; preds = %22
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %70

35:                                               ; preds = %28
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %39, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %40, i64 %47
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %11, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %55, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %56, i64 %63
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  br label %79

70:                                               ; preds = %28
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %11, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %70, %35
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @avcodec_parameters_copy(i32 %82, i32* %83)
  store i32 %84, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = call i32 @av_bsf_free(%struct.TYPE_17__** %10)
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %4, align 4
  br label %157

89:                                               ; preds = %79
  %90 = load i8*, i8** %7, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %124

92:                                               ; preds = %89
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %124

99:                                               ; preds = %92
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call %struct.TYPE_16__* @av_opt_next(i32 %102, i32* null)
  store %struct.TYPE_16__* %103, %struct.TYPE_16__** %12, align 8
  %104 = bitcast [2 x i8*]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %104, i8 0, i64 16, i1 false)
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %106 = icmp ne %struct.TYPE_16__* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %99
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  store i8* %110, i8** %111, align 16
  br label %112

112:                                              ; preds = %107, %99
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %118 = call i32 @av_opt_set_from_string(i32 %115, i8* %116, i8** %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %118, i32* %8, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %112
  %121 = call i32 @av_bsf_free(%struct.TYPE_17__** %10)
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %4, align 4
  br label %157

123:                                              ; preds = %112
  br label %124

124:                                              ; preds = %123, %92, %89
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %126 = call i32 @av_bsf_init(%struct.TYPE_17__* %125)
  store i32 %126, i32* %8, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = call i32 @av_bsf_free(%struct.TYPE_17__** %10)
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %4, align 4
  br label %157

131:                                              ; preds = %124
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %141 = call i32 @av_dynarray_add_nofree(%struct.TYPE_18__*** %135, i32* %139, %struct.TYPE_17__* %140)
  store i32 %141, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %131
  %144 = call i32 @av_bsf_free(%struct.TYPE_17__** %10)
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %4, align 4
  br label %157

146:                                              ; preds = %131
  %147 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %148 = load i8*, i8** %6, align 8
  %149 = load i8*, i8** %7, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = load i8*, i8** %7, align 8
  br label %154

153:                                              ; preds = %146
  br label %154

154:                                              ; preds = %153, %151
  %155 = phi i8* [ %152, %151 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %153 ]
  %156 = call i32 (i32*, i32, i8*, i8*, ...) @av_log(i32* null, i32 %147, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i8* %148, i8* %155)
  store i32 1, i32* %4, align 4
  br label %157

157:                                              ; preds = %154, %143, %128, %120, %86, %26, %17
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32* @av_bsf_get_by_name(i8*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*, ...) #1

declare dso_local i32 @av_bsf_alloc(i32*, %struct.TYPE_17__**) #1

declare dso_local i32 @avcodec_parameters_copy(i32, i32*) #1

declare dso_local i32 @av_bsf_free(%struct.TYPE_17__**) #1

declare dso_local %struct.TYPE_16__* @av_opt_next(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @av_opt_set_from_string(i32, i8*, i8**, i8*, i8*) #1

declare dso_local i32 @av_bsf_init(%struct.TYPE_17__*) #1

declare dso_local i32 @av_dynarray_add_nofree(%struct.TYPE_18__***, i32*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
