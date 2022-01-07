; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/common/extr_scriplib.c_GetToken.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/common/extr_scriplib.c_GetToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32 }

@tokenready = common dso_local global i8* null, align 8
@qfalse = common dso_local global i8* null, align 8
@qtrue = common dso_local global i8* null, align 8
@script = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Line %i is incomplete\0A\00", align 1
@scriptline = common dso_local global i64 0, align 8
@token = common dso_local global i8* null, align 8
@MAXTOKEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Token too large on line %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"$include\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GetToken(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** @tokenready, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i8*, i8** @qfalse, align 8
  store i8* %8, i8** @tokenready, align 8
  %9 = load i8*, i8** @qtrue, align 8
  store i8* %9, i8** %2, align 8
  br label %310

10:                                               ; preds = %1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp uge i32* %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load i8*, i8** %3, align 8
  %20 = call i8* @EndOfScript(i8* %19)
  store i8* %20, i8** %2, align 8
  br label %310

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %198, %123, %21
  br label %23

23:                                               ; preds = %59, %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp sle i32 %27, 32
  br i1 %28, label %29, label %60

29:                                               ; preds = %23
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp uge i32* %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i8*, i8** %3, align 8
  %39 = call i8* @EndOfScript(i8* %38)
  store i8* %39, i8** %2, align 8
  br label %310

40:                                               ; preds = %29
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %42, align 8
  %45 = load i32, i32* %43, align 4
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %59

47:                                               ; preds = %40
  %48 = load i8*, i8** %3, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* @scriptline, align 8
  %52 = call i32 @Error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = sext i32 %56 to i64
  store i64 %58, i64* @scriptline, align 8
  br label %59

59:                                               ; preds = %53, %40
  br label %23

60:                                               ; preds = %23
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp uge i32* %63, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i8*, i8** %3, align 8
  %70 = call i8* @EndOfScript(i8* %69)
  store i8* %70, i8** %2, align 8
  br label %310

71:                                               ; preds = %60
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 59
  br i1 %76, label %97, label %77

77:                                               ; preds = %71
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 35
  br i1 %82, label %97, label %83

83:                                               ; preds = %77
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 47
  br i1 %89, label %90, label %129

90:                                               ; preds = %83
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 47
  br i1 %96, label %97, label %129

97:                                               ; preds = %90, %77, %71
  %98 = load i8*, i8** %3, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i64, i64* @scriptline, align 8
  %102 = call i32 @Error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %101)
  br label %103

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %122, %103
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %106, align 8
  %109 = load i32, i32* %107, align 4
  %110 = icmp ne i32 %109, 10
  br i1 %110, label %111, label %123

111:                                              ; preds = %104
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = icmp uge i32* %114, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %111
  %120 = load i8*, i8** %3, align 8
  %121 = call i8* @EndOfScript(i8* %120)
  store i8* %121, i8** %2, align 8
  br label %310

122:                                              ; preds = %111
  br label %104

123:                                              ; preds = %104
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 8
  %128 = sext i32 %126 to i64
  store i64 %128, i64* @scriptline, align 8
  br label %22

129:                                              ; preds = %90, %83
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 47
  br i1 %135, label %136, label %203

136:                                              ; preds = %129
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 42
  br i1 %142, label %143, label %203

143:                                              ; preds = %136
  %144 = load i8*, i8** %3, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load i64, i64* @scriptline, align 8
  %148 = call i32 @Error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %147)
  br label %149

149:                                              ; preds = %146, %143
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  store i32* %153, i32** %151, align 8
  br label %154

154:                                              ; preds = %197, %149
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 42
  br i1 %160, label %161, label %168

161:                                              ; preds = %154
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 47
  br label %168

168:                                              ; preds = %161, %154
  %169 = phi i1 [ false, %154 ], [ %167, %161 ]
  br i1 %169, label %170, label %198

170:                                              ; preds = %168
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 10
  br i1 %175, label %176, label %182

176:                                              ; preds = %170
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 8
  %181 = sext i32 %179 to i64
  store i64 %181, i64* @scriptline, align 8
  br label %182

182:                                              ; preds = %176, %170
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i32 1
  store i32* %186, i32** %184, align 8
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = icmp uge i32* %189, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %182
  %195 = load i8*, i8** %3, align 8
  %196 = call i8* @EndOfScript(i8* %195)
  store i8* %196, i8** %2, align 8
  br label %310

