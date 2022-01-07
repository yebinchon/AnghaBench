; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ituh263dec.c_h263_decode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ituh263dec.c_h263_decode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32* }
%struct.TYPE_19__ = type { i32, i64, i32, i64, i32*, i32*, i32, i32, i32*, i32, i64, %struct.TYPE_13__*, %struct.TYPE_14__, i32, i64, %struct.TYPE_17__, %struct.TYPE_16__, i64, i64, %struct.TYPE_15__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 (i32*)* }
%struct.TYPE_17__ = type { i64* }
%struct.TYPE_16__ = type { i64* }
%struct.TYPE_15__ = type { i64* }

@ff_h263_rl_inter = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@ff_rl_intra_aic = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@CONFIG_RV10_DECODER = common dso_local global i64 0, align 8
@AV_CODEC_ID_RV10 = common dso_local global i64 0, align 8
@AV_PICTURE_TYPE_I = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"illegal dc %d at %d %d\0A\00", align 1
@AV_EF_BITSTREAM = common dso_local global i32 0, align 4
@AV_EF_COMPLIANT = common dso_local global i32 0, align 4
@re = common dso_local global i32 0, align 4
@TEX_VLC_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"illegal ac vlc code at %dx%d\0A\00", align 1
@CONFIG_FLV_DECODER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"run overflow at %dx%d i:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32*, i32, i32)* @h263_decode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h263_decode_block(%struct.TYPE_19__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_18__* @ff_h263_rl_inter, %struct.TYPE_18__** %14, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 13
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %16, align 4
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 19
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  store i64* %26, i64** %15, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 10
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %4
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %31
  store %struct.TYPE_18__* @ff_rl_intra_aic, %struct.TYPE_18__** %14, align 8
  store i32 0, i32* %11, align 4
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 18
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 17
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 16
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  store i64* %50, i64** %15, align 8
  br label %56

51:                                               ; preds = %41
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 15
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  store i64* %55, i64** %15, align 8
  br label %56

56:                                               ; preds = %51, %46
  br label %57

57:                                               ; preds = %56, %36
  br label %188

58:                                               ; preds = %31, %4
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %186

63:                                               ; preds = %58
  %64 = load i64, i64* @CONFIG_RV10_DECODER, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %145

66:                                               ; preds = %63
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @AV_CODEC_ID_RV10, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %145

72:                                               ; preds = %66
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %77, label %136

77:                                               ; preds = %72
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %136

83:                                               ; preds = %77
  %84 = load i32, i32* %8, align 4
  %85 = icmp sle i32 %84, 3
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %91

87:                                               ; preds = %83
  %88 = load i32, i32* %8, align 4
  %89 = sub nsw i32 %88, 4
  %90 = add nsw i32 %89, 1
  br label %91

91:                                               ; preds = %87, %86
  %92 = phi i32 [ 0, %86 ], [ %90, %87 ]
  store i32 %92, i32* %17, align 4
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %17, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %10, align 4
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 5
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %17, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %128

108:                                              ; preds = %91
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @ff_rv_decode_dc(%struct.TYPE_19__* %109, i32 %110)
  store i32 %111, i32* %18, align 4
  %112 = load i32, i32* %18, align 4
  %113 = icmp eq i32 %112, 65535
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  store i32 -1, i32* %5, align 4
  br label %492

115:                                              ; preds = %108
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = and i32 %119, 255
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %17, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %121, i32* %127, align 4
  br label %135

128:                                              ; preds = %91
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 5
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %17, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 1, i32* %134, align 4
  br label %135

135:                                              ; preds = %128, %115
  br label %144

136:                                              ; preds = %77, %72
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 13
  %139 = call i32 @get_bits(i32* %138, i32 8)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp eq i32 %140, 255
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  store i32 128, i32* %10, align 4
  br label %143

143:                                              ; preds = %142, %136
  br label %144

