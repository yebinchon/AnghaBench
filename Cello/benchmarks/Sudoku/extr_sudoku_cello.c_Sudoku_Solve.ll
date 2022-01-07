; ModuleID = '/home/carl/AnghaBench/Cello/benchmarks/Sudoku/extr_sudoku_cello.c_Sudoku_Solve.c'
source_filename = "/home/carl/AnghaBench/Cello/benchmarks/Sudoku/extr_sudoku_cello.c_Sudoku_Solve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Sudoku = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Sudoku*, i8*)* @Sudoku_Solve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Sudoku_Solve(%struct.Sudoku* %0, i8* %1) #0 {
  %3 = alloca %struct.Sudoku*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [729 x i64], align 16
  %16 = alloca [81 x i64], align 16
  %17 = alloca [324 x i32], align 16
  %18 = alloca [81 x i64], align 16
  %19 = alloca [82 x i8], align 16
  %20 = alloca i32, align 4
  store %struct.Sudoku* %0, %struct.Sudoku** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %28, %2
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 729
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [729 x i64], [729 x i64]* %15, i64 0, i64 %26
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %21

31:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %39, %31
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 324
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [324 x i32], [324 x i32]* %17, i64 0, i64 %37
  store i32 9, i32* %38, align 4
  br label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %32

42:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %105, %42
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 81
  br i1 %45, label %46, label %108

46:                                               ; preds = %43
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sge i32 %52, 49
  br i1 %53, label %54, label %70

54:                                               ; preds = %46
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp sle i32 %60, 57
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load i8*, i8** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = sub nsw i32 %68, 49
  br label %71

70:                                               ; preds = %54, %46
  br label %71

71:                                               ; preds = %70, %62
  %72 = phi i32 [ %69, %62 ], [ -1, %70 ]
  store i32 %72, i32* %20, align 4
  %73 = load i32, i32* %20, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load %struct.Sudoku*, %struct.Sudoku** %3, align 8
  %77 = getelementptr inbounds [729 x i64], [729 x i64]* %15, i64 0, i64 0
  %78 = getelementptr inbounds [324 x i32], [324 x i32]* %17, i64 0, i64 0
  %79 = load i32, i32* %5, align 4
  %80 = mul nsw i32 %79, 9
  %81 = load i32, i32* %20, align 4
  %82 = add nsw i32 %80, %81
  %83 = call i32 @Sudoku_Update(%struct.Sudoku* %76, i64* %77, i32* %78, i32 %82, i32 1)
  br label %84

84:                                               ; preds = %75, %71
  %85 = load i32, i32* %20, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [81 x i64], [81 x i64]* %18, i64 0, i64 %92
  store i64 -1, i64* %93, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [81 x i64], [81 x i64]* %16, i64 0, i64 %95
  store i64 -1, i64* %96, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [82 x i8], [82 x i8]* %19, i64 0, i64 %103
  store i8 %101, i8* %104, align 1
  br label %105

105:                                              ; preds = %90
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %43

108:                                              ; preds = %43
  store i32 0, i32* %5, align 4
  store i32 1, i32* %10, align 4
  store i32 655360, i32* %11, align 4
  %109 = getelementptr inbounds [82 x i8], [82 x i8]* %19, i64 0, i64 81
  store i8 0, i8* %109, align 1
  br label %110

110:                                              ; preds = %307, %108
  br label %111

111:                                              ; preds = %270, %110
  %112 = load i32, i32* %5, align 4
  %113 = icmp sge i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %14, align 4
  %117 = sub nsw i32 81, %116
  %118 = icmp slt i32 %115, %117
  br label %119

119:                                              ; preds = %114, %111
  %120 = phi i1 [ false, %111 ], [ %118, %114 ]
  br i1 %120, label %121, label %271

121:                                              ; preds = %119
  %122 = load i32, i32* %10, align 4
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %177