197:                                              ; preds = %182
  br label %154

198:                                              ; preds = %168
  %199 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 2
  store i32* %202, i32** %200, align 8
  br label %22

203:                                              ; preds = %136, %129
  %204 = load i8*, i8** @token, align 8
  store i8* %204, i8** %4, align 8
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %207, align 4
  %209 = icmp eq i32 %208, 34
  br i1 %209, label %210, label %253

210:                                              ; preds = %203
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i32 1
  store i32* %214, i32** %212, align 8
  br label %215

215:                                              ; preds = %247, %210
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, 34
  br i1 %220, label %221, label %248

221:                                              ; preds = %215
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i32 1
  store i32* %225, i32** %223, align 8
  %226 = load i32, i32* %224, align 4
  %227 = trunc i32 %226 to i8
  %228 = load i8*, i8** %4, align 8
  %229 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %229, i8** %4, align 8
  store i8 %227, i8* %228, align 1
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = icmp eq i32* %232, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %221
  br label %248

238:                                              ; preds = %221
  %239 = load i8*, i8** %4, align 8
  %240 = load i8*, i8** @token, align 8
  %241 = load i64, i64* @MAXTOKEN, align 8
  %242 = getelementptr inbounds i8, i8* %240, i64 %241
  %243 = icmp eq i8* %239, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %238
  %245 = load i64, i64* @scriptline, align 8
  %246 = call i32 @Error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %245)
  br label %247

247:                                              ; preds = %244, %238
  br label %215

248:                                              ; preds = %237, %215
  %249 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i32 1
  store i32* %252, i32** %250, align 8
  br label %296

253:                                              ; preds = %203
  br label %254

254:                                              ; preds = %294, %253
  %255 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %257, align 4
  %259 = icmp sgt i32 %258, 32
  br i1 %259, label %260, label %266

260:                                              ; preds = %254
  %261 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 0
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, 59
  br label %266

266:                                              ; preds = %260, %254
  %267 = phi i1 [ false, %254 ], [ %265, %260 ]
  br i1 %267, label %268, label %295

268:                                              ; preds = %266
  %269 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 0
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i32 1
  store i32* %272, i32** %270, align 8
  %273 = load i32, i32* %271, align 4
  %274 = trunc i32 %273 to i8
  %275 = load i8*, i8** %4, align 8
  %276 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %276, i8** %4, align 8
  store i8 %274, i8* %275, align 1
  %277 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = icmp eq i32* %279, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %268
  br label %295

285:                                              ; preds = %268
  %286 = load i8*, i8** %4, align 8
  %287 = load i8*, i8** @token, align 8
  %288 = load i64, i64* @MAXTOKEN, align 8
  %289 = getelementptr inbounds i8, i8* %287, i64 %288
  %290 = icmp eq i8* %286, %289
  br i1 %290, label %291, label %294

291:                                              ; preds = %285
  %292 = load i64, i64* @scriptline, align 8
  %293 = call i32 @Error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %292)
  br label %294

294:                                              ; preds = %291, %285
  br label %254

295:                                              ; preds = %284, %266
  br label %296

296:                                              ; preds = %295, %248
  %297 = load i8*, i8** %4, align 8
  store i8 0, i8* %297, align 1
  %298 = load i8*, i8** @token, align 8
  %299 = call i32 @strcmp(i8* %298, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %308, label %301

301:                                              ; preds = %296
  %302 = load i8*, i8** @qfalse, align 8
  %303 = call i8* @GetToken(i8* %302)
  %304 = load i8*, i8** @token, align 8
  %305 = call i32 @AddScriptToStack(i8* %304)
  %306 = load i8*, i8** %3, align 8
  %307 = call i8* @GetToken(i8* %306)
  store i8* %307, i8** %2, align 8
  br label %310

308:                                              ; preds = %296
  %309 = load i8*, i8** @qtrue, align 8
  store i8* %309, i8** %2, align 8
  br label %310

310:                                              ; preds = %308, %301, %194, %119, %68, %37, %18, %7
  %311 = load i8*, i8** %2, align 8
  ret i8* %311
}

declare dso_local i8* @EndOfScript(i8*) #1

declare dso_local i32 @Error(i8*, i64) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @AddScriptToStack(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
