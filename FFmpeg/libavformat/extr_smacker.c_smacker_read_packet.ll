; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_smacker.c_smacker_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_smacker.c_smacker_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i32, i32, i32*, i32*, i8**, i8***, i64*, i64*, i64*, i64, i64* }
%struct.TYPE_9__ = type { i32*, i64, i64, i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@SMACKER_PAL = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Invalid palette update, offset=%d length=%d extends beyond palette size\0A\00", align 1
@smk_pal = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid audio part size\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*)* @smacker_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smacker_read_packet(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8**, align 8
  %19 = alloca [768 x i8*], align 16
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @avio_feof(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %2
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp uge i64 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30, %2
  %39 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %39, i32* %3, align 4
  br label %561

40:                                               ; preds = %30
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %441

45:                                               ; preds = %40
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @avio_seek(i32 %48, i32 %51, i32 0)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, -4
  store i32 %61, i32* %10, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 5
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @SMACKER_PAL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %234

74:                                               ; preds = %45
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 6
  %77 = load i8**, i8*** %76, align 8
  store i8** %77, i8*** %18, align 8
  %78 = getelementptr inbounds [768 x i8*], [768 x i8*]* %19, i64 0, i64 0
  %79 = load i8**, i8*** %18, align 8
  %80 = call i32 @memcpy(i8** %78, i8** %79, i32 768)
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @avio_r8(i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = mul nsw i32 %85, 4
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  %90 = load i32, i32* %10, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %74
  %93 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %93, i32* %3, align 4
  br label %561

94:                                               ; preds = %74
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %10, align 4
  %97 = sub nsw i32 %96, %95
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @avio_tell(i32 %102)
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %103, %104
  store i32 %105, i32* %17, align 4
  br label %106

106:                                              ; preds = %225, %94
  %107 = load i32, i32* %13, align 4
  %108 = icmp slt i32 %107, 256
  br i1 %108, label %109, label %226

109:                                              ; preds = %106
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @avio_r8(i32 %112)
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = and i32 %114, 128
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %109
  %118 = load i32, i32* %14, align 4
  %119 = and i32 %118, 127
  %120 = add nsw i32 %119, 1
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %14, align 4
  %124 = and i32 %123, 127
  %125 = add nsw i32 %124, 1
  %126 = mul nsw i32 %125, 3
  %127 = load i8**, i8*** %18, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8*, i8** %127, i64 %128
  store i8** %129, i8*** %18, align 8
  br label %225

130:                                              ; preds = %109
  %131 = load i32, i32* %14, align 4
  %132 = and i32 %131, 64
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %192

134:                                              ; preds = %130
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @avio_r8(i32 %137)
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* %14, align 4
  %140 = and i32 %139, 63
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %16, align 4
  %144 = add nsw i32 %142, %143
  %145 = icmp sgt i32 %144, 256
  br i1 %145, label %146, label %153

146:                                              ; preds = %134
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %148 = load i32, i32* @AV_LOG_ERROR, align 4
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %16, align 4
  %151 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %147, i32 %148, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %149, i32 %150)
  %152 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %152, i32* %3, align 4
  br label %561

153:                                              ; preds = %134
  %154 = load i32, i32* %15, align 4
  %155 = mul nsw i32 %154, 3
  store i32 %155, i32* %15, align 4
  br label %156

156:                                              ; preds = %165, %153
  %157 = load i32, i32* %16, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %16, align 4
  %159 = icmp ne i32 %157, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load i32, i32* %13, align 4
  %162 = icmp slt i32 %161, 256
  br label %163

163:                                              ; preds = %160, %156
  %164 = phi i1 [ false, %156 ], [ %162, %160 ]
  br i1 %164, label %165, label %191

165:                                              ; preds = %163
  %166 = load i32, i32* %15, align 4
  %167 = add nsw i32 %166, 0
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [768 x i8*], [768 x i8*]* %19, i64 0, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = load i8**, i8*** %18, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i32 1
  store i8** %172, i8*** %18, align 8
  store i8* %170, i8** %171, align 8
  %173 = load i32, i32* %15, align 4
  %174 = add nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [768 x i8*], [768 x i8*]* %19, i64 0, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = load i8**, i8*** %18, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i32 1
  store i8** %179, i8*** %18, align 8
  store i8* %177, i8** %178, align 8
  %180 = load i32, i32* %15, align 4
  %181 = add nsw i32 %180, 2
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [768 x i8*], [768 x i8*]* %19, i64 0, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = load i8**, i8*** %18, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i32 1
  store i8** %186, i8*** %18, align 8
  store i8* %184, i8** %185, align 8
  %187 = load i32, i32* %13, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %13, align 4
  %189 = load i32, i32* %15, align 4
  %190 = add nsw i32 %189, 3
  store i32 %190, i32* %15, align 4
  br label %156

191:                                              ; preds = %163
  br label %224

192:                                              ; preds = %130
  %193 = load i8**, i8*** @smk_pal, align 8
  %194 = load i32, i32* %14, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %193, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = load i8**, i8*** %18, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i32 1
  store i8** %199, i8*** %18, align 8
  store i8* %197, i8** %198, align 8
  %200 = load i8**, i8*** @smk_pal, align 8
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @avio_r8(i32 %203)
  %205 = and i32 %204, 63
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8*, i8** %200, i64 %206
  %208 = load i8*, i8** %207, align 8
  %209 = load i8**, i8*** %18, align 8
  %210 = getelementptr inbounds i8*, i8** %209, i32 1
  store i8** %210, i8*** %18, align 8
  store i8* %208, i8** %209, align 8
  %211 = load i8**, i8*** @smk_pal, align 8
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @avio_r8(i32 %214)
  %216 = and i32 %215, 63
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8*, i8** %211, i64 %217
  %219 = load i8*, i8** %218, align 8
  %220 = load i8**, i8*** %18, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i32 1
  store i8** %221, i8*** %18, align 8
  store i8* %219, i8** %220, align 8
  %222 = load i32, i32* %13, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %13, align 4
  br label %224

224:                                              ; preds = %192, %191
  br label %225

225:                                              ; preds = %224, %117
  br label %106

226:                                              ; preds = %106
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %17, align 4
  %231 = call i32 @avio_seek(i32 %229, i32 %230, i32 0)
  %232 = load i32, i32* %11, align 4
  %233 = or i32 %232, 1
  store i32 %233, i32* %11, align 4
  br label %234

234:                                              ; preds = %226, %45
  %235 = load i32, i32* %7, align 4
  %236 = ashr i32 %235, 1
  store i32 %236, i32* %7, align 4
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 2
  store i32 -1, i32* %238, align 8
  store i32 0, i32* %9, align 4
  br label %239

239:                                              ; preds = %349, %234
  %240 = load i32, i32* %9, align 4
  %241 = icmp slt i32 %240, 7
  br i1 %241, label %242, label %352

242:                                              ; preds = %239
  %243 = load i32, i32* %7, align 4
  %244 = and i32 %243, 1
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %346

246:                                              ; preds = %242
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i64 @avio_rl32(i32 %249)
  %251 = sub nsw i64 %250, 4
  store i64 %251, i64* %20, align 8
  %252 = load i64, i64* %20, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %246
  %255 = load i64, i64* %20, align 8
  %256 = add nsw i64 %255, 4
  %257 = load i32, i32* %10, align 4
  %258 = sext i32 %257 to i64
  %259 = icmp sgt i64 %256, %258
  br i1 %259, label %260, label %265

260:                                              ; preds = %254, %246
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %262 = load i32, i32* @AV_LOG_ERROR, align 4
  %263 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %261, i32 %262, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %264 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %264, i32* %3, align 4
  br label %561

265:                                              ; preds = %254
  %266 = load i64, i64* %20, align 8
  %267 = load i32, i32* %10, align 4
  %268 = sext i32 %267 to i64
  %269 = sub nsw i64 %268, %266
  %270 = trunc i64 %269 to i32
  store i32 %270, i32* %10, align 4
  %271 = load i32, i32* %10, align 4
  %272 = sub nsw i32 %271, 4
  store i32 %272, i32* %10, align 4
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %274, align 8
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 7
  %279 = load i8***, i8**** %278, align 8
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i8**, i8*** %279, i64 %283
  %285 = load i64, i64* %20, align 8
  %286 = call i32 @av_reallocp(i8*** %284, i64 %285)
  store i32 %286, i32* %21, align 4
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %288, label %298

288:                                              ; preds = %265
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 8
  %291 = load i64*, i64** %290, align 8
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i64, i64* %291, i64 %295
  store i64 0, i64* %296, align 8
  %297 = load i32, i32* %21, align 4
  store i32 %297, i32* %3, align 4
  br label %561

298:                                              ; preds = %265
  %299 = load i64, i64* %20, align 8
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 8
  %302 = load i64*, i64** %301, align 8
  %303 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i64, i64* %302, i64 %306
  store i64 %299, i64* %307, align 8
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 7
  %313 = load i8***, i8**** %312, align 8
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i8**, i8*** %313, i64 %317
  %319 = load i8**, i8*** %318, align 8
  %320 = load i64, i64* %20, align 8
  %321 = trunc i64 %320 to i32
  %322 = call i32 @avio_read(i32 %310, i8** %319, i32 %321)
  store i32 %322, i32* %8, align 4
  %323 = load i32, i32* %8, align 4
  %324 = sext i32 %323 to i64
  %325 = load i64, i64* %20, align 8
  %326 = icmp ne i64 %324, %325
  br i1 %326, label %327, label %330

327:                                              ; preds = %298
  %328 = load i32, i32* @EIO, align 4
  %329 = call i32 @AVERROR(i32 %328)
  store i32 %329, i32* %3, align 4
  br label %561

330:                                              ; preds = %298
  %331 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i32 0, i32 10
  %333 = load i64*, i64** %332, align 8
  %334 = load i32, i32* %9, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i64, i64* %333, i64 %335
  %337 = load i64, i64* %336, align 8
  %338 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 9
  %340 = load i64*, i64** %339, align 8
  %341 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i64, i64* %340, i64 %344
  store i64 %337, i64* %345, align 8
  br label %346

346:                                              ; preds = %330, %242
  %347 = load i32, i32* %7, align 4
  %348 = ashr i32 %347, 1
  store i32 %348, i32* %7, align 4
  br label %349

349:                                              ; preds = %346
  %350 = load i32, i32* %9, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %9, align 4
  br label %239

352:                                              ; preds = %239
  %353 = load i32, i32* %10, align 4
  %354 = icmp slt i32 %353, 0
  br i1 %354, label %360, label %355

355:                                              ; preds = %352
  %356 = load i32, i32* %10, align 4
  %357 = load i32, i32* @INT_MAX, align 4
  %358 = sdiv i32 %357, 2
  %359 = icmp sge i32 %356, %358
  br i1 %359, label %360, label %362

360:                                              ; preds = %355, %352
  %361 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %361, i32* %3, align 4
  br label %561

362:                                              ; preds = %355
  %363 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %364 = load i32, i32* %10, align 4
  %365 = add nsw i32 %364, 769
  %366 = call i64 @av_new_packet(%struct.TYPE_9__* %363, i32 %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %371

368:                                              ; preds = %362
  %369 = load i32, i32* @ENOMEM, align 4
  %370 = call i32 @AVERROR(i32 %369)
  store i32 %370, i32* %3, align 4
  br label %561

371:                                              ; preds = %362
  %372 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %372, i32 0, i32 4
  %374 = load i32*, i32** %373, align 8
  %375 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = getelementptr inbounds i32, i32* %374, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = and i32 %379, 1
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %385

382:                                              ; preds = %371
  %383 = load i32, i32* %11, align 4
  %384 = or i32 %383, 2
  store i32 %384, i32* %11, align 4
  br label %385

385:                                              ; preds = %382, %371
  %386 = load i32, i32* %11, align 4
  %387 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %387, i32 0, i32 0
  %389 = load i32*, i32** %388, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 0
  store i32 %386, i32* %390, align 4
  %391 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %392 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %391, i32 0, i32 0
  %393 = load i32*, i32** %392, align 8
  %394 = getelementptr inbounds i32, i32* %393, i64 1
  %395 = bitcast i32* %394 to i8**
  %396 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %396, i32 0, i32 6
  %398 = load i8**, i8*** %397, align 8
  %399 = call i32 @memcpy(i8** %395, i8** %398, i32 768)
  %400 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %403, i32 0, i32 0
  %405 = load i32*, i32** %404, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 769
  %407 = bitcast i32* %406 to i8**
  %408 = load i32, i32* %10, align 4
  %409 = call i32 @avio_read(i32 %402, i8** %407, i32 %408)
  store i32 %409, i32* %8, align 4
  %410 = load i32, i32* %8, align 4
  %411 = load i32, i32* %10, align 4
  %412 = icmp ne i32 %410, %411
  br i1 %412, label %413, label %416

413:                                              ; preds = %385
  %414 = load i32, i32* @EIO, align 4
  %415 = call i32 @AVERROR(i32 %414)
  store i32 %415, i32* %3, align 4
  br label %561

416:                                              ; preds = %385
  %417 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i32 0, i32 11
  %419 = load i64, i64* %418, align 8
  %420 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %421 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %420, i32 0, i32 1
  store i64 %419, i64* %421, align 8
  %422 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %423 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %426 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %425, i32 0, i32 2
  store i64 %424, i64* %426, align 8
  %427 = load i32, i32* %8, align 4
  %428 = add nsw i32 %427, 769
  %429 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %430 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %429, i32 0, i32 3
  store i32 %428, i32* %430, align 8
  %431 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %432 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %431, i32 0, i32 0
  %433 = load i64, i64* %432, align 8
  %434 = add i64 %433, 1
  store i64 %434, i64* %432, align 8
  %435 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %436 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = call i32 @avio_tell(i32 %437)
  %439 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %440 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %439, i32 0, i32 3
  store i32 %438, i32* %440, align 4
  br label %560

441:                                              ; preds = %40
  %442 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %443 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %442, i32 0, i32 9
  %444 = load i64*, i64** %443, align 8
  %445 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %446 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %445, i32 0, i32 2
  %447 = load i32, i32* %446, align 8
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i64, i64* %444, i64 %448
  %450 = load i64, i64* %449, align 8
  %451 = icmp slt i64 %450, 0
  br i1 %451, label %463, label %452

452:                                              ; preds = %441
  %453 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %454 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %453, i32 0, i32 7
  %455 = load i8***, i8**** %454, align 8
  %456 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %457 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %456, i32 0, i32 2
  %458 = load i32, i32* %457, align 8
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i8**, i8*** %455, i64 %459
  %461 = load i8**, i8*** %460, align 8
  %462 = icmp ne i8** %461, null
  br i1 %462, label %465, label %463

463:                                              ; preds = %452, %441
  %464 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %464, i32* %3, align 4
  br label %561

465:                                              ; preds = %452
  %466 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %467 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %468 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %467, i32 0, i32 8
  %469 = load i64*, i64** %468, align 8
  %470 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %471 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %470, i32 0, i32 2
  %472 = load i32, i32* %471, align 8
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i64, i64* %469, i64 %473
  %475 = load i64, i64* %474, align 8
  %476 = trunc i64 %475 to i32
  %477 = call i64 @av_new_packet(%struct.TYPE_9__* %466, i32 %476)
  %478 = icmp ne i64 %477, 0
  br i1 %478, label %479, label %482

479:                                              ; preds = %465
  %480 = load i32, i32* @ENOMEM, align 4
  %481 = call i32 @AVERROR(i32 %480)
  store i32 %481, i32* %3, align 4
  br label %561

482:                                              ; preds = %465
  %483 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %484 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %483, i32 0, i32 0
  %485 = load i32*, i32** %484, align 8
  %486 = bitcast i32* %485 to i8**
  %487 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %488 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %487, i32 0, i32 7
  %489 = load i8***, i8**** %488, align 8
  %490 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %491 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %490, i32 0, i32 2
  %492 = load i32, i32* %491, align 8
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i8**, i8*** %489, i64 %493
  %495 = load i8**, i8*** %494, align 8
  %496 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %497 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %496, i32 0, i32 8
  %498 = load i64*, i64** %497, align 8
  %499 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %500 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %499, i32 0, i32 2
  %501 = load i32, i32* %500, align 8
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i64, i64* %498, i64 %502
  %504 = load i64, i64* %503, align 8
  %505 = trunc i64 %504 to i32
  %506 = call i32 @memcpy(i8** %486, i8** %495, i32 %505)
  %507 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %508 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %507, i32 0, i32 8
  %509 = load i64*, i64** %508, align 8
  %510 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %511 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %510, i32 0, i32 2
  %512 = load i32, i32* %511, align 8
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i64, i64* %509, i64 %513
  %515 = load i64, i64* %514, align 8
  %516 = trunc i64 %515 to i32
  %517 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %518 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %517, i32 0, i32 3
  store i32 %516, i32* %518, align 8
  %519 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %520 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %519, i32 0, i32 9
  %521 = load i64*, i64** %520, align 8
  %522 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %523 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %522, i32 0, i32 2
  %524 = load i32, i32* %523, align 8
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i64, i64* %521, i64 %525
  %527 = load i64, i64* %526, align 8
  %528 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %529 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %528, i32 0, i32 1
  store i64 %527, i64* %529, align 8
  %530 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %531 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %530, i32 0, i32 12
  %532 = load i64*, i64** %531, align 8
  %533 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %534 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %533, i32 0, i32 2
  %535 = load i32, i32* %534, align 8
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds i64, i64* %532, i64 %536
  %538 = load i64, i64* %537, align 8
  %539 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %540 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %539, i32 0, i32 2
  store i64 %538, i64* %540, align 8
  %541 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %542 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %541, i32 0, i32 0
  %543 = load i32*, i32** %542, align 8
  %544 = bitcast i32* %543 to i8**
  %545 = call i64 @AV_RL32(i8** %544)
  %546 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %547 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %546, i32 0, i32 12
  %548 = load i64*, i64** %547, align 8
  %549 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %550 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %549, i32 0, i32 2
  %551 = load i32, i32* %550, align 8
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i64, i64* %548, i64 %552
  %554 = load i64, i64* %553, align 8
  %555 = add i64 %554, %545
  store i64 %555, i64* %553, align 8
  %556 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %557 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %556, i32 0, i32 2
  %558 = load i32, i32* %557, align 8
  %559 = add nsw i32 %558, -1
  store i32 %559, i32* %557, align 8
  br label %560

560:                                              ; preds = %482, %416
  store i32 0, i32* %3, align 4
  br label %561

561:                                              ; preds = %560, %479, %463, %413, %368, %360, %327, %288, %260, %146, %92, %38
  %562 = load i32, i32* %3, align 4
  ret i32 %562
}

declare dso_local i64 @avio_feof(i32) #1

declare dso_local i32 @avio_seek(i32, i32, i32) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

declare dso_local i32 @avio_r8(i32) #1

declare dso_local i32 @avio_tell(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i64 @avio_rl32(i32) #1

declare dso_local i32 @av_reallocp(i8***, i64) #1

declare dso_local i32 @avio_read(i32, i8**, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @av_new_packet(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @AV_RL32(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
