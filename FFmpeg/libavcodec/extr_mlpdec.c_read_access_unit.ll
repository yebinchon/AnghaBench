; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpdec.c_read_access_unit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpdec.c_read_access_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i64, %struct.TYPE_16__*, i32, i64, %struct.TYPE_13__*, i64 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_15__ = type { i32*, i32 }

@MAX_SUBSTREAMS = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Stream parameters not seen; skipping frame.\0A\00", align 1
@AV_CODEC_ID_MLP = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"There must be no extraword for MLP.\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Insufficient data for headers\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Invalid nonrestart_substr.\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"Indicated length of substream %d data goes off end of packet.\0A\00", align 1
@.str.5 = private unnamed_addr constant [84 x i8] c"Indicated end offset of substream %d data is smaller than calculated start offset.\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Parity check failed.\0A\00", align 1
@AV_CODEC_ID_TRUEHD = common dso_local global i64 0, align 8
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"End of stream indicated.\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Substream %d parity check failed.\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Substream %d checksum failed.\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"No restart header present in substream %d.\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"substream %d length mismatch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, i32*, %struct.TYPE_15__*)* @read_access_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_access_unit(%struct.TYPE_16__* %0, i8* %1, i32* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_13__*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %10, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %11, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %12, align 8
  store i32 4, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %42 = load i32, i32* @MAX_SUBSTREAMS, align 4
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %19, align 8
  %45 = alloca i32, i64 %43, align 16
  store i64 %43, i64* %20, align 8
  %46 = load i32, i32* @MAX_SUBSTREAMS, align 4
  %47 = zext i32 %46 to i64
  %48 = alloca i32, i64 %47, align 16
  store i64 %47, i64* %21, align 8
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %53

51:                                               ; preds = %4
  %52 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %52, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %510

53:                                               ; preds = %4
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @AV_RB16(i32* %54)
  %56 = and i32 %55, 4095
  %57 = mul nsw i32 %56, 2
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ult i32 %58, 4
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ugt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60, %53
  %65 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %65, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %510

66:                                               ; preds = %60
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = load i32, i32* %14, align 4
  %70 = sub i32 %69, 4
  %71 = mul i32 %70, 8
  %72 = call i32 @init_get_bits(i32* %13, i32* %68, i32 %71)
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  %75 = call i32 @show_bits_long(i32* %13, i32 31)
  %76 = icmp eq i32 %75, 2084124637
  br i1 %76, label %77, label %92

77:                                               ; preds = %66
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %79 = call i64 @read_major_sync(%struct.TYPE_14__* %78, i32* %13)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %506

82:                                               ; preds = %77
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 8
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %17, align 4
  %89 = zext i32 %88 to i64
  %90 = add nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %17, align 4
  br label %92

92:                                               ; preds = %82, %66
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %92
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = load i32, i32* @AV_LOG_WARNING, align 4
  %102 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %100, i32 %101, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %103 = load i32*, i32** %8, align 8
  store i32 0, i32* %103, align 4
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %510

105:                                              ; preds = %92
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %106

106:                                              ; preds = %214, %105
  %107 = load i32, i32* %15, align 4
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ult i32 %107, %110
  br i1 %111, label %112, label %217

112:                                              ; preds = %106
  %113 = call i32 @get_bits1(i32* %13)
  store i32 %113, i32* %25, align 4
  %114 = call i32 @get_bits1(i32* %13)
  store i32 %114, i32* %28, align 4
  %115 = call i32 @get_bits1(i32* %13)
  store i32 %115, i32* %26, align 4
  %116 = call i32 @skip_bits1(i32* %13)
  %117 = call i32 @get_bits(i32* %13, i32 12)
  %118 = mul nsw i32 %117, 2
  store i32 %118, i32* %27, align 4
  %119 = load i32, i32* %18, align 4
  %120 = add i32 %119, 2
  store i32 %120, i32* %18, align 4
  %121 = load i32, i32* %25, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %141

123:                                              ; preds = %112
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @AV_CODEC_ID_MLP, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %123
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 4
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = load i32, i32* @AV_LOG_ERROR, align 4
  %136 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %134, i32 %135, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %506

137:                                              ; preds = %123
  %138 = call i32 @skip_bits(i32* %13, i32 16)
  %139 = load i32, i32* %18, align 4
  %140 = add i32 %139, 2
  store i32 %140, i32* %18, align 4
  br label %141

