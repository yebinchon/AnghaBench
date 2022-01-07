; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-disasm.c_q68_disassemble.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-disasm.c_q68_disassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8* }

@q68_disassemble.outbuf = internal global [1000 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"???\00", align 1
@instructions = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"ea\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ea2\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"D%d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"A%d\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"(A%d)\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"(A%d)+\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"-(A%d)\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%d(A%d)\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"%d(A%d,%c%d.%c)\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"($%X).w\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"($%X).l\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"$%X(PC)\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"$%X(PC,%c%d.%c)\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"#%s%X\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"reg0\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"trap\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"quick8\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"imm8\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"$%02X\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"%s%X\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"imm16\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"$%04X\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"pcrel8\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"$%X\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"pcrel16\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"reglist\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"tsilger\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"<%s>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @q68_disassemble(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [100 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca [48 x i8], align 16
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %6, align 4
  %46 = srem i32 %45, 2
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %3
  %49 = load i32*, i32** %7, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32*, i32** %7, align 8
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %51, %48
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %1073

54:                                               ; preds = %3
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i8* @READU16(i32* %55, i32 %56)
  %58 = ptrtoint i8* %57 to i32
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 2
  store i32 %60, i32* %6, align 4
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %90, %54
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @instructions, align 8
  %64 = call i32 @lenof(%struct.TYPE_3__* %63)
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %93

66:                                               ; preds = %61
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @instructions, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %67, %73
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** @instructions, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %74, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %66
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @instructions, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %10, align 8
  br label %93

89:                                               ; preds = %66
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %61

93:                                               ; preds = %82, %61
  %94 = load i8*, i8** %10, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %102, label %96

96:                                               ; preds = %93
  %97 = load i32*, i32** %7, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32*, i32** %7, align 8
  store i32 1, i32* %100, align 4
  br label %101

101:                                              ; preds = %99, %96
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %1073

102:                                              ; preds = %93
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %103

103:                                              ; preds = %1062, %102
  %104 = load i8*, i8** %10, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %1063

111:                                              ; preds = %103
  %112 = load i8*, i8** %10, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 60
  br i1 %118, label %119, label %1040

119:                                              ; preds = %111
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %15, align 4
  br label %122

122:                                              ; preds = %149, %119
  %123 = load i8*, i8** %10, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %122
  %131 = load i8*, i8** %10, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 62
  br label %138

138:                                              ; preds = %130, %122
  %139 = phi i1 [ false, %122 ], [ %137, %130 ]
  br i1 %139, label %140, label %152

140:                                              ; preds = %138
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 1
  %144 = sub nsw i32 %141, %143
  %145 = sext i32 %144 to i64
  %146 = icmp uge i64 %145, 100
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  br label %152

148:                                              ; preds = %140
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %15, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %15, align 4
  br label %122

152:                                              ; preds = %147, %138
  %153 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %154 = load i8*, i8** %10, align 8
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %154, i64 %157
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, 1
  %162 = sub nsw i32 %159, %161
  %163 = call i32 @memcpy(i8* %153, i8* %158, i32 %162)
  %164 = load i32, i32* %15, align 4
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %165, 1
  %167 = sub nsw i32 %164, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 %168
  store i8 0, i8* %169, align 1
  %170 = load i8*, i8** %10, align 8
  %171 = load i32, i32* %15, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %152
  %178 = load i32, i32* %15, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %15, align 4
  br label %180

180:                                              ; preds = %177, %152
  %181 = load i32, i32* %15, align 4
  store i32 %181, i32* %13, align 4
  %182 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %183 = call i64 @strncmp(i8* %182, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %546

185:                                              ; preds = %180
  %186 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %187 = call i64 @strncmp(i8* %186, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %185
  %190 = load i32, i32* %9, align 4
  %191 = ashr i32 %190, 6
  %192 = and i32 %191, 7
  store i32 %192, i32* %16, align 4
  %193 = load i32, i32* %9, align 4
  %194 = ashr i32 %193, 9
  %195 = and i32 %194, 7
  store i32 %195, i32* %17, align 4
  %196 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 4
  %197 = load i8, i8* %196, align 4
  store i8 %197, i8* %18, align 1
  br label %207

198:                                              ; preds = %185
  %199 = load i32, i32* %9, align 4
  %200 = ashr i32 %199, 3
  %201 = and i32 %200, 7
  store i32 %201, i32* %16, align 4
  %202 = load i32, i32* %9, align 4
  %203 = ashr i32 %202, 0
  %204 = and i32 %203, 7
  store i32 %204, i32* %17, align 4
  %205 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 3
  %206 = load i8, i8* %205, align 1
  store i8 %206, i8* %18, align 1
  br label %207

207:                                              ; preds = %198, %189
  %208 = load i32, i32* %16, align 4
  switch i32 %208, label %545 [
    i32 0, label %209
    i32 1, label %227
    i32 2, label %245
    i32 3, label %263
    i32 4, label %281
    i32 5, label %299
    i32 6, label %323
    i32 7, label %366
  ]

209:                                              ; preds = %207
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %12, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %212
  %214 = load i32, i32* %12, align 4
  %215 = sext i32 %214 to i64
  %216 = sub i64 1000, %215
  %217 = load i32, i32* %17, align 4
  %218 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %213, i64 %216, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %217)
  %219 = load i32, i32* %12, align 4
  %220 = add nsw i32 %219, %218
  store i32 %220, i32* %12, align 4
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = icmp ugt i64 %222, 999
  br i1 %223, label %224, label %225

224:                                              ; preds = %210
  store i32 999, i32* %12, align 4
  br label %225

225:                                              ; preds = %224, %210
  br label %226

226:                                              ; preds = %225
  br label %545

227:                                              ; preds = %207
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %12, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %230
  %232 = load i32, i32* %12, align 4
  %233 = sext i32 %232 to i64
  %234 = sub i64 1000, %233
  %235 = load i32, i32* %17, align 4
  %236 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %231, i64 %234, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %235)
  %237 = load i32, i32* %12, align 4
  %238 = add nsw i32 %237, %236
  store i32 %238, i32* %12, align 4
  %239 = load i32, i32* %12, align 4
  %240 = sext i32 %239 to i64
  %241 = icmp ugt i64 %240, 999
  br i1 %241, label %242, label %243

242:                                              ; preds = %228
  store i32 999, i32* %12, align 4
  br label %243

243:                                              ; preds = %242, %228
  br label %244

244:                                              ; preds = %243
  br label %545

245:                                              ; preds = %207
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %12, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %248
  %250 = load i32, i32* %12, align 4
  %251 = sext i32 %250 to i64
  %252 = sub i64 1000, %251
  %253 = load i32, i32* %17, align 4
  %254 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %249, i64 %252, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %253)
  %255 = load i32, i32* %12, align 4
  %256 = add nsw i32 %255, %254
  store i32 %256, i32* %12, align 4
  %257 = load i32, i32* %12, align 4
  %258 = sext i32 %257 to i64
  %259 = icmp ugt i64 %258, 999
  br i1 %259, label %260, label %261

