; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_json_serialize_to_buffer_r.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_json_serialize_to_buffer_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32, i8*)* @json_serialize_to_buffer_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_serialize_to_buffer_r(i32* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [32 x i8], align 16
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 -1, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @JsonValueGetType(i32* %23)
  switch i32 %24, label %282 [
    i32 134, label %25
    i32 129, label %103
    i32 128, label %212
    i32 133, label %238
    i32 130, label %248
    i32 131, label %278
    i32 132, label %281
  ]

25:                                               ; preds = %5
  %26 = load i32*, i32** %7, align 8
  %27 = call i32* @JsonValueGetArray(i32* %26)
  store i32* %27, i32** %15, align 8
  %28 = load i32*, i32** %15, align 8
  %29 = call i32 @JsonArrayGetCount(i32* %28)
  store i32 %29, i32* %18, align 4
  %30 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %18, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %33, %25
  store i32 0, i32* %17, align 4
  br label %39

39:                                               ; preds = %88, %38
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %18, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %91

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  %49 = call i32 @APPEND_INDENT(i32 %48)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32*, i32** %15, align 8
  %52 = load i32, i32* %17, align 4
  %53 = call i32* @JsonArrayGet(i32* %51, i32 %52)
  store i32* %53, i32** %14, align 8
  %54 = load i32*, i32** %14, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* %10, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @json_serialize_to_buffer_r(i32* %54, i8* %55, i32 %57, i32 %58, i8* %59)
  store i32 %60, i32* %20, align 4
  %61 = load i32, i32* %20, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  store i32 -1, i32* %6, align 4
  br label %283

64:                                               ; preds = %50
  %65 = load i8*, i8** %8, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32, i32* %20, align 4
  %69 = load i8*, i8** %8, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %8, align 8
  br label %72

72:                                               ; preds = %67, %64
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* %21, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %21, align 4
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %18, align 4
  %78 = sub nsw i32 %77, 1
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %72
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %82
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %17, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %17, align 4
  br label %39

91:                                               ; preds = %39
  %92 = load i32, i32* %18, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @APPEND_INDENT(i32 %98)
  br label %100

100:                                              ; preds = %97, %94, %91
  %101 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32, i32* %21, align 4
  store i32 %102, i32* %6, align 4
  br label %283

103:                                              ; preds = %5
  %104 = load i32*, i32** %7, align 8
  %105 = call i32* @JsonValueGetObject(i32* %104)
  store i32* %105, i32** %16, align 8
  %106 = load i32*, i32** %16, align 8
  %107 = call i32 @JsonGetCount(i32* %106)
  store i32 %107, i32* %18, align 4
  %108 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %109 = load i32, i32* %18, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %103
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %111, %103
  store i32 0, i32* %17, align 4
  br label %117

117:                                              ; preds = %197, %116
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %18, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %200

121:                                              ; preds = %117
  %122 = load i32*, i32** %16, align 8
  %123 = load i32, i32* %17, align 4
  %124 = call i8* @JsonGetName(i32* %122, i32 %123)
  store i8* %124, i8** %12, align 8
  %125 = load i8*, i8** %12, align 8
  %126 = icmp eq i8* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  store i32 -1, i32* %6, align 4
  br label %283

128:                                              ; preds = %121
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  %134 = call i32 @APPEND_INDENT(i32 %133)
  br label %135

135:                                              ; preds = %131, %128
  %136 = load i8*, i8** %12, align 8
  %137 = load i8*, i8** %8, align 8
  %138 = call i32 @json_serialize_string(i8* %136, i8* %137)
  store i32 %138, i32* %20, align 4
  %139 = load i32, i32* %20, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  store i32 -1, i32* %6, align 4
  br label %283

142:                                              ; preds = %135
  %143 = load i8*, i8** %8, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load i32, i32* %20, align 4
  %147 = load i8*, i8** %8, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  store i8* %149, i8** %8, align 8
  br label %150

150:                                              ; preds = %145, %142
  %151 = load i32, i32* %20, align 4
  %152 = load i32, i32* %21, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %21, align 4
  %154 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %150
  %158 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %150
  %160 = load i32*, i32** %16, align 8
  %161 = load i8*, i8** %12, align 8
  %162 = call i32* @JsonGet(i32* %160, i8* %161)
  store i32* %162, i32** %14, align 8
  %163 = load i32*, i32** %14, align 8
  %164 = load i8*, i8** %8, align 8
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %165, 1
  %167 = load i32, i32* %10, align 4
  %168 = load i8*, i8** %11, align 8
  %169 = call i32 @json_serialize_to_buffer_r(i32* %163, i8* %164, i32 %166, i32 %167, i8* %168)
  store i32 %169, i32* %20, align 4
  %170 = load i32, i32* %20, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %159
  store i32 -1, i32* %6, align 4
  br label %283

173:                                              ; preds = %159
  %174 = load i8*, i8** %8, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %181

176:                                              ; preds = %173
  %177 = load i32, i32* %20, align 4
  %178 = load i8*, i8** %8, align 8
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i8, i8* %178, i64 %179
  store i8* %180, i8** %8, align 8
  br label %181

181:                                              ; preds = %176, %173
  %182 = load i32, i32* %20, align 4
  %183 = load i32, i32* %21, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, i32* %21, align 4
  %185 = load i32, i32* %17, align 4
  %186 = load i32, i32* %18, align 4
  %187 = sub nsw i32 %186, 1
  %188 = icmp slt i32 %185, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %181
  %190 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %191

191:                                              ; preds = %189, %181
  %192 = load i32, i32* %10, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %191
  %195 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %196

196:                                              ; preds = %194, %191
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %17, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %17, align 4
  br label %117

200:                                              ; preds = %117
  %201 = load i32, i32* %18, align 4
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %200
  %204 = load i32, i32* %10, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load i32, i32* %9, align 4
  %208 = call i32 @APPEND_INDENT(i32 %207)
  br label %209

209:                                              ; preds = %206, %203, %200
  %210 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %211 = load i32, i32* %21, align 4
  store i32 %211, i32* %6, align 4
  br label %283

212:                                              ; preds = %5
  %213 = load i32*, i32** %7, align 8
  %214 = call i8* @JsonValueGetStr(i32* %213)
  store i8* %214, i8** %13, align 8
  %215 = load i8*, i8** %13, align 8
  %216 = icmp eq i8* %215, null
  br i1 %216, label %217, label %218

217:                                              ; preds = %212
  store i32 -1, i32* %6, align 4
  br label %283

218:                                              ; preds = %212
  %219 = load i8*, i8** %13, align 8
  %220 = load i8*, i8** %8, align 8
  %221 = call i32 @json_serialize_string(i8* %219, i8* %220)
  store i32 %221, i32* %20, align 4
  %222 = load i32, i32* %20, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %218
  store i32 -1, i32* %6, align 4
  br label %283

225:                                              ; preds = %218
  %226 = load i8*, i8** %8, align 8
  %227 = icmp ne i8* %226, null
  br i1 %227, label %228, label %233

228:                                              ; preds = %225
  %229 = load i32, i32* %20, align 4
  %230 = load i8*, i8** %8, align 8
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds i8, i8* %230, i64 %231
  store i8* %232, i8** %8, align 8
  br label %233

233:                                              ; preds = %228, %225
  %234 = load i32, i32* %20, align 4
  %235 = load i32, i32* %21, align 4
  %236 = add nsw i32 %235, %234
  store i32 %236, i32* %21, align 4
  %237 = load i32, i32* %21, align 4
  store i32 %237, i32* %6, align 4
  br label %283

238:                                              ; preds = %5
  %239 = load i32*, i32** %7, align 8
  %240 = call i32 @JsonValueGetBool(i32* %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %238
  %243 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %246

244:                                              ; preds = %238
  %245 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %246

246:                                              ; preds = %244, %242
  %247 = load i32, i32* %21, align 4
  store i32 %247, i32* %6, align 4
  br label %283

248:                                              ; preds = %5
  %249 = load i32*, i32** %7, align 8
  %250 = call i32 @JsonValueGetNumber(i32* %249)
  store i32 %250, i32* %19, align 4
  %251 = load i8*, i8** %8, align 8
  %252 = icmp ne i8* %251, null
  br i1 %252, label %253, label %255

253:                                              ; preds = %248
  %254 = load i8*, i8** %8, align 8
  store i8* %254, i8** %11, align 8
  br label %255

255:                                              ; preds = %253, %248
  %256 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %257 = load i32, i32* %19, align 4
  %258 = call i32 @ToStr64(i8* %256, i32 %257)
  %259 = load i8*, i8** %11, align 8
  %260 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %261 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %262 = call i32 @StrLen(i8* %261)
  %263 = call i32 @Copy(i8* %259, i8* %260, i32 %262)
  %264 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %265 = call i32 @StrLen(i8* %264)
  store i32 %265, i32* %20, align 4
  %266 = load i8*, i8** %8, align 8
  %267 = icmp ne i8* %266, null
  br i1 %267, label %268, label %273

268:                                              ; preds = %255
  %269 = load i32, i32* %20, align 4
  %270 = load i8*, i8** %8, align 8
  %271 = sext i32 %269 to i64
  %272 = getelementptr inbounds i8, i8* %270, i64 %271
  store i8* %272, i8** %8, align 8
  br label %273

273:                                              ; preds = %268, %255
  %274 = load i32, i32* %20, align 4
  %275 = load i32, i32* %21, align 4
  %276 = add nsw i32 %275, %274
  store i32 %276, i32* %21, align 4
  %277 = load i32, i32* %21, align 4
  store i32 %277, i32* %6, align 4
  br label %283

278:                                              ; preds = %5
  %279 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %280 = load i32, i32* %21, align 4
  store i32 %280, i32* %6, align 4
  br label %283

281:                                              ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %283

282:                                              ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %283

283:                                              ; preds = %282, %281, %278, %273, %246, %233, %224, %217, %209, %172, %141, %127, %100, %63
  %284 = load i32, i32* %6, align 4
  ret i32 %284
}

declare dso_local i32 @JsonValueGetType(i32*) #1

declare dso_local i32* @JsonValueGetArray(i32*) #1

declare dso_local i32 @JsonArrayGetCount(i32*) #1

declare dso_local i32 @APPEND_STRING(i8*) #1

declare dso_local i32 @APPEND_INDENT(i32) #1

declare dso_local i32* @JsonArrayGet(i32*, i32) #1

declare dso_local i32* @JsonValueGetObject(i32*) #1

declare dso_local i32 @JsonGetCount(i32*) #1

declare dso_local i8* @JsonGetName(i32*, i32) #1

declare dso_local i32 @json_serialize_string(i8*, i8*) #1

declare dso_local i32* @JsonGet(i32*, i8*) #1

declare dso_local i8* @JsonValueGetStr(i32*) #1

declare dso_local i32 @JsonValueGetBool(i32*) #1

declare dso_local i32 @JsonValueGetNumber(i32*) #1

declare dso_local i32 @ToStr64(i8*, i32) #1

declare dso_local i32 @Copy(i8*, i8*, i32) #1

declare dso_local i32 @StrLen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
