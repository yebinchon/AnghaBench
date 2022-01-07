; ModuleID = '/home/carl/AnghaBench/disque/src/extr_debug.c_memtest_test_linux_anonymous_maps.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_debug.c_memtest_test_linux_anonymous_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"/proc/self/maps\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@MEMTEST_MAX_REGIONS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"vdso\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"vsyscall\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"00:00\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Testing %lx %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memtest_test_linux_anonymous_maps() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [1024 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = call i32* @fopen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %17, i32** %1, align 8
  %18 = load i32, i32* @MEMTEST_MAX_REGIONS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i64, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %22 = load i32, i32* @MEMTEST_MAX_REGIONS, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i64, i64 %23, align 16
  store i64 %23, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %25

25:                                               ; preds = %72, %71, %66, %61, %46, %37, %0
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %27 = load i32*, i32** %1, align 8
  %28 = call i32* @fgets(i8* %26, i32 1024, i32* %27)
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %99

30:                                               ; preds = %25
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  store i8* %31, i8** %16, align 8
  %32 = load i8*, i8** %16, align 8
  store i8* %32, i8** %14, align 8
  %33 = load i8*, i8** %16, align 8
  %34 = call i8* @strchr(i8* %33, i8 signext 45)
  store i8* %34, i8** %16, align 8
  %35 = load i8*, i8** %16, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %25

38:                                               ; preds = %30
  %39 = load i8*, i8** %16, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %16, align 8
  store i8 0, i8* %39, align 1
  %41 = load i8*, i8** %16, align 8
  store i8* %41, i8** %15, align 8
  %42 = load i8*, i8** %16, align 8
  %43 = call i8* @strchr(i8* %42, i8 signext 32)
  store i8* %43, i8** %16, align 8
  %44 = load i8*, i8** %16, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  br label %25