260:                                              ; preds = %246
  store i32 999, i32* %12, align 4
  br label %261

261:                                              ; preds = %260, %246
  br label %262

262:                                              ; preds = %261
  br label %545

263:                                              ; preds = %207
  br label %264

264:                                              ; preds = %263
  %265 = load i32, i32* %12, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %266
  %268 = load i32, i32* %12, align 4
  %269 = sext i32 %268 to i64
  %270 = sub i64 1000, %269
  %271 = load i32, i32* %17, align 4
  %272 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %267, i64 %270, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %271)
  %273 = load i32, i32* %12, align 4
  %274 = add nsw i32 %273, %272
  store i32 %274, i32* %12, align 4
  %275 = load i32, i32* %12, align 4
  %276 = sext i32 %275 to i64
  %277 = icmp ugt i64 %276, 999
  br i1 %277, label %278, label %279

278:                                              ; preds = %264
  store i32 999, i32* %12, align 4
  br label %279

279:                                              ; preds = %278, %264
  br label %280

280:                                              ; preds = %279
  br label %545

281:                                              ; preds = %207
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %12, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %284
  %286 = load i32, i32* %12, align 4
  %287 = sext i32 %286 to i64
  %288 = sub i64 1000, %287
  %289 = load i32, i32* %17, align 4
  %290 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %285, i64 %288, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %289)
  %291 = load i32, i32* %12, align 4
  %292 = add nsw i32 %291, %290
  store i32 %292, i32* %12, align 4
  %293 = load i32, i32* %12, align 4
  %294 = sext i32 %293 to i64
  %295 = icmp ugt i64 %294, 999
  br i1 %295, label %296, label %297

296:                                              ; preds = %282
  store i32 999, i32* %12, align 4
  br label %297

297:                                              ; preds = %296, %282
  br label %298

298:                                              ; preds = %297
  br label %545

299:                                              ; preds = %207
  %300 = load i32*, i32** %5, align 8
  %301 = load i32, i32* %6, align 4
  %302 = call i32 @READS16(i32* %300, i32 %301)
  store i32 %302, i32* %19, align 4
  %303 = load i32, i32* %6, align 4
  %304 = add nsw i32 %303, 2
  store i32 %304, i32* %6, align 4
  br label %305

305:                                              ; preds = %299
  %306 = load i32, i32* %12, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %307
  %309 = load i32, i32* %12, align 4
  %310 = sext i32 %309 to i64
  %311 = sub i64 1000, %310
  %312 = load i32, i32* %19, align 4
  %313 = load i32, i32* %17, align 4
  %314 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %308, i64 %311, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %312, i32 %313)
  %315 = load i32, i32* %12, align 4
  %316 = add nsw i32 %315, %314
  store i32 %316, i32* %12, align 4
  %317 = load i32, i32* %12, align 4
  %318 = sext i32 %317 to i64
  %319 = icmp ugt i64 %318, 999
  br i1 %319, label %320, label %321

320:                                              ; preds = %305
  store i32 999, i32* %12, align 4
  br label %321

321:                                              ; preds = %320, %305
  br label %322

322:                                              ; preds = %321
  br label %545

323:                                              ; preds = %207
  %324 = load i32*, i32** %5, align 8
  %325 = load i32, i32* %6, align 4
  %326 = call i8* @READU16(i32* %324, i32 %325)
  %327 = ptrtoint i8* %326 to i32
  store i32 %327, i32* %20, align 4
  %328 = load i32, i32* %6, align 4
  %329 = add nsw i32 %328, 2
  store i32 %329, i32* %6, align 4
  %330 = load i32, i32* %20, align 4
  %331 = ashr i32 %330, 15
  store i32 %331, i32* %21, align 4
  %332 = load i32, i32* %20, align 4
  %333 = ashr i32 %332, 12
  %334 = and i32 %333, 7
  store i32 %334, i32* %22, align 4
  %335 = load i32, i32* %20, align 4
  %336 = ashr i32 %335, 11
  store i32 %336, i32* %23, align 4
  %337 = load i32, i32* %20, align 4
  %338 = and i32 %337, 255
  store i32 %338, i32* %24, align 4
  br label %339

339:                                              ; preds = %323
  %340 = load i32, i32* %12, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %341
  %343 = load i32, i32* %12, align 4
  %344 = sext i32 %343 to i64
  %345 = sub i64 1000, %344
  %346 = load i32, i32* %24, align 4
  %347 = load i32, i32* %17, align 4
  %348 = load i32, i32* %21, align 4
  %349 = icmp ne i32 %348, 0
  %350 = zext i1 %349 to i64
  %351 = select i1 %349, i32 65, i32 68
  %352 = load i32, i32* %22, align 4
  %353 = load i32, i32* %23, align 4
  %354 = icmp ne i32 %353, 0
  %355 = zext i1 %354 to i64
  %356 = select i1 %354, i32 108, i32 119
  %357 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %342, i64 %345, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %346, i32 %347, i32 %351, i32 %352, i32 %356)
  %358 = load i32, i32* %12, align 4
  %359 = add nsw i32 %358, %357
  store i32 %359, i32* %12, align 4
  %360 = load i32, i32* %12, align 4
  %361 = sext i32 %360 to i64
  %362 = icmp ugt i64 %361, 999
  br i1 %362, label %363, label %364

363:                                              ; preds = %339
  store i32 999, i32* %12, align 4
  br label %364

364:                                              ; preds = %363, %339
  br label %365

365:                                              ; preds = %364
  br label %545

366:                                              ; preds = %207
  %367 = load i32, i32* %17, align 4
  switch i32 %367, label %527 [
    i32 0, label %368
    i32 1, label %392
    i32 2, label %416
    i32 3, label %442
    i32 4, label %487
  ]