144:                                              ; preds = %143, %135
  br label %182

145:                                              ; preds = %66, %63
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 13
  %148 = call i32 @get_bits(i32* %147, i32 8)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = and i32 %149, 127
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %177

152:                                              ; preds = %145
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 11
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = load i32, i32* @AV_LOG_ERROR, align 4
  %157 = load i32, i32* %10, align 4
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 7
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (%struct.TYPE_13__*, i32, i8*, i32, i32, ...) @av_log(%struct.TYPE_13__* %155, i32 %156, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %157, i32 %160, i32 %163)
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 11
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @AV_EF_BITSTREAM, align 4
  %171 = load i32, i32* @AV_EF_COMPLIANT, align 4
  %172 = or i32 %170, %171
  %173 = and i32 %169, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %152
  store i32 -1, i32* %5, align 4
  br label %492

176:                                              ; preds = %152
  br label %177

177:                                              ; preds = %176, %145
  %178 = load i32, i32* %10, align 4
  %179 = icmp eq i32 %178, 255
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  store i32 128, i32* %10, align 4
  br label %181

181:                                              ; preds = %180, %177
  br label %182

182:                                              ; preds = %181, %144
  %183 = load i32, i32* %10, align 4
  %184 = load i32*, i32** %7, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  store i32 %183, i32* %185, align 4
  store i32 1, i32* %11, align 4
  br label %187

186:                                              ; preds = %58
  store i32 0, i32* %11, align 4
  br label %187

187:                                              ; preds = %186, %182
  br label %188

188:                                              ; preds = %187, %57
  %189 = load i32, i32* %9, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %211, label %191

191:                                              ; preds = %188
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %191
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 10
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  br label %469

202:                                              ; preds = %196, %191
  %203 = load i32, i32* %11, align 4
  %204 = sub nsw i32 %203, 1
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 8
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  store i32 %204, i32* %210, align 4
  store i32 0, i32* %5, align 4
  br label %492

211:                                              ; preds = %188
  br label %212

212:                                              ; preds = %431, %211
  %213 = load i32, i32* @re, align 4
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 13
  %216 = call i32 @OPEN_READER(i32 %213, i32* %215)
  %217 = load i32, i32* %11, align 4
  %218 = add nsw i32 %217, -1
  store i32 %218, i32* %11, align 4
  br label %219

219:                                              ; preds = %456, %212
  %220 = load i32, i32* @re, align 4
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 13
  %223 = call i32 @UPDATE_CACHE(i32 %220, i32* %222)
  %224 = load i32, i32* %10, align 4
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* @re, align 4
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 13
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @TEX_VLC_BITS, align 4
  %235 = call i32 @GET_RL_VLC(i32 %224, i32 %225, i32 %226, i32* %228, i32 %233, i32 %234, i32 2, i32 0)
  %236 = load i32, i32* %13, align 4
  %237 = icmp eq i32 %236, 66
  br i1 %237, label %238, label %374

238:                                              ; preds = %219
  %239 = load i32, i32* %10, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %257

241:                                              ; preds = %238
  %242 = load i32, i32* @re, align 4
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 13
  %245 = call i32 @CLOSE_READER(i32 %242, i32* %244)
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 11
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %247, align 8
  %249 = load i32, i32* @AV_LOG_ERROR, align 4
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 7
  %255 = load i32, i32* %254, align 4
  %256 = call i32 (%struct.TYPE_13__*, i32, i8*, i32, i32, ...) @av_log(%struct.TYPE_13__* %248, i32 %249, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %252, i32 %255)
  store i32 -1, i32* %5, align 4
  br label %492

257:                                              ; preds = %238
  %258 = load i64, i64* @CONFIG_FLV_DECODER, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %312

260:                                              ; preds = %257
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 9
  %263 = load i32, i32* %262, align 8
  %264 = icmp sgt i32 %263, 1
  br i1 %264, label %265, label %312

