; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Table.c_ParseTableLine.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Table.c_ParseTableLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"PREFIX\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"@\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @ParseTableLine(i8* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_4__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = load i8*, i8** %7, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %298

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @TrimLeft(i8* %33)
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @StrLen(i8* %35)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %298

40:                                               ; preds = %32
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 35
  br i1 %45, label %58, label %46

46:                                               ; preds = %40
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 47
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 47
  br i1 %57, label %58, label %59

58:                                               ; preds = %52, %40
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %298

59:                                               ; preds = %52, %46
  store i64 0, i64* %12, align 8
  store i64 0, i64* %10, align 8
  br label %60

60:                                               ; preds = %86, %59
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %298

68:                                               ; preds = %60
  %69 = load i8*, i8** %6, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 32
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load i8*, i8** %6, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 9
  br i1 %81, label %82, label %83

82:                                               ; preds = %75, %68
  br label %89

83:                                               ; preds = %75
  %84 = load i64, i64* %12, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %12, align 8
  br label %86

86:                                               ; preds = %83
  %87 = load i64, i64* %10, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %10, align 8
  br label %60

89:                                               ; preds = %82
  %90 = load i64, i64* %12, align 8
  %91 = add i64 %90, 1
  %92 = trunc i64 %91 to i32
  %93 = call i8* @Malloc(i32 %92)
  store i8* %93, i8** %14, align 8
  %94 = load i8*, i8** %14, align 8
  %95 = load i64, i64* %12, align 8
  %96 = add i64 %95, 1
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @StrCpy(i8* %94, i64 %96, i8* %97)
  %99 = load i64, i64* %12, align 8
  store i64 %99, i64* %13, align 8
  %100 = load i64, i64* %12, align 8
  store i64 %100, i64* %10, align 8
  br label %101

101:                                              ; preds = %123, %89
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* %11, align 8
  %104 = icmp ult i64 %102, %103
  br i1 %104, label %105, label %126

105:                                              ; preds = %101
  %106 = load i8*, i8** %6, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 32
  br i1 %111, label %112, label %120

112:                                              ; preds = %105
  %113 = load i8*, i8** %6, align 8
  %114 = load i64, i64* %10, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 9
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  br label %126

120:                                              ; preds = %112, %105
  %121 = load i64, i64* %13, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %13, align 8
  br label %123

123:                                              ; preds = %120
  %124 = load i64, i64* %10, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %10, align 8
  br label %101

126:                                              ; preds = %119, %101
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* %11, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i8*, i8** %14, align 8
  %132 = call i32 @Free(i8* %131)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %298

133:                                              ; preds = %126
  %134 = load i8*, i8** %6, align 8
  %135 = load i64, i64* %13, align 8
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  %137 = call i32 @UnescapeStr(i8* %136)
  %138 = load i8*, i8** %6, align 8
  %139 = load i64, i64* %13, align 8
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  %141 = load i8*, i8** %6, align 8
  %142 = load i64, i64* %13, align 8
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  %144 = call i64 @StrLen(i8* %143)
  %145 = call i64 @CalcUtf8ToUni(i8* %140, i64 %144)
  store i64 %145, i64* %19, align 8
  %146 = load i64, i64* %19, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %133
  %149 = load i8*, i8** %14, align 8
  %150 = call i32 @Free(i8* %149)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %298

151:                                              ; preds = %133
  %152 = load i64, i64* %19, align 8
  %153 = trunc i64 %152 to i32
  %154 = call i8* @Malloc(i32 %153)
  store i8* %154, i8** %17, align 8
  %155 = load i8*, i8** %17, align 8
  %156 = load i64, i64* %19, align 8
  %157 = load i8*, i8** %6, align 8
  %158 = load i64, i64* %13, align 8
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  %160 = load i8*, i8** %6, align 8
  %161 = load i64, i64* %13, align 8
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  %163 = call i64 @StrLen(i8* %162)
  %164 = call i32 @Utf8ToUni(i8* %155, i64 %156, i8* %159, i64 %163)
  %165 = load i8*, i8** %17, align 8
  %166 = call i64 @UniInChar(i8* %165, i32 36)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %210

168:                                              ; preds = %151
  %169 = load i8*, i8** %17, align 8
  %170 = call i32 @UniStrSize(i8* %169)
  %171 = add nsw i32 %170, 1024
  %172 = mul nsw i32 %171, 2
  %173 = sext i32 %172 to i64
  store i64 %173, i64* %23, align 8
  %174 = load i64, i64* %23, align 8
  %175 = trunc i64 %174 to i32
  %176 = call i8* @Malloc(i32 %175)
  store i8* %176, i8** %22, align 8
  %177 = load i8*, i8** %22, align 8
  %178 = load i64, i64* %23, align 8
  %179 = load i8*, i8** %17, align 8
  %180 = call i32 @UniStrCpy(i8* %177, i64 %178, i8* %179)
  store i64 0, i64* %24, align 8
  br label %181

181:                                              ; preds = %200, %168
  %182 = load i64, i64* %24, align 8
  %183 = load i32*, i32** %9, align 8
  %184 = call i64 @LIST_NUM(i32* %183)
  %185 = icmp ult i64 %182, %184
  br i1 %185, label %186, label %203

186:                                              ; preds = %181
  %187 = load i32*, i32** %9, align 8
  %188 = load i64, i64* %24, align 8
  %189 = call %struct.TYPE_4__* @LIST_DATA(i32* %187, i64 %188)
  store %struct.TYPE_4__* %189, %struct.TYPE_4__** %25, align 8
  %190 = load i8*, i8** %22, align 8
  %191 = load i64, i64* %23, align 8
  %192 = load i8*, i8** %22, align 8
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @UniReplaceStrEx(i8* %190, i64 %191, i8* %192, i8* %195, i8* %198, i32 0)
  br label %200

200:                                              ; preds = %186
  %201 = load i64, i64* %24, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %24, align 8
  br label %181

203:                                              ; preds = %181
  %204 = load i8*, i8** %17, align 8
  %205 = call i32 @Free(i8* %204)
  %206 = load i8*, i8** %22, align 8
  %207 = call i8* @CopyUniStr(i8* %206)
  store i8* %207, i8** %17, align 8
  %208 = load i8*, i8** %22, align 8
  %209 = call i32 @Free(i8* %208)
  br label %210

210:                                              ; preds = %203, %151
  %211 = load i8*, i8** %17, align 8
  %212 = call i64 @CalcUniToStr(i8* %211)
  store i64 %212, i64* %20, align 8
  %213 = load i64, i64* %20, align 8
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %210
  store i64 1, i64* %20, align 8
  %216 = call i8* @Malloc(i32 1)
  store i8* %216, i8** %18, align 8
  %217 = load i8*, i8** %18, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 0
  store i8 0, i8* %218, align 1
  br label %227

219:                                              ; preds = %210
  %220 = load i64, i64* %20, align 8
  %221 = trunc i64 %220 to i32
  %222 = call i8* @Malloc(i32 %221)
  store i8* %222, i8** %18, align 8
  %223 = load i8*, i8** %18, align 8
  %224 = load i64, i64* %20, align 8
  %225 = load i8*, i8** %17, align 8
  %226 = call i32 @UniToStr(i8* %223, i64 %224, i8* %225)
  br label %227

227:                                              ; preds = %219, %215
  %228 = load i8*, i8** %14, align 8
  %229 = call i64 @StrCmpi(i8* %228, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %231, label %255

231:                                              ; preds = %227
  %232 = load i8*, i8** %7, align 8
  %233 = load i64, i64* %8, align 8
  %234 = load i8*, i8** %18, align 8
  %235 = call i32 @StrCpy(i8* %232, i64 %233, i8* %234)
  %236 = load i8*, i8** %7, align 8
  %237 = call i32 @Trim(i8* %236)
  %238 = load i8*, i8** %7, align 8
  %239 = call i64 @StrCmpi(i8* %238, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %245, label %241

241:                                              ; preds = %231
  %242 = load i8*, i8** %7, align 8
  %243 = call i64 @StrCmpi(i8* %242, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %241, %231
  %246 = load i8*, i8** %7, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 0
  store i8 0, i8* %247, align 1
  br label %248

248:                                              ; preds = %245, %241
  %249 = load i8*, i8** %14, align 8
  %250 = call i32 @Free(i8* %249)
  %251 = load i8*, i8** %18, align 8
  %252 = call i32 @Free(i8* %251)
  %253 = load i8*, i8** %17, align 8
  %254 = call i32 @Free(i8* %253)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %298

255:                                              ; preds = %227
  %256 = load i8*, i8** %14, align 8
  %257 = call i64 @StrLen(i8* %256)
  %258 = load i8*, i8** %7, align 8
  %259 = call i64 @StrLen(i8* %258)
  %260 = add i64 %257, %259
  %261 = add i64 %260, 2
  store i64 %261, i64* %16, align 8
  %262 = load i64, i64* %16, align 8
  %263 = call i8* @ZeroMalloc(i64 %262)
  store i8* %263, i8** %15, align 8
  %264 = load i8*, i8** %7, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 0
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %277

269:                                              ; preds = %255
  %270 = load i8*, i8** %15, align 8
  %271 = load i64, i64* %16, align 8
  %272 = load i8*, i8** %7, align 8
  %273 = call i32 @StrCat(i8* %270, i64 %271, i8* %272)
  %274 = load i8*, i8** %15, align 8
  %275 = load i64, i64* %16, align 8
  %276 = call i32 @StrCat(i8* %274, i64 %275, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %277

277:                                              ; preds = %269, %255
  %278 = load i8*, i8** %15, align 8
  %279 = load i64, i64* %16, align 8
  %280 = load i8*, i8** %14, align 8
  %281 = call i32 @StrCat(i8* %278, i64 %279, i8* %280)
  %282 = load i8*, i8** %14, align 8
  %283 = call i32 @Free(i8* %282)
  %284 = call i8* @Malloc(i32 24)
  %285 = bitcast i8* %284 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %285, %struct.TYPE_4__** %21, align 8
  %286 = load i8*, i8** %15, align 8
  %287 = call i32 @StrUpper(i8* %286)
  %288 = load i8*, i8** %15, align 8
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 0
  store i8* %288, i8** %290, align 8
  %291 = load i8*, i8** %18, align 8
  %292 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 2
  store i8* %291, i8** %293, align 8
  %294 = load i8*, i8** %17, align 8
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 1
  store i8* %294, i8** %296, align 8
  %297 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  store %struct.TYPE_4__* %297, %struct.TYPE_4__** %5, align 8
  br label %298

298:                                              ; preds = %277, %248, %148, %130, %67, %58, %39, %31
  %299 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %299
}

declare dso_local i32 @TrimLeft(i8*) #1

declare dso_local i64 @StrLen(i8*) #1

declare dso_local i8* @Malloc(i32) #1

declare dso_local i32 @StrCpy(i8*, i64, i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @UnescapeStr(i8*) #1

declare dso_local i64 @CalcUtf8ToUni(i8*, i64) #1

declare dso_local i32 @Utf8ToUni(i8*, i64, i8*, i64) #1

declare dso_local i64 @UniInChar(i8*, i32) #1

declare dso_local i32 @UniStrSize(i8*) #1

declare dso_local i32 @UniStrCpy(i8*, i64, i8*) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_4__* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @UniReplaceStrEx(i8*, i64, i8*, i8*, i8*, i32) #1

declare dso_local i8* @CopyUniStr(i8*) #1

declare dso_local i64 @CalcUniToStr(i8*) #1

declare dso_local i32 @UniToStr(i8*, i64, i8*) #1

declare dso_local i64 @StrCmpi(i8*, i8*) #1

declare dso_local i32 @Trim(i8*) #1

declare dso_local i8* @ZeroMalloc(i64) #1

declare dso_local i32 @StrCat(i8*, i64, i8*) #1

declare dso_local i32 @StrUpper(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