368:                                              ; preds = %366
  %369 = load i32*, i32** %5, align 8
  %370 = load i32, i32* %6, align 4
  %371 = call i8* @READU16(i32* %369, i32 %370)
  %372 = ptrtoint i8* %371 to i32
  store i32 %372, i32* %25, align 4
  %373 = load i32, i32* %6, align 4
  %374 = add nsw i32 %373, 2
  store i32 %374, i32* %6, align 4
  br label %375

375:                                              ; preds = %368
  %376 = load i32, i32* %12, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %377
  %379 = load i32, i32* %12, align 4
  %380 = sext i32 %379 to i64
  %381 = sub i64 1000, %380
  %382 = load i32, i32* %25, align 4
  %383 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %378, i64 %381, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %382)
  %384 = load i32, i32* %12, align 4
  %385 = add nsw i32 %384, %383
  store i32 %385, i32* %12, align 4
  %386 = load i32, i32* %12, align 4
  %387 = sext i32 %386 to i64
  %388 = icmp ugt i64 %387, 999
  br i1 %388, label %389, label %390

389:                                              ; preds = %375
  store i32 999, i32* %12, align 4
  br label %390

390:                                              ; preds = %389, %375
  br label %391

391:                                              ; preds = %390
  br label %544

392:                                              ; preds = %366
  %393 = load i32*, i32** %5, align 8
  %394 = load i32, i32* %6, align 4
  %395 = call i8* @READU32(i32* %393, i32 %394)
  %396 = ptrtoint i8* %395 to i32
  store i32 %396, i32* %26, align 4
  %397 = load i32, i32* %6, align 4
  %398 = add nsw i32 %397, 4
  store i32 %398, i32* %6, align 4
  br label %399

399:                                              ; preds = %392
  %400 = load i32, i32* %12, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %401
  %403 = load i32, i32* %12, align 4
  %404 = sext i32 %403 to i64
  %405 = sub i64 1000, %404
  %406 = load i32, i32* %26, align 4
  %407 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %402, i64 %405, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %406)
  %408 = load i32, i32* %12, align 4
  %409 = add nsw i32 %408, %407
  store i32 %409, i32* %12, align 4
  %410 = load i32, i32* %12, align 4
  %411 = sext i32 %410 to i64
  %412 = icmp ugt i64 %411, 999
  br i1 %412, label %413, label %414

413:                                              ; preds = %399
  store i32 999, i32* %12, align 4
  br label %414

414:                                              ; preds = %413, %399
  br label %415

415:                                              ; preds = %414
  br label %544

416:                                              ; preds = %366
  %417 = load i32*, i32** %5, align 8
  %418 = load i32, i32* %6, align 4
  %419 = call i32 @READS16(i32* %417, i32 %418)
  store i32 %419, i32* %27, align 4
  %420 = load i32, i32* %6, align 4
  %421 = add nsw i32 %420, 2
  store i32 %421, i32* %6, align 4
  br label %422

422:                                              ; preds = %416
  %423 = load i32, i32* %12, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %424
  %426 = load i32, i32* %12, align 4
  %427 = sext i32 %426 to i64
  %428 = sub i64 1000, %427
  %429 = load i32, i32* %8, align 4
  %430 = add nsw i32 %429, 2
  %431 = load i32, i32* %27, align 4
  %432 = add nsw i32 %430, %431
  %433 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %425, i64 %428, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %432)
  %434 = load i32, i32* %12, align 4
  %435 = add nsw i32 %434, %433
  store i32 %435, i32* %12, align 4
  %436 = load i32, i32* %12, align 4
  %437 = sext i32 %436 to i64
  %438 = icmp ugt i64 %437, 999
  br i1 %438, label %439, label %440

439:                                              ; preds = %422
  store i32 999, i32* %12, align 4
  br label %440

440:                                              ; preds = %439, %422
  br label %441

441:                                              ; preds = %440
  br label %544

442:                                              ; preds = %366
  %443 = load i32*, i32** %5, align 8
  %444 = load i32, i32* %6, align 4
  %445 = call i8* @READU16(i32* %443, i32 %444)
  %446 = ptrtoint i8* %445 to i32
  store i32 %446, i32* %28, align 4
  %447 = load i32, i32* %6, align 4
  %448 = add nsw i32 %447, 2
  store i32 %448, i32* %6, align 4
  %449 = load i32, i32* %28, align 4
  %450 = ashr i32 %449, 15
  store i32 %450, i32* %29, align 4
  %451 = load i32, i32* %28, align 4
  %452 = ashr i32 %451, 12
  %453 = and i32 %452, 7
  store i32 %453, i32* %30, align 4
  %454 = load i32, i32* %28, align 4
  %455 = ashr i32 %454, 11
  store i32 %455, i32* %31, align 4
  %456 = load i32, i32* %28, align 4
  %457 = and i32 %456, 255
  store i32 %457, i32* %32, align 4
  br label %458

458:                                              ; preds = %442
  %459 = load i32, i32* %12, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %460
  %462 = load i32, i32* %12, align 4
  %463 = sext i32 %462 to i64
  %464 = sub i64 1000, %463
  %465 = load i32, i32* %8, align 4
  %466 = add nsw i32 %465, 2
  %467 = load i32, i32* %32, align 4
  %468 = add nsw i32 %466, %467
  %469 = load i32, i32* %29, align 4
  %470 = icmp ne i32 %469, 0
  %471 = zext i1 %470 to i64
  %472 = select i1 %470, i32 65, i32 68
  %473 = load i32, i32* %30, align 4
  %474 = load i32, i32* %31, align 4
  %475 = icmp ne i32 %474, 0
  %476 = zext i1 %475 to i64
  %477 = select i1 %475, i32 108, i32 119
  %478 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %461, i64 %464, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 %468, i32 %472, i32 %473, i32 %477)
  %479 = load i32, i32* %12, align 4
  %480 = add nsw i32 %479, %478
  store i32 %480, i32* %12, align 4
  %481 = load i32, i32* %12, align 4
  %482 = sext i32 %481 to i64
  %483 = icmp ugt i64 %482, 999
  br i1 %483, label %484, label %485

484:                                              ; preds = %458
  store i32 999, i32* %12, align 4
  br label %485

485:                                              ; preds = %484, %458
  br label %486

486:                                              ; preds = %485
  br label %544