124:                                              ; preds = %121
  %125 = load i32, i32* %11, align 4
  %126 = ashr i32 %125, 16
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %11, align 4
  %128 = and i32 %127, 65535
  %129 = sext i32 %128 to i64
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [81 x i64], [81 x i64]* %18, i64 0, i64 %131
  store i64 %129, i64* %132, align 8
  %133 = load i32, i32* %13, align 4
  %134 = icmp sgt i32 %133, 1
  br i1 %134, label %135, label %165

135:                                              ; preds = %124
  store i32 0, i32* %8, align 4
  br label %136

136:                                              ; preds = %161, %135
  %137 = load i32, i32* %8, align 4
  %138 = icmp slt i32 %137, 324
  br i1 %138, label %139, label %164

139:                                              ; preds = %136
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [324 x i32], [324 x i32]* %17, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %160

146:                                              ; preds = %139
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [324 x i32], [324 x i32]* %17, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [81 x i64], [81 x i64]* %18, i64 0, i64 %154
  store i64 %152, i64* %155, align 8
  %156 = load i32, i32* %13, align 4
  %157 = icmp sle i32 %156, 1
  br i1 %157, label %158, label %159

158:                                              ; preds = %146
  br label %164

159:                                              ; preds = %146
  br label %160

160:                                              ; preds = %159, %139
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %8, align 4
  br label %136

164:                                              ; preds = %158, %136
  br label %165

165:                                              ; preds = %164, %124
  %166 = load i32, i32* %13, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %165
  %169 = load i32, i32* %13, align 4
  %170 = icmp eq i32 %169, 10
  br i1 %170, label %171, label %176

171:                                              ; preds = %168, %165
  store i32 -1, i32* %10, align 4
  %172 = load i32, i32* %5, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %5, align 4
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds [81 x i64], [81 x i64]* %16, i64 0, i64 %174
  store i64 -1, i64* %175, align 8
  br label %176

176:                                              ; preds = %171, %168
  br label %177

177:                                              ; preds = %176, %121
  %178 = load i32, i32* %5, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [81 x i64], [81 x i64]* %18, i64 0, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %8, align 4
  %183 = load i32, i32* %10, align 4
  %184 = icmp eq i32 %183, -1
  br i1 %184, label %185, label %209

185:                                              ; preds = %177
  %186 = load i32, i32* %5, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [81 x i64], [81 x i64]* %16, i64 0, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = icmp uge i64 %189, 0
  br i1 %190, label %191, label %209

191:                                              ; preds = %185
  %192 = load %struct.Sudoku*, %struct.Sudoku** %3, align 8
  %193 = getelementptr inbounds [729 x i64], [729 x i64]* %15, i64 0, i64 0
  %194 = getelementptr inbounds [324 x i32], [324 x i32]* %17, i64 0, i64 0
  %195 = load %struct.Sudoku*, %struct.Sudoku** %3, align 8
  %196 = getelementptr inbounds %struct.Sudoku, %struct.Sudoku* %195, i32 0, i32 0
  %197 = load i32**, i32*** %196, align 8
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32*, i32** %197, i64 %199
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [81 x i64], [81 x i64]* %16, i64 0, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds i32, i32* %201, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @Sudoku_Update(%struct.Sudoku* %192, i64* %193, i32* %194, i32 %207, i32 -1)
  br label %209

209:                                              ; preds = %191, %185, %177
  %210 = load i32, i32* %5, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [81 x i64], [81 x i64]* %16, i64 0, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = add i64 %213, 1
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %9, align 4
  br label %216

216:                                              ; preds = %237, %209
  %217 = load i32, i32* %9, align 4
  %218 = icmp slt i32 %217, 9
  br i1 %218, label %219, label %240

219:                                              ; preds = %216
  %220 = load %struct.Sudoku*, %struct.Sudoku** %3, align 8
  %221 = getelementptr inbounds %struct.Sudoku, %struct.Sudoku* %220, i32 0, i32 0
  %222 = load i32**, i32*** %221, align 8
  %223 = load i32, i32* %8, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32*, i32** %222, i64 %224
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [729 x i64], [729 x i64]* %15, i64 0, i64 %231
  %233 = load i64, i64* %232, align 8
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %219
  br label %240

