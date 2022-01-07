; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvdec.c_flv_data_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvdec.c_flv_data_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32*, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@AMF_DATA_TYPE_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"text\00", align 1
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@AV_CODEC_ID_TEXT = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, i32, i32)* @flv_data_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flv_data_packet(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca [20 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %10, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %11, align 8
  %21 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %21, i32* %13, align 4
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @avio_r8(i32* %22)
  switch i32 %23, label %30 [
    i32 130, label %24
    i32 129, label %25
    i32 128, label %29
  ]

24:                                               ; preds = %4
  store i32 1, i32* %16, align 4
  br label %25

25:                                               ; preds = %4, %24
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* @SEEK_CUR, align 4
  %28 = call i32 @avio_seek(i32* %26, i32 4, i32 %27)
  br label %29

29:                                               ; preds = %4, %25
  br label %31

30:                                               ; preds = %4
  br label %148

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %74, %31
  %33 = load i32, i32* %16, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %38 = call i32 @amf_get_string(i32* %36, i8* %37, i32 20)
  store i32 %38, i32* %13, align 4
  %39 = icmp sgt i32 %38, 0
  br label %40

40:                                               ; preds = %35, %32
  %41 = phi i1 [ true, %32 ], [ %39, %35 ]
  br i1 %41, label %42, label %75

42:                                               ; preds = %40
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @avio_r8(i32* %43)
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %17, align 8
  %46 = load i64, i64* %17, align 8
  %47 = load i64, i64* @AMF_DATA_TYPE_STRING, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %42
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %52, %49
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @avio_rb16(i32* %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @av_get_packet(i32* %59, %struct.TYPE_12__* %60, i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %148

66:                                               ; preds = %56
  br label %75

67:                                               ; preds = %52, %42
  %68 = load i32*, i32** %10, align 8
  %69 = load i64, i64* %17, align 8
  %70 = call i32 @amf_skip_tag(i32* %68, i64 %69)
  store i32 %70, i32* %13, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %148

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73
  br label %32

75:                                               ; preds = %66, %40
  %76 = load i32, i32* %15, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %79, i32* %13, align 4
  br label %148

80:                                               ; preds = %75
  store i32 0, i32* %14, align 4
  br label %81

81:                                               ; preds = %104, %80
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %107

87:                                               ; preds = %81
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %89, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %90, i64 %92
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  store %struct.TYPE_11__* %94, %struct.TYPE_11__** %11, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @AVMEDIA_TYPE_SUBTITLE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %87
  br label %107

103:                                              ; preds = %87
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %14, align 4
  br label %81

107:                                              ; preds = %102, %81
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %108, %111
  br i1 %112, label %113, label %128

113:                                              ; preds = %107
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %115 = load i64, i64* @AVMEDIA_TYPE_SUBTITLE, align 8
  %116 = call %struct.TYPE_11__* @create_stream(%struct.TYPE_13__* %114, i64 %115)
  store %struct.TYPE_11__* %116, %struct.TYPE_11__** %11, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %118 = icmp ne %struct.TYPE_11__* %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %113
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = call i32 @AVERROR(i32 %120)
  store i32 %121, i32* %5, align 4
  br label %157

122:                                              ; preds = %113
  %123 = load i32, i32* @AV_CODEC_ID_TEXT, align 4
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  store i32 %123, i32* %127, align 8
  br label %128

128:                                              ; preds = %122, %107
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %13, align 4
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 4
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %128, %78, %72, %65, %30
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 4
  %154 = load i32, i32* @SEEK_SET, align 4
  %155 = call i32 @avio_seek(i32* %151, i32 %153, i32 %154)
  %156 = load i32, i32* %13, align 4
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %148, %119
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @amf_get_string(i32*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @avio_rb16(i32*) #1

declare dso_local i32 @av_get_packet(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @amf_skip_tag(i32*, i64) #1

declare dso_local %struct.TYPE_11__* @create_stream(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