487:                                              ; preds = %366
  %488 = load i8, i8* %18, align 1
  %489 = sext i8 %488 to i32
  %490 = icmp eq i32 %489, 108
  br i1 %490, label %491, label %498

491:                                              ; preds = %487
  %492 = load i32*, i32** %5, align 8
  %493 = load i32, i32* %6, align 4
  %494 = call i8* @READU32(i32* %492, i32 %493)
  %495 = ptrtoint i8* %494 to i32
  store i32 %495, i32* %33, align 4
  %496 = load i32, i32* %6, align 4
  %497 = add nsw i32 %496, 4
  store i32 %497, i32* %6, align 4
  br label %505

498:                                              ; preds = %487
  %499 = load i32*, i32** %5, align 8
  %500 = load i32, i32* %6, align 4
  %501 = call i8* @READU16(i32* %499, i32 %500)
  %502 = ptrtoint i8* %501 to i32
  store i32 %502, i32* %33, align 4
  %503 = load i32, i32* %6, align 4
  %504 = add nsw i32 %503, 2
  store i32 %504, i32* %6, align 4
  br label %505

505:                                              ; preds = %498, %491
  br label %506

506:                                              ; preds = %505
  %507 = load i32, i32* %12, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %508
  %510 = load i32, i32* %12, align 4
  %511 = sext i32 %510 to i64
  %512 = sub i64 1000, %511
  %513 = load i32, i32* %33, align 4
  %514 = icmp slt i32 %513, 10
  %515 = zext i1 %514 to i64
  %516 = select i1 %514, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)
  %517 = load i32, i32* %33, align 4
  %518 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %509, i64 %512, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* %516, i32 %517)
  %519 = load i32, i32* %12, align 4
  %520 = add nsw i32 %519, %518
  store i32 %520, i32* %12, align 4
  %521 = load i32, i32* %12, align 4
  %522 = sext i32 %521 to i64
  %523 = icmp ugt i64 %522, 999
  br i1 %523, label %524, label %525

524:                                              ; preds = %506
  store i32 999, i32* %12, align 4
  br label %525

525:                                              ; preds = %524, %506
  br label %526

526:                                              ; preds = %525
  br label %544

527:                                              ; preds = %366
  br label %528

528:                                              ; preds = %527
  %529 = load i32, i32* %12, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %530
  %532 = load i32, i32* %12, align 4
  %533 = sext i32 %532 to i64
  %534 = sub i64 1000, %533
  %535 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %531, i64 %534, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %536 = load i32, i32* %12, align 4
  %537 = add nsw i32 %536, %535
  store i32 %537, i32* %12, align 4
  %538 = load i32, i32* %12, align 4
  %539 = sext i32 %538 to i64
  %540 = icmp ugt i64 %539, 999
  br i1 %540, label %541, label %542

541:                                              ; preds = %528
  store i32 999, i32* %12, align 4
  br label %542

542:                                              ; preds = %541, %528
  br label %543

543:                                              ; preds = %542
  br label %544

544:                                              ; preds = %543, %526, %486, %441, %415, %391
  br label %545

545:                                              ; preds = %544, %207, %365, %322, %298, %280, %262, %244, %226
  br label %1039

546:                                              ; preds = %180
  %547 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %548 = call i64 @strcmp(i8* %547, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %549 = icmp eq i64 %548, 0
  br i1 %549, label %550, label %570

550:                                              ; preds = %546
  br label %551

551:                                              ; preds = %550
  %552 = load i32, i32* %12, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %553
  %555 = load i32, i32* %12, align 4
  %556 = sext i32 %555 to i64
  %557 = sub i64 1000, %556
  %558 = load i32, i32* %9, align 4
  %559 = ashr i32 %558, 9
  %560 = and i32 %559, 7
  %561 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %554, i64 %557, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 %560)
  %562 = load i32, i32* %12, align 4
  %563 = add nsw i32 %562, %561
  store i32 %563, i32* %12, align 4
  %564 = load i32, i32* %12, align 4
  %565 = sext i32 %564 to i64
  %566 = icmp ugt i64 %565, 999
  br i1 %566, label %567, label %568

567:                                              ; preds = %551
  store i32 999, i32* %12, align 4
  br label %568

568:                                              ; preds = %567, %551
  br label %569

569:                                              ; preds = %568
  br label %1038

570:                                              ; preds = %546
  %571 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %572 = call i64 @strcmp(i8* %571, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %573 = icmp eq i64 %572, 0
  br i1 %573, label %574, label %594

574:                                              ; preds = %570
  br label %575

575:                                              ; preds = %574
  %576 = load i32, i32* %12, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %577
  %579 = load i32, i32* %12, align 4
  %580 = sext i32 %579 to i64
  %581 = sub i64 1000, %580
  %582 = load i32, i32* %9, align 4
  %583 = ashr i32 %582, 0
  %584 = and i32 %583, 7
  %585 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %578, i64 %581, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 %584)
  %586 = load i32, i32* %12, align 4
  %587 = add nsw i32 %586, %585
  store i32 %587, i32* %12, align 4
  %588 = load i32, i32* %12, align 4
  %589 = sext i32 %588 to i64
  %590 = icmp ugt i64 %589, 999
  br i1 %590, label %591, label %592

591:                                              ; preds = %575
  store i32 999, i32* %12, align 4
  br label %592

592:                                              ; preds = %591, %575
  br label %593

593:                                              ; preds = %592
  br label %1037

594:                                              ; preds = %570
  %595 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %596 = call i64 @strcmp(i8* %595, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %597 = icmp eq i64 %596, 0
  br i1 %597, label %598, label %623

598:                                              ; preds = %594
  br label %599

599:                                              ; preds = %598
  %600 = load i32, i32* %12, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %601
  %603 = load i32, i32* %12, align 4
  %604 = sext i32 %603 to i64
  %605 = sub i64 1000, %604
  %606 = load i32, i32* %9, align 4
  %607 = ashr i32 %606, 9
  %608 = and i32 %607, 7
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %610, label %611

610:                                              ; preds = %599
  br label %612

611:                                              ; preds = %599
  br label %612

612:                                              ; preds = %611, %610
  %613 = phi i32 [ %608, %610 ], [ 8, %611 ]
  %614 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %602, i64 %605, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 %613)
  %615 = load i32, i32* %12, align 4
  %616 = add nsw i32 %615, %614
  store i32 %616, i32* %12, align 4
  %617 = load i32, i32* %12, align 4
  %618 = sext i32 %617 to i64
  %619 = icmp ugt i64 %618, 999
  br i1 %619, label %620, label %621

