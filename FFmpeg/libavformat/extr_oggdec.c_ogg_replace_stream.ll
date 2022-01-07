; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggdec.c_ogg_replace_stream.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggdec.c_ogg_replace_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__*, %struct.ogg* }
%struct.TYPE_15__ = type { i32 }
%struct.ogg = type { i32, %struct.ogg_stream*, %struct.TYPE_13__* }
%struct.ogg_stream = type { i64, i32, %struct.ogg_codec*, i32, i32, i8* }
%struct.ogg_codec = type opaque
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Cannot identify new stream\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Changing stream parameters in multistream ogg\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@buf = common dso_local global i32 0, align 4
@bufsize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i32)* @ogg_replace_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ogg_replace_stream(%struct.TYPE_14__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ogg*, align 8
  %9 = alloca %struct.ogg_stream*, align 8
  %10 = alloca %struct.ogg_codec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [8 x i32], align 16
  %13 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %16 = load %struct.ogg*, %struct.ogg** %15, align 8
  store %struct.ogg* %16, %struct.ogg** %8, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %89

25:                                               ; preds = %3
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = call i32 @avio_tell(%struct.TYPE_15__* %28)
  store i32 %29, i32* %13, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @avio_skip(%struct.TYPE_15__* %32, i32 %33)
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %39 = call i32 @avio_read(%struct.TYPE_15__* %37, i32* %38, i32 32)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @SEEK_SET, align 4
  %45 = call i32 @avio_seek(%struct.TYPE_15__* %42, i32 %43, i32 %44)
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %47 = call %struct.ogg_codec* @ogg_find_codec(i32* %46, i32 32)
  store %struct.ogg_codec* %47, %struct.ogg_codec** %10, align 8
  %48 = load %struct.ogg_codec*, %struct.ogg_codec** %10, align 8
  %49 = icmp ne %struct.ogg_codec* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %25
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %52 = load i32, i32* @AV_LOG_ERROR, align 4
  %53 = call i32 @av_log(%struct.TYPE_14__* %51, i32 %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %54, i32* %4, align 4
  br label %110

55:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %75, %55
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.ogg*, %struct.ogg** %8, align 8
  %59 = getelementptr inbounds %struct.ogg, %struct.ogg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %56
  %63 = load %struct.ogg*, %struct.ogg** %8, align 8
  %64 = getelementptr inbounds %struct.ogg, %struct.ogg* %63, i32 0, i32 1
  %65 = load %struct.ogg_stream*, %struct.ogg_stream** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %65, i64 %67
  %69 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %68, i32 0, i32 2
  %70 = load %struct.ogg_codec*, %struct.ogg_codec** %69, align 8
  %71 = load %struct.ogg_codec*, %struct.ogg_codec** %10, align 8
  %72 = icmp eq %struct.ogg_codec* %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %78

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %56

78:                                               ; preds = %73, %56
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.ogg*, %struct.ogg** %8, align 8
  %81 = getelementptr inbounds %struct.ogg, %struct.ogg* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sge i32 %79, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @ogg_new_stream(%struct.TYPE_14__* %85, i8* %86)
  store i32 %87, i32* %4, align 4
  br label %110

88:                                               ; preds = %78
  br label %99

89:                                               ; preds = %3
  %90 = load %struct.ogg*, %struct.ogg** %8, align 8
  %91 = getelementptr inbounds %struct.ogg, %struct.ogg* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 1
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %96 = call i32 @avpriv_report_missing_feature(%struct.TYPE_14__* %95, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %97, i32* %4, align 4
  br label %110

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98, %88
  %100 = load %struct.ogg*, %struct.ogg** %8, align 8
  %101 = getelementptr inbounds %struct.ogg, %struct.ogg* %100, i32 0, i32 1
  %102 = load %struct.ogg_stream*, %struct.ogg_stream** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %102, i64 %104
  store %struct.ogg_stream* %105, %struct.ogg_stream** %9, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = load %struct.ogg_stream*, %struct.ogg_stream** %9, align 8
  %108 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %107, i32 0, i32 5
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %99, %94, %84, %50
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @avio_tell(%struct.TYPE_15__*) #1

declare dso_local i32 @avio_skip(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @avio_read(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @avio_seek(%struct.TYPE_15__*, i32, i32) #1

declare dso_local %struct.ogg_codec* @ogg_find_codec(i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @ogg_new_stream(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @avpriv_report_missing_feature(%struct.TYPE_14__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
