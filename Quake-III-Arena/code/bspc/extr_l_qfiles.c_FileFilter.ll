; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_qfiles.c_FileFilter.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_qfiles.c_FileFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FileFilter(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %12

12:                                               ; preds = %282, %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %283

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 42
  br i1 %20, label %21, label %72

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %5, align 8
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %47, %21
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 42
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i8*, i8** %5, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 63
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %28
  br label %50

39:                                               ; preds = %33
  %40 = load i8*, i8** %5, align 8
  %41 = load i8, i8* %40, align 1
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 %43
  store i8 %41, i8* %44, align 1
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %5, align 8
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %24

50:                                               ; preds = %38, %24
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 %52
  store i8 0, i8* %53, align 1
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %55 = call i32 @strlen(i8* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %50
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %60 = load i32, i32* %7, align 4
  %61 = call i8* @StringContains(i8* %58, i8* %59, i32 %60)
  store i8* %61, i8** %9, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %284

65:                                               ; preds = %57
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %68 = call i32 @strlen(i8* %67)
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  store i8* %70, i8** %6, align 8
  br label %71

71:                                               ; preds = %65, %50
  br label %282

72:                                               ; preds = %16
  %73 = load i8*, i8** %5, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 63
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %5, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %6, align 8
  br label %281

82:                                               ; preds = %72
  %83 = load i8*, i8** %5, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 91
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %5, align 8
  br label %280

96:                                               ; preds = %87, %82
  %97 = load i8*, i8** %5, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 91
  br i1 %100, label %101, label %251

101:                                              ; preds = %96
  %102 = load i8*, i8** %5, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %5, align 8
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %221, %101
  %105 = load i8*, i8** %5, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  br label %113

113:                                              ; preds = %109, %104
  %114 = phi i1 [ false, %104 ], [ %112, %109 ]
  br i1 %114, label %115, label %222

115:                                              ; preds = %113
  %116 = load i8*, i8** %5, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 93
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load i8*, i8** %5, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 93
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %222

127:                                              ; preds = %120, %115
  %128 = load i8*, i8** %5, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 45
  br i1 %132, label %133, label %195

133:                                              ; preds = %127
  %134 = load i8*, i8** %5, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 2
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %195

139:                                              ; preds = %133
  %140 = load i8*, i8** %5, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 2
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 93
  br i1 %144, label %151, label %145

145:                                              ; preds = %139
  %146 = load i8*, i8** %5, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 3
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 93
  br i1 %150, label %151, label %195

151:                                              ; preds = %145, %139
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %173

154:                                              ; preds = %151
  %155 = load i8*, i8** %6, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = load i8*, i8** %5, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp sge i32 %157, %160
  br i1 %161, label %162, label %172

162:                                              ; preds = %154
  %163 = load i8*, i8** %6, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = load i8*, i8** %5, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 2
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp sle i32 %165, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %162
  store i32 1, i32* %11, align 4
  br label %172

172:                                              ; preds = %171, %162, %154
  br label %192

173:                                              ; preds = %151
  %174 = load i8*, i8** %6, align 8
  %175 = load i8, i8* %174, align 1
  %176 = call i64 @toupper(i8 signext %175)
  %177 = load i8*, i8** %5, align 8
  %178 = load i8, i8* %177, align 1
  %179 = call i64 @toupper(i8 signext %178)
  %180 = icmp sge i64 %176, %179
  br i1 %180, label %181, label %191

181:                                              ; preds = %173
  %182 = load i8*, i8** %6, align 8
  %183 = load i8, i8* %182, align 1
  %184 = call i64 @toupper(i8 signext %183)
  %185 = load i8*, i8** %5, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 2
  %187 = load i8, i8* %186, align 1
  %188 = call i64 @toupper(i8 signext %187)
  %189 = icmp sle i64 %184, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %181
  store i32 1, i32* %11, align 4
  br label %191

191:                                              ; preds = %190, %181, %173
  br label %192

192:                                              ; preds = %191, %172
  %193 = load i8*, i8** %5, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 3
  store i8* %194, i8** %5, align 8
  br label %221

195:                                              ; preds = %145, %133, %127
  %196 = load i32, i32* %7, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %195
  %199 = load i8*, i8** %5, align 8
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = load i8*, i8** %6, align 8
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %201, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %198
  store i32 1, i32* %11, align 4
  br label %207

207:                                              ; preds = %206, %198
  br label %218

208:                                              ; preds = %195
  %209 = load i8*, i8** %5, align 8
  %210 = load i8, i8* %209, align 1
  %211 = call i64 @toupper(i8 signext %210)
  %212 = load i8*, i8** %6, align 8
  %213 = load i8, i8* %212, align 1
  %214 = call i64 @toupper(i8 signext %213)
  %215 = icmp eq i64 %211, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %208
  store i32 1, i32* %11, align 4
  br label %217

217:                                              ; preds = %216, %208
  br label %218

218:                                              ; preds = %217, %207
  %219 = load i8*, i8** %5, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %220, i8** %5, align 8
  br label %221

221:                                              ; preds = %218, %192
  br label %104

222:                                              ; preds = %126, %113
  %223 = load i32, i32* %11, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %222
  store i32 0, i32* %4, align 4
  br label %284

226:                                              ; preds = %222
  br label %227

227:                                              ; preds = %243, %226
  %228 = load i8*, i8** %5, align 8
  %229 = load i8, i8* %228, align 1
  %230 = icmp ne i8 %229, 0
  br i1 %230, label %231, label %246

231:                                              ; preds = %227
  %232 = load i8*, i8** %5, align 8
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp eq i32 %234, 93
  br i1 %235, label %236, label %243

236:                                              ; preds = %231
  %237 = load i8*, i8** %5, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 1
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp ne i32 %240, 93
  br i1 %241, label %242, label %243

242:                                              ; preds = %236
  br label %246

243:                                              ; preds = %236, %231
  %244 = load i8*, i8** %5, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %5, align 8
  br label %227

246:                                              ; preds = %242, %227
  %247 = load i8*, i8** %5, align 8
  %248 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %248, i8** %5, align 8
  %249 = load i8*, i8** %6, align 8
  %250 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %250, i8** %6, align 8
  br label %279

251:                                              ; preds = %96
  %252 = load i32, i32* %7, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %264

254:                                              ; preds = %251
  %255 = load i8*, i8** %5, align 8
  %256 = load i8, i8* %255, align 1
  %257 = sext i8 %256 to i32
  %258 = load i8*, i8** %6, align 8
  %259 = load i8, i8* %258, align 1
  %260 = sext i8 %259 to i32
  %261 = icmp ne i32 %257, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %254
  store i32 0, i32* %4, align 4
  br label %284

263:                                              ; preds = %254
  br label %274

264:                                              ; preds = %251
  %265 = load i8*, i8** %5, align 8
  %266 = load i8, i8* %265, align 1
  %267 = call i64 @toupper(i8 signext %266)
  %268 = load i8*, i8** %6, align 8
  %269 = load i8, i8* %268, align 1
  %270 = call i64 @toupper(i8 signext %269)
  %271 = icmp ne i64 %267, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %264
  store i32 0, i32* %4, align 4
  br label %284

273:                                              ; preds = %264
  br label %274

274:                                              ; preds = %273, %263
  %275 = load i8*, i8** %5, align 8
  %276 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %276, i8** %5, align 8
  %277 = load i8*, i8** %6, align 8
  %278 = getelementptr inbounds i8, i8* %277, i32 1
  store i8* %278, i8** %6, align 8
  br label %279

279:                                              ; preds = %274, %246
  br label %280

280:                                              ; preds = %279, %93
  br label %281

281:                                              ; preds = %280, %77
  br label %282

282:                                              ; preds = %281, %71
  br label %12

283:                                              ; preds = %12
  store i32 1, i32* %4, align 4
  br label %284

284:                                              ; preds = %283, %272, %262, %225, %64
  %285 = load i32, i32* %4, align 4
  ret i32 %285
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @StringContains(i8*, i8*, i32) #1

declare dso_local i64 @toupper(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
