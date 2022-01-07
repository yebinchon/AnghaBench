; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_strptime.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_strptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ALT_E = common dso_local global i32 0, align 4
@ALT_O = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%x %X\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%m/%d/%y\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%H:%M\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%I:%M:%S %p\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@day = common dso_local global i32* null, align 8
@abday = common dso_local global i32* null, align 8
@mon = common dso_local global i32* null, align 8
@abmon = common dso_local global i32* null, align 8
@am_pm = common dso_local global i32* null, align 8
@TM_YEAR_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @arg_strptime(i8* %0, i8* %1, %struct.tm* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tm*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.tm* %2, %struct.tm** %7, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %9, align 8
  br label %15

15:                                               ; preds = %476, %35, %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %8, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %477

20:                                               ; preds = %15
  store i32 0, i32* %11, align 4
  %21 = load i8, i8* %8, align 1
  %22 = sext i8 %21 to i32
  %23 = call i64 @isspace(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %32, %25
  %27 = load i8*, i8** %9, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = call i64 @isspace(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %9, align 8
  br label %26

35:                                               ; preds = %26
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %6, align 8
  br label %15

38:                                               ; preds = %20
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %6, align 8
  %41 = load i8, i8* %39, align 1
  store i8 %41, i8* %8, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 37
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %52

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %67, %62, %45
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %6, align 8
  %49 = load i8, i8* %47, align 1
  store i8 %49, i8* %8, align 1
  %50 = sext i8 %49 to i32
  switch i32 %50, label %475 [
    i32 37, label %51
    i32 69, label %62
    i32 79, label %67
    i32 99, label %72
    i32 68, label %82
    i32 82, label %91
    i32 114, label %100
    i32 84, label %109
    i32 88, label %118
    i32 120, label %128
    i32 65, label %138
    i32 97, label %138
    i32 66, label %192
    i32 98, label %192
    i32 104, label %192
    i32 67, label %246
    i32 100, label %271
    i32 101, label %271
    i32 107, label %280
    i32 72, label %282
    i32 108, label %291
    i32 73, label %293
    i32 106, label %310
    i32 77, label %320
    i32 109, label %329
    i32 112, label %340
    i32 83, label %387
    i32 85, label %396
    i32 87, label %396
    i32 119, label %403
    i32 89, label %412
    i32 121, label %424
    i32 110, label %463
    i32 116, label %463
  ]

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %44
  %53 = load i8, i8* %8, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %9, align 8
  %57 = load i8, i8* %55, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %54, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i8* null, i8** %4, align 8
  br label %479

61:                                               ; preds = %52
  br label %476

62:                                               ; preds = %46
  %63 = call i32 @LEGAL_ALT(i32 0)
  %64 = load i32, i32* @ALT_E, align 4
  %65 = load i32, i32* %11, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %11, align 4
  br label %46

67:                                               ; preds = %46
  %68 = call i32 @LEGAL_ALT(i32 0)
  %69 = load i32, i32* @ALT_O, align 4
  %70 = load i32, i32* %11, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %11, align 4
  br label %46

72:                                               ; preds = %46
  %73 = load i32, i32* @ALT_E, align 4
  %74 = call i32 @LEGAL_ALT(i32 %73)
  %75 = load i8*, i8** %9, align 8
  %76 = load %struct.tm*, %struct.tm** %7, align 8
  %77 = call i8* @arg_strptime(i8* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.tm* %76)
  store i8* %77, i8** %9, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %72
  store i8* null, i8** %4, align 8
  br label %479

81:                                               ; preds = %72
  br label %476

82:                                               ; preds = %46
  %83 = call i32 @LEGAL_ALT(i32 0)
  %84 = load i8*, i8** %9, align 8
  %85 = load %struct.tm*, %struct.tm** %7, align 8
  %86 = call i8* @arg_strptime(i8* %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.tm* %85)
  store i8* %86, i8** %9, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %82
  store i8* null, i8** %4, align 8
  br label %479

90:                                               ; preds = %82
  br label %476

91:                                               ; preds = %46
  %92 = call i32 @LEGAL_ALT(i32 0)
  %93 = load i8*, i8** %9, align 8
  %94 = load %struct.tm*, %struct.tm** %7, align 8
  %95 = call i8* @arg_strptime(i8* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.tm* %94)
  store i8* %95, i8** %9, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %91
  store i8* null, i8** %4, align 8
  br label %479

99:                                               ; preds = %91
  br label %476

100:                                              ; preds = %46
  %101 = call i32 @LEGAL_ALT(i32 0)
  %102 = load i8*, i8** %9, align 8
  %103 = load %struct.tm*, %struct.tm** %7, align 8
  %104 = call i8* @arg_strptime(i8* %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %struct.tm* %103)
  store i8* %104, i8** %9, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %100
  store i8* null, i8** %4, align 8
  br label %479

108:                                              ; preds = %100
  br label %476

109:                                              ; preds = %46
  %110 = call i32 @LEGAL_ALT(i32 0)
  %111 = load i8*, i8** %9, align 8
  %112 = load %struct.tm*, %struct.tm** %7, align 8
  %113 = call i8* @arg_strptime(i8* %111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.tm* %112)
  store i8* %113, i8** %9, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %109
  store i8* null, i8** %4, align 8
  br label %479

117:                                              ; preds = %109
  br label %476

118:                                              ; preds = %46
  %119 = load i32, i32* @ALT_E, align 4
  %120 = call i32 @LEGAL_ALT(i32 %119)
  %121 = load i8*, i8** %9, align 8
  %122 = load %struct.tm*, %struct.tm** %7, align 8
  %123 = call i8* @arg_strptime(i8* %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.tm* %122)
  store i8* %123, i8** %9, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %118
  store i8* null, i8** %4, align 8
  br label %479

127:                                              ; preds = %118
  br label %476

128:                                              ; preds = %46
  %129 = load i32, i32* @ALT_E, align 4
  %130 = call i32 @LEGAL_ALT(i32 %129)
  %131 = load i8*, i8** %9, align 8
  %132 = load %struct.tm*, %struct.tm** %7, align 8
  %133 = call i8* @arg_strptime(i8* %131, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.tm* %132)
  store i8* %133, i8** %9, align 8
  %134 = load i8*, i8** %9, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %128
  store i8* null, i8** %4, align 8
  br label %479

137:                                              ; preds = %128
  br label %476

138:                                              ; preds = %46, %46
  %139 = call i32 @LEGAL_ALT(i32 0)
  store i32 0, i32* %12, align 4
  br label %140

140:                                              ; preds = %178, %138
  %141 = load i32, i32* %12, align 4
  %142 = icmp slt i32 %141, 7
  br i1 %142, label %143, label %181

143:                                              ; preds = %140
  %144 = load i32*, i32** @day, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @strlen(i32 %148)
  store i64 %149, i64* %10, align 8
  %150 = load i32*, i32** @day, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i8*, i8** %9, align 8
  %156 = load i64, i64* %10, align 8
  %157 = call i32 @arg_strncasecmp(i32 %154, i8* %155, i64 %156)
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %143
  br label %181

160:                                              ; preds = %143
  %161 = load i32*, i32** @abday, align 8
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i64 @strlen(i32 %165)
  store i64 %166, i64* %10, align 8
  %167 = load i32*, i32** @abday, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i8*, i8** %9, align 8
  %173 = load i64, i64* %10, align 8
  %174 = call i32 @arg_strncasecmp(i32 %171, i8* %172, i64 %173)
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %160
  br label %181

177:                                              ; preds = %160
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %12, align 4
  br label %140

181:                                              ; preds = %176, %159, %140
  %182 = load i32, i32* %12, align 4
  %183 = icmp eq i32 %182, 7
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  store i8* null, i8** %4, align 8
  br label %479

185:                                              ; preds = %181
  %186 = load i32, i32* %12, align 4
  %187 = load %struct.tm*, %struct.tm** %7, align 8
  %188 = getelementptr inbounds %struct.tm, %struct.tm* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 4
  %189 = load i64, i64* %10, align 8
  %190 = load i8*, i8** %9, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 %189
  store i8* %191, i8** %9, align 8
  br label %476

192:                                              ; preds = %46, %46, %46
  %193 = call i32 @LEGAL_ALT(i32 0)
  store i32 0, i32* %12, align 4
  br label %194

194:                                              ; preds = %232, %192
  %195 = load i32, i32* %12, align 4
  %196 = icmp slt i32 %195, 12
  br i1 %196, label %197, label %235

197:                                              ; preds = %194
  %198 = load i32*, i32** @mon, align 8
  %199 = load i32, i32* %12, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i64 @strlen(i32 %202)
  store i64 %203, i64* %10, align 8
  %204 = load i32*, i32** @mon, align 8
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i8*, i8** %9, align 8
  %210 = load i64, i64* %10, align 8
  %211 = call i32 @arg_strncasecmp(i32 %208, i8* %209, i64 %210)
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %197
  br label %235

214:                                              ; preds = %197
  %215 = load i32*, i32** @abmon, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = call i64 @strlen(i32 %219)
  store i64 %220, i64* %10, align 8
  %221 = load i32*, i32** @abmon, align 8
  %222 = load i32, i32* %12, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i8*, i8** %9, align 8
  %227 = load i64, i64* %10, align 8
  %228 = call i32 @arg_strncasecmp(i32 %225, i8* %226, i64 %227)
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %214
  br label %235

231:                                              ; preds = %214
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %12, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %12, align 4
  br label %194

235:                                              ; preds = %230, %213, %194
  %236 = load i32, i32* %12, align 4
  %237 = icmp eq i32 %236, 12
  br i1 %237, label %238, label %239

238:                                              ; preds = %235
  store i8* null, i8** %4, align 8
  br label %479

239:                                              ; preds = %235
  %240 = load i32, i32* %12, align 4
  %241 = load %struct.tm*, %struct.tm** %7, align 8
  %242 = getelementptr inbounds %struct.tm, %struct.tm* %241, i32 0, i32 1
  store i32 %240, i32* %242, align 4
  %243 = load i64, i64* %10, align 8
  %244 = load i8*, i8** %9, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 %243
  store i8* %245, i8** %9, align 8
  br label %476

246:                                              ; preds = %46
  %247 = load i32, i32* @ALT_E, align 4
  %248 = call i32 @LEGAL_ALT(i32 %247)
  %249 = call i32 @conv_num(i8** %9, i32* %12, i32 0, i32 99)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %246
  store i8* null, i8** %4, align 8
  br label %479

252:                                              ; preds = %246
  %253 = load i32, i32* %13, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %265

255:                                              ; preds = %252
  %256 = load %struct.tm*, %struct.tm** %7, align 8
  %257 = getelementptr inbounds %struct.tm, %struct.tm* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = srem i32 %258, 100
  %260 = load i32, i32* %12, align 4
  %261 = mul nsw i32 %260, 100
  %262 = add nsw i32 %259, %261
  %263 = load %struct.tm*, %struct.tm** %7, align 8
  %264 = getelementptr inbounds %struct.tm, %struct.tm* %263, i32 0, i32 2
  store i32 %262, i32* %264, align 4
  br label %270

265:                                              ; preds = %252
  %266 = load i32, i32* %12, align 4
  %267 = mul nsw i32 %266, 100
  %268 = load %struct.tm*, %struct.tm** %7, align 8
  %269 = getelementptr inbounds %struct.tm, %struct.tm* %268, i32 0, i32 2
  store i32 %267, i32* %269, align 4
  store i32 1, i32* %13, align 4
  br label %270

270:                                              ; preds = %265, %255
  br label %476

271:                                              ; preds = %46, %46
  %272 = load i32, i32* @ALT_O, align 4
  %273 = call i32 @LEGAL_ALT(i32 %272)
  %274 = load %struct.tm*, %struct.tm** %7, align 8
  %275 = getelementptr inbounds %struct.tm, %struct.tm* %274, i32 0, i32 3
  %276 = call i32 @conv_num(i8** %9, i32* %275, i32 1, i32 31)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %279, label %278

278:                                              ; preds = %271
  store i8* null, i8** %4, align 8
  br label %479

279:                                              ; preds = %271
  br label %476

280:                                              ; preds = %46
  %281 = call i32 @LEGAL_ALT(i32 0)
  br label %282

282:                                              ; preds = %46, %280
  %283 = load i32, i32* @ALT_O, align 4
  %284 = call i32 @LEGAL_ALT(i32 %283)
  %285 = load %struct.tm*, %struct.tm** %7, align 8
  %286 = getelementptr inbounds %struct.tm, %struct.tm* %285, i32 0, i32 4
  %287 = call i32 @conv_num(i8** %9, i32* %286, i32 0, i32 23)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %290, label %289

289:                                              ; preds = %282
  store i8* null, i8** %4, align 8
  br label %479

290:                                              ; preds = %282
  br label %476

291:                                              ; preds = %46
  %292 = call i32 @LEGAL_ALT(i32 0)
  br label %293

293:                                              ; preds = %46, %291
  %294 = load i32, i32* @ALT_O, align 4
  %295 = call i32 @LEGAL_ALT(i32 %294)
  %296 = load %struct.tm*, %struct.tm** %7, align 8
  %297 = getelementptr inbounds %struct.tm, %struct.tm* %296, i32 0, i32 4
  %298 = call i32 @conv_num(i8** %9, i32* %297, i32 1, i32 12)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %301, label %300

300:                                              ; preds = %293
  store i8* null, i8** %4, align 8
  br label %479

301:                                              ; preds = %293
  %302 = load %struct.tm*, %struct.tm** %7, align 8
  %303 = getelementptr inbounds %struct.tm, %struct.tm* %302, i32 0, i32 4
  %304 = load i32, i32* %303, align 4
  %305 = icmp eq i32 %304, 12
  br i1 %305, label %306, label %309

306:                                              ; preds = %301
  %307 = load %struct.tm*, %struct.tm** %7, align 8
  %308 = getelementptr inbounds %struct.tm, %struct.tm* %307, i32 0, i32 4
  store i32 0, i32* %308, align 4
  br label %309

309:                                              ; preds = %306, %301
  br label %476

310:                                              ; preds = %46
  %311 = call i32 @LEGAL_ALT(i32 0)
  %312 = call i32 @conv_num(i8** %9, i32* %12, i32 1, i32 366)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %315, label %314

314:                                              ; preds = %310
  store i8* null, i8** %4, align 8
  br label %479

315:                                              ; preds = %310
  %316 = load i32, i32* %12, align 4
  %317 = sub nsw i32 %316, 1
  %318 = load %struct.tm*, %struct.tm** %7, align 8
  %319 = getelementptr inbounds %struct.tm, %struct.tm* %318, i32 0, i32 5
  store i32 %317, i32* %319, align 4
  br label %476

320:                                              ; preds = %46
  %321 = load i32, i32* @ALT_O, align 4
  %322 = call i32 @LEGAL_ALT(i32 %321)
  %323 = load %struct.tm*, %struct.tm** %7, align 8
  %324 = getelementptr inbounds %struct.tm, %struct.tm* %323, i32 0, i32 6
  %325 = call i32 @conv_num(i8** %9, i32* %324, i32 0, i32 59)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %328, label %327

327:                                              ; preds = %320
  store i8* null, i8** %4, align 8
  br label %479

328:                                              ; preds = %320
  br label %476

329:                                              ; preds = %46
  %330 = load i32, i32* @ALT_O, align 4
  %331 = call i32 @LEGAL_ALT(i32 %330)
  %332 = call i32 @conv_num(i8** %9, i32* %12, i32 1, i32 12)
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %335, label %334

334:                                              ; preds = %329
  store i8* null, i8** %4, align 8
  br label %479

335:                                              ; preds = %329
  %336 = load i32, i32* %12, align 4
  %337 = sub nsw i32 %336, 1
  %338 = load %struct.tm*, %struct.tm** %7, align 8
  %339 = getelementptr inbounds %struct.tm, %struct.tm* %338, i32 0, i32 1
  store i32 %337, i32* %339, align 4
  br label %476

340:                                              ; preds = %46
  %341 = call i32 @LEGAL_ALT(i32 0)
  %342 = load i32*, i32** @am_pm, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 0
  %344 = load i32, i32* %343, align 4
  %345 = load i8*, i8** %9, align 8
  %346 = call i32 @arg_strcasecmp(i32 %344, i8* %345)
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %361

348:                                              ; preds = %340
  %349 = load %struct.tm*, %struct.tm** %7, align 8
  %350 = getelementptr inbounds %struct.tm, %struct.tm* %349, i32 0, i32 4
  %351 = load i32, i32* %350, align 4
  %352 = icmp sgt i32 %351, 11
  br i1 %352, label %353, label %354

353:                                              ; preds = %348
  store i8* null, i8** %4, align 8
  br label %479

354:                                              ; preds = %348
  %355 = load i32*, i32** @am_pm, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 0
  %357 = load i32, i32* %356, align 4
  %358 = call i64 @strlen(i32 %357)
  %359 = load i8*, i8** %9, align 8
  %360 = getelementptr inbounds i8, i8* %359, i64 %358
  store i8* %360, i8** %9, align 8
  br label %476

361:                                              ; preds = %340
  %362 = load i32*, i32** @am_pm, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 1
  %364 = load i32, i32* %363, align 4
  %365 = load i8*, i8** %9, align 8
  %366 = call i32 @arg_strcasecmp(i32 %364, i8* %365)
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %385

368:                                              ; preds = %361
  %369 = load %struct.tm*, %struct.tm** %7, align 8
  %370 = getelementptr inbounds %struct.tm, %struct.tm* %369, i32 0, i32 4
  %371 = load i32, i32* %370, align 4
  %372 = icmp sgt i32 %371, 11
  br i1 %372, label %373, label %374

373:                                              ; preds = %368
  store i8* null, i8** %4, align 8
  br label %479

374:                                              ; preds = %368
  %375 = load %struct.tm*, %struct.tm** %7, align 8
  %376 = getelementptr inbounds %struct.tm, %struct.tm* %375, i32 0, i32 4
  %377 = load i32, i32* %376, align 4
  %378 = add nsw i32 %377, 12
  store i32 %378, i32* %376, align 4
  %379 = load i32*, i32** @am_pm, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 1
  %381 = load i32, i32* %380, align 4
  %382 = call i64 @strlen(i32 %381)
  %383 = load i8*, i8** %9, align 8
  %384 = getelementptr inbounds i8, i8* %383, i64 %382
  store i8* %384, i8** %9, align 8
  br label %476

385:                                              ; preds = %361
  br label %386

386:                                              ; preds = %385
  store i8* null, i8** %4, align 8
  br label %479

387:                                              ; preds = %46
  %388 = load i32, i32* @ALT_O, align 4
  %389 = call i32 @LEGAL_ALT(i32 %388)
  %390 = load %struct.tm*, %struct.tm** %7, align 8
  %391 = getelementptr inbounds %struct.tm, %struct.tm* %390, i32 0, i32 7
  %392 = call i32 @conv_num(i8** %9, i32* %391, i32 0, i32 61)
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %395, label %394

394:                                              ; preds = %387
  store i8* null, i8** %4, align 8
  br label %479

395:                                              ; preds = %387
  br label %476

396:                                              ; preds = %46, %46
  %397 = load i32, i32* @ALT_O, align 4
  %398 = call i32 @LEGAL_ALT(i32 %397)
  %399 = call i32 @conv_num(i8** %9, i32* %12, i32 0, i32 53)
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %402, label %401

401:                                              ; preds = %396
  store i8* null, i8** %4, align 8
  br label %479

402:                                              ; preds = %396
  br label %476

403:                                              ; preds = %46
  %404 = load i32, i32* @ALT_O, align 4
  %405 = call i32 @LEGAL_ALT(i32 %404)
  %406 = load %struct.tm*, %struct.tm** %7, align 8
  %407 = getelementptr inbounds %struct.tm, %struct.tm* %406, i32 0, i32 0
  %408 = call i32 @conv_num(i8** %9, i32* %407, i32 0, i32 6)
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %411, label %410

410:                                              ; preds = %403
  store i8* null, i8** %4, align 8
  br label %479

411:                                              ; preds = %403
  br label %476

412:                                              ; preds = %46
  %413 = load i32, i32* @ALT_E, align 4
  %414 = call i32 @LEGAL_ALT(i32 %413)
  %415 = call i32 @conv_num(i8** %9, i32* %12, i32 0, i32 9999)
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %418, label %417

417:                                              ; preds = %412
  store i8* null, i8** %4, align 8
  br label %479

418:                                              ; preds = %412
  %419 = load i32, i32* %12, align 4
  %420 = load i32, i32* @TM_YEAR_BASE, align 4
  %421 = sub nsw i32 %419, %420
  %422 = load %struct.tm*, %struct.tm** %7, align 8
  %423 = getelementptr inbounds %struct.tm, %struct.tm* %422, i32 0, i32 2
  store i32 %421, i32* %423, align 4
  br label %476

424:                                              ; preds = %46
  %425 = load i32, i32* @ALT_E, align 4
  %426 = load i32, i32* @ALT_O, align 4
  %427 = or i32 %425, %426
  %428 = call i32 @LEGAL_ALT(i32 %427)
  %429 = call i32 @conv_num(i8** %9, i32* %12, i32 0, i32 99)
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %432, label %431

431:                                              ; preds = %424
  store i8* null, i8** %4, align 8
  br label %479

432:                                              ; preds = %424
  %433 = load i32, i32* %13, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %445

435:                                              ; preds = %432
  %436 = load %struct.tm*, %struct.tm** %7, align 8
  %437 = getelementptr inbounds %struct.tm, %struct.tm* %436, i32 0, i32 2
  %438 = load i32, i32* %437, align 4
  %439 = sdiv i32 %438, 100
  %440 = mul nsw i32 %439, 100
  %441 = load i32, i32* %12, align 4
  %442 = add nsw i32 %440, %441
  %443 = load %struct.tm*, %struct.tm** %7, align 8
  %444 = getelementptr inbounds %struct.tm, %struct.tm* %443, i32 0, i32 2
  store i32 %442, i32* %444, align 4
  br label %476

445:                                              ; preds = %432
  store i32 1, i32* %13, align 4
  %446 = load i32, i32* %12, align 4
  %447 = icmp sle i32 %446, 68
  br i1 %447, label %448, label %455

448:                                              ; preds = %445
  %449 = load i32, i32* %12, align 4
  %450 = add nsw i32 %449, 2000
  %451 = load i32, i32* @TM_YEAR_BASE, align 4
  %452 = sub nsw i32 %450, %451
  %453 = load %struct.tm*, %struct.tm** %7, align 8
  %454 = getelementptr inbounds %struct.tm, %struct.tm* %453, i32 0, i32 2
  store i32 %452, i32* %454, align 4
  br label %462

455:                                              ; preds = %445
  %456 = load i32, i32* %12, align 4
  %457 = add nsw i32 %456, 1900
  %458 = load i32, i32* @TM_YEAR_BASE, align 4
  %459 = sub nsw i32 %457, %458
  %460 = load %struct.tm*, %struct.tm** %7, align 8
  %461 = getelementptr inbounds %struct.tm, %struct.tm* %460, i32 0, i32 2
  store i32 %459, i32* %461, align 4
  br label %462

462:                                              ; preds = %455, %448
  br label %476

463:                                              ; preds = %46, %46
  %464 = call i32 @LEGAL_ALT(i32 0)
  br label %465

465:                                              ; preds = %471, %463
  %466 = load i8*, i8** %9, align 8
  %467 = load i8, i8* %466, align 1
  %468 = sext i8 %467 to i32
  %469 = call i64 @isspace(i32 %468)
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %474

471:                                              ; preds = %465
  %472 = load i8*, i8** %9, align 8
  %473 = getelementptr inbounds i8, i8* %472, i32 1
  store i8* %473, i8** %9, align 8
  br label %465

474:                                              ; preds = %465
  br label %476

475:                                              ; preds = %46
  store i8* null, i8** %4, align 8
  br label %479

476:                                              ; preds = %474, %462, %435, %418, %411, %402, %395, %374, %354, %335, %328, %315, %309, %290, %279, %270, %239, %185, %137, %127, %117, %108, %99, %90, %81, %61
  br label %15

477:                                              ; preds = %15
  %478 = load i8*, i8** %9, align 8
  store i8* %478, i8** %4, align 8
  br label %479

479:                                              ; preds = %477, %475, %431, %417, %410, %401, %394, %386, %373, %353, %334, %327, %314, %300, %289, %278, %251, %238, %184, %136, %126, %116, %107, %98, %89, %80, %60
  %480 = load i8*, i8** %4, align 8
  ret i8* %480
}

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @LEGAL_ALT(i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @arg_strncasecmp(i32, i8*, i64) #1

declare dso_local i32 @conv_num(i8**, i32*, i32, i32) #1

declare dso_local i32 @arg_strcasecmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