620:                                              ; preds = %612
  store i32 999, i32* %12, align 4
  br label %621

621:                                              ; preds = %620, %612
  br label %622

622:                                              ; preds = %621
  br label %1036

623:                                              ; preds = %594
  %624 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %625 = call i64 @strcmp(i8* %624, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %626 = icmp eq i64 %625, 0
  br i1 %626, label %627, label %647

627:                                              ; preds = %623
  br label %628

628:                                              ; preds = %627
  %629 = load i32, i32* %12, align 4
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %630
  %632 = load i32, i32* %12, align 4
  %633 = sext i32 %632 to i64
  %634 = sub i64 1000, %633
  %635 = load i32, i32* %9, align 4
  %636 = ashr i32 %635, 0
  %637 = and i32 %636, 15
  %638 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %631, i64 %634, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 %637)
  %639 = load i32, i32* %12, align 4
  %640 = add nsw i32 %639, %638
  store i32 %640, i32* %12, align 4
  %641 = load i32, i32* %12, align 4
  %642 = sext i32 %641 to i64
  %643 = icmp ugt i64 %642, 999
  br i1 %643, label %644, label %645

644:                                              ; preds = %628
  store i32 999, i32* %12, align 4
  br label %645

645:                                              ; preds = %644, %628
  br label %646

646:                                              ; preds = %645
  br label %1035

647:                                              ; preds = %623
  %648 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %649 = call i64 @strcmp(i8* %648, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0))
  %650 = icmp eq i64 %649, 0
  br i1 %650, label %651, label %670

651:                                              ; preds = %647
  br label %652

652:                                              ; preds = %651
  %653 = load i32, i32* %12, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %654
  %656 = load i32, i32* %12, align 4
  %657 = sext i32 %656 to i64
  %658 = sub i64 1000, %657
  %659 = load i32, i32* %9, align 4
  %660 = and i32 %659, 255
  %661 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %655, i64 %658, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 %660)
  %662 = load i32, i32* %12, align 4
  %663 = add nsw i32 %662, %661
  store i32 %663, i32* %12, align 4
  %664 = load i32, i32* %12, align 4
  %665 = sext i32 %664 to i64
  %666 = icmp ugt i64 %665, 999
  br i1 %666, label %667, label %668

667:                                              ; preds = %652
  store i32 999, i32* %12, align 4
  br label %668

668:                                              ; preds = %667, %652
  br label %669

669:                                              ; preds = %668
  br label %1034

670:                                              ; preds = %647
  %671 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %672 = call i64 @strncmp(i8* %671, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i32 4)
  %673 = icmp eq i64 %672, 0
  br i1 %673, label %674, label %752

674:                                              ; preds = %670
  %675 = load i32*, i32** %5, align 8
  %676 = load i32, i32* %6, align 4
  %677 = call i8* @READU16(i32* %675, i32 %676)
  %678 = ptrtoint i8* %677 to i32
  store i32 %678, i32* %34, align 4
  %679 = load i32, i32* %34, align 4
  %680 = and i32 %679, 255
  store i32 %680, i32* %34, align 4
  %681 = load i32, i32* %6, align 4
  %682 = add nsw i32 %681, 2
  store i32 %682, i32* %6, align 4
  %683 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 4
  %684 = load i8, i8* %683, align 4
  %685 = sext i8 %684 to i32
  %686 = icmp eq i32 %685, 100
  br i1 %686, label %687, label %705

687:                                              ; preds = %674
  br label %688

688:                                              ; preds = %687
  %689 = load i32, i32* %12, align 4
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %690
  %692 = load i32, i32* %12, align 4
  %693 = sext i32 %692 to i64
  %694 = sub i64 1000, %693
  %695 = load i32, i32* %34, align 4
  %696 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %691, i64 %694, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 %695)
  %697 = load i32, i32* %12, align 4
  %698 = add nsw i32 %697, %696
  store i32 %698, i32* %12, align 4
  %699 = load i32, i32* %12, align 4
  %700 = sext i32 %699 to i64
  %701 = icmp ugt i64 %700, 999
  br i1 %701, label %702, label %703

702:                                              ; preds = %688
  store i32 999, i32* %12, align 4
  br label %703

703:                                              ; preds = %702, %688
  br label %704

704:                                              ; preds = %703
  br label %751

705:                                              ; preds = %674
  %706 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 4
  %707 = load i8, i8* %706, align 4
  %708 = sext i8 %707 to i32
  %709 = icmp eq i32 %708, 120
  br i1 %709, label %710, label %728

710:                                              ; preds = %705
  br label %711

711:                                              ; preds = %710
  %712 = load i32, i32* %12, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %713
  %715 = load i32, i32* %12, align 4
  %716 = sext i32 %715 to i64
  %717 = sub i64 1000, %716
  %718 = load i32, i32* %34, align 4
  %719 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %714, i64 %717, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i32 %718)
  %720 = load i32, i32* %12, align 4
  %721 = add nsw i32 %720, %719
  store i32 %721, i32* %12, align 4
  %722 = load i32, i32* %12, align 4
  %723 = sext i32 %722 to i64
  %724 = icmp ugt i64 %723, 999
  br i1 %724, label %725, label %726

725:                                              ; preds = %711
  store i32 999, i32* %12, align 4
  br label %726

726:                                              ; preds = %725, %711
  br label %727

727:                                              ; preds = %726
  br label %750

728:                                              ; preds = %705
  br label %729

729:                                              ; preds = %728
  %730 = load i32, i32* %12, align 4
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %731
  %733 = load i32, i32* %12, align 4
  %734 = sext i32 %733 to i64
  %735 = sub i64 1000, %734
  %736 = load i32, i32* %34, align 4
  %737 = icmp slt i32 %736, 10
  %738 = zext i1 %737 to i64
  %739 = select i1 %737, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)
  %740 = load i32, i32* %34, align 4
  %741 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %732, i64 %735, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* %739, i32 %740)
  %742 = load i32, i32* %12, align 4
  %743 = add nsw i32 %742, %741
  store i32 %743, i32* %12, align 4
  %744 = load i32, i32* %12, align 4
  %745 = sext i32 %744 to i64
  %746 = icmp ugt i64 %745, 999
  br i1 %746, label %747, label %748

