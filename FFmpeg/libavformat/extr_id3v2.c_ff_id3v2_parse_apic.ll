; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2.c_ff_id3v2_parse_apic.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2.c_ff_id3v2_parse_apic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i64*, i64*, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__, i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_14__ = type { i32, i32, i64, i32, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"APIC\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_DISPOSITION_ATTACHED_PIC = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@PNGSIG = common dso_local global i64 0, align 8
@AV_CODEC_ID_PNG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_id3v2_parse_apic(i32* %0, %struct.TYPE_12__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__**, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_12__** %1, %struct.TYPE_12__*** %5, align 8
  %9 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %6, align 8
  br label %11

11:                                               ; preds = %125, %2
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %13 = icmp ne %struct.TYPE_12__* %12, null
  br i1 %13, label %14, label %129

14:                                               ; preds = %11
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @strcmp(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %125

21:                                               ; preds = %14
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %7, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call %struct.TYPE_13__* @avformat_new_stream(i32* %25, i32* null)
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %8, align 8
  %27 = icmp ne %struct.TYPE_13__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = call i32 @AVERROR(i32 %29)
  store i32 %30, i32* %3, align 4
  br label %130

31:                                               ; preds = %21
  %32 = load i32, i32* @AV_DISPOSITION_ATTACHED_PIC, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @AV_RB64(i32 %53)
  %55 = load i64, i64* @PNGSIG, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %31
  %58 = load i32, i32* @AV_CODEC_ID_PNG, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %31
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = load i64*, i64** %74, align 8
  %76 = call i32 @av_dict_set(i32* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64* %75, i32 0)
  br label %77

77:                                               ; preds = %70, %63
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = call i32 @av_dict_set(i32* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64* %82, i32 0)
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = call i32 @av_init_packet(%struct.TYPE_14__* %85)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 4
  store %struct.TYPE_10__* %89, %struct.TYPE_10__** %92, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 3
  store i32 %97, i32* %100, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %107 = sub nsw i64 %105, %106
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  store i64 %107, i64* %110, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %117
  store i32 %122, i32* %120, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %124, align 8
  br label %125

125:                                              ; preds = %77, %20
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  store %struct.TYPE_12__* %128, %struct.TYPE_12__** %6, align 8
  br label %11

129:                                              ; preds = %11
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %129, %28
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_13__* @avformat_new_stream(i32*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @AV_RB64(i32) #1

declare dso_local i32 @av_dict_set(i32*, i8*, i64*, i32) #1

declare dso_local i32 @av_init_packet(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