141:                                              ; preds = %137, %112
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* %18, align 4
  %145 = add i32 %143, %144
  %146 = icmp ult i32 %142, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 4
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %149, align 8
  %151 = load i32, i32* @AV_LOG_ERROR, align 4
  %152 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %150, i32 %151, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %506

153:                                              ; preds = %141
  %154 = load i32, i32* %28, align 4
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = xor i32 %154, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %153
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 4
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %162, align 8
  %164 = load i32, i32* @AV_LOG_ERROR, align 4
  %165 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %163, i32 %164, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %506

166:                                              ; preds = %153
  %167 = load i32, i32* %27, align 4
  %168 = load i32, i32* %17, align 4
  %169 = add i32 %167, %168
  %170 = load i32, i32* %18, align 4
  %171 = add i32 %169, %170
  %172 = load i32, i32* %14, align 4
  %173 = icmp ugt i32 %171, %172
  br i1 %173, label %174, label %186

174:                                              ; preds = %166
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 4
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %176, align 8
  %178 = load i32, i32* @AV_LOG_ERROR, align 4
  %179 = load i32, i32* %15, align 4
  %180 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %177, i32 %178, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 %179)
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* %17, align 4
  %183 = sub i32 %181, %182
  %184 = load i32, i32* %18, align 4
  %185 = sub i32 %183, %184
  store i32 %185, i32* %27, align 4
  br label %186

186:                                              ; preds = %174, %166
  %187 = load i32, i32* %27, align 4
  %188 = load i32, i32* %16, align 4
  %189 = icmp ult i32 %187, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %186
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %192 = load i32, i32* @AV_LOG_ERROR, align 4
  %193 = load i32, i32* %15, align 4
  %194 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %191, i32 %192, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.5, i64 0, i64 0), i32 %193)
  br label %506

195:                                              ; preds = %186
  %196 = load i32, i32* %15, align 4
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = icmp ugt i32 %196, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %195
  br label %214

202:                                              ; preds = %195
  %203 = load i32, i32* %26, align 4
  %204 = load i32, i32* %15, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %45, i64 %205
  store i32 %203, i32* %206, align 4
  %207 = load i32, i32* %27, align 4
  %208 = load i32, i32* %16, align 4
  %209 = sub i32 %207, %208
  %210 = load i32, i32* %15, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %48, i64 %211
  store i32 %209, i32* %212, align 4
  %213 = load i32, i32* %27, align 4
  store i32 %213, i32* %16, align 4
  br label %214

214:                                              ; preds = %202, %201
  %215 = load i32, i32* %15, align 4
  %216 = add i32 %215, 1
  store i32 %216, i32* %15, align 4
  br label %106

217:                                              ; preds = %106
  %218 = load i32*, i32** %10, align 8
  %219 = call i32 @ff_mlp_calculate_parity(i32* %218, i32 4)
  store i32 %219, i32* %22, align 4
  %220 = load i32*, i32** %10, align 8
  %221 = load i32, i32* %17, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %18, align 4
  %225 = call i32 @ff_mlp_calculate_parity(i32* %223, i32 %224)
  %226 = load i32, i32* %22, align 4
  %227 = xor i32 %226, %225
  store i32 %227, i32* %22, align 4
  %228 = load i32, i32* %22, align 4
  %229 = ashr i32 %228, 4
  %230 = load i32, i32* %22, align 4
  %231 = xor i32 %229, %230
  %232 = and i32 %231, 15
  %233 = icmp ne i32 %232, 15
  br i1 %233, label %234, label %238

234:                                              ; preds = %217
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %236 = load i32, i32* @AV_LOG_ERROR, align 4
  %237 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %235, i32 %236, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %506

238:                                              ; preds = %217
  %239 = load i32, i32* %17, align 4
  %240 = load i32, i32* %18, align 4
  %241 = add i32 %239, %240
  %242 = load i32*, i32** %10, align 8
  %243 = zext i32 %241 to i64
  %244 = getelementptr inbounds i32, i32* %242, i64 %243
  store i32* %244, i32** %10, align 8
  store i32 0, i32* %15, align 4
  br label %245

