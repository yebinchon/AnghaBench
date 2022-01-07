; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_mpeg4.c_parse_fmtp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_mpeg4.c_parse_fmtp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"config\00", align 1
@AV_CODEC_ID_AAC = common dso_local global i64 0, align 8
@attr_names = common dso_local global %struct.TYPE_10__* null, align 8
@ATTR_NAME_TYPE_INT = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"The %s field value is not a valid number: %s\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"fmtp field %s should be in range [%d,%d] (provided value: %lld)\00", align 1
@ATTR_NAME_TYPE_STR = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, i32*, i8*, i8*)* @parse_fmtp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_fmtp(i32* %0, %struct.TYPE_8__* %1, i32* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %12, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %5
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = call i32 @parse_fmtp_config(%struct.TYPE_9__* %25, i8* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %6, align 4
  br label %179

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %5
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AV_CODEC_ID_AAC, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %178

39:                                               ; preds = %33
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %174, %39
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** @attr_names, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %177

48:                                               ; preds = %40
  %49 = load i8*, i8** %10, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** @attr_names, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @av_strcasecmp(i8* %49, i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %173, label %58

58:                                               ; preds = %48
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** @attr_names, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ATTR_NAME_TYPE_INT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %141

67:                                               ; preds = %58
  store i8* null, i8** %15, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = call i64 @strtoll(i8* %68, i8** %15, i32 10)
  store i64 %69, i64* %16, align 8
  %70 = load i8*, i8** %15, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = icmp eq i8* %70, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load i8*, i8** %15, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %73, %67
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* @AV_LOG_ERROR, align 4
  %82 = load i8*, i8** %10, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 (i32*, i32, i8*, i8*, ...) @av_log(i32* %80, i32 %81, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %82, i8* %83)
  %85 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %85, i32* %6, align 4
  br label %179

86:                                               ; preds = %73
  %87 = load i64, i64* %16, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** @attr_names, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %87, %94
  br i1 %95, label %106, label %96

96:                                               ; preds = %86
  %97 = load i64, i64* %16, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** @attr_names, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %97, %104
  br i1 %105, label %106, label %127

106:                                              ; preds = %96, %86
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* @AV_LOG_ERROR, align 4
  %109 = load i8*, i8** %10, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** @attr_names, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** @attr_names, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %16, align 8
  %125 = call i32 (i32*, i32, i8*, i8*, ...) @av_log(i32* %107, i32 %108, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i8* %109, i64 %116, i64 %123, i64 %124)
  %126 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %126, i32* %6, align 4
  br label %179

127:                                              ; preds = %96
  %128 = load i64, i64* %16, align 8
  %129 = trunc i64 %128 to i32
  %130 = load i32*, i32** %9, align 8
  %131 = bitcast i32* %130 to i8*
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** @attr_names, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %131, i64 %138
  %140 = bitcast i8* %139 to i32*
  store i32 %129, i32* %140, align 4
  br label %172

141:                                              ; preds = %58
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** @attr_names, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @ATTR_NAME_TYPE_STR, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %171

150:                                              ; preds = %141
  %151 = load i8*, i8** %11, align 8
  %152 = call i8* @av_strdup(i8* %151)
  store i8* %152, i8** %17, align 8
  %153 = load i8*, i8** %17, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %150
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = call i32 @AVERROR(i32 %156)
  store i32 %157, i32* %6, align 4
  br label %179

158:                                              ; preds = %150
  %159 = load i8*, i8** %17, align 8
  %160 = load i32*, i32** %9, align 8
  %161 = bitcast i32* %160 to i8*
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** @attr_names, align 8
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %161, i64 %168
  %170 = bitcast i8* %169 to i8**
  store i8* %159, i8** %170, align 8
  br label %171

171:                                              ; preds = %158, %141
  br label %172

172:                                              ; preds = %171, %127
  br label %173

173:                                              ; preds = %172, %48
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %14, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %14, align 4
  br label %40

177:                                              ; preds = %40
  br label %178

178:                                              ; preds = %177, %33
  store i32 0, i32* %6, align 4
  br label %179

179:                                              ; preds = %178, %155, %106, %79, %30
  %180 = load i32, i32* %6, align 4
  ret i32 %180
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @parse_fmtp_config(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @av_strcasecmp(i8*, i64) #1

declare dso_local i64 @strtoll(i8*, i8**, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*, ...) #1

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
