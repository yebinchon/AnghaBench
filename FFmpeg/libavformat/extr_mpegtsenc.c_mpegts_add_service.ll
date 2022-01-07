; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegtsenc.c_mpegts_add_service.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegtsenc.c_mpegts_add_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32*, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_16__*, i32, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i64, i32, i64 }
%struct.TYPE_17__ = type { i8* }

@.str = private unnamed_addr constant [13 x i8] c"service_name\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%02d\00", align 1
@DEFAULT_SERVICE_NAME = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"service_provider\00", align 1
@DEFAULT_PROVIDER_NAME = common dso_local global i8* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Too long service or provider name\0A\00", align 1
@section_write_packet = common dso_local global i32 0, align 4
@MPEGTS_FLAG_DISCONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_16__*, i32, i32*, i32*)* @mpegts_add_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @mpegts_add_service(%struct.TYPE_16__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca [32 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %10, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call %struct.TYPE_17__* @av_dict_get(i32* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %12, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %23 = icmp ne %struct.TYPE_17__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32*, i32** %8, align 8
  %26 = call %struct.TYPE_17__* @av_dict_get(i32* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %12, align 8
  br label %27

27:                                               ; preds = %24, %4
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %29 = load i8*, i8** @DEFAULT_SERVICE_NAME, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  %34 = call i32 @snprintf(i8* %28, i32 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %29, i64 %33)
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %36 = icmp ne %struct.TYPE_17__* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  br label %43

41:                                               ; preds = %27
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  br label %43

43:                                               ; preds = %41, %37
  %44 = phi i8* [ %40, %37 ], [ %42, %41 ]
  store i8* %44, i8** %15, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call %struct.TYPE_17__* @av_dict_get(i32* %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_17__* %46, %struct.TYPE_17__** %13, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %48 = icmp ne %struct.TYPE_17__* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  br label %55

53:                                               ; preds = %43
  %54 = load i8*, i8** @DEFAULT_PROVIDER_NAME, align 8
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi i8* [ %52, %49 ], [ %54, %53 ]
  store i8* %56, i8** %16, align 8
  %57 = call %struct.TYPE_15__* @av_mallocz(i32 56)
  store %struct.TYPE_15__* %57, %struct.TYPE_15__** %11, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %59 = icmp ne %struct.TYPE_15__* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  br label %130

61:                                               ; preds = %55
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 4
  store i64 %68, i64* %71, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  store i32 8191, i32* %76, align 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %16, align 8
  %81 = call i64 @encode_str8(i32 %79, i8* %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %61
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load i8*, i8** %15, align 8
  %88 = call i64 @encode_str8(i32 %86, i8* %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83, %61
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %92 = load i32, i32* @AV_LOG_ERROR, align 4
  %93 = call i32 @av_log(%struct.TYPE_16__* %91, i32 %92, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %127

94:                                               ; preds = %83
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %100 = call i64 @av_dynarray_add_nofree(i32* %96, i64* %98, %struct.TYPE_15__* %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %127

103:                                              ; preds = %94
  %104 = load i32, i32* @section_write_packet, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 3
  store i32 %104, i32* %107, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 2
  store %struct.TYPE_16__* %108, %struct.TYPE_16__** %111, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  store i32 15, i32* %114, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @MPEGTS_FLAG_DISCONT, align 4
  %119 = and i32 %117, %118
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  %123 = load i32*, i32** %9, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 2
  store i32* %123, i32** %125, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %126, %struct.TYPE_15__** %5, align 8
  br label %130

127:                                              ; preds = %102, %90
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %129 = call i32 @av_free(%struct.TYPE_15__* %128)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  br label %130

130:                                              ; preds = %127, %103, %60
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  ret %struct.TYPE_15__* %131
}

declare dso_local %struct.TYPE_17__* @av_dict_get(i32*, i8*, i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i64) #1

declare dso_local %struct.TYPE_15__* @av_mallocz(i32) #1

declare dso_local i64 @encode_str8(i32, i8*) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i64 @av_dynarray_add_nofree(i32*, i64*, %struct.TYPE_15__*) #1

declare dso_local i32 @av_free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