245:                                              ; preds = %482, %238
  %246 = load i32, i32* %15, align 4
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = icmp ule i32 %246, %249
  br i1 %250, label %251, label %485

251:                                              ; preds = %245
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 7
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %253, align 8
  %255 = load i32, i32* %15, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i64 %256
  store %struct.TYPE_13__* %257, %struct.TYPE_13__** %29, align 8
  %258 = load i32*, i32** %10, align 8
  %259 = load i32, i32* %15, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %48, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = mul nsw i32 %262, 8
  %264 = call i32 @init_get_bits(i32* %13, i32* %258, i32 %263)
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 6
  store i64 0, i64* %266, align 8
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @memset(i32 %269, i32 0, i32 4)
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 1
  store i64 0, i64* %272, align 8
  br label %273

273:                                              ; preds = %325, %251
  %274 = call i32 @get_bits1(i32* %13)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %302

276:                                              ; preds = %273
  %277 = call i32 @get_bits1(i32* %13)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %289

279:                                              ; preds = %276
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %281 = load i32*, i32** %10, align 8
  %282 = load i32, i32* %15, align 4
  %283 = call i64 @read_restart_header(%struct.TYPE_14__* %280, i32* %13, i32* %281, i32 %282)
  %284 = icmp slt i64 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %279
  br label %462

286:                                              ; preds = %279
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 0
  store i32 1, i32* %288, align 8
  br label %289

289:                                              ; preds = %286, %276
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %295, label %294

294:                                              ; preds = %289
  br label %462

295:                                              ; preds = %289
  %296 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %297 = load i32, i32* %15, align 4
  %298 = call i64 @read_decoding_params(%struct.TYPE_14__* %296, i32* %13, i32 %297)
  %299 = icmp slt i64 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %295
  br label %462

301:                                              ; preds = %295
  br label %302

302:                                              ; preds = %301, %273
  %303 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %308, label %307

307:                                              ; preds = %302
  br label %462

308:                                              ; preds = %302
  %309 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %310 = load i32, i32* %15, align 4
  %311 = call i32 @read_block_data(%struct.TYPE_14__* %309, i32* %13, i32 %310)
  store i32 %311, i32* %23, align 4
  %312 = icmp slt i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %308
  %314 = load i32, i32* %23, align 4
  store i32 %314, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %510

315:                                              ; preds = %308
  %316 = call i32 @get_bits_count(i32* %13)
  %317 = load i32, i32* %15, align 4
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %48, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = mul nsw i32 %320, 8
  %322 = icmp sge i32 %316, %321
  br i1 %322, label %323, label %324

323:                                              ; preds = %315
  br label %498

324:                                              ; preds = %315
  br label %325

325:                                              ; preds = %324
  %326 = call i32 @get_bits1(i32* %13)
  %327 = icmp ne i32 %326, 0
  %328 = xor i1 %327, true
  br i1 %328, label %273, label %329

329:                                              ; preds = %325
  %330 = call i32 @get_bits_count(i32* %13)
  %331 = sub nsw i32 0, %330
  %332 = and i32 %331, 15
  %333 = call i32 @skip_bits(i32* %13, i32 %332)
  %334 = load i32, i32* %15, align 4
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %48, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = mul nsw i32 %337, 8
  %339 = call i32 @get_bits_count(i32* %13)
  %340 = sub nsw i32 %338, %339
  %341 = icmp sge i32 %340, 32
  br i1 %341, label %342, label %398

342:                                              ; preds = %329
  %343 = call i32 @get_bits(i32* %13, i32 16)
  %344 = icmp ne i32 %343, 53812
  br i1 %344, label %345, label %347

345:                                              ; preds = %342
  %346 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %346, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %510

347:                                              ; preds = %342
  %348 = call i32 @get_bits(i32* %13, i32 16)
  store i32 %348, i32* %30, align 4
  %349 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 4
  %351 = load %struct.TYPE_16__*, %struct.TYPE_16__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = load i64, i64* @AV_CODEC_ID_TRUEHD, align 8
  %355 = icmp eq i64 %353, %354
  br i1 %355, label %356, label %371

356:                                              ; preds = %347
  %357 = load i32, i32* %30, align 4
  %358 = and i32 %357, 8192
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %371

