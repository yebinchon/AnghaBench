; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcadec.c_dcadec_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcadec.c_dcadec_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i64, %struct.TYPE_20__, %struct.TYPE_26__, i32, %struct.TYPE_19__, i32*, i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { i64, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32* }

@MIN_PACKET_SIZE = common dso_local global i32 0, align 4
@MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid packet size\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@DCA_SYNCWORD_CORE_BE = common dso_local global i64 0, align 8
@DCA_SYNCWORD_SUBSTREAM = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Not a valid DCA frame\0A\00", align 1
@DCA_PACKET_CORE = common dso_local global i32 0, align 4
@AV_EF_EXPLODE = common dso_local global i32 0, align 4
@DCA_PACKET_EXSS = common dso_local global i32 0, align 4
@DCA_EXSS_XLL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@DCA_PACKET_XLL = common dso_local global i32 0, align 4
@DCA_PACKET_RECOVERY = common dso_local global i32 0, align 4
@DCA_EXSS_LBR = common dso_local global i32 0, align 4
@DCA_PACKET_LBR = common dso_local global i32 0, align 4
@DCA_PACKET_RESIDUAL = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Forcing XLL recovery mode\0A\00", align 1
@DCA_FILTER_MODE_FIXED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"No valid DCA sub-stream found\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Consider disabling 'core_only' option\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i8*, i32*, %struct.TYPE_24__*)* @dcadec_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcadec_decode_frame(%struct.TYPE_25__* %0, i8* %1, i32* %2, %struct.TYPE_24__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_22__*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %9, align 8
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  store %struct.TYPE_23__* %23, %struct.TYPE_23__** %10, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %11, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %12, align 8
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %13, align 4
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @MIN_PACKET_SIZE, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @MAX_PACKET_SIZE, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38, %4
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %44 = load i32, i32* @AV_LOG_ERROR, align 4
  %45 = call i32 @av_log(%struct.TYPE_25__* %43, i32 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %46, i32* %5, align 4
  br label %491

47:                                               ; preds = %38
  %48 = load i32*, i32** %12, align 8
  %49 = call i64 @AV_RB32(i32* %48)
  store i64 %49, i64* %17, align 8
  %50 = load i64, i64* %17, align 8
  %51 = load i64, i64* @DCA_SYNCWORD_CORE_BE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %116

53:                                               ; preds = %47
  %54 = load i64, i64* %17, align 8
  %55 = load i64, i64* @DCA_SYNCWORD_SUBSTREAM, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %116

57:                                               ; preds = %53
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 6
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 7
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @av_fast_padded_malloc(i32** %59, i32* %61, i32 %62)
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 6
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %57
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = call i32 @AVERROR(i32 %69)
  store i32 %70, i32* %5, align 4
  br label %491

71:                                               ; preds = %57
  store i32 0, i32* %14, align 4
  %72 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %72, i32* %15, align 4
  br label %73

73:                                               ; preds = %100, %71
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @MIN_PACKET_SIZE, align 4
  %77 = sub nsw i32 %75, %76
  %78 = add nsw i32 %77, 1
  %79 = icmp slt i32 %74, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i32, i32* %15, align 4
  %82 = icmp slt i32 %81, 0
  br label %83

83:                                               ; preds = %80, %73
  %84 = phi i1 [ false, %73 ], [ %82, %80 ]
  br i1 %84, label %85, label %103

85:                                               ; preds = %83
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %14, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 6
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @avpriv_dca_convert_bitstream(i32* %89, i32 %92, i32* %95, i32 %98)
  store i32 %99, i32* %15, align 4
  br label %100

100:                                              ; preds = %85
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  br label %73

103:                                              ; preds = %83
  %104 = load i32, i32* %15, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %108 = load i32, i32* @AV_LOG_ERROR, align 4
  %109 = call i32 @av_log(%struct.TYPE_25__* %107, i32 %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i32, i32* %15, align 4
  store i32 %110, i32* %5, align 4
  br label %491

111:                                              ; preds = %103
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 6
  %114 = load i32*, i32** %113, align 8
  store i32* %114, i32** %12, align 8
  %115 = load i32, i32* %15, align 4
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %111, %53, %47
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  %119 = load i32*, i32** %12, align 8
  %120 = call i64 @AV_RB32(i32* %119)
  %121 = load i64, i64* @DCA_SYNCWORD_CORE_BE, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %156

123:                                              ; preds = %116
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 2
  %126 = load i32*, i32** %12, align 8
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @ff_dca_core_parse(%struct.TYPE_20__* %125, i32* %126, i32 %127)
  store i32 %128, i32* %15, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = load i32, i32* %15, align 4
  store i32 %131, i32* %5, align 4
  br label %491

132:                                              ; preds = %123
  %133 = load i32, i32* @DCA_PACKET_CORE, align 4
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 8
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @FFALIGN(i32 %141, i32 4)
  store i32 %142, i32* %18, align 4
  %143 = load i32, i32* %13, align 4
  %144 = sub nsw i32 %143, 4
  %145 = load i32, i32* %18, align 4
  %146 = icmp sgt i32 %144, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %132
  %148 = load i32, i32* %18, align 4
  %149 = load i32*, i32** %12, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  store i32* %151, i32** %12, align 8
  %152 = load i32, i32* %18, align 4
  %153 = load i32, i32* %13, align 4
  %154 = sub nsw i32 %153, %152
  store i32 %154, i32* %13, align 4
  br label %155

155:                                              ; preds = %147, %132
  br label %156

156:                                              ; preds = %155, %116
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %316, label %161

161:                                              ; preds = %156
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %19, align 8
  %162 = load i32*, i32** %12, align 8
  %163 = call i64 @AV_RB32(i32* %162)
  %164 = load i64, i64* @DCA_SYNCWORD_SUBSTREAM, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %195

166:                                              ; preds = %161
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 5
  %169 = load i32*, i32** %12, align 8
  %170 = load i32, i32* %13, align 4
  %171 = call i32 @ff_dca_exss_parse(%struct.TYPE_19__* %168, i32* %169, i32 %170)
  store i32 %171, i32* %15, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %166
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @AV_EF_EXPLODE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %173
  %181 = load i32, i32* %15, align 4
  store i32 %181, i32* %5, align 4
  br label %491

182:                                              ; preds = %173
  br label %194

183:                                              ; preds = %166
  %184 = load i32, i32* @DCA_PACKET_EXSS, align 4
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 8
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 5
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i64 0
  store %struct.TYPE_22__* %193, %struct.TYPE_22__** %19, align 8
  br label %194

194:                                              ; preds = %183, %182
  br label %195

195:                                              ; preds = %194, %161
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %197 = icmp ne %struct.TYPE_22__* %196, null
  br i1 %197, label %198, label %260

198:                                              ; preds = %195
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @DCA_EXSS_XLL, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %260

205:                                              ; preds = %198
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 3
  %208 = load i32*, i32** %12, align 8
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %210 = call i32 @ff_dca_xll_parse(%struct.TYPE_26__* %207, i32* %208, %struct.TYPE_22__* %209)
  store i32 %210, i32* %15, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %253

212:                                              ; preds = %205
  %213 = load i32, i32* %15, align 4
  %214 = load i32, i32* @EAGAIN, align 4
  %215 = call i32 @AVERROR(i32 %214)
  %216 = icmp eq i32 %213, %215
  br i1 %216, label %217, label %237

217:                                              ; preds = %212
  %218 = load i32, i32* %16, align 4
  %219 = load i32, i32* @DCA_PACKET_XLL, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %237

222:                                              ; preds = %217
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @DCA_PACKET_CORE, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %222
  %230 = load i32, i32* @DCA_PACKET_XLL, align 4
  %231 = load i32, i32* @DCA_PACKET_RECOVERY, align 4
  %232 = or i32 %230, %231
  %233 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = or i32 %235, %232
  store i32 %236, i32* %234, align 8
  br label %252

237:                                              ; preds = %222, %217, %212
  %238 = load i32, i32* %15, align 4
  %239 = load i32, i32* @ENOMEM, align 4
  %240 = call i32 @AVERROR(i32 %239)
  %241 = icmp eq i32 %238, %240
  br i1 %241, label %249, label %242

242:                                              ; preds = %237
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @AV_EF_EXPLODE, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %242, %237
  %250 = load i32, i32* %15, align 4
  store i32 %250, i32* %5, align 4
  br label %491

251:                                              ; preds = %242
  br label %252

252:                                              ; preds = %251, %229
  br label %259

253:                                              ; preds = %205
  %254 = load i32, i32* @DCA_PACKET_XLL, align 4
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = or i32 %257, %254
  store i32 %258, i32* %256, align 8
  br label %259

259:                                              ; preds = %253, %252
  br label %260

260:                                              ; preds = %259, %198, %195
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %262 = icmp ne %struct.TYPE_22__* %261, null
  br i1 %262, label %263, label %299

263:                                              ; preds = %260
  %264 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %265 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @DCA_EXSS_LBR, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %299

270:                                              ; preds = %263
  %271 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %272 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %271, i32 0, i32 4
  %273 = load i32*, i32** %12, align 8
  %274 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %275 = call i32 @ff_dca_lbr_parse(i32* %272, i32* %273, %struct.TYPE_22__* %274)
  store i32 %275, i32* %15, align 4
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %277, label %292

277:                                              ; preds = %270
  %278 = load i32, i32* %15, align 4
  %279 = load i32, i32* @ENOMEM, align 4
  %280 = call i32 @AVERROR(i32 %279)
  %281 = icmp eq i32 %278, %280
  br i1 %281, label %289, label %282

282:                                              ; preds = %277
  %283 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @AV_EF_EXPLODE, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %282, %277
  %290 = load i32, i32* %15, align 4
  store i32 %290, i32* %5, align 4
  br label %491

291:                                              ; preds = %282
  br label %298

292:                                              ; preds = %270
  %293 = load i32, i32* @DCA_PACKET_LBR, align 4
  %294 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = or i32 %296, %293
  store i32 %297, i32* %295, align 8
  br label %298

298:                                              ; preds = %292, %291
  br label %299

299:                                              ; preds = %298, %263, %260
  %300 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @DCA_PACKET_CORE, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %315

306:                                              ; preds = %299
  %307 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %308 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %307, i32 0, i32 2
  %309 = load i32*, i32** %12, align 8
  %310 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %311 = call i32 @ff_dca_core_parse_exss(%struct.TYPE_20__* %308, i32* %309, %struct.TYPE_22__* %310)
  store i32 %311, i32* %15, align 4
  %312 = icmp slt i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %306
  %314 = load i32, i32* %15, align 4
  store i32 %314, i32* %5, align 4
  br label %491

315:                                              ; preds = %306, %299
  br label %316

316:                                              ; preds = %315, %156
  %317 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %318 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @DCA_PACKET_LBR, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %332

323:                                              ; preds = %316
  %324 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %325 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %324, i32 0, i32 4
  %326 = load i32*, i32** %11, align 8
  %327 = call i32 @ff_dca_lbr_filter_frame(i32* %325, i32* %326)
  store i32 %327, i32* %15, align 4
  %328 = icmp slt i32 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %323
  %330 = load i32, i32* %15, align 4
  store i32 %330, i32* %5, align 4
  br label %491

331:                                              ; preds = %323
  br label %486

332:                                              ; preds = %316
  %333 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %334 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @DCA_PACKET_XLL, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %440

339:                                              ; preds = %332
  %340 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %341 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @DCA_PACKET_CORE, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %402

346:                                              ; preds = %339
  store i32 -1, i32* %20, align 4
  %347 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %348 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %347, i32 0, i32 3
  %349 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %348, i32 0, i32 2
  %350 = load %struct.TYPE_21__*, %struct.TYPE_21__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %350, i64 0
  %352 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = icmp eq i32 %353, 96000
  br i1 %354, label %355, label %362

355:                                              ; preds = %346
  %356 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %357 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %356, i32 0, i32 2
  %358 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = icmp eq i32 %359, 48000
  br i1 %360, label %361, label %362

361:                                              ; preds = %355
  store i32 1, i32* %20, align 4
  br label %362

362:                                              ; preds = %361, %355, %346
  %363 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %364 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %363, i32 0, i32 2
  %365 = load i32, i32* %20, align 4
  %366 = call i32 @ff_dca_core_filter_fixed(%struct.TYPE_20__* %364, i32 %365)
  store i32 %366, i32* %15, align 4
  %367 = icmp slt i32 %366, 0
  br i1 %367, label %368, label %370

368:                                              ; preds = %362
  %369 = load i32, i32* %15, align 4
  store i32 %369, i32* %5, align 4
  br label %491

370:                                              ; preds = %362
  %371 = load i32, i32* %16, align 4
  %372 = load i32, i32* @DCA_PACKET_RESIDUAL, align 4
  %373 = and i32 %371, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %396, label %375

375:                                              ; preds = %370
  %376 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %377 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %376, i32 0, i32 3
  %378 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = icmp sgt i64 %379, 0
  br i1 %380, label %381, label %396

381:                                              ; preds = %375
  %382 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %383 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %382, i32 0, i32 3
  %384 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 8
  %386 = icmp sgt i32 %385, 1
  br i1 %386, label %387, label %396

387:                                              ; preds = %381
  %388 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %389 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %390 = call i32 @av_log(%struct.TYPE_25__* %388, i32 %389, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %391 = load i32, i32* @DCA_PACKET_RECOVERY, align 4
  %392 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %393 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = or i32 %394, %391
  store i32 %395, i32* %393, align 8
  br label %396

396:                                              ; preds = %387, %381, %375, %370
  %397 = load i32, i32* @DCA_PACKET_RESIDUAL, align 4
  %398 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %399 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = or i32 %400, %397
  store i32 %401, i32* %399, align 8
  br label %402

402:                                              ; preds = %396, %339
  %403 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %404 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %403, i32 0, i32 3
  %405 = load i32*, i32** %11, align 8
  %406 = call i32 @ff_dca_xll_filter_frame(%struct.TYPE_26__* %404, i32* %405)
  store i32 %406, i32* %15, align 4
  %407 = icmp slt i32 %406, 0
  br i1 %407, label %408, label %439

408:                                              ; preds = %402
  %409 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %410 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = load i32, i32* @DCA_PACKET_CORE, align 4
  %413 = and i32 %411, %412
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %417, label %415

415:                                              ; preds = %408
  %416 = load i32, i32* %15, align 4
  store i32 %416, i32* %5, align 4
  br label %491

417:                                              ; preds = %408
  %418 = load i32, i32* %15, align 4
  %419 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  %420 = icmp ne i32 %418, %419
  br i1 %420, label %428, label %421

421:                                              ; preds = %417
  %422 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %423 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = load i32, i32* @AV_EF_EXPLODE, align 4
  %426 = and i32 %424, %425
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %430

428:                                              ; preds = %421, %417
  %429 = load i32, i32* %15, align 4
  store i32 %429, i32* %5, align 4
  br label %491

430:                                              ; preds = %421
  %431 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %432 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %431, i32 0, i32 2
  %433 = load i32*, i32** %11, align 8
  %434 = call i32 @ff_dca_core_filter_frame(%struct.TYPE_20__* %432, i32* %433)
  store i32 %434, i32* %15, align 4
  %435 = icmp slt i32 %434, 0
  br i1 %435, label %436, label %438

436:                                              ; preds = %430
  %437 = load i32, i32* %15, align 4
  store i32 %437, i32* %5, align 4
  br label %491

438:                                              ; preds = %430
  br label %439

439:                                              ; preds = %438, %402
  br label %485

440:                                              ; preds = %332
  %441 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %442 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = load i32, i32* @DCA_PACKET_CORE, align 4
  %445 = and i32 %443, %444
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %470

447:                                              ; preds = %440
  %448 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %449 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %448, i32 0, i32 2
  %450 = load i32*, i32** %11, align 8
  %451 = call i32 @ff_dca_core_filter_frame(%struct.TYPE_20__* %449, i32* %450)
  store i32 %451, i32* %15, align 4
  %452 = icmp slt i32 %451, 0
  br i1 %452, label %453, label %455

453:                                              ; preds = %447
  %454 = load i32, i32* %15, align 4
  store i32 %454, i32* %5, align 4
  br label %491

455:                                              ; preds = %447
  %456 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %457 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %456, i32 0, i32 2
  %458 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 4
  %460 = load i32, i32* @DCA_FILTER_MODE_FIXED, align 4
  %461 = and i32 %459, %460
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %469

463:                                              ; preds = %455
  %464 = load i32, i32* @DCA_PACKET_RESIDUAL, align 4
  %465 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %466 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 8
  %468 = or i32 %467, %464
  store i32 %468, i32* %466, align 8
  br label %469

469:                                              ; preds = %463, %455
  br label %484

470:                                              ; preds = %440
  %471 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %472 = load i32, i32* @AV_LOG_ERROR, align 4
  %473 = call i32 @av_log(%struct.TYPE_25__* %471, i32 %472, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %474 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %475 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %474, i32 0, i32 1
  %476 = load i64, i64* %475, align 8
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %478, label %482

478:                                              ; preds = %470
  %479 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %480 = load i32, i32* @AV_LOG_WARNING, align 4
  %481 = call i32 @av_log(%struct.TYPE_25__* %479, i32 %480, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %482

482:                                              ; preds = %478, %470
  %483 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %483, i32* %5, align 4
  br label %491

484:                                              ; preds = %469
  br label %485

485:                                              ; preds = %484, %439
  br label %486

486:                                              ; preds = %485, %331
  %487 = load i32*, i32** %8, align 8
  store i32 1, i32* %487, align 4
  %488 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %489 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 8
  store i32 %490, i32* %5, align 4
  br label %491

491:                                              ; preds = %486, %482, %453, %436, %428, %415, %368, %329, %313, %289, %249, %180, %130, %106, %68, %42
  %492 = load i32, i32* %5, align 4
  ret i32 %492
}

declare dso_local i32 @av_log(%struct.TYPE_25__*, i32, i8*) #1

declare dso_local i64 @AV_RB32(i32*) #1

declare dso_local i32 @av_fast_padded_malloc(i32**, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_dca_convert_bitstream(i32*, i32, i32*, i32) #1

declare dso_local i32 @ff_dca_core_parse(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @ff_dca_exss_parse(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32 @ff_dca_xll_parse(%struct.TYPE_26__*, i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @ff_dca_lbr_parse(i32*, i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @ff_dca_core_parse_exss(%struct.TYPE_20__*, i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @ff_dca_lbr_filter_frame(i32*, i32*) #1

declare dso_local i32 @ff_dca_core_filter_fixed(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ff_dca_xll_filter_frame(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @ff_dca_core_filter_frame(%struct.TYPE_20__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