747:                                              ; preds = %729
  store i32 999, i32* %12, align 4
  br label %748

748:                                              ; preds = %747, %729
  br label %749

749:                                              ; preds = %748
  br label %750

750:                                              ; preds = %749, %727
  br label %751

751:                                              ; preds = %750, %704
  br label %1033

752:                                              ; preds = %670
  %753 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %754 = call i64 @strncmp(i8* %753, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i32 5)
  %755 = icmp eq i64 %754, 0
  br i1 %755, label %756, label %832

756:                                              ; preds = %752
  %757 = load i32*, i32** %5, align 8
  %758 = load i32, i32* %6, align 4
  %759 = call i8* @READU16(i32* %757, i32 %758)
  %760 = ptrtoint i8* %759 to i32
  store i32 %760, i32* %35, align 4
  %761 = load i32, i32* %6, align 4
  %762 = add nsw i32 %761, 2
  store i32 %762, i32* %6, align 4
  %763 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 5
  %764 = load i8, i8* %763, align 1
  %765 = sext i8 %764 to i32
  %766 = icmp eq i32 %765, 100
  br i1 %766, label %767, label %785

767:                                              ; preds = %756
  br label %768

768:                                              ; preds = %767
  %769 = load i32, i32* %12, align 4
  %770 = sext i32 %769 to i64
  %771 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %770
  %772 = load i32, i32* %12, align 4
  %773 = sext i32 %772 to i64
  %774 = sub i64 1000, %773
  %775 = load i32, i32* %35, align 4
  %776 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %771, i64 %774, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 %775)
  %777 = load i32, i32* %12, align 4
  %778 = add nsw i32 %777, %776
  store i32 %778, i32* %12, align 4
  %779 = load i32, i32* %12, align 4
  %780 = sext i32 %779 to i64
  %781 = icmp ugt i64 %780, 999
  br i1 %781, label %782, label %783

782:                                              ; preds = %768
  store i32 999, i32* %12, align 4
  br label %783

783:                                              ; preds = %782, %768
  br label %784

784:                                              ; preds = %783
  br label %831

785:                                              ; preds = %756
  %786 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 5
  %787 = load i8, i8* %786, align 1
  %788 = sext i8 %787 to i32
  %789 = icmp eq i32 %788, 120
  br i1 %789, label %790, label %808

790:                                              ; preds = %785
  br label %791

791:                                              ; preds = %790
  %792 = load i32, i32* %12, align 4
  %793 = sext i32 %792 to i64
  %794 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %793
  %795 = load i32, i32* %12, align 4
  %796 = sext i32 %795 to i64
  %797 = sub i64 1000, %796
  %798 = load i32, i32* %35, align 4
  %799 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %794, i64 %797, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i32 %798)
  %800 = load i32, i32* %12, align 4
  %801 = add nsw i32 %800, %799
  store i32 %801, i32* %12, align 4
  %802 = load i32, i32* %12, align 4
  %803 = sext i32 %802 to i64
  %804 = icmp ugt i64 %803, 999
  br i1 %804, label %805, label %806

805:                                              ; preds = %791
  store i32 999, i32* %12, align 4
  br label %806

806:                                              ; preds = %805, %791
  br label %807

807:                                              ; preds = %806
  br label %830

808:                                              ; preds = %785
  br label %809

809:                                              ; preds = %808
  %810 = load i32, i32* %12, align 4
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %811
  %813 = load i32, i32* %12, align 4
  %814 = sext i32 %813 to i64
  %815 = sub i64 1000, %814
  %816 = load i32, i32* %35, align 4
  %817 = icmp slt i32 %816, 10
  %818 = zext i1 %817 to i64
  %819 = select i1 %817, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)
  %820 = load i32, i32* %35, align 4
  %821 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %812, i64 %815, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* %819, i32 %820)
  %822 = load i32, i32* %12, align 4
  %823 = add nsw i32 %822, %821
  store i32 %823, i32* %12, align 4
  %824 = load i32, i32* %12, align 4
  %825 = sext i32 %824 to i64
  %826 = icmp ugt i64 %825, 999
  br i1 %826, label %827, label %828

827:                                              ; preds = %809
  store i32 999, i32* %12, align 4
  br label %828

828:                                              ; preds = %827, %809
  br label %829

829:                                              ; preds = %828
  br label %830

830:                                              ; preds = %829, %807
  br label %831

831:                                              ; preds = %830, %784
  br label %1032

832:                                              ; preds = %752
  %833 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %834 = call i64 @strcmp(i8* %833, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0))
  %835 = icmp eq i64 %834, 0
  br i1 %835, label %836, label %859

836:                                              ; preds = %832
  %837 = load i32, i32* %9, align 4
  %838 = and i32 %837, 255
  store i32 %838, i32* %36, align 4
  br label %839

839:                                              ; preds = %836
  %840 = load i32, i32* %12, align 4
  %841 = sext i32 %840 to i64
  %842 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %841
  %843 = load i32, i32* %12, align 4
  %844 = sext i32 %843 to i64
  %845 = sub i64 1000, %844
  %846 = load i32, i32* %8, align 4
  %847 = add nsw i32 %846, 2
  %848 = load i32, i32* %36, align 4
  %849 = add nsw i32 %847, %848
  %850 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %842, i64 %845, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i32 %849)
  %851 = load i32, i32* %12, align 4
  %852 = add nsw i32 %851, %850
  store i32 %852, i32* %12, align 4
  %853 = load i32, i32* %12, align 4
  %854 = sext i32 %853 to i64
  %855 = icmp ugt i64 %854, 999
  br i1 %855, label %856, label %857

856:                                              ; preds = %839
  store i32 999, i32* %12, align 4
  br label %857

857:                                              ; preds = %856, %839
  br label %858

858:                                              ; preds = %857
  br label %1031

859:                                              ; preds = %832
  %860 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %861 = call i64 @strcmp(i8* %860, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0))
  %862 = icmp eq i64 %861, 0
  br i1 %862, label %863, label %889

863:                                              ; preds = %859
  %864 = load i32*, i32** %5, align 8
  %865 = load i32, i32* %6, align 4
  %866 = call i32 @READS16(i32* %864, i32 %865)
  store i32 %866, i32* %37, align 4
  %867 = load i32, i32* %6, align 4
  %868 = add nsw i32 %867, 2
  store i32 %868, i32* %6, align 4
  br label %869