360:                                              ; preds = %356
  %361 = load i32, i32* %30, align 4
  %362 = and i32 %361, 8191
  %363 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %364 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = call i64 @FFMIN(i32 %362, i64 %365)
  %367 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %368 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %367, i32 0, i32 1
  %369 = load i64, i64* %368, align 8
  %370 = sub nsw i64 %369, %366
  store i64 %370, i64* %368, align 8
  br label %385

371:                                              ; preds = %356, %347
  %372 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %373 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %372, i32 0, i32 4
  %374 = load %struct.TYPE_16__*, %struct.TYPE_16__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = load i64, i64* @AV_CODEC_ID_MLP, align 8
  %378 = icmp eq i64 %376, %377
  br i1 %378, label %379, label %384

379:                                              ; preds = %371
  %380 = load i32, i32* %30, align 4
  %381 = icmp ne i32 %380, 53812
  br i1 %381, label %382, label %384

382:                                              ; preds = %379
  %383 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %383, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %510

384:                                              ; preds = %379, %371
  br label %385

385:                                              ; preds = %384, %360
  %386 = load i32, i32* %15, align 4
  %387 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %388 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 8
  %390 = icmp eq i32 %386, %389
  br i1 %390, label %391, label %397

391:                                              ; preds = %385
  %392 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %393 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %392, i32 0, i32 4
  %394 = load %struct.TYPE_16__*, %struct.TYPE_16__** %393, align 8
  %395 = load i32, i32* @AV_LOG_INFO, align 4
  %396 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %394, i32 %395, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %397

397:                                              ; preds = %391, %385
  br label %398

398:                                              ; preds = %397, %329
  %399 = load i32, i32* %15, align 4
  %400 = zext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %45, i64 %400
  %402 = load i32, i32* %401, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %452

404:                                              ; preds = %398
  %405 = load i32, i32* %15, align 4
  %406 = zext i32 %405 to i64
  %407 = getelementptr inbounds i32, i32* %48, i64 %406
  %408 = load i32, i32* %407, align 4
  %409 = mul nsw i32 %408, 8
  %410 = call i32 @get_bits_count(i32* %13)
  %411 = sub nsw i32 %409, %410
  %412 = icmp ne i32 %411, 16
  br i1 %412, label %413, label %414

413:                                              ; preds = %404
  br label %498

414:                                              ; preds = %404
  %415 = load i32*, i32** %10, align 8
  %416 = load i32, i32* %15, align 4
  %417 = zext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %48, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = sub nsw i32 %419, 2
  %421 = call i32 @ff_mlp_calculate_parity(i32* %415, i32 %420)
  store i32 %421, i32* %31, align 4
  %422 = load i32*, i32** %10, align 8
  %423 = load i32, i32* %15, align 4
  %424 = zext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %48, i64 %424
  %426 = load i32, i32* %425, align 4
  %427 = sub nsw i32 %426, 2
  %428 = call i32 @ff_mlp_checksum8(i32* %422, i32 %427)
  store i32 %428, i32* %32, align 4
  %429 = call i32 @get_bits(i32* %13, i32 8)
  %430 = load i32, i32* %31, align 4
  %431 = xor i32 %429, %430
  %432 = icmp ne i32 %431, 169
  br i1 %432, label %433, label %440

433:                                              ; preds = %414
  %434 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %435 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %434, i32 0, i32 4
  %436 = load %struct.TYPE_16__*, %struct.TYPE_16__** %435, align 8
  %437 = load i32, i32* @AV_LOG_ERROR, align 4
  %438 = load i32, i32* %15, align 4
  %439 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %436, i32 %437, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %438)
  br label %440

440:                                              ; preds = %433, %414
  %441 = call i32 @get_bits(i32* %13, i32 8)
  %442 = load i32, i32* %32, align 4
  %443 = icmp ne i32 %441, %442
  br i1 %443, label %444, label %451

444:                                              ; preds = %440
  %445 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %446 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %445, i32 0, i32 4
  %447 = load %struct.TYPE_16__*, %struct.TYPE_16__** %446, align 8
  %448 = load i32, i32* @AV_LOG_ERROR, align 4
  %449 = load i32, i32* %15, align 4
  %450 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %447, i32 %448, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %449)
  br label %451

451:                                              ; preds = %444, %440
  br label %452

