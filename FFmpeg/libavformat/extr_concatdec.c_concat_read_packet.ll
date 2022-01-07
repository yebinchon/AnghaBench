; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_concatdec.c_concat_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_concatdec.c_concat_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_22__*, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_25__** }
%struct.TYPE_25__ = type { i64, i32 }
%struct.TYPE_22__ = type { i64, i64, i64, i64, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_26__ = type { i64, i64, i64 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"file:%d stream:%d pts:%s pts_time:%s dts:%s dts_time:%s\00", align 1
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c" -> pts:%s pts_time:%s dts:%s dts_time:%s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_PKT_DATA_STRINGS_METADATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_26__*)* @concat_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @concat_read_packet(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  store %struct.TYPE_24__* %17, %struct.TYPE_24__** %6, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %23, i32* %3, align 4
  br label %309

24:                                               ; preds = %2
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %28 = icmp ne %struct.TYPE_21__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @EIO, align 4
  %31 = call i32 @AVERROR(i32 %30)
  store i32 %31, i32* %3, align 4
  br label %309

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %48, %75, %90
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %35, align 8
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %38 = call i32 @av_read_frame(%struct.TYPE_21__* %36, %struct.TYPE_26__* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @AVERROR_EOF, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %44 = call i32 @open_next_file(%struct.TYPE_27__* %43)
  store i32 %44, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %309

48:                                               ; preds = %42
  br label %33

49:                                               ; preds = %33
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %309

54:                                               ; preds = %49
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %56 = call i32 @match_streams(%struct.TYPE_27__* %55)
  store i32 %56, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %60 = call i32 @av_packet_unref(%struct.TYPE_26__* %59)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %309

62:                                               ; preds = %54
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %65 = call i64 @packet_after_outpoint(%struct.TYPE_24__* %63, %struct.TYPE_26__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %69 = call i32 @av_packet_unref(%struct.TYPE_26__* %68)
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %71 = call i32 @open_next_file(%struct.TYPE_27__* %70)
  store i32 %71, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %309

75:                                               ; preds = %67
  br label %33

76:                                               ; preds = %62
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 5
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %80, align 8
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i64 %84
  store %struct.TYPE_23__* %85, %struct.TYPE_23__** %9, align 8
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ult i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %76
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %92 = call i32 @av_packet_unref(%struct.TYPE_26__* %91)
  br label %33

93:                                               ; preds = %76
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %98 = call i32 @filter_packet(%struct.TYPE_27__* %95, %struct.TYPE_23__* %96, %struct.TYPE_26__* %97)
  store i32 %98, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %3, align 4
  br label %309

102:                                              ; preds = %94
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %106, align 8
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %107, i64 %110
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %111, align 8
  store %struct.TYPE_25__* %112, %struct.TYPE_25__** %10, align 8
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %114 = load i32, i32* @AV_LOG_DEBUG, align 4
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %116, align 8
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %119, align 8
  %121 = ptrtoint %struct.TYPE_22__* %117 to i64
  %122 = ptrtoint %struct.TYPE_22__* %120 to i64
  %123 = sub i64 %121, %122
  %124 = sdiv exact i64 %123, 48
  %125 = trunc i64 %124 to i32
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @av_ts2str(i64 %131)
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 1
  %138 = call i32 @av_ts2timestr(i64 %135, i32* %137)
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @av_ts2str(i64 %141)
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 1
  %148 = call i32 @av_ts2timestr(i64 %145, i32* %147)
  %149 = call i32 (%struct.TYPE_27__*, i32, i8*, i32, i64, i32, i32, ...) @av_log(%struct.TYPE_27__* %113, i32 %114, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %125, i64 %128, i32 %132, i32 %138, i32 %142, i32 %148)
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = sub nsw i64 %154, %159
  %161 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %165, align 8
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %166, i64 %169
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i64 @av_rescale_q(i64 %160, i32 %161, i32 %173)
  store i64 %174, i64* %8, align 8
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %102
  %181 = load i64, i64* %8, align 8
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %184, %181
  store i64 %185, i64* %183, align 8
  br label %186

186:                                              ; preds = %180, %102
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %186
  %193 = load i64, i64* %8, align 8
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %196, %193
  store i64 %197, i64* %195, align 8
  br label %198

198:                                              ; preds = %192, %186
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %200 = load i32, i32* @AV_LOG_DEBUG, align 4
  %201 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @av_ts2str(i64 %203)
  %205 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %208, i32 0, i32 1
  %210 = call i32 @av_ts2timestr(i64 %207, i32* %209)
  %211 = sext i32 %210 to i64
  %212 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @av_ts2str(i64 %214)
  %216 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %219, i32 0, i32 1
  %221 = call i32 @av_ts2timestr(i64 %218, i32* %220)
  %222 = call i32 (%struct.TYPE_27__*, i32, i8*, i32, i64, i32, i32, ...) @av_log(%struct.TYPE_27__* %199, i32 %200, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %204, i64 %211, i32 %215, i32 %221)
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %257

229:                                              ; preds = %198
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 8
  %235 = call i8* @av_packet_pack_dictionary(i32 %234, i32* %12)
  store i8* %235, i8** %13, align 8
  %236 = load i8*, i8** %13, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %241, label %238

238:                                              ; preds = %229
  %239 = load i32, i32* @ENOMEM, align 4
  %240 = call i32 @AVERROR(i32 %239)
  store i32 %240, i32* %3, align 4
  br label %309

241:                                              ; preds = %229
  %242 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %243 = load i32, i32* @AV_PKT_DATA_STRINGS_METADATA, align 4
  %244 = load i32, i32* %12, align 4
  %245 = call i32* @av_packet_new_side_data(%struct.TYPE_26__* %242, i32 %243, i32 %244)
  store i32* %245, i32** %11, align 8
  %246 = icmp ne i32* %245, null
  br i1 %246, label %251, label %247

247:                                              ; preds = %241
  %248 = call i32 @av_freep(i8** %13)
  %249 = load i32, i32* @ENOMEM, align 4
  %250 = call i32 @AVERROR(i32 %249)
  store i32 %250, i32* %3, align 4
  br label %309

251:                                              ; preds = %241
  %252 = load i32*, i32** %11, align 8
  %253 = load i8*, i8** %13, align 8
  %254 = load i32, i32* %12, align 4
  %255 = call i32 @memcpy(i32* %252, i8* %253, i32 %254)
  %256 = call i32 @av_freep(i8** %13)
  br label %257

257:                                              ; preds = %251, %198
  %258 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %302

265:                                              ; preds = %257
  %266 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %267 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %270 = icmp ne i64 %268, %269
  br i1 %270, label %271, label %302

271:                                              ; preds = %265
  %272 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %273 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %279 = call i64 @av_rescale_q(i64 %274, i32 %277, i32 %278)
  store i64 %279, i64* %14, align 8
  %280 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_22__*, %struct.TYPE_22__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %282, i32 0, i32 3
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %295, label %287

287:                                              ; preds = %271
  %288 = load i64, i64* %14, align 8
  %289 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_22__*, %struct.TYPE_22__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %291, i32 0, i32 3
  %293 = load i64, i64* %292, align 8
  %294 = icmp sgt i64 %288, %293
  br i1 %294, label %295, label %301

295:                                              ; preds = %287, %271
  %296 = load i64, i64* %14, align 8
  %297 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %297, i32 0, i32 0
  %299 = load %struct.TYPE_22__*, %struct.TYPE_22__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %299, i32 0, i32 3
  store i64 %296, i64* %300, align 8
  br label %301

301:                                              ; preds = %295, %287
  br label %302

302:                                              ; preds = %301, %265, %257
  %303 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %304 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %306, i32 0, i32 0
  store i64 %305, i64* %307, align 8
  %308 = load i32, i32* %7, align 4
  store i32 %308, i32* %3, align 4
  br label %309

309:                                              ; preds = %302, %247, %238, %100, %73, %58, %52, %46, %29, %22
  %310 = load i32, i32* %3, align 4
  ret i32 %310
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_read_frame(%struct.TYPE_21__*, %struct.TYPE_26__*) #1

declare dso_local i32 @open_next_file(%struct.TYPE_27__*) #1

declare dso_local i32 @match_streams(%struct.TYPE_27__*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_26__*) #1

declare dso_local i64 @packet_after_outpoint(%struct.TYPE_24__*, %struct.TYPE_26__*) #1

declare dso_local i32 @filter_packet(%struct.TYPE_27__*, %struct.TYPE_23__*, %struct.TYPE_26__*) #1

declare dso_local i32 @av_log(%struct.TYPE_27__*, i32, i8*, i32, i64, i32, i32, ...) #1

declare dso_local i32 @av_ts2str(i64) #1

declare dso_local i32 @av_ts2timestr(i64, i32*) #1

declare dso_local i64 @av_rescale_q(i64, i32, i32) #1

declare dso_local i8* @av_packet_pack_dictionary(i32, i32*) #1

declare dso_local i32* @av_packet_new_side_data(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