236:                                              ; preds = %219
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %9, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %9, align 4
  br label %216

240:                                              ; preds = %235, %216
  %241 = load i32, i32* %9, align 4
  %242 = icmp slt i32 %241, 9
  br i1 %242, label %243, label %265

243:                                              ; preds = %240
  %244 = load %struct.Sudoku*, %struct.Sudoku** %3, align 8
  %245 = getelementptr inbounds [729 x i64], [729 x i64]* %15, i64 0, i64 0
  %246 = getelementptr inbounds [324 x i32], [324 x i32]* %17, i64 0, i64 0
  %247 = load %struct.Sudoku*, %struct.Sudoku** %3, align 8
  %248 = getelementptr inbounds %struct.Sudoku, %struct.Sudoku* %247, i32 0, i32 0
  %249 = load i32**, i32*** %248, align 8
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32*, i32** %249, i64 %251
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %9, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @Sudoku_Update(%struct.Sudoku* %244, i64* %245, i32* %246, i32 %257, i32 1)
  store i32 %258, i32* %11, align 4
  %259 = load i32, i32* %9, align 4
  %260 = sext i32 %259 to i64
  %261 = load i32, i32* %5, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %5, align 4
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds [81 x i64], [81 x i64]* %16, i64 0, i64 %263
  store i64 %260, i64* %264, align 8
  store i32 1, i32* %10, align 4
  br label %270

265:                                              ; preds = %240
  store i32 -1, i32* %10, align 4
  %266 = load i32, i32* %5, align 4
  %267 = add nsw i32 %266, -1
  store i32 %267, i32* %5, align 4
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds [81 x i64], [81 x i64]* %16, i64 0, i64 %268
  store i64 -1, i64* %269, align 8
  br label %270

270:                                              ; preds = %265, %243
  br label %111

271:                                              ; preds = %119
  %272 = load i32, i32* %5, align 4
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %271
  br label %312

275:                                              ; preds = %271
  store i32 0, i32* %6, align 4
  br label %276

276:                                              ; preds = %304, %275
  %277 = load i32, i32* %6, align 4
  %278 = load i32, i32* %5, align 4
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %307

280:                                              ; preds = %276
  %281 = load %struct.Sudoku*, %struct.Sudoku** %3, align 8
  %282 = getelementptr inbounds %struct.Sudoku, %struct.Sudoku* %281, i32 0, i32 0
  %283 = load i32**, i32*** %282, align 8
  %284 = load i32, i32* %6, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [81 x i64], [81 x i64]* %18, i64 0, i64 %285
  %287 = load i64, i64* %286, align 8
  %288 = getelementptr inbounds i32*, i32** %283, i64 %287
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %6, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [81 x i64], [81 x i64]* %16, i64 0, i64 %291
  %293 = load i64, i64* %292, align 8
  %294 = getelementptr inbounds i32, i32* %289, i64 %293
  %295 = load i32, i32* %294, align 4
  store i32 %295, i32* %7, align 4
  %296 = load i32, i32* %7, align 4
  %297 = srem i32 %296, 9
  %298 = add nsw i32 %297, 49
  %299 = trunc i32 %298 to i8
  %300 = load i32, i32* %7, align 4
  %301 = sdiv i32 %300, 9
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [82 x i8], [82 x i8]* %19, i64 0, i64 %302
  store i8 %299, i8* %303, align 1
  br label %304

304:                                              ; preds = %280
  %305 = load i32, i32* %6, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %6, align 4
  br label %276

307:                                              ; preds = %276
  %308 = load i32, i32* %12, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %12, align 4
  %310 = load i32, i32* %5, align 4
  %311 = add nsw i32 %310, -1
  store i32 %311, i32* %5, align 4
  store i32 -1, i32* %10, align 4
  br label %110

312:                                              ; preds = %274
  %313 = load i32, i32* %12, align 4
  ret i32 %313
}

declare dso_local i32 @Sudoku_Update(%struct.Sudoku*, i64*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