265:                                              ; preds = %260
  %266 = load i32, i32* @re, align 4
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 13
  %269 = call i32 @SHOW_UBITS(i32 %266, i32* %268, i32 1)
  store i32 %269, i32* %19, align 4
  %270 = load i32, i32* @re, align 4
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 13
  %273 = call i32 @SKIP_CACHE(i32 %270, i32* %272, i32 1)
  %274 = load i32, i32* @re, align 4
  %275 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %275, i32 0, i32 13
  %277 = call i32 @SHOW_UBITS(i32 %274, i32* %276, i32 7)
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %13, align 4
  %279 = load i32, i32* %19, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %298

281:                                              ; preds = %265
  %282 = load i32, i32* @re, align 4
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 13
  %285 = call i32 @SKIP_COUNTER(i32 %282, i32* %284, i32 8)
  %286 = load i32, i32* @re, align 4
  %287 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %287, i32 0, i32 13
  %289 = call i32 @UPDATE_CACHE(i32 %286, i32* %288)
  %290 = load i32, i32* @re, align 4
  %291 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %291, i32 0, i32 13
  %293 = call i32 @SHOW_SBITS(i32 %290, i32* %292, i32 11)
  store i32 %293, i32* %10, align 4
  %294 = load i32, i32* @re, align 4
  %295 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %295, i32 0, i32 13
  %297 = call i32 @SKIP_COUNTER(i32 %294, i32* %296, i32 11)
  br label %311

298:                                              ; preds = %265
  %299 = load i32, i32* @re, align 4
  %300 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 13
  %302 = call i32 @SKIP_CACHE(i32 %299, i32* %301, i32 7)
  %303 = load i32, i32* @re, align 4
  %304 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %304, i32 0, i32 13
  %306 = call i32 @SHOW_SBITS(i32 %303, i32* %305, i32 7)
  store i32 %306, i32* %10, align 4
  %307 = load i32, i32* @re, align 4
  %308 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %308, i32 0, i32 13
  %310 = call i32 @SKIP_COUNTER(i32 %307, i32* %309, i32 15)
  br label %311

311:                                              ; preds = %298, %281
  br label %373

312:                                              ; preds = %260, %257
  %313 = load i32, i32* @re, align 4
  %314 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %314, i32 0, i32 13
  %316 = call i32 @SHOW_UBITS(i32 %313, i32* %315, i32 7)
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %13, align 4
  %318 = load i32, i32* @re, align 4
  %319 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %319, i32 0, i32 13
  %321 = call i32 @SKIP_CACHE(i32 %318, i32* %320, i32 7)
  %322 = load i32, i32* @re, align 4
  %323 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %323, i32 0, i32 13
  %325 = call i32 @SHOW_UBITS(i32 %322, i32* %324, i32 8)
  store i32 %325, i32* %10, align 4
  %326 = load i32, i32* @re, align 4
  %327 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %327, i32 0, i32 13
  %329 = call i32 @SKIP_COUNTER(i32 %326, i32* %328, i32 15)
  %330 = load i32, i32* %10, align 4
  %331 = icmp eq i32 %330, -128
  br i1 %331, label %332, label %372

332:                                              ; preds = %312
  %333 = load i32, i32* @re, align 4
  %334 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %334, i32 0, i32 13
  %336 = call i32 @UPDATE_CACHE(i32 %333, i32* %335)
  %337 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %338 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = load i64, i64* @AV_CODEC_ID_RV10, align 8
  %341 = icmp eq i64 %339, %340
  br i1 %341, label %342, label %351

342:                                              ; preds = %332
  %343 = load i32, i32* @re, align 4
  %344 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %344, i32 0, i32 13
  %346 = call i32 @SHOW_SBITS(i32 %343, i32* %345, i32 12)
  store i32 %346, i32* %10, align 4
  %347 = load i32, i32* @re, align 4
  %348 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %349 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %348, i32 0, i32 13
  %350 = call i32 @SKIP_COUNTER(i32 %347, i32* %349, i32 12)
  br label %371

