; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_aiffenc.c_aiff_write_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_aiffenc.c_aiff_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__**, i32*, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_12__ = type { i32, i8*, i8*, i8* }

@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"AIFF allows only one audio stream and a picture.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"No audio stream present.\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"FORM\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"AIFC\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"AIFF\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"block align not set\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"FVER\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"CHAN\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"author\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"copyright\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"COMM\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"could not compute bits per sample\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"wave\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"SSND\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @aiff_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aiff_write_header(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %4, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %5, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  store i32 -1, i32* %18, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %65, %1
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %68

25:                                               ; preds = %19
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %28, i64 %30
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %10, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %25
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %64

49:                                               ; preds = %37, %25
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = load i32, i32* @AV_LOG_ERROR, align 4
  %60 = call i32 @av_log(%struct.TYPE_10__* %58, i32 %59, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = call i32 @AVERROR(i32 %61)
  store i32 %62, i32* %2, align 4
  br label %333

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63, %45
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %19

68:                                               ; preds = %19
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = load i32, i32* @AV_LOG_ERROR, align 4
  %76 = call i32 @av_log(%struct.TYPE_10__* %74, i32 %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = call i32 @AVERROR(i32 %77)
  store i32 %78, i32* %2, align 4
  br label %333

79:                                               ; preds = %68
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %81, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %82, i64 %86
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  store %struct.TYPE_11__* %90, %struct.TYPE_11__** %6, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %79
  %96 = load i32, i32* @EINVAL, align 4
  %97 = call i32 @AVERROR(i32 %96)
  store i32 %97, i32* %2, align 4
  br label %333

98:                                               ; preds = %79
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @MKTAG(i8 signext 78, i8 signext 79, i8 signext 78, i8 signext 69)
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  store i32 1, i32* %9, align 4
  br label %105

105:                                              ; preds = %104, %98
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 @ffio_wfourcc(i32* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %108 = load i32*, i32** %5, align 8
  %109 = call i8* @avio_tell(i32* %108)
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 3
  store i8* %109, i8** %111, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = call i32 @avio_wb32(i32* %112, i32 0)
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %119 = call i32 @ffio_wfourcc(i32* %114, i8* %118)
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %140

122:                                              ; preds = %105
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %122
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %129 = load i32, i32* @AV_LOG_ERROR, align 4
  %130 = call i32 @av_log(%struct.TYPE_10__* %128, i32 %129, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %131 = load i32, i32* @EINVAL, align 4
  %132 = call i32 @AVERROR(i32 %131)
  store i32 %132, i32* %2, align 4
  br label %333

133:                                              ; preds = %122
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @ffio_wfourcc(i32* %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %136 = load i32*, i32** %5, align 8
  %137 = call i32 @avio_wb32(i32* %136, i32 4)
  %138 = load i32*, i32** %5, align 8
  %139 = call i32 @avio_wb32(i32* %138, i32 -1568648896)
  br label %140

140:                                              ; preds = %133, %105
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = icmp sgt i32 %143, 2
  br i1 %144, label %145, label %160

145:                                              ; preds = %140
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 9
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = load i32*, i32** %5, align 8
  %152 = call i32 @ffio_wfourcc(i32* %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %153 = load i32*, i32** %5, align 8
  %154 = call i32 @avio_wb32(i32* %153, i32 12)
  %155 = load i32*, i32** %5, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 9
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @ff_mov_write_chan(i32* %155, i64 %158)
  br label %160

160:                                              ; preds = %150, %145, %140
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %162 = call i64 @MKTAG(i8 signext 78, i8 signext 65, i8 signext 77, i8 signext 69)
  %163 = call i32 @put_meta(%struct.TYPE_10__* %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i64 %162)
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %165 = call i64 @MKTAG(i8 signext 65, i8 signext 85, i8 signext 84, i8 signext 72)
  %166 = call i32 @put_meta(%struct.TYPE_10__* %164, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i64 %165)
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %168 = call i64 @MKTAG(i8 signext 40, i8 signext 99, i8 signext 41, i8 signext 32)
  %169 = call i32 @put_meta(%struct.TYPE_10__* %167, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i64 %168)
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %171 = call i64 @MKTAG(i8 signext 65, i8 signext 78, i8 signext 78, i8 signext 79)
  %172 = call i32 @put_meta(%struct.TYPE_10__* %170, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i64 %171)
  %173 = load i32*, i32** %5, align 8
  %174 = call i32 @ffio_wfourcc(i32* %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %175 = load i32*, i32** %5, align 8
  %176 = load i32, i32* %9, align 4
  %177 = icmp ne i32 %176, 0
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i32 24, i32 18
  %180 = call i32 @avio_wb32(i32* %175, i32 %179)
  %181 = load i32*, i32** %5, align 8
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @avio_wb16(i32* %181, i32 %184)
  %186 = load i32*, i32** %5, align 8
  %187 = call i8* @avio_tell(i32* %186)
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 2
  store i8* %187, i8** %189, align 8
  %190 = load i32*, i32** %5, align 8
  %191 = call i32 @avio_wb32(i32* %190, i32 0)
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %203, label %196

196:                                              ; preds = %160
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 8
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @av_get_bits_per_sample(i32 %199)
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 4
  store i32 %200, i32* %202, align 8
  br label %203

203:                                              ; preds = %196, %160
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %214, label %208

208:                                              ; preds = %203
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %210 = load i32, i32* @AV_LOG_ERROR, align 4
  %211 = call i32 @av_log(%struct.TYPE_10__* %209, i32 %210, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  %212 = load i32, i32* @EINVAL, align 4
  %213 = call i32 @AVERROR(i32 %212)
  store i32 %213, i32* %2, align 4
  br label %333

214:                                              ; preds = %203
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %230, label %219

219:                                              ; preds = %214
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = mul nsw i32 %222, %225
  %227 = ashr i32 %226, 3
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 2
  store i32 %227, i32* %229, align 8
  br label %230

230:                                              ; preds = %219, %214
  %231 = load i32*, i32** %5, align 8
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @avio_wb16(i32* %231, i32 %234)
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @av_double2int(i32 %238)
  store i32 %239, i32* %7, align 4
  %240 = load i32*, i32** %5, align 8
  %241 = load i32, i32* %7, align 4
  %242 = ashr i32 %241, 52
  %243 = add nsw i32 %242, 15360
  %244 = call i32 @avio_wb16(i32* %240, i32 %243)
  %245 = load i32*, i32** %5, align 8
  %246 = call i32 @UINT64_C(i32 1)
  %247 = shl i32 %246, 63
  %248 = load i32, i32* %7, align 4
  %249 = shl i32 %248, 11
  %250 = or i32 %247, %249
  %251 = call i32 @avio_wb64(i32* %245, i32 %250)
  %252 = load i32, i32* %9, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %262

254:                                              ; preds = %230
  %255 = load i32*, i32** %5, align 8
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = call i32 @avio_wl32(i32* %255, i64 %258)
  %260 = load i32*, i32** %5, align 8
  %261 = call i32 @avio_wb16(i32* %260, i32 0)
  br label %262

262:                                              ; preds = %254, %230
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = call i64 @MKTAG(i8 signext 81, i8 signext 68, i8 signext 77, i8 signext 50)
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %274, label %268

268:                                              ; preds = %262
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = call i64 @MKTAG(i8 signext 81, i8 signext 99, i8 signext 108, i8 signext 112)
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %295

274:                                              ; preds = %268, %262
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 5
  %277 = load i32, i32* %276, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %295

279:                                              ; preds = %274
  %280 = load i32*, i32** %5, align 8
  %281 = call i32 @ffio_wfourcc(i32* %280, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %282 = load i32*, i32** %5, align 8
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @avio_wb32(i32* %282, i32 %285)
  %287 = load i32*, i32** %5, align 8
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 7
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 5
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @avio_write(i32* %287, i32 %290, i32 %293)
  br label %295

295:                                              ; preds = %279, %274, %268
  %296 = load i32*, i32** %5, align 8
  %297 = call i32 @ffio_wfourcc(i32* %296, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %298 = load i32*, i32** %5, align 8
  %299 = call i8* @avio_tell(i32* %298)
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 1
  store i8* %299, i8** %301, align 8
  %302 = load i32*, i32** %5, align 8
  %303 = call i32 @avio_wb32(i32* %302, i32 0)
  %304 = load i32*, i32** %5, align 8
  %305 = call i32 @avio_wb32(i32* %304, i32 0)
  %306 = load i32*, i32** %5, align 8
  %307 = call i32 @avio_wb32(i32* %306, i32 0)
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 1
  %310 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %309, align 8
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %310, i64 %314
  %316 = load %struct.TYPE_9__*, %struct.TYPE_9__** %315, align 8
  %317 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %317, i32 0, i32 1
  %319 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %318, align 8
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %319, i64 %323
  %325 = load %struct.TYPE_9__*, %struct.TYPE_9__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %325, i32 0, i32 0
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 6
  %329 = load i32, i32* %328, align 8
  %330 = call i32 @avpriv_set_pts_info(%struct.TYPE_9__* %316, i32 64, i32 1, i32 %329)
  %331 = load i32*, i32** %5, align 8
  %332 = call i32 @avio_flush(i32* %331)
  store i32 0, i32* %2, align 4
  br label %333

333:                                              ; preds = %295, %208, %127, %95, %73, %57
  %334 = load i32, i32* %2, align 4
  ret i32 %334
}

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i8* @avio_tell(i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ff_mov_write_chan(i32*, i64) #1

declare dso_local i32 @put_meta(%struct.TYPE_10__*, i8*, i64) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @av_get_bits_per_sample(i32) #1

declare dso_local i32 @av_double2int(i32) #1

declare dso_local i32 @avio_wb64(i32*, i32) #1

declare dso_local i32 @UINT64_C(i32) #1

declare dso_local i32 @avio_wl32(i32*, i64) #1

declare dso_local i32 @avio_write(i32*, i32, i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @avio_flush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
