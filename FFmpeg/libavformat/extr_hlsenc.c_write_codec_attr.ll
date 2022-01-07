; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsenc.c_write_codec_attr.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsenc.c_write_codec_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i32* }
%struct.TYPE_7__ = type { i8*, i64 }

@AVMEDIA_TYPE_SUBTITLE = common dso_local global i64 0, align 8
@CODEC_ATTRIBUTE_WILL_NOT_BE_WRITTEN = common dso_local global i64 0, align 8
@AV_CODEC_ID_H264 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"avc1.%02x%02x%02x\00", align 1
@AV_CODEC_ID_MP2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"mp4a.40.33\00", align 1
@AV_CODEC_ID_MP3 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"mp4a.40.34\00", align 1
@AV_CODEC_ID_AAC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"mp4a.40.2\00", align 1
@AV_CODEC_ID_AC3 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"ac-3\00", align 1
@AV_CODEC_ID_EAC3 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"ec-3\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_7__*)* @write_codec_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_codec_attr(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @strlen(i8* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AVMEDIA_TYPE_SUBTITLE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %175

20:                                               ; preds = %2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CODEC_ATTRIBUTE_WILL_NOT_BE_WRITTEN, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %175

27:                                               ; preds = %20
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AV_CODEC_ID_H264, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %81

35:                                               ; preds = %27
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %79

43:                                               ; preds = %35
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %46, %49
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %50, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %43
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %79

61:                                               ; preds = %56
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 31
  %66 = icmp eq i32 %65, 7
  br i1 %66, label %67, label %79

67:                                               ; preds = %61
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 5
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 6
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 7
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %68, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %74, i32 %77)
  br label %80

79:                                               ; preds = %61, %56, %43, %35
  br label %167

80:                                               ; preds = %67
  br label %142

81:                                               ; preds = %27
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @AV_CODEC_ID_MP2, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %91 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %90, i32 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %141

92:                                               ; preds = %81
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @AV_CODEC_ID_MP3, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %102 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %101, i32 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %140

103:                                              ; preds = %92
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @AV_CODEC_ID_AAC, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %113 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %112, i32 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %139

114:                                              ; preds = %103
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @AV_CODEC_ID_AC3, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %124 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %123, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %138

125:                                              ; preds = %114
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @AV_CODEC_ID_EAC3, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %125
  %134 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %135 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %134, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %137

136:                                              ; preds = %125
  br label %167

137:                                              ; preds = %133
  br label %138

138:                                              ; preds = %137, %122
  br label %139

139:                                              ; preds = %138, %111
  br label %140

140:                                              ; preds = %139, %100
  br label %141

141:                                              ; preds = %140, %89
  br label %142

142:                                              ; preds = %141, %80
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %147 = call i32 @av_stristr(i8* %145, i8* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %166, label %149

149:                                              ; preds = %142
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = sub i64 8, %157
  %159 = trunc i64 %158 to i32
  %160 = load i32, i32* %5, align 4
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %164 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %165 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %155, i32 %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %163, i8* %164)
  br label %166

166:                                              ; preds = %149, %142
  br label %175

167:                                              ; preds = %136, %79
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 0
  store i8 0, i8* %171, align 1
  %172 = load i64, i64* @CODEC_ATTRIBUTE_WILL_NOT_BE_WRITTEN, align 8
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  store i64 %172, i64* %174, align 8
  br label %175

175:                                              ; preds = %167, %166, %26, %19
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @av_stristr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