351:                                              ; preds = %332
  %352 = load i32, i32* @re, align 4
  %353 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %353, i32 0, i32 13
  %355 = call i32 @SHOW_UBITS(i32 %352, i32* %354, i32 5)
  store i32 %355, i32* %10, align 4
  %356 = load i32, i32* @re, align 4
  %357 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %357, i32 0, i32 13
  %359 = call i32 @SKIP_CACHE(i32 %356, i32* %358, i32 5)
  %360 = load i32, i32* @re, align 4
  %361 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %362 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %361, i32 0, i32 13
  %363 = call i32 @SHOW_SBITS(i32 %360, i32* %362, i32 6)
  %364 = mul nsw i32 %363, 32
  %365 = load i32, i32* %10, align 4
  %366 = or i32 %365, %364
  store i32 %366, i32* %10, align 4
  %367 = load i32, i32* @re, align 4
  %368 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %368, i32 0, i32 13
  %370 = call i32 @SKIP_COUNTER(i32 %367, i32* %369, i32 11)
  br label %371

371:                                              ; preds = %351, %342
  br label %372

372:                                              ; preds = %371, %312
  br label %373

373:                                              ; preds = %372, %311
  br label %388

374:                                              ; preds = %219
  %375 = load i32, i32* @re, align 4
  %376 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %376, i32 0, i32 13
  %378 = call i32 @SHOW_UBITS(i32 %375, i32* %377, i32 1)
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %374
  %381 = load i32, i32* %10, align 4
  %382 = sub nsw i32 0, %381
  store i32 %382, i32* %10, align 4
  br label %383

383:                                              ; preds = %380, %374
  %384 = load i32, i32* @re, align 4
  %385 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %386 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %385, i32 0, i32 13
  %387 = call i32 @SKIP_COUNTER(i32 %384, i32* %386, i32 1)
  br label %388

388:                                              ; preds = %383, %373
  %389 = load i32, i32* %13, align 4
  %390 = load i32, i32* %11, align 4
  %391 = add nsw i32 %390, %389
  store i32 %391, i32* %11, align 4
  %392 = load i32, i32* %11, align 4
  %393 = icmp sge i32 %392, 64
  br i1 %393, label %394, label %456

394:                                              ; preds = %388
  %395 = load i32, i32* @re, align 4
  %396 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %397 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %396, i32 0, i32 13
  %398 = call i32 @CLOSE_READER(i32 %395, i32* %397)
  %399 = load i32, i32* %11, align 4
  %400 = load i32, i32* %13, align 4
  %401 = sub nsw i32 %399, %400
  %402 = load i32, i32* %13, align 4
  %403 = sub nsw i32 %402, 1
  %404 = and i32 %403, 63
  %405 = add nsw i32 %401, %404
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %11, align 4
  %407 = load i32, i32* %11, align 4
  %408 = icmp slt i32 %407, 64
  br i1 %408, label %409, label %418

409:                                              ; preds = %394
  %410 = load i32, i32* %10, align 4
  %411 = load i32*, i32** %7, align 8
  %412 = load i64*, i64** %15, align 8
  %413 = load i32, i32* %11, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i64, i64* %412, i64 %414
  %416 = load i64, i64* %415, align 8
  %417 = getelementptr inbounds i32, i32* %411, i64 %416
  store i32 %410, i32* %417, align 4
  br label %468

418:                                              ; preds = %394
  %419 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %420 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %419, i32 0, i32 14
  %421 = load i64, i64* %420, align 8
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %441

423:                                              ; preds = %418
  %424 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %425 = icmp eq %struct.TYPE_18__* %424, @ff_h263_rl_inter
  br i1 %425, label %426, label %441

426:                                              ; preds = %423
  %427 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %428 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %441, label %431

