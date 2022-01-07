; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmv2dec.c_ff_wmv2_decode_mb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmv2dec.c_ff_wmv2_decode_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i64, i64, i64, i64, i32, i32*, i32***, i32, i64, i64, i32, i32*, %struct.TYPE_18__, i8*, i8*, i32, i64, i64, i8*, i8*, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32 (i32)* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_19__ = type { i64, i8*, i8*, i64, i64, i64, i64 }

@AV_PICTURE_TYPE_P = common dso_local global i64 0, align 8
@MV_DIR_FORWARD = common dso_local global i8* null, align 8
@MV_TYPE_16X16 = common dso_local global i8* null, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_mb_non_intra_vlc = common dso_local global %struct.TYPE_15__* null, align 8
@MB_NON_INTRA_VLC_BITS = common dso_local global i32 0, align 4
@ff_msmp4_mb_i_vlc = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@MB_INTRA_VLC_BITS = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"II-cbp illegal at %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"\0Aerror while decoding inter block: %d x %d (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d%d \00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"I at %d %d %d %06X\0A\00", align 1
@ff_inter_intra_vlc = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@INTER_INTRA_VLC_BITS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"%d%d %d %d/\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"\0Aerror while decoding intra block: %d x %d (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_wmv2_decode_mb(%struct.TYPE_20__* %0, [64 x i32]* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca [64 x i32]*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store [64 x i32]* %1, [64 x i32]** %5, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %17 = bitcast %struct.TYPE_20__* %16 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %17, %struct.TYPE_19__** %6, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %467

23:                                               ; preds = %2
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AV_PICTURE_TYPE_P, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %125

29:                                               ; preds = %23
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 20
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = mul i64 %36, %39
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %40, %43
  %45 = getelementptr inbounds i32, i32* %33, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @IS_SKIP(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %92

49:                                               ; preds = %29
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 4
  store i32 0, i32* %51, align 8
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %62, %49
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 6
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 -1, i32* %61, align 4
  br label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %52

65:                                               ; preds = %52
  %66 = load i8*, i8** @MV_DIR_FORWARD, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 19
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** @MV_TYPE_16X16, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 18
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 6
  %74 = load i32***, i32**** %73, align 8
  %75 = getelementptr inbounds i32**, i32*** %74, i64 0
  %76 = load i32**, i32*** %75, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 0, i32* %79, align 4
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 6
  %82 = load i32***, i32**** %81, align 8
  %83 = getelementptr inbounds i32**, i32*** %82, i64 0
  %84 = load i32**, i32*** %83, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 0, i32* %87, align 4
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 7
  store i32 1, i32* %89, align 8
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 5
  store i64 0, i64* %91, align 8
  store i32 0, i32* %3, align 4
  br label %467

92:                                               ; preds = %29
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 15
  %95 = call i64 @get_bits_left(i32* %94)
  %96 = icmp sle i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %98, i32* %3, align 4
  br label %467

99:                                               ; preds = %92
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 15
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ff_mb_non_intra_vlc, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @MB_NON_INTRA_VLC_BITS, align 4
  %110 = call i8* @get_vlc2(i32* %101, i32 %108, i32 %109, i32 3)
  %111 = ptrtoint i8* %110 to i32
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %99
  %115 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %115, i32* %3, align 4
  br label %467

116:                                              ; preds = %99
  %117 = load i32, i32* %8, align 4
  %118 = xor i32 %117, -1
  %119 = and i32 %118, 64
  %120 = ashr i32 %119, 6
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %8, align 4
  %124 = and i32 %123, 63
  store i32 %124, i32* %7, align 4
  br label %188

125:                                              ; preds = %23
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 4
  store i32 1, i32* %127, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 15
  %130 = call i64 @get_bits_left(i32* %129)
  %131 = icmp sle i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %133, i32* %3, align 4
  br label %467

134:                                              ; preds = %125
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 15
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ff_msmp4_mb_i_vlc, i32 0, i32 0), align 4
  %138 = load i32, i32* @MB_INTRA_VLC_BITS, align 4
  %139 = call i8* @get_vlc2(i32* %136, i32 %137, i32 %138, i32 2)
  %140 = ptrtoint i8* %139 to i32
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %134
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 10
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @AV_LOG_ERROR, align 4
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = call i32 (i32, i32, i8*, i64, i64, ...) @av_log(i32 %146, i32 %147, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %150, i64 %153)
  %155 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %155, i32* %3, align 4
  br label %467

156:                                              ; preds = %134
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %157

157:                                              ; preds = %184, %156
  %158 = load i32, i32* %9, align 4
  %159 = icmp slt i32 %158, 6
  br i1 %159, label %160, label %187

160:                                              ; preds = %157
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %9, align 4
  %163 = sub nsw i32 5, %162
  %164 = ashr i32 %161, %163
  %165 = and i32 %164, 1
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp slt i32 %166, 4
  br i1 %167, label %168, label %177

168:                                              ; preds = %160
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @ff_msmpeg4_coded_block_pred(%struct.TYPE_20__* %169, i32 %170, i32** %11)
  store i32 %171, i32* %13, align 4
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %13, align 4
  %174 = xor i32 %172, %173
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* %12, align 4
  %176 = load i32*, i32** %11, align 8
  store i32 %175, i32* %176, align 4
  br label %177

177:                                              ; preds = %168, %160
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %9, align 4
  %180 = sub nsw i32 5, %179
  %181 = shl i32 %178, %180
  %182 = load i32, i32* %7, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %7, align 4
  br label %184

184:                                              ; preds = %177
  %185 = load i32, i32* %9, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %9, align 4
  br label %157

187:                                              ; preds = %157
  br label %188

188:                                              ; preds = %187, %116
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %323, label %193

193:                                              ; preds = %188
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %195 = call i32 @wmv2_pred_motion(%struct.TYPE_19__* %194, i32* %14, i32* %15)
  %196 = load i32, i32* %7, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %255

198:                                              ; preds = %193
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 12
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 0
  %202 = load i32 (i32)*, i32 (i32)** %201, align 8
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 11
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 %202(i32 %207)
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 16
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %224

213:                                              ; preds = %198
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 15
  %216 = call i8* @decode012(i32* %215)
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 13
  store i8* %216, i8** %218, align 8
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 13
  %221 = load i8*, i8** %220, align 8
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 14
  store i8* %221, i8** %223, align 8
  br label %224

224:                                              ; preds = %213, %198
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 4
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %251

229:                                              ; preds = %224
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 3
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %251

234:                                              ; preds = %229
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 15
  %237 = call i8* @get_bits1(i32* %236)
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 1
  store i8* %237, i8** %239, align 8
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 1
  %242 = load i8*, i8** %241, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %250, label %244

244:                                              ; preds = %234
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 15
  %247 = call i8* @decode012(i32* %246)
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %248, i32 0, i32 2
  store i8* %247, i8** %249, align 8
  br label %250

250:                                              ; preds = %244, %234
  br label %254

251:                                              ; preds = %229, %224
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 0, i32 1
  store i8* null, i8** %253, align 8
  br label %254

254:                                              ; preds = %251, %250
  br label %255

255:                                              ; preds = %254, %193
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %257 = call i32 @wmv2_decode_motion(%struct.TYPE_19__* %256, i32* %14, i32* %15)
  store i32 %257, i32* %10, align 4
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %255
  %260 = load i32, i32* %10, align 4
  store i32 %260, i32* %3, align 4
  br label %467

261:                                              ; preds = %255
  %262 = load i8*, i8** @MV_DIR_FORWARD, align 8
  %263 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %263, i32 0, i32 19
  store i8* %262, i8** %264, align 8
  %265 = load i8*, i8** @MV_TYPE_16X16, align 8
  %266 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i32 0, i32 18
  store i8* %265, i8** %267, align 8
  %268 = load i32, i32* %14, align 4
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 6
  %271 = load i32***, i32**** %270, align 8
  %272 = getelementptr inbounds i32**, i32*** %271, i64 0
  %273 = load i32**, i32*** %272, align 8
  %274 = getelementptr inbounds i32*, i32** %273, i64 0
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 0
  store i32 %268, i32* %276, align 4
  %277 = load i32, i32* %15, align 4
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i32 0, i32 6
  %280 = load i32***, i32**** %279, align 8
  %281 = getelementptr inbounds i32**, i32*** %280, i64 0
  %282 = load i32**, i32*** %281, align 8
  %283 = getelementptr inbounds i32*, i32** %282, i64 0
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 1
  store i32 %277, i32* %285, align 4
  store i32 0, i32* %9, align 4
  br label %286

286:                                              ; preds = %319, %261
  %287 = load i32, i32* %9, align 4
  %288 = icmp slt i32 %287, 6
  br i1 %288, label %289, label %322

289:                                              ; preds = %286
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %291 = load [64 x i32]*, [64 x i32]** %5, align 8
  %292 = load i32, i32* %9, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [64 x i32], [64 x i32]* %291, i64 %293
  %295 = getelementptr inbounds [64 x i32], [64 x i32]* %294, i64 0, i64 0
  %296 = load i32, i32* %9, align 4
  %297 = load i32, i32* %7, align 4
  %298 = load i32, i32* %9, align 4
  %299 = sub nsw i32 5, %298
  %300 = ashr i32 %297, %299
  %301 = and i32 %300, 1
  %302 = call i32 @wmv2_decode_inter_block(%struct.TYPE_19__* %290, i32* %295, i32 %296, i32 %301)
  store i32 %302, i32* %10, align 4
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %304, label %318

304:                                              ; preds = %289
  %305 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %305, i32 0, i32 10
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @AV_LOG_ERROR, align 4
  %309 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %309, i32 0, i32 3
  %311 = load i64, i64* %310, align 8
  %312 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = load i32, i32* %9, align 4
  %316 = call i32 (i32, i32, i8*, i64, i64, ...) @av_log(i32 %307, i32 %308, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %311, i64 %314, i32 %315)
  %317 = load i32, i32* %10, align 4
  store i32 %317, i32* %3, align 4
  br label %467

318:                                              ; preds = %289
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %9, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %9, align 4
  br label %286

322:                                              ; preds = %286
  br label %466

323:                                              ; preds = %188
  %324 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* @AV_PICTURE_TYPE_P, align 8
  %328 = icmp eq i64 %326, %327
  br i1 %328, label %329, label %339

329:                                              ; preds = %323
  %330 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %330, i32 0, i32 10
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %333, i32 0, i32 17
  %335 = load i64, i64* %334, align 8
  %336 = load i32, i32* %7, align 4
  %337 = sext i32 %336 to i64
  %338 = call i32 (i32, i8*, i64, i64, ...) @ff_dlog(i32 %332, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %335, i64 %337)
  br label %339

339:                                              ; preds = %329, %323
  %340 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %340, i32 0, i32 10
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %343, i32 0, i32 3
  %345 = load i64, i64* %344, align 8
  %346 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = load i32, i32* %7, align 4
  %350 = and i32 %349, 3
  %351 = icmp ne i32 %350, 0
  %352 = zext i1 %351 to i64
  %353 = select i1 %351, i32 1, i32 0
  %354 = load i32, i32* %7, align 4
  %355 = and i32 %354, 60
  %356 = icmp ne i32 %355, 0
  %357 = zext i1 %356 to i64
  %358 = select i1 %356, i32 2, i32 0
  %359 = add nsw i32 %353, %358
  %360 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %360, i32 0, i32 15
  %362 = call i64 @show_bits(i32* %361, i32 24)
  %363 = call i32 (i32, i8*, i64, i64, ...) @ff_dlog(i32 %342, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %345, i64 %348, i32 %359, i64 %362)
  %364 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %364, i32 0, i32 15
  %366 = call i8* @get_bits1(i32* %365)
  %367 = ptrtoint i8* %366 to i64
  %368 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %368, i32 0, i32 8
  store i64 %367, i64* %369, align 8
  %370 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %371 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %370, i32 0, i32 17
  %372 = load i64, i64* %371, align 8
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %399

374:                                              ; preds = %339
  %375 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %376 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %375, i32 0, i32 15
  %377 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ff_inter_intra_vlc, i32 0, i32 0), align 4
  %378 = load i32, i32* @INTER_INTRA_VLC_BITS, align 4
  %379 = call i8* @get_vlc2(i32* %376, i32 %377, i32 %378, i32 1)
  %380 = ptrtoint i8* %379 to i64
  %381 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %382 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %381, i32 0, i32 9
  store i64 %380, i64* %382, align 8
  %383 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %383, i32 0, i32 10
  %385 = load i32, i32* %384, align 8
  %386 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %387 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %386, i32 0, i32 8
  %388 = load i64, i64* %387, align 8
  %389 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %389, i32 0, i32 9
  %391 = load i64, i64* %390, align 8
  %392 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %392, i32 0, i32 3
  %394 = load i64, i64* %393, align 8
  %395 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %396 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %395, i32 0, i32 1
  %397 = load i64, i64* %396, align 8
  %398 = call i32 (i32, i8*, i64, i64, ...) @ff_dlog(i32 %385, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %388, i64 %391, i64 %394, i64 %397)
  br label %399

399:                                              ; preds = %374, %339
  %400 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %400, i32 0, i32 16
  %402 = load i64, i64* %401, align 8
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %418

404:                                              ; preds = %399
  %405 = load i32, i32* %7, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %418

407:                                              ; preds = %404
  %408 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %409 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %408, i32 0, i32 15
  %410 = call i8* @decode012(i32* %409)
  %411 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %412 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %411, i32 0, i32 13
  store i8* %410, i8** %412, align 8
  %413 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %414 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %413, i32 0, i32 13
  %415 = load i8*, i8** %414, align 8
  %416 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %417 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %416, i32 0, i32 14
  store i8* %415, i8** %417, align 8
  br label %418

418:                                              ; preds = %407, %404, %399
  %419 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %420 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %419, i32 0, i32 12
  %421 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %420, i32 0, i32 0
  %422 = load i32 (i32)*, i32 (i32)** %421, align 8
  %423 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %424 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %423, i32 0, i32 11
  %425 = load i32*, i32** %424, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 0
  %427 = load i32, i32* %426, align 4
  %428 = call i32 %422(i32 %427)
  store i32 0, i32* %9, align 4
  br label %429

429:                                              ; preds = %462, %418
  %430 = load i32, i32* %9, align 4
  %431 = icmp slt i32 %430, 6
  br i1 %431, label %432, label %465

432:                                              ; preds = %429
  %433 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %434 = load [64 x i32]*, [64 x i32]** %5, align 8
  %435 = load i32, i32* %9, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds [64 x i32], [64 x i32]* %434, i64 %436
  %438 = getelementptr inbounds [64 x i32], [64 x i32]* %437, i64 0, i64 0
  %439 = load i32, i32* %9, align 4
  %440 = load i32, i32* %7, align 4
  %441 = load i32, i32* %9, align 4
  %442 = sub nsw i32 5, %441
  %443 = ashr i32 %440, %442
  %444 = and i32 %443, 1
  %445 = call i32 @ff_msmpeg4_decode_block(%struct.TYPE_20__* %433, i32* %438, i32 %439, i32 %444, i32* null)
  store i32 %445, i32* %10, align 4
  %446 = icmp slt i32 %445, 0
  br i1 %446, label %447, label %461

447:                                              ; preds = %432
  %448 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %449 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %448, i32 0, i32 10
  %450 = load i32, i32* %449, align 8
  %451 = load i32, i32* @AV_LOG_ERROR, align 4
  %452 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %453 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %452, i32 0, i32 3
  %454 = load i64, i64* %453, align 8
  %455 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %456 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %455, i32 0, i32 1
  %457 = load i64, i64* %456, align 8
  %458 = load i32, i32* %9, align 4
  %459 = call i32 (i32, i32, i8*, i64, i64, ...) @av_log(i32 %450, i32 %451, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i64 %454, i64 %457, i32 %458)
  %460 = load i32, i32* %10, align 4
  store i32 %460, i32* %3, align 4
  br label %467

461:                                              ; preds = %432
  br label %462

462:                                              ; preds = %461
  %463 = load i32, i32* %9, align 4
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %9, align 4
  br label %429

465:                                              ; preds = %429
  br label %466

466:                                              ; preds = %465, %322
  store i32 0, i32* %3, align 4
  br label %467

467:                                              ; preds = %466, %447, %304, %259, %143, %132, %114, %97, %65, %22
  %468 = load i32, i32* %3, align 4
  ret i32 %468
}

declare dso_local i64 @IS_SKIP(i32) #1

declare dso_local i64 @get_bits_left(i32*) #1

declare dso_local i8* @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, i64, i64, ...) #1

declare dso_local i32 @ff_msmpeg4_coded_block_pred(%struct.TYPE_20__*, i32, i32**) #1

declare dso_local i32 @wmv2_pred_motion(%struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i8* @decode012(i32*) #1

declare dso_local i8* @get_bits1(i32*) #1

declare dso_local i32 @wmv2_decode_motion(%struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i32 @wmv2_decode_inter_block(%struct.TYPE_19__*, i32*, i32, i32) #1

declare dso_local i32 @ff_dlog(i32, i8*, i64, i64, ...) #1

declare dso_local i64 @show_bits(i32*, i32) #1

declare dso_local i32 @ff_msmpeg4_decode_block(%struct.TYPE_20__*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