869:                                              ; preds = %863
  %870 = load i32, i32* %12, align 4
  %871 = sext i32 %870 to i64
  %872 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %871
  %873 = load i32, i32* %12, align 4
  %874 = sext i32 %873 to i64
  %875 = sub i64 1000, %874
  %876 = load i32, i32* %8, align 4
  %877 = add nsw i32 %876, 2
  %878 = load i32, i32* %37, align 4
  %879 = add nsw i32 %877, %878
  %880 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %872, i64 %875, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i32 %879)
  %881 = load i32, i32* %12, align 4
  %882 = add nsw i32 %881, %880
  store i32 %882, i32* %12, align 4
  %883 = load i32, i32* %12, align 4
  %884 = sext i32 %883 to i64
  %885 = icmp ugt i64 %884, 999
  br i1 %885, label %886, label %887

886:                                              ; preds = %869
  store i32 999, i32* %12, align 4
  br label %887

887:                                              ; preds = %886, %869
  br label %888

888:                                              ; preds = %887
  br label %1030

889:                                              ; preds = %859
  %890 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %891 = call i64 @strcmp(i8* %890, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0))
  %892 = icmp eq i64 %891, 0
  br i1 %892, label %897, label %893

893:                                              ; preds = %889
  %894 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %895 = call i64 @strcmp(i8* %894, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0))
  %896 = icmp eq i64 %895, 0
  br i1 %896, label %897, label %1011

897:                                              ; preds = %893, %889
  %898 = load i32*, i32** %5, align 8
  %899 = load i32, i32* %6, align 4
  %900 = call i8* @READU16(i32* %898, i32 %899)
  %901 = ptrtoint i8* %900 to i32
  store i32 %901, i32* %38, align 4
  %902 = load i32, i32* %6, align 4
  %903 = add nsw i32 %902, 2
  store i32 %903, i32* %6, align 4
  %904 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %905 = call i64 @strcmp(i8* %904, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0))
  %906 = icmp eq i64 %905, 0
  br i1 %906, label %907, label %925

907:                                              ; preds = %897
  %908 = load i32, i32* %38, align 4
  store i32 %908, i32* %39, align 4
  store i32 0, i32* %38, align 4
  br label %909

909:                                              ; preds = %921, %907
  %910 = load i32, i32* %39, align 4
  %911 = icmp ne i32 %910, 0
  br i1 %911, label %912, label %924

912:                                              ; preds = %909
  %913 = load i32, i32* %38, align 4
  %914 = shl i32 %913, 1
  store i32 %914, i32* %38, align 4
  %915 = load i32, i32* %39, align 4
  %916 = and i32 %915, 1
  %917 = icmp ne i32 %916, 0
  br i1 %917, label %918, label %921

918:                                              ; preds = %912
  %919 = load i32, i32* %38, align 4
  %920 = or i32 %919, 1
  store i32 %920, i32* %38, align 4
  br label %921

921:                                              ; preds = %918, %912
  %922 = load i32, i32* %39, align 4
  %923 = ashr i32 %922, 1
  store i32 %923, i32* %39, align 4
  br label %909

924:                                              ; preds = %909
  br label %925

925:                                              ; preds = %924, %897
  store i32 0, i32* %41, align 4
  store i32 0, i32* %42, align 4
  store i32 0, i32* %43, align 4
  br label %926

926:                                              ; preds = %983, %925
  %927 = load i32, i32* %38, align 4
  %928 = icmp ne i32 %927, 0
  br i1 %928, label %929, label %990

929:                                              ; preds = %926
  %930 = load i32, i32* %38, align 4
  %931 = and i32 %930, 1
  %932 = icmp ne i32 %931, 0
  br i1 %932, label %933, label %983

933:                                              ; preds = %929
  %934 = load i32, i32* %42, align 4
  %935 = icmp ne i32 %934, 0
  br i1 %935, label %936, label %956

936:                                              ; preds = %933
  %937 = load i32, i32* %41, align 4
  %938 = icmp uge i32 %937, 3
  br i1 %938, label %939, label %950

939:                                              ; preds = %936
  %940 = load i32, i32* %41, align 4
  %941 = sub i32 %940, 3
  %942 = zext i32 %941 to i64
  %943 = getelementptr inbounds [48 x i8], [48 x i8]* %40, i64 0, i64 %942
  %944 = load i8, i8* %943, align 1
  %945 = sext i8 %944 to i32
  %946 = icmp eq i32 %945, 45
  br i1 %946, label %947, label %950

947:                                              ; preds = %939
  %948 = load i32, i32* %41, align 4
  %949 = sub i32 %948, 2
  store i32 %949, i32* %41, align 4
  br label %955

950:                                              ; preds = %939, %936
  %951 = load i32, i32* %41, align 4
  %952 = add i32 %951, 1
  store i32 %952, i32* %41, align 4
  %953 = zext i32 %951 to i64
  %954 = getelementptr inbounds [48 x i8], [48 x i8]* %40, i64 0, i64 %953
  store i8 45, i8* %954, align 1
  br label %955

955:                                              ; preds = %950, %947
  br label %965

956:                                              ; preds = %933
  %957 = load i32, i32* %41, align 4
  %958 = icmp ugt i32 %957, 0
  br i1 %958, label %959, label %964

959:                                              ; preds = %956
  %960 = load i32, i32* %41, align 4
  %961 = add i32 %960, 1
  store i32 %961, i32* %41, align 4
  %962 = zext i32 %960 to i64
  %963 = getelementptr inbounds [48 x i8], [48 x i8]* %40, i64 0, i64 %962
  store i8 47, i8* %963, align 1
  br label %964

964:                                              ; preds = %959, %956
  br label %965

965:                                              ; preds = %964, %955
  %966 = load i32, i32* %43, align 4
  %967 = icmp ult i32 %966, 8
  %968 = zext i1 %967 to i64
  %969 = select i1 %967, i32 68, i32 65
  %970 = trunc i32 %969 to i8
  %971 = load i32, i32* %41, align 4
  %972 = add i32 %971, 1
  store i32 %972, i32* %41, align 4
  %973 = zext i32 %971 to i64
  %974 = getelementptr inbounds [48 x i8], [48 x i8]* %40, i64 0, i64 %973
  store i8 %970, i8* %974, align 1
  %975 = load i32, i32* %43, align 4
  %976 = urem i32 %975, 8
  %977 = add i32 48, %976
  %978 = trunc i32 %977 to i8
  %979 = load i32, i32* %41, align 4
  %980 = add i32 %979, 1
  store i32 %980, i32* %41, align 4
  %981 = zext i32 %979 to i64
  %982 = getelementptr inbounds [48 x i8], [48 x i8]* %40, i64 0, i64 %981
  store i8 %978, i8* %982, align 1
  br label %983