431:                                              ; preds = %426
  store %struct.TYPE_18__* @ff_rl_intra_aic, %struct.TYPE_18__** %14, align 8
  store i32 0, i32* %11, align 4
  %432 = load i32, i32* %16, align 4
  %433 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %434 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %433, i32 0, i32 13
  store i32 %432, i32* %434, align 8
  %435 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %436 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %435, i32 0, i32 12
  %437 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %436, i32 0, i32 0
  %438 = load i32 (i32*)*, i32 (i32*)** %437, align 8
  %439 = load i32*, i32** %7, align 8
  %440 = call i32 %438(i32* %439)
  br label %212

441:                                              ; preds = %426, %423, %418
  %442 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %443 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %442, i32 0, i32 11
  %444 = load %struct.TYPE_13__*, %struct.TYPE_13__** %443, align 8
  %445 = load i32, i32* @AV_LOG_ERROR, align 4
  %446 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %447 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %446, i32 0, i32 6
  %448 = load i32, i32* %447, align 8
  %449 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %450 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %449, i32 0, i32 7
  %451 = load i32, i32* %450, align 4
  %452 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %453 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = call i32 (%struct.TYPE_13__*, i32, i8*, i32, i32, ...) @av_log(%struct.TYPE_13__* %444, i32 %445, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %448, i32 %451, i32 %454)
  store i32 -1, i32* %5, align 4
  br label %492

456:                                              ; preds = %388
  %457 = load i64*, i64** %15, align 8
  %458 = load i32, i32* %11, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i64, i64* %457, i64 %459
  %461 = load i64, i64* %460, align 8
  %462 = trunc i64 %461 to i32
  store i32 %462, i32* %12, align 4
  %463 = load i32, i32* %10, align 4
  %464 = load i32*, i32** %7, align 8
  %465 = load i32, i32* %12, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i32, i32* %464, i64 %466
  store i32 %463, i32* %467, align 4
  br label %219

468:                                              ; preds = %409
  br label %469

469:                                              ; preds = %468, %201
  %470 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %471 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %484

474:                                              ; preds = %469
  %475 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %476 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %475, i32 0, i32 10
  %477 = load i64, i64* %476, align 8
  %478 = icmp ne i64 %477, 0
  br i1 %478, label %479, label %484

479:                                              ; preds = %474
  %480 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %481 = load i32*, i32** %7, align 8
  %482 = load i32, i32* %8, align 4
  %483 = call i32 @ff_h263_pred_acdc(%struct.TYPE_19__* %480, i32* %481, i32 %482)
  store i32 63, i32* %11, align 4
  br label %484

484:                                              ; preds = %479, %474, %469
  %485 = load i32, i32* %11, align 4
  %486 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %487 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %486, i32 0, i32 8
  %488 = load i32*, i32** %487, align 8
  %489 = load i32, i32* %8, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i32, i32* %488, i64 %490
  store i32 %485, i32* %491, align 4
  store i32 0, i32* %5, align 4
  br label %492

492:                                              ; preds = %484, %441, %241, %202, %175, %114
  %493 = load i32, i32* %5, align 4
  ret i32 %493
}

declare dso_local i32 @ff_rv_decode_dc(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @OPEN_READER(i32, i32*) #1

declare dso_local i32 @UPDATE_CACHE(i32, i32*) #1

declare dso_local i32 @GET_RL_VLC(i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @CLOSE_READER(i32, i32*) #1

declare dso_local i32 @SHOW_UBITS(i32, i32*, i32) #1

declare dso_local i32 @SKIP_CACHE(i32, i32*, i32) #1

declare dso_local i32 @SKIP_COUNTER(i32, i32*, i32) #1

declare dso_local i32 @SHOW_SBITS(i32, i32*, i32) #1

declare dso_local i32 @ff_h263_pred_acdc(%struct.TYPE_19__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