452:                                              ; preds = %451, %398
  %453 = load i32, i32* %15, align 4
  %454 = zext i32 %453 to i64
  %455 = getelementptr inbounds i32, i32* %48, i64 %454
  %456 = load i32, i32* %455, align 4
  %457 = mul nsw i32 %456, 8
  %458 = call i32 @get_bits_count(i32* %13)
  %459 = icmp ne i32 %457, %458
  br i1 %459, label %460, label %461

460:                                              ; preds = %452
  br label %498

461:                                              ; preds = %452
  br label %462

462:                                              ; preds = %461, %307, %300, %294, %285
  %463 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %464 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %474, label %467

467:                                              ; preds = %462
  %468 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %469 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %468, i32 0, i32 4
  %470 = load %struct.TYPE_16__*, %struct.TYPE_16__** %469, align 8
  %471 = load i32, i32* @AV_LOG_ERROR, align 4
  %472 = load i32, i32* %15, align 4
  %473 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %470, i32 %471, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 %472)
  br label %474

474:                                              ; preds = %467, %462
  %475 = load i32, i32* %15, align 4
  %476 = zext i32 %475 to i64
  %477 = getelementptr inbounds i32, i32* %48, i64 %476
  %478 = load i32, i32* %477, align 4
  %479 = load i32*, i32** %10, align 8
  %480 = sext i32 %478 to i64
  %481 = getelementptr inbounds i32, i32* %479, i64 %480
  store i32* %481, i32** %10, align 8
  br label %482

482:                                              ; preds = %474
  %483 = load i32, i32* %15, align 4
  %484 = add i32 %483, 1
  store i32 %484, i32* %15, align 4
  br label %245

485:                                              ; preds = %245
  %486 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %487 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %488 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %487, i32 0, i32 2
  %489 = load i32, i32* %488, align 8
  %490 = load i8*, i8** %7, align 8
  %491 = load i32*, i32** %8, align 8
  %492 = call i32 @output_data(%struct.TYPE_14__* %486, i32 %489, i8* %490, i32* %491)
  store i32 %492, i32* %23, align 4
  %493 = icmp slt i32 %492, 0
  br i1 %493, label %494, label %496

494:                                              ; preds = %485
  %495 = load i32, i32* %23, align 4
  store i32 %495, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %510

496:                                              ; preds = %485
  %497 = load i32, i32* %14, align 4
  store i32 %497, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %510

498:                                              ; preds = %460, %413, %323
  %499 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %500 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %499, i32 0, i32 4
  %501 = load %struct.TYPE_16__*, %struct.TYPE_16__** %500, align 8
  %502 = load i32, i32* @AV_LOG_ERROR, align 4
  %503 = load i32, i32* %15, align 4
  %504 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %501, i32 %502, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %503)
  %505 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %505, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %510

506:                                              ; preds = %234, %190, %160, %147, %131, %81
  %507 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %508 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %507, i32 0, i32 3
  store i64 0, i64* %508, align 8
  %509 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %509, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %510

510:                                              ; preds = %506, %498, %496, %494, %382, %345, %313, %97, %64, %51
  %511 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %511)
  %512 = load i32, i32* %5, align 4
  ret i32 %512
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @AV_RB16(i32*) #2

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #2

declare dso_local i32 @show_bits_long(i32*, i32) #2

declare dso_local i64 @read_major_sync(%struct.TYPE_14__*, i32*) #2

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, ...) #2

declare dso_local i32 @get_bits1(i32*) #2

declare dso_local i32 @skip_bits1(i32*) #2

declare dso_local i32 @get_bits(i32*, i32) #2

declare dso_local i32 @skip_bits(i32*, i32) #2

declare dso_local i32 @ff_mlp_calculate_parity(i32*, i32) #2

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local i64 @read_restart_header(%struct.TYPE_14__*, i32*, i32*, i32) #2

declare dso_local i64 @read_decoding_params(%struct.TYPE_14__*, i32*, i32) #2

declare dso_local i32 @read_block_data(%struct.TYPE_14__*, i32*, i32) #2

declare dso_local i32 @get_bits_count(i32*) #2

declare dso_local i64 @FFMIN(i32, i64) #2

declare dso_local i32 @ff_mlp_checksum8(i32*, i32) #2

declare dso_local i32 @output_data(%struct.TYPE_14__*, i32, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
