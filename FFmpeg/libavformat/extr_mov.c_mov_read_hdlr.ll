; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_hdlr.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_hdlr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ctype=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"stype=%s\0A\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_MP2 = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"handler_name\00", align 1
@AV_DICT_DONT_OVERWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32)* @mov_read_hdlr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_read_hdlr(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  store i32 %2, i32* %15, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32* %1, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @avio_r8(i32* %16)
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @avio_rb24(i32* %18)
  %20 = load i32*, i32** %7, align 8
  %21 = call i64 @avio_rl32(i32* %20)
  store i64 %21, i64* %10, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @avio_rl32(i32* %22)
  store i64 %23, i64* %9, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = load i32, i32* @AV_LOG_TRACE, align 4
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @av_fourcc2str(i64 %28)
  %30 = call i32 @av_log(%struct.TYPE_12__* %26, i32 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = load i32, i32* @AV_LOG_TRACE, align 4
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @av_fourcc2str(i64 %35)
  %37 = call i32 @av_log(%struct.TYPE_12__* %33, i32 %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %3
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @MKTAG(i8 signext 109, i8 signext 100, i8 signext 116, i8 signext 97)
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %42
  store i32 0, i32* %4, align 4
  br label %187

50:                                               ; preds = %3
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %54, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %55, i64 %62
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  store %struct.TYPE_11__* %64, %struct.TYPE_11__** %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i64 @MKTAG(i8 signext 118, i8 signext 105, i8 signext 100, i8 signext 101)
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %50
  %69 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  br label %111

74:                                               ; preds = %50
  %75 = load i64, i64* %9, align 8
  %76 = call i64 @MKTAG(i8 signext 115, i8 signext 111, i8 signext 117, i8 signext 110)
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 4
  br label %110

84:                                               ; preds = %74
  %85 = load i64, i64* %9, align 8
  %86 = call i64 @MKTAG(i8 signext 109, i8 signext 49, i8 signext 97, i8 signext 32)
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i32, i32* @AV_CODEC_ID_MP2, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  store i32 %89, i32* %93, align 4
  br label %109

94:                                               ; preds = %84
  %95 = load i64, i64* %9, align 8
  %96 = call i64 @MKTAG(i8 signext 115, i8 signext 117, i8 signext 98, i8 signext 112)
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = load i64, i64* %9, align 8
  %100 = call i64 @MKTAG(i8 signext 99, i8 signext 108, i8 signext 99, i8 signext 112)
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %98, %94
  %103 = load i32, i32* @AVMEDIA_TYPE_SUBTITLE, align 4
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  store i32 %103, i32* %107, align 4
  br label %108

108:                                              ; preds = %102, %98
  br label %109

109:                                              ; preds = %108, %88
  br label %110

110:                                              ; preds = %109, %78
  br label %111

111:                                              ; preds = %110, %68
  %112 = load i32*, i32** %7, align 8
  %113 = call i32 @avio_rb32(i32* %112)
  %114 = load i32*, i32** %7, align 8
  %115 = call i32 @avio_rb32(i32* %114)
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @avio_rb32(i32* %116)
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %119, 24
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %186

123:                                              ; preds = %111
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* @INT_MAX, align 4
  %126 = load i64, i64* @SIZE_MAX, align 8
  %127 = sub nsw i64 %126, 1
  %128 = call i32 @FFMIN(i32 %125, i64 %127)
  %129 = icmp sgt i32 %124, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %131, i32* %4, align 4
  br label %187

132:                                              ; preds = %123
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  %135 = call i8* @av_malloc(i32 %134)
  store i8* %135, i8** %12, align 8
  %136 = load i8*, i8** %12, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %132
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = call i32 @AVERROR(i32 %139)
  store i32 %140, i32* %4, align 4
  br label %187

141:                                              ; preds = %132
  %142 = load i32*, i32** %7, align 8
  %143 = load i8*, i8** %12, align 8
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @ffio_read_size(i32* %142, i8* %143, i32 %144)
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %13, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = call i32 @av_freep(i8** %12)
  %150 = load i32, i32* %13, align 4
  store i32 %150, i32* %4, align 4
  br label %187

151:                                              ; preds = %141
  %152 = load i8*, i8** %12, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  store i8 0, i8* %155, align 1
  %156 = load i8*, i8** %12, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 0
  %158 = load i8, i8* %157, align 1
  %159 = icmp ne i8 %158, 0
  br i1 %159, label %160, label %184

160:                                              ; preds = %151
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %173, label %165

165:                                              ; preds = %160
  %166 = load i8*, i8** %12, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 0
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = load i32, i32* %11, align 4
  %171 = sub nsw i32 %170, 1
  %172 = icmp eq i32 %169, %171
  br label %173

173:                                              ; preds = %165, %160
  %174 = phi i1 [ false, %160 ], [ %172, %165 ]
  %175 = zext i1 %174 to i32
  store i32 %175, i32* %14, align 4
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = load i8*, i8** %12, align 8
  %179 = load i32, i32* %14, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %178, i64 %180
  %182 = load i32, i32* @AV_DICT_DONT_OVERWRITE, align 4
  %183 = call i32 @av_dict_set(i32* %177, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %181, i32 %182)
  br label %184

184:                                              ; preds = %173, %151
  %185 = call i32 @av_freep(i8** %12)
  br label %186

186:                                              ; preds = %184, %111
  store i32 0, i32* %4, align 4
  br label %187

187:                                              ; preds = %186, %148, %138, %130, %49
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @avio_rb24(i32*) #1

declare dso_local i64 @avio_rl32(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, i32) #1

declare dso_local i32 @av_fourcc2str(i64) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @avio_rb32(i32*) #1

declare dso_local i32 @FFMIN(i32, i64) #1

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ffio_read_size(i32*, i8*, i32) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local i32 @av_dict_set(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
