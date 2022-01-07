; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vqavideo.c_decode_format80.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vqavideo.c_decode_format80.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Chunk size %d is out of range\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"opcode %02X: \00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"decode_format80 problem: dest_index (%d) exceeded dest_size (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"(1) copy %X bytes from absolute pos %X\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"(2) set %X bytes to %02X\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"(3) copy %X bytes from absolute pos %X\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"(4) copy %X bytes from source to dest\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"(5) copy %X bytes from relpos %X\0A\00", align 1
@.str.8 = private unnamed_addr constant [80 x i8] c"decode_format80 problem: decode finished with dest_index (%d) < dest_size (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i8*, i32, i32)* @decode_format80 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_format80(%struct.TYPE_3__* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = call i32 @bytestream2_get_bytes_left(i32* %24)
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21, %5
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AV_LOG_ERROR, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 (i32, i32, i8*, i32, ...) @av_log(i32 %30, i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %34, i32* %6, align 4
  br label %292

35:                                               ; preds = %21
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = call i32 @bytestream2_tell(i32* %37)
  store i32 %38, i32* %15, align 4
  br label %39

39:                                               ; preds = %266, %35
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = call i32 @bytestream2_tell(i32* %41)
  %43 = load i32, i32* %15, align 4
  %44 = sub nsw i32 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %267

47:                                               ; preds = %39
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = call i32 @bytestream2_get_byte(i32* %49)
  store i32 %50, i32* %14, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %14, align 4
  %55 = call i32 (i32, i8*, i32, ...) @ff_tlog(i32 %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %14, align 4
  %57 = icmp eq i32 %56, 128
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %267

59:                                               ; preds = %47
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @AV_LOG_ERROR, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 (i32, i32, i8*, i32, ...) @av_log(i32 %66, i32 %67, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %71, i32* %6, align 4
  br label %292

72:                                               ; preds = %59
  %73 = load i32, i32* %14, align 4
  %74 = icmp eq i32 %73, 255
  br i1 %74, label %75, label %116

75:                                               ; preds = %72
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = call i32 @bytestream2_get_le16(i32* %77)
  store i32 %78, i32* %13, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = call i32 @bytestream2_get_le16(i32* %80)
  store i32 %81, i32* %16, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %16, align 4
  %87 = call i32 (i32, i8*, i32, ...) @ff_tlog(i32 %84, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %85, i32 %86)
  %88 = call i32 (...) @CHECK_COUNT()
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @CHECK_COPY(i32 %89)
  store i32 0, i32* %18, align 4
  br label %91

91:                                               ; preds = %109, %75
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %112

95:                                               ; preds = %91
  %96 = load i8*, i8** %9, align 8
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %18, align 4
  %99 = add nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %96, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = load i8*, i8** %9, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %18, align 4
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %103, i64 %107
  store i8 %102, i8* %108, align 1
  br label %109

109:                                              ; preds = %95
  %110 = load i32, i32* %18, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %18, align 4
  br label %91

112:                                              ; preds = %91
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %12, align 4
  br label %266

116:                                              ; preds = %72
  %117 = load i32, i32* %14, align 4
  %118 = icmp eq i32 %117, 254
  br i1 %118, label %119, label %145

119:                                              ; preds = %116
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = call i32 @bytestream2_get_le16(i32* %121)
  store i32 %122, i32* %13, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = call i32 @bytestream2_get_byte(i32* %124)
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %17, align 1
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %13, align 4
  %131 = load i8, i8* %17, align 1
  %132 = zext i8 %131 to i32
  %133 = call i32 (i32, i8*, i32, ...) @ff_tlog(i32 %129, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %130, i32 %132)
  %134 = call i32 (...) @CHECK_COUNT()
  %135 = load i8*, i8** %9, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i8, i8* %17, align 1
  %140 = load i32, i32* %13, align 4
  %141 = call i32 @memset(i8* %138, i8 zeroext %139, i32 %140)
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %12, align 4
  br label %265

145:                                              ; preds = %116
  %146 = load i32, i32* %14, align 4
  %147 = and i32 %146, 192
  %148 = icmp eq i32 %147, 192
  br i1 %148, label %149, label %190

149:                                              ; preds = %145
  %150 = load i32, i32* %14, align 4
  %151 = and i32 %150, 63
  %152 = add nsw i32 %151, 3
  store i32 %152, i32* %13, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 1
  %155 = call i32 @bytestream2_get_le16(i32* %154)
  store i32 %155, i32* %16, align 4
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %16, align 4
  %161 = call i32 (i32, i8*, i32, ...) @ff_tlog(i32 %158, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %159, i32 %160)
  %162 = call i32 (...) @CHECK_COUNT()
  %163 = load i32, i32* %16, align 4
  %164 = call i32 @CHECK_COPY(i32 %163)
  store i32 0, i32* %18, align 4
  br label %165

165:                                              ; preds = %183, %149
  %166 = load i32, i32* %18, align 4
  %167 = load i32, i32* %13, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %186

169:                                              ; preds = %165
  %170 = load i8*, i8** %9, align 8
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* %18, align 4
  %173 = add nsw i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %170, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = load i8*, i8** %9, align 8
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %18, align 4
  %180 = add nsw i32 %178, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %177, i64 %181
  store i8 %176, i8* %182, align 1
  br label %183

183:                                              ; preds = %169
  %184 = load i32, i32* %18, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %18, align 4
  br label %165

186:                                              ; preds = %165
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %188, %187
  store i32 %189, i32* %12, align 4
  br label %264

190:                                              ; preds = %145
  %191 = load i32, i32* %14, align 4
  %192 = icmp sgt i32 %191, 128
  br i1 %192, label %193, label %213

193:                                              ; preds = %190
  %194 = load i32, i32* %14, align 4
  %195 = and i32 %194, 63
  store i32 %195, i32* %13, align 4
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %13, align 4
  %200 = call i32 (i32, i8*, i32, ...) @ff_tlog(i32 %198, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %199)
  %201 = call i32 (...) @CHECK_COUNT()
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 1
  %204 = load i8*, i8** %9, align 8
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %204, i64 %206
  %208 = load i32, i32* %13, align 4
  %209 = call i32 @bytestream2_get_buffer(i32* %203, i8* %207, i32 %208)
  %210 = load i32, i32* %13, align 4
  %211 = load i32, i32* %12, align 4
  %212 = add nsw i32 %211, %210
  store i32 %212, i32* %12, align 4
  br label %263

213:                                              ; preds = %190
  %214 = load i32, i32* %14, align 4
  %215 = and i32 %214, 112
  %216 = ashr i32 %215, 4
  %217 = add nsw i32 %216, 3
  store i32 %217, i32* %13, align 4
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 1
  %220 = call i32 @bytestream2_get_byte(i32* %219)
  %221 = load i32, i32* %14, align 4
  %222 = and i32 %221, 15
  %223 = shl i32 %222, 8
  %224 = or i32 %220, %223
  store i32 %224, i32* %16, align 4
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %13, align 4
  %229 = load i32, i32* %16, align 4
  %230 = call i32 (i32, i8*, i32, ...) @ff_tlog(i32 %227, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %228, i32 %229)
  %231 = call i32 (...) @CHECK_COUNT()
  %232 = load i32, i32* %12, align 4
  %233 = load i32, i32* %16, align 4
  %234 = sub nsw i32 %232, %233
  %235 = call i32 @CHECK_COPY(i32 %234)
  store i32 0, i32* %18, align 4
  br label %236

236:                                              ; preds = %256, %213
  %237 = load i32, i32* %18, align 4
  %238 = load i32, i32* %13, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %259

240:                                              ; preds = %236
  %241 = load i8*, i8** %9, align 8
  %242 = load i32, i32* %12, align 4
  %243 = load i32, i32* %16, align 4
  %244 = sub nsw i32 %242, %243
  %245 = load i32, i32* %18, align 4
  %246 = add nsw i32 %244, %245
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* %241, i64 %247
  %249 = load i8, i8* %248, align 1
  %250 = load i8*, i8** %9, align 8
  %251 = load i32, i32* %12, align 4
  %252 = load i32, i32* %18, align 4
  %253 = add nsw i32 %251, %252
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8, i8* %250, i64 %254
  store i8 %249, i8* %255, align 1
  br label %256

256:                                              ; preds = %240
  %257 = load i32, i32* %18, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %18, align 4
  br label %236

259:                                              ; preds = %236
  %260 = load i32, i32* %13, align 4
  %261 = load i32, i32* %12, align 4
  %262 = add nsw i32 %261, %260
  store i32 %262, i32* %12, align 4
  br label %263

263:                                              ; preds = %259, %193
  br label %264

264:                                              ; preds = %263, %186
  br label %265

265:                                              ; preds = %264, %119
  br label %266

266:                                              ; preds = %265, %112
  br label %39

267:                                              ; preds = %58, %39
  %268 = load i32, i32* %11, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %291

270:                                              ; preds = %267
  %271 = load i32, i32* %12, align 4
  %272 = load i32, i32* %10, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %290

274:                                              ; preds = %270
  %275 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @AV_LOG_ERROR, align 4
  %279 = load i32, i32* %12, align 4
  %280 = load i32, i32* %10, align 4
  %281 = call i32 (i32, i32, i8*, i32, ...) @av_log(i32 %277, i32 %278, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.8, i64 0, i64 0), i32 %279, i32 %280)
  %282 = load i8*, i8** %9, align 8
  %283 = load i32, i32* %12, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i8, i8* %282, i64 %284
  %286 = load i32, i32* %10, align 4
  %287 = load i32, i32* %12, align 4
  %288 = sub nsw i32 %286, %287
  %289 = call i32 @memset(i8* %285, i8 zeroext 0, i32 %288)
  br label %290

290:                                              ; preds = %274, %270
  br label %291

291:                                              ; preds = %290, %267
  store i32 0, i32* %6, align 4
  br label %292

292:                                              ; preds = %291, %63, %27
  %293 = load i32, i32* %6, align 4
  ret i32 %293
}

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @bytestream2_tell(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @ff_tlog(i32, i8*, i32, ...) #1

declare dso_local i32 @bytestream2_get_le16(i32*) #1

declare dso_local i32 @CHECK_COUNT(...) #1

declare dso_local i32 @CHECK_COPY(i32) #1

declare dso_local i32 @memset(i8*, i8 zeroext, i32) #1

declare dso_local i32 @bytestream2_get_buffer(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
