; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashenc.c_write_adaptation_set.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashenc.c_write_adaptation_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_20__**, %struct.TYPE_18__* }
%struct.TYPE_20__ = type { %struct.TYPE_16__*, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i32, i64, i32, i32 }
%struct.TYPE_19__ = type { i64, i64, i32, %struct.TYPE_14__, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_22__ = type { i32 }

@.str = private unnamed_addr constant [92 x i8] c"\09\09<AdaptationSet id=\22%s\22 contentType=\22%s\22 segmentAlignment=\22true\22 bitstreamSwitching=\22true\22\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c" maxFrameRate=\22%d/%d\22\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c" lang=\22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"\09\09\09<Role schemeIdUri=\22urn:mpeg:dash:role:2011\22 value=\22%s\22/>\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"\09\09\09%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c" bandwidth=\22%d\22\00", align 1
@.str.11 = private unnamed_addr constant [84 x i8] c"\09\09\09<Representation id=\22%d\22 mimeType=\22video/%s\22 codecs=\22%s\22%s width=\22%d\22 height=\22%d\22\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c" frameRate=\22%d/%d\22\00", align 1
@.str.13 = private unnamed_addr constant [86 x i8] c"\09\09\09<Representation id=\22%d\22 mimeType=\22audio/%s\22 codecs=\22%s\22%s audioSamplingRate=\22%d\22>\0A\00", align 1
@.str.14 = private unnamed_addr constant [115 x i8] c"\09\09\09\09<AudioChannelConfiguration schemeIdUri=\22urn:mpeg:dash:23003:3:audio_channel_configuration:2011\22 value=\22%d\22 />\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"\09\09\09</Representation>\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"\09\09</AdaptationSet>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i32*, i32, i32)* @write_adaptation_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_adaptation_set(%struct.TYPE_21__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca [64 x i8], align 16
  %16 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %9, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i64 %24
  store %struct.TYPE_19__* %25, %struct.TYPE_19__** %10, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %37 = call i32 (i32*, i8*, ...) @avio_printf(i32* %26, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i32 %29, i8* %36)
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %78

43:                                               ; preds = %4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %78

49:                                               ; preds = %43
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %78, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 3
  %60 = bitcast %struct.TYPE_14__* %59 to { i32, i64 }*
  %61 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %60, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @av_cmp_q(i32 %57, i32 %62, i64 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %54
  %68 = load i32*, i32** %6, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i32*, i8*, ...) @avio_printf(i32* %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %72, i32 %76)
  br label %78

78:                                               ; preds = %67, %54, %49, %43, %4
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call %struct.TYPE_22__* @av_dict_get(i32 %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_22__* %82, %struct.TYPE_22__** %11, align 8
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %84 = icmp ne %struct.TYPE_22__* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load i32*, i32** %6, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32*, i8*, ...) @avio_printf(i32* %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %85, %78
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 (i32*, i8*, ...) @avio_printf(i32* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call %struct.TYPE_22__* @av_dict_get(i32 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_22__* %97, %struct.TYPE_22__** %12, align 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %99 = icmp ne %struct.TYPE_22__* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %91
  %101 = load i32*, i32** %6, align 8
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i32*, i8*, ...) @avio_printf(i32* %101, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %100, %91
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load i32*, i32** %6, align 8
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 (i32*, i8*, ...) @avio_printf(i32* %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i64 %115)
  br label %117

117:                                              ; preds = %111, %106
  store i32 0, i32* %13, align 4
  br label %118

118:                                              ; preds = %259, %117
  %119 = load i32, i32* %13, align 4
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %262

124:                                              ; preds = %118
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %126, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i64 %129
  store %struct.TYPE_17__* %130, %struct.TYPE_17__** %14, align 8
  %131 = bitcast [64 x i8]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %131, i8 0, i64 64, i1 false)
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 %134, 1
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %124
  br label %259

139:                                              ; preds = %124
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp sgt i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  %145 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @snprintf(i8* %145, i32 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i64 %148)
  br label %150

150:                                              ; preds = %144, %139
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %215

156:                                              ; preds = %150
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %158, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %159, i64 %161
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %162, align 8
  store %struct.TYPE_20__* %163, %struct.TYPE_20__** %16, align 8
  %164 = load i32*, i32** %6, align 8
  %165 = load i32, i32* %13, align 4
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %174, align 8
  %176 = load i32, i32* %13, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %175, i64 %177
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %185, align 8
  %187 = load i32, i32* %13, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %186, i64 %188
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i32*, i8*, ...) @avio_printf(i32* %164, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.11, i64 0, i64 0), i32 %165, i32 %168, i32 %171, i8* %172, i32 %183, i32 %194)
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %212

201:                                              ; preds = %156
  %202 = load i32*, i32** %6, align 8
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 (i32*, i8*, ...) @avio_printf(i32* %202, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %206, i32 %210)
  br label %212

212:                                              ; preds = %201, %156
  %213 = load i32*, i32** %6, align 8
  %214 = call i32 (i32*, i8*, ...) @avio_printf(i32* %213, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %250

215:                                              ; preds = %150
  %216 = load i32*, i32** %6, align 8
  %217 = load i32, i32* %13, align 4
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %226, align 8
  %228 = load i32, i32* %13, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %227, i64 %229
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i32 (i32*, i8*, ...) @avio_printf(i32* %216, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.13, i64 0, i64 0), i32 %217, i32 %220, i32 %223, i8* %224, i32 %235)
  %237 = load i32*, i32** %6, align 8
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %239, align 8
  %241 = load i32, i32* %13, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %240, i64 %242
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = call i32 (i32*, i8*, ...) @avio_printf(i32* %237, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.14, i64 0, i64 0), i32 %248)
  br label %250

250:                                              ; preds = %215, %212
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %252 = load i32*, i32** %6, align 8
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %254 = load i32, i32* %13, align 4
  %255 = load i32, i32* %8, align 4
  %256 = call i32 @output_segment_list(%struct.TYPE_17__* %251, i32* %252, %struct.TYPE_21__* %253, i32 %254, i32 %255)
  %257 = load i32*, i32** %6, align 8
  %258 = call i32 (i32*, i8*, ...) @avio_printf(i32* %257, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  br label %259

259:                                              ; preds = %250, %138
  %260 = load i32, i32* %13, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %13, align 4
  br label %118

262:                                              ; preds = %118
  %263 = load i32*, i32** %6, align 8
  %264 = call i32 (i32*, i8*, ...) @avio_printf(i32* %263, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @avio_printf(i32*, i8*, ...) #1

declare dso_local i64 @av_cmp_q(i32, i32, i64) #1

declare dso_local %struct.TYPE_22__* @av_dict_get(i32, i8*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @output_segment_list(%struct.TYPE_17__*, i32*, %struct.TYPE_21__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