47:                                               ; preds = %38
  %48 = load i8*, i8** %16, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %16, align 8
  store i8 0, i8* %48, align 1
  %50 = load i8*, i8** %16, align 8
  %51 = call i64 @strstr(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %47
  %54 = load i8*, i8** %16, align 8
  %55 = call i64 @strstr(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i8*, i8** %16, align 8
  %59 = call i64 @strstr(i8* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %53, %47
  br label %25

62:                                               ; preds = %57
  %63 = load i8*, i8** %16, align 8
  %64 = call i64 @strstr(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  br label %25

67:                                               ; preds = %62
  %68 = load i8*, i8** %16, align 8
  %69 = call i64 @strstr(i8* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  br label %25

72:                                               ; preds = %67
  %73 = load i8*, i8** %14, align 8
  %74 = call i64 @strtoul(i8* %73, i32* null, i32 16)
  store i64 %74, i64* %3, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = call i64 @strtoul(i8* %75, i32* null, i32 16)
  store i64 %76, i64* %4, align 8
  %77 = load i64, i64* %4, align 8
  %78 = load i64, i64* %3, align 8
  %79 = sub i64 %77, %78
  store i64 %79, i64* %5, align 8
  %80 = load i64, i64* %3, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %21, i64 %82
  store i64 %80, i64* %83, align 8
  %84 = load i64, i64* %5, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %24, i64 %86
  store i64 %84, i64* %87, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %21, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %24, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i64 %91, i64 %95)
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %25

99:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  br label %100

100:                                              ; preds = %116, %99
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %100
  %105 = load i64, i64* %11, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %21, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i8*
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %24, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @crc64(i64 %105, i8* %110, i64 %114)
  store i64 %115, i64* %11, align 8
  br label %116

116:                                              ; preds = %104
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %100

119:                                              ; preds = %100
  store i32 0, i32* %10, align 4
  br label %120

120:                                              ; preds = %135, %119
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %138

124:                                              ; preds = %120
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %21, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i8*
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %24, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @memtest_non_destructive_invert(i8* %129, i64 %133)
  br label %135

135:                                              ; preds = %124
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %120

138:                                              ; preds = %120
  store i32 0, i32* %10, align 4
  br label %139

139:                                              ; preds = %154, %138
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %157

143:                                              ; preds = %139
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %21, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = inttoptr i64 %147 to i8*
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %24, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @memtest_non_destructive_swap(i8* %148, i64 %152)
  br label %154

154:                                              ; preds = %143
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %10, align 4
  br label %139

157:                                              ; preds = %139
  store i32 0, i32* %10, align 4
  br label %158

158:                                              ; preds = %173, %157
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %176

162:                                              ; preds = %158
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %21, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = inttoptr i64 %166 to i8*
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %24, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @memtest_non_destructive_swap(i8* %167, i64 %171)
  br label %173

173:                                              ; preds = %162
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %10, align 4
  br label %158

176:                                              ; preds = %158
  store i32 0, i32* %10, align 4
  br label %177

177:                                              ; preds = %192, %176
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* %9, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %195

181:                                              ; preds = %177
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %21, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = inttoptr i64 %185 to i8*
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i64, i64* %24, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @memtest_non_destructive_invert(i8* %186, i64 %190)
  br label %192

192:                                              ; preds = %181
  %193 = load i32, i32* %10, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %10, align 4
  br label %177

195:                                              ; preds = %177
  store i32 0, i32* %10, align 4
  br label %196

196:                                              ; preds = %212, %195
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* %9, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %215

200:                                              ; preds = %196
  %201 = load i64, i64* %12, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i64, i64* %21, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = inttoptr i64 %205 to i8*
  %207 = load i32, i32* %10, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i64, i64* %24, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = call i64 @crc64(i64 %201, i8* %206, i64 %210)
  store i64 %211, i64* %12, align 8
  br label %212

212:                                              ; preds = %200
  %213 = load i32, i32* %10, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %10, align 4
  br label %196

215:                                              ; preds = %196
  store i32 0, i32* %10, align 4
  br label %216

216:                                              ; preds = %231, %215
  %217 = load i32, i32* %10, align 4
  %218 = load i32, i32* %9, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %234

220:                                              ; preds = %216
  %221 = load i32, i32* %10, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i64, i64* %21, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = inttoptr i64 %224 to i8*
  %226 = load i32, i32* %10, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i64, i64* %24, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = call i32 @memtest_non_destructive_swap(i8* %225, i64 %229)
  br label %231

231:                                              ; preds = %220
  %232 = load i32, i32* %10, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %10, align 4
  br label %216

234:                                              ; preds = %216
  store i32 0, i32* %10, align 4
  br label %235

235:                                              ; preds = %250, %234
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* %9, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %253

239:                                              ; preds = %235
  %240 = load i32, i32* %10, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i64, i64* %21, i64 %241
  %243 = load i64, i64* %242, align 8
  %244 = inttoptr i64 %243 to i8*
  %245 = load i32, i32* %10, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i64, i64* %24, i64 %246
  %248 = load i64, i64* %247, align 8
  %249 = call i32 @memtest_non_destructive_swap(i8* %244, i64 %248)
  br label %250

250:                                              ; preds = %239
  %251 = load i32, i32* %10, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %10, align 4
  br label %235

253:                                              ; preds = %235
  store i32 0, i32* %10, align 4
  br label %254

254:                                              ; preds = %270, %253
  %255 = load i32, i32* %10, align 4
  %256 = load i32, i32* %9, align 4
  %257 = icmp slt i32 %255, %256
  br i1 %257, label %258, label %273

258:                                              ; preds = %254
  %259 = load i64, i64* %13, align 8
  %260 = load i32, i32* %10, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i64, i64* %21, i64 %261
  %263 = load i64, i64* %262, align 8
  %264 = inttoptr i64 %263 to i8*
  %265 = load i32, i32* %10, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i64, i64* %24, i64 %266
  %268 = load i64, i64* %267, align 8
  %269 = call i64 @crc64(i64 %259, i8* %264, i64 %268)
  store i64 %269, i64* %13, align 8
  br label %270

270:                                              ; preds = %258
  %271 = load i32, i32* %10, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %10, align 4
  br label %254

273:                                              ; preds = %254
  %274 = load i32*, i32** %1, align 8
  %275 = call i32 @fclose(i32* %274)
  %276 = load i64, i64* %11, align 8
  %277 = load i64, i64* %12, align 8
  %278 = icmp ne i64 %276, %277
  br i1 %278, label %283, label %279

279:                                              ; preds = %273
  %280 = load i64, i64* %12, align 8
  %281 = load i64, i64* %13, align 8
  %282 = icmp ne i64 %280, %281
  br label %283

283:                                              ; preds = %279, %273
  %284 = phi i1 [ true, %273 ], [ %282, %279 ]
  %285 = zext i1 %284 to i32
  %286 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %286)
  ret i32 %285
}

declare dso_local i32* @fopen(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i64, i64) #1

declare dso_local i64 @crc64(i64, i8*, i64) #1

declare dso_local i32 @memtest_non_destructive_invert(i8*, i64) #1

declare dso_local i32 @memtest_non_destructive_swap(i8*, i64) #1

declare dso_local i32 @fclose(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