983:                                              ; preds = %965, %929
  %984 = load i32, i32* %38, align 4
  %985 = and i32 %984, 1
  store i32 %985, i32* %42, align 4
  %986 = load i32, i32* %43, align 4
  %987 = add i32 %986, 1
  store i32 %987, i32* %43, align 4
  %988 = load i32, i32* %38, align 4
  %989 = ashr i32 %988, 1
  store i32 %989, i32* %38, align 4
  br label %926

990:                                              ; preds = %926
  %991 = load i32, i32* %41, align 4
  %992 = zext i32 %991 to i64
  %993 = getelementptr inbounds [48 x i8], [48 x i8]* %40, i64 0, i64 %992
  store i8 0, i8* %993, align 1
  br label %994

994:                                              ; preds = %990
  %995 = load i32, i32* %12, align 4
  %996 = sext i32 %995 to i64
  %997 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %996
  %998 = load i32, i32* %12, align 4
  %999 = sext i32 %998 to i64
  %1000 = sub i64 1000, %999
  %1001 = getelementptr inbounds [48 x i8], [48 x i8]* %40, i64 0, i64 0
  %1002 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %997, i64 %1000, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* %1001)
  %1003 = load i32, i32* %12, align 4
  %1004 = add nsw i32 %1003, %1002
  store i32 %1004, i32* %12, align 4
  %1005 = load i32, i32* %12, align 4
  %1006 = sext i32 %1005 to i64
  %1007 = icmp ugt i64 %1006, 999
  br i1 %1007, label %1008, label %1009

1008:                                             ; preds = %994
  store i32 999, i32* %12, align 4
  br label %1009

1009:                                             ; preds = %1008, %994
  br label %1010

1010:                                             ; preds = %1009
  br label %1029

1011:                                             ; preds = %893
  br label %1012

1012:                                             ; preds = %1011
  %1013 = load i32, i32* %12, align 4
  %1014 = sext i32 %1013 to i64
  %1015 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %1014
  %1016 = load i32, i32* %12, align 4
  %1017 = sext i32 %1016 to i64
  %1018 = sub i64 1000, %1017
  %1019 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %1020 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %1015, i64 %1018, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i8* %1019)
  %1021 = load i32, i32* %12, align 4
  %1022 = add nsw i32 %1021, %1020
  store i32 %1022, i32* %12, align 4
  %1023 = load i32, i32* %12, align 4
  %1024 = sext i32 %1023 to i64
  %1025 = icmp ugt i64 %1024, 999
  br i1 %1025, label %1026, label %1027

1026:                                             ; preds = %1012
  store i32 999, i32* %12, align 4
  br label %1027

1027:                                             ; preds = %1026, %1012
  br label %1028

1028:                                             ; preds = %1027
  br label %1029

1029:                                             ; preds = %1028, %1010
  br label %1030

1030:                                             ; preds = %1029, %888
  br label %1031

1031:                                             ; preds = %1030, %858
  br label %1032

1032:                                             ; preds = %1031, %831
  br label %1033

1033:                                             ; preds = %1032, %751
  br label %1034

1034:                                             ; preds = %1033, %669
  br label %1035

1035:                                             ; preds = %1034, %646
  br label %1036

1036:                                             ; preds = %1035, %622
  br label %1037

1037:                                             ; preds = %1036, %593
  br label %1038

1038:                                             ; preds = %1037, %569
  br label %1039

1039:                                             ; preds = %1038, %545
  br label %1062

1040:                                             ; preds = %111
  br label %1041

1041:                                             ; preds = %1040
  %1042 = load i32, i32* %12, align 4
  %1043 = sext i32 %1042 to i64
  %1044 = icmp ult i64 %1043, 999
  br i1 %1044, label %1045, label %1058

1045:                                             ; preds = %1041
  %1046 = load i8*, i8** %10, align 8
  %1047 = load i32, i32* %13, align 4
  %1048 = sext i32 %1047 to i64
  %1049 = getelementptr inbounds i8, i8* %1046, i64 %1048
  %1050 = load i8, i8* %1049, align 1
  %1051 = load i32, i32* %12, align 4
  %1052 = add nsw i32 %1051, 1
  store i32 %1052, i32* %12, align 4
  %1053 = sext i32 %1051 to i64
  %1054 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %1053
  store i8 %1050, i8* %1054, align 1
  %1055 = load i32, i32* %12, align 4
  %1056 = sext i32 %1055 to i64
  %1057 = getelementptr inbounds [1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 %1056
  store i8 0, i8* %1057, align 1
  br label %1058

1058:                                             ; preds = %1045, %1041
  br label %1059

1059:                                             ; preds = %1058
  %1060 = load i32, i32* %13, align 4
  %1061 = add nsw i32 %1060, 1
  store i32 %1061, i32* %13, align 4
  br label %1062

1062:                                             ; preds = %1059, %1039
  br label %103

1063:                                             ; preds = %103
  %1064 = load i32*, i32** %7, align 8
  %1065 = icmp ne i32* %1064, null
  br i1 %1065, label %1066, label %1072

1066:                                             ; preds = %1063
  %1067 = load i32, i32* %6, align 4
  %1068 = load i32, i32* %8, align 4
  %1069 = sub nsw i32 %1067, %1068
  %1070 = sdiv i32 %1069, 2
  %1071 = load i32*, i32** %7, align 8
  store i32 %1070, i32* %1071, align 4
  br label %1072

1072:                                             ; preds = %1066, %1063
  store i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @q68_disassemble.outbuf, i64 0, i64 0), i8** %4, align 8
  br label %1073

1073:                                             ; preds = %1072, %101, %53
  %1074 = load i8*, i8** %4, align 8
  ret i8* %1074
}

declare dso_local i8* @READU16(i32*, i32) #1

declare dso_local i32 @lenof(%struct.TYPE_3__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @READS16(i32*, i32) #1

declare dso_local i8* @READU32(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
