; ModuleID = '/home/carl/AnghaBench/darwin-xnu/SETUP/kextsymboltool/extr_kextsymboltool.c_store_symbols.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/SETUP/kextsymboltool/extr_kextsymboltool.c_store_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i8*, i32, i8*, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"bad format in symbol line: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"option too long in symbol line: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"obsolete\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"symbol[%d/%d] overflow: %s\0A\00", align 1
@kObsolete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.symbol*, i32, i32)* @store_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_symbols(i8* %0, i64 %1, %struct.symbol* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.symbol*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca [256 x i8], align 16
  %26 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.symbol* %2, %struct.symbol** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %15, align 4
  %27 = load i8*, i8** %6, align 8
  store i8* %27, i8** %11, align 8
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %12, align 8
  br label %29

29:                                               ; preds = %380, %5
  br i1 true, label %30, label %383

30:                                               ; preds = %29
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i32 0, i32* %18, align 4
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i32 0, i32* %21, align 4
  store i8* null, i8** %22, align 8
  store i8* null, i8** %23, align 8
  store i32 0, i32* %24, align 4
  store i64 0, i64* %26, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sub nsw i64 %32, %37
  %39 = call i8* @memchr(i8* %31, i8 signext 10, i64 %38)
  store i8* %39, i8** %13, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %383

43:                                               ; preds = %30
  %44 = load i8*, i8** %13, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8* %45, i8** %14, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = icmp eq i8* %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %380

50:                                               ; preds = %43
  %51 = load i8*, i8** %13, align 8
  store i8 0, i8* %51, align 1
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 35
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %380

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %71, %58
  %60 = load i8*, i8** %11, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = icmp ult i8* %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i8*, i8** %11, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @issymchar(i8 signext %65)
  %67 = icmp ne i64 %66, 0
  %68 = xor i1 %67, true
  br label %69

69:                                               ; preds = %63, %59
  %70 = phi i1 [ false, %59 ], [ %68, %63 ]
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  %72 = load i8*, i8** %11, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %11, align 8
  br label %59

74:                                               ; preds = %69
  %75 = load i8*, i8** %11, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = icmp eq i8* %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %380

79:                                               ; preds = %74
  %80 = load i8*, i8** %11, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 46
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %380

86:                                               ; preds = %79
  %87 = load i8*, i8** %11, align 8
  store i8* %87, i8** %16, align 8
  br label %88

88:                                               ; preds = %100, %86
  %89 = load i8*, i8** %11, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i8*, i8** %11, align 8
  %95 = load i8, i8* %94, align 1
  %96 = call i64 @issymchar(i8 signext %95)
  %97 = icmp ne i64 %96, 0
  br label %98

98:                                               ; preds = %93, %88
  %99 = phi i1 [ false, %88 ], [ %97, %93 ]
  br i1 %99, label %100, label %103

100:                                              ; preds = %98
  %101 = load i8*, i8** %11, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %11, align 8
  br label %88

103:                                              ; preds = %98
  %104 = load i8*, i8** %11, align 8
  store i8* %104, i8** %17, align 8
  %105 = load i8*, i8** %17, align 8
  %106 = load i8*, i8** %16, align 8
  %107 = ptrtoint i8* %105 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  %110 = add nsw i64 %109, 1
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %18, align 4
  %112 = load i8*, i8** %11, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %215

116:                                              ; preds = %103
  br label %117

117:                                              ; preds = %129, %116
  %118 = load i8*, i8** %11, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load i8*, i8** %11, align 8
  %124 = load i8, i8* %123, align 1
  %125 = call i64 @iswhitespace(i8 signext %124)
  %126 = icmp ne i64 %125, 0
  br label %127

127:                                              ; preds = %122, %117
  %128 = phi i1 [ false, %117 ], [ %126, %122 ]
  br i1 %128, label %129, label %132

129:                                              ; preds = %127
  %130 = load i8*, i8** %11, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %11, align 8
  br label %117

132:                                              ; preds = %127
  %133 = load i8*, i8** %11, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 58
  br i1 %136, label %137, label %198

137:                                              ; preds = %132
  %138 = load i8*, i8** %11, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %11, align 8
  br label %140

140:                                              ; preds = %152, %137
  %141 = load i8*, i8** %11, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load i8*, i8** %11, align 8
  %147 = load i8, i8* %146, align 1
  %148 = call i64 @iswhitespace(i8 signext %147)
  %149 = icmp ne i64 %148, 0
  br label %150

150:                                              ; preds = %145, %140
  %151 = phi i1 [ false, %140 ], [ %149, %145 ]
  br i1 %151, label %152, label %155

152:                                              ; preds = %150
  %153 = load i8*, i8** %11, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %11, align 8
  br label %140

155:                                              ; preds = %150
  %156 = load i8*, i8** %11, align 8
  %157 = load i8, i8* %156, align 1
  %158 = call i64 @issymchar(i8 signext %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %186

160:                                              ; preds = %155
  %161 = load i8*, i8** %11, align 8
  store i8* %161, i8** %19, align 8
  br label %162

162:                                              ; preds = %174, %160
  %163 = load i8*, i8** %11, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load i8*, i8** %11, align 8
  %169 = load i8, i8* %168, align 1
  %170 = call i64 @issymchar(i8 signext %169)
  %171 = icmp ne i64 %170, 0
  br label %172

172:                                              ; preds = %167, %162
  %173 = phi i1 [ false, %162 ], [ %171, %167 ]
  br i1 %173, label %174, label %177

174:                                              ; preds = %172
  %175 = load i8*, i8** %11, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %11, align 8
  br label %162

177:                                              ; preds = %172
  %178 = load i8*, i8** %11, align 8
  store i8* %178, i8** %20, align 8
  %179 = load i8*, i8** %20, align 8
  %180 = load i8*, i8** %19, align 8
  %181 = ptrtoint i8* %179 to i64
  %182 = ptrtoint i8* %180 to i64
  %183 = sub i64 %181, %182
  %184 = add nsw i64 %183, 1
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %21, align 4
  br label %197

186:                                              ; preds = %155
  %187 = load i8*, i8** %11, align 8
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %186
  %192 = load i32, i32* @stderr, align 4
  %193 = load i8*, i8** %12, align 8
  %194 = call i32 (i32, i8*, ...) @fprintf(i32 %192, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %193)
  %195 = call i32 @exit(i32 1) #3
  unreachable

196:                                              ; preds = %186
  br label %197

197:                                              ; preds = %196, %177
  br label %214

198:                                              ; preds = %132
  %199 = load i8*, i8** %11, align 8
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %198
  %204 = load i8*, i8** %11, align 8
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp ne i32 %206, 45
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = load i32, i32* @stderr, align 4
  %210 = load i8*, i8** %12, align 8
  %211 = call i32 (i32, i8*, ...) @fprintf(i32 %209, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %210)
  %212 = call i32 @exit(i32 1) #3
  unreachable

213:                                              ; preds = %203, %198
  br label %214

214:                                              ; preds = %213, %197
  br label %215

215:                                              ; preds = %214, %103
  %216 = load i8*, i8** %11, align 8
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %309

220:                                              ; preds = %215
  br label %221

221:                                              ; preds = %233, %220
  %222 = load i8*, i8** %11, align 8
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %221
  %227 = load i8*, i8** %11, align 8
  %228 = load i8, i8* %227, align 1
  %229 = call i64 @iswhitespace(i8 signext %228)
  %230 = icmp ne i64 %229, 0
  br label %231

231:                                              ; preds = %226, %221
  %232 = phi i1 [ false, %221 ], [ %230, %226 ]
  br i1 %232, label %233, label %236

233:                                              ; preds = %231
  %234 = load i8*, i8** %11, align 8
  %235 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %235, i8** %11, align 8
  br label %221

236:                                              ; preds = %231
  %237 = load i8*, i8** %11, align 8
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp eq i32 %239, 45
  br i1 %240, label %241, label %308

241:                                              ; preds = %236
  %242 = load i8*, i8** %11, align 8
  %243 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %243, i8** %11, align 8
  %244 = load i8*, i8** %11, align 8
  %245 = load i8, i8* %244, align 1
  %246 = call i64 @isalpha(i8 signext %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %296

248:                                              ; preds = %241
  %249 = load i8*, i8** %11, align 8
  store i8* %249, i8** %22, align 8
  br label %250

250:                                              ; preds = %262, %248
  %251 = load i8*, i8** %11, align 8
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %250
  %256 = load i8*, i8** %11, align 8
  %257 = load i8, i8* %256, align 1
  %258 = call i64 @isalpha(i8 signext %257)
  %259 = icmp ne i64 %258, 0
  br label %260

260:                                              ; preds = %255, %250
  %261 = phi i1 [ false, %250 ], [ %259, %255 ]
  br i1 %261, label %262, label %265

262:                                              ; preds = %260
  %263 = load i8*, i8** %11, align 8
  %264 = getelementptr inbounds i8, i8* %263, i32 1
  store i8* %264, i8** %11, align 8
  br label %250

265:                                              ; preds = %260
  %266 = load i8*, i8** %11, align 8
  store i8* %266, i8** %23, align 8
  %267 = load i8*, i8** %23, align 8
  %268 = load i8*, i8** %22, align 8
  %269 = ptrtoint i8* %267 to i64
  %270 = ptrtoint i8* %268 to i64
  %271 = sub i64 %269, %270
  %272 = trunc i64 %271 to i32
  store i32 %272, i32* %24, align 4
  %273 = load i32, i32* %24, align 4
  %274 = zext i32 %273 to i64
  %275 = icmp uge i64 %274, 256
  br i1 %275, label %276, label %281

276:                                              ; preds = %265
  %277 = load i32, i32* @stderr, align 4
  %278 = load i8*, i8** %12, align 8
  %279 = call i32 (i32, i8*, ...) @fprintf(i32 %277, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %278)
  %280 = call i32 @exit(i32 1) #3
  unreachable

281:                                              ; preds = %265
  %282 = getelementptr inbounds [256 x i8], [256 x i8]* %25, i64 0, i64 0
  %283 = load i8*, i8** %22, align 8
  %284 = load i32, i32* %24, align 4
  %285 = call i32 @memcpy(i8* %282, i8* %283, i32 %284)
  %286 = load i32, i32* %24, align 4
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds [256 x i8], [256 x i8]* %25, i64 0, i64 %287
  store i8 0, i8* %288, align 1
  %289 = getelementptr inbounds [256 x i8], [256 x i8]* %25, i64 0, i64 0
  %290 = load i32, i32* %24, align 4
  %291 = call i32 @strncmp(i8* %289, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %295, label %293

293:                                              ; preds = %281
  %294 = load i64, i64* @TRUE, align 8
  store i64 %294, i64* %26, align 8
  br label %295

295:                                              ; preds = %293, %281
  br label %307

296:                                              ; preds = %241
  %297 = load i8*, i8** %11, align 8
  %298 = load i8, i8* %297, align 1
  %299 = sext i8 %298 to i32
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %296
  %302 = load i32, i32* @stderr, align 4
  %303 = load i8*, i8** %12, align 8
  %304 = call i32 (i32, i8*, ...) @fprintf(i32 %302, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %303)
  %305 = call i32 @exit(i32 1) #3
  unreachable

306:                                              ; preds = %296
  br label %307

307:                                              ; preds = %306, %295
  br label %308

308:                                              ; preds = %307, %236
  br label %309

309:                                              ; preds = %308, %215
  %310 = load i32, i32* %9, align 4
  %311 = load i32, i32* %10, align 4
  %312 = icmp sge i32 %310, %311
  br i1 %312, label %313, label %320

313:                                              ; preds = %309
  %314 = load i32, i32* @stderr, align 4
  %315 = load i32, i32* %9, align 4
  %316 = load i32, i32* %10, align 4
  %317 = load i8*, i8** %12, align 8
  %318 = call i32 (i32, i8*, ...) @fprintf(i32 %314, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %315, i32 %316, i8* %317)
  %319 = call i32 @exit(i32 1) #3
  unreachable

320:                                              ; preds = %309
  %321 = load i8*, i8** %17, align 8
  store i8 0, i8* %321, align 1
  %322 = load i8*, i8** %20, align 8
  %323 = icmp ne i8* %322, null
  br i1 %323, label %324, label %326

324:                                              ; preds = %320
  %325 = load i8*, i8** %20, align 8
  store i8 0, i8* %325, align 1
  br label %326

326:                                              ; preds = %324, %320
  %327 = load i8*, i8** %16, align 8
  %328 = load %struct.symbol*, %struct.symbol** %8, align 8
  %329 = load i32, i32* %9, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.symbol, %struct.symbol* %328, i64 %330
  %332 = getelementptr inbounds %struct.symbol, %struct.symbol* %331, i32 0, i32 0
  store i8* %327, i8** %332, align 8
  %333 = load i32, i32* %18, align 4
  %334 = load %struct.symbol*, %struct.symbol** %8, align 8
  %335 = load i32, i32* %9, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.symbol, %struct.symbol* %334, i64 %336
  %338 = getelementptr inbounds %struct.symbol, %struct.symbol* %337, i32 0, i32 1
  store i32 %333, i32* %338, align 8
  %339 = load i8*, i8** %19, align 8
  %340 = load %struct.symbol*, %struct.symbol** %8, align 8
  %341 = load i32, i32* %9, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.symbol, %struct.symbol* %340, i64 %342
  %344 = getelementptr inbounds %struct.symbol, %struct.symbol* %343, i32 0, i32 2
  store i8* %339, i8** %344, align 8
  %345 = load i32, i32* %21, align 4
  %346 = load %struct.symbol*, %struct.symbol** %8, align 8
  %347 = load i32, i32* %9, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.symbol, %struct.symbol* %346, i64 %348
  %350 = getelementptr inbounds %struct.symbol, %struct.symbol* %349, i32 0, i32 3
  store i32 %345, i32* %350, align 8
  %351 = load i64, i64* %26, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %326
  %354 = load i32, i32* @kObsolete, align 4
  br label %356

355:                                              ; preds = %326
  br label %356

356:                                              ; preds = %355, %353
  %357 = phi i32 [ %354, %353 ], [ 0, %355 ]
  %358 = load %struct.symbol*, %struct.symbol** %8, align 8
  %359 = load i32, i32* %9, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.symbol, %struct.symbol* %358, i64 %360
  %362 = getelementptr inbounds %struct.symbol, %struct.symbol* %361, i32 0, i32 4
  store i32 %357, i32* %362, align 4
  %363 = load %struct.symbol*, %struct.symbol** %8, align 8
  %364 = load i32, i32* %9, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.symbol, %struct.symbol* %363, i64 %365
  %367 = getelementptr inbounds %struct.symbol, %struct.symbol* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 8
  %369 = load %struct.symbol*, %struct.symbol** %8, align 8
  %370 = load i32, i32* %9, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.symbol, %struct.symbol* %369, i64 %371
  %373 = getelementptr inbounds %struct.symbol, %struct.symbol* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 8
  %375 = add i32 %368, %374
  %376 = load i32, i32* %15, align 4
  %377 = add i32 %376, %375
  store i32 %377, i32* %15, align 4
  %378 = load i32, i32* %9, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %9, align 4
  br label %380

380:                                              ; preds = %356, %85, %78, %57, %49
  %381 = load i8*, i8** %14, align 8
  store i8* %381, i8** %11, align 8
  %382 = load i8*, i8** %14, align 8
  store i8* %382, i8** %12, align 8
  br label %29

383:                                              ; preds = %42, %29
  %384 = load i32, i32* %15, align 4
  ret i32 %384
}

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i64 @issymchar(i8 signext) #1

declare dso_local i64 @iswhitespace(i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
