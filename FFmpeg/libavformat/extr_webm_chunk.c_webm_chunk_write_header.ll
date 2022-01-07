; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_webm_chunk.c_webm_chunk_write_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_webm_chunk.c_webm_chunk_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 (%struct.TYPE_15__*, %struct.TYPE_16__**, i32, i32, i32**)*, i32*, %struct.TYPE_16__*, %struct.TYPE_13__*, i32, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_13__ = type { {}* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_15__*, i32, i32, i32, i32 }

@MAX_FILENAME_SIZE = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"webm\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"video/webm\00", align 1
@AVERROR_MUXER_NOT_FOUND = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @webm_chunk_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @webm_chunk_write_header(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 6
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  store i32* null, i32** %8, align 8
  %16 = load i32, i32* @MAX_FILENAME_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %25, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %142

26:                                               ; preds = %1
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @av_guess_format(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %26
  %43 = load i32, i32* @AVERROR_MUXER_NOT_FOUND, align 4
  store i32 %43, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %142

44:                                               ; preds = %26
  %45 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = call i32 @chunk_mux_init(%struct.TYPE_15__* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %142

54:                                               ; preds = %44
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  store %struct.TYPE_15__* %57, %struct.TYPE_15__** %5, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %59 = call i32 @get_chunk_filename(%struct.TYPE_15__* %58, i32 1, i8* %19)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %142

64:                                               ; preds = %54
  %65 = call i8* @av_strdup(i8* %19)
  store i8* %65, i8** %11, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = call i32 @AVERROR(i32 %69)
  store i32 %70, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %142

71:                                               ; preds = %64
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 @ff_format_set_url(%struct.TYPE_15__* %72, i8* %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @av_dict_set(i32** %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %82, i32 0)
  br label %84

84:                                               ; preds = %79, %71
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = load i32 (%struct.TYPE_15__*, %struct.TYPE_16__**, i32, i32, i32**)*, i32 (%struct.TYPE_15__*, %struct.TYPE_16__**, i32, i32, i32**)** %86, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %95 = call i32 %87(%struct.TYPE_15__* %88, %struct.TYPE_16__** %90, i32 %93, i32 %94, i32** %8)
  store i32 %95, i32* %6, align 4
  %96 = call i32 @av_dict_free(i32** %8)
  %97 = load i32, i32* %6, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %84
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %142

101:                                              ; preds = %84
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  store i64 0, i64* %105, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = bitcast {}** %109 to i32 (%struct.TYPE_15__*)**
  %111 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %110, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %113 = call i32 %111(%struct.TYPE_15__* %112)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %101
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %142

118:                                              ; preds = %101
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 3
  %122 = call i32 @ff_format_io_close(%struct.TYPE_15__* %119, %struct.TYPE_16__** %121)
  store i32 0, i32* %7, align 4
  br label %123

123:                                              ; preds = %138, %118
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %123
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @avpriv_set_pts_info(i32 %136, i32 64, i32 1, i32 1000)
  br label %138

138:                                              ; preds = %129
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %7, align 4
  br label %123

141:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %142

142:                                              ; preds = %141, %116, %99, %68, %62, %52, %42, %24
  %143 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %143)
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @av_guess_format(i8*, i32, i8*) #2

declare dso_local i32 @chunk_mux_init(%struct.TYPE_15__*) #2

declare dso_local i32 @get_chunk_filename(%struct.TYPE_15__*, i32, i8*) #2

declare dso_local i8* @av_strdup(i8*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @ff_format_set_url(%struct.TYPE_15__*, i8*) #2

declare dso_local i32 @av_dict_set(i32**, i8*, i64, i32) #2

declare dso_local i32 @av_dict_free(i32**) #2

declare dso_local i32 @ff_format_io_close(%struct.TYPE_15__*, %struct.TYPE_16__**) #2

declare dso_local i32 @avpriv_set_pts_info(i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
