; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_replay_row.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_replay_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.replay = type { i64, i32, i32, i64, i32**, i64, i32, i32, i32, i32, %struct.channel*, %struct.module* }
%struct.channel = type { i32 }
%struct.module = type { i32, i64*, i64, i32, %struct.pattern* }
%struct.pattern = type { i64 }
%struct.note = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.replay*)* @replay_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replay_row(%struct.replay* %0) #0 {
  %2 = alloca %struct.replay*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.note, align 4
  %6 = alloca %struct.pattern*, align 8
  %7 = alloca %struct.channel*, align 8
  %8 = alloca %struct.module*, align 8
  store %struct.replay* %0, %struct.replay** %2, align 8
  %9 = load %struct.replay*, %struct.replay** %2, align 8
  %10 = getelementptr inbounds %struct.replay, %struct.replay* %9, i32 0, i32 11
  %11 = load %struct.module*, %struct.module** %10, align 8
  store %struct.module* %11, %struct.module** %8, align 8
  %12 = load %struct.replay*, %struct.replay** %2, align 8
  %13 = getelementptr inbounds %struct.replay, %struct.replay* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.replay*, %struct.replay** %2, align 8
  %18 = getelementptr inbounds %struct.replay, %struct.replay* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  %21 = load %struct.replay*, %struct.replay** %2, align 8
  %22 = getelementptr inbounds %struct.replay, %struct.replay* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.replay*, %struct.replay** %2, align 8
  %24 = getelementptr inbounds %struct.replay, %struct.replay* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %16, %1
  %26 = load %struct.replay*, %struct.replay** %2, align 8
  %27 = getelementptr inbounds %struct.replay, %struct.replay* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %102

30:                                               ; preds = %25
  %31 = load %struct.replay*, %struct.replay** %2, align 8
  %32 = getelementptr inbounds %struct.replay, %struct.replay* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.module*, %struct.module** %8, align 8
  %35 = getelementptr inbounds %struct.module, %struct.module* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %33, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.replay*, %struct.replay** %2, align 8
  %40 = getelementptr inbounds %struct.replay, %struct.replay* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.replay*, %struct.replay** %2, align 8
  %42 = getelementptr inbounds %struct.replay, %struct.replay* %41, i32 0, i32 1
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %38, %30
  br label %44

44:                                               ; preds = %75, %43
  %45 = load %struct.module*, %struct.module** %8, align 8
  %46 = getelementptr inbounds %struct.module, %struct.module* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load %struct.replay*, %struct.replay** %2, align 8
  %49 = getelementptr inbounds %struct.replay, %struct.replay* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %47, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.module*, %struct.module** %8, align 8
  %55 = getelementptr inbounds %struct.module, %struct.module* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp uge i64 %53, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %44
  %59 = load %struct.replay*, %struct.replay** %2, align 8
  %60 = getelementptr inbounds %struct.replay, %struct.replay* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = load %struct.replay*, %struct.replay** %2, align 8
  %64 = getelementptr inbounds %struct.replay, %struct.replay* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.module*, %struct.module** %8, align 8
  %67 = getelementptr inbounds %struct.module, %struct.module* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sge i32 %65, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %58
  %71 = load %struct.replay*, %struct.replay** %2, align 8
  %72 = getelementptr inbounds %struct.replay, %struct.replay* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load %struct.replay*, %struct.replay** %2, align 8
  %74 = getelementptr inbounds %struct.replay, %struct.replay* %73, i32 0, i32 1
  store i32 0, i32* %74, align 8
  br label %75

75:                                               ; preds = %70, %58
  br label %44

76:                                               ; preds = %44
  %77 = load %struct.replay*, %struct.replay** %2, align 8
  %78 = getelementptr inbounds %struct.replay, %struct.replay* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.replay*, %struct.replay** %2, align 8
  %81 = getelementptr inbounds %struct.replay, %struct.replay* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %96, %76
  %83 = load i32, i32* %3, align 4
  %84 = load %struct.module*, %struct.module** %8, align 8
  %85 = getelementptr inbounds %struct.module, %struct.module* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %82
  %89 = load %struct.replay*, %struct.replay** %2, align 8
  %90 = getelementptr inbounds %struct.replay, %struct.replay* %89, i32 0, i32 10
  %91 = load %struct.channel*, %struct.channel** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.channel, %struct.channel* %91, i64 %93
  %95 = getelementptr inbounds %struct.channel, %struct.channel* %94, i32 0, i32 0
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %88
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %82

99:                                               ; preds = %82
  %100 = load %struct.replay*, %struct.replay** %2, align 8
  %101 = getelementptr inbounds %struct.replay, %struct.replay* %100, i32 0, i32 1
  store i32 -1, i32* %101, align 8
  br label %102

102:                                              ; preds = %99, %25
  %103 = load %struct.module*, %struct.module** %8, align 8
  %104 = getelementptr inbounds %struct.module, %struct.module* %103, i32 0, i32 4
  %105 = load %struct.pattern*, %struct.pattern** %104, align 8
  %106 = load %struct.module*, %struct.module** %8, align 8
  %107 = getelementptr inbounds %struct.module, %struct.module* %106, i32 0, i32 1
  %108 = load i64*, i64** %107, align 8
  %109 = load %struct.replay*, %struct.replay** %2, align 8
  %110 = getelementptr inbounds %struct.replay, %struct.replay* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %108, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.pattern, %struct.pattern* %105, i64 %114
  store %struct.pattern* %115, %struct.pattern** %6, align 8
  %116 = load %struct.replay*, %struct.replay** %2, align 8
  %117 = getelementptr inbounds %struct.replay, %struct.replay* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.replay*, %struct.replay** %2, align 8
  %120 = getelementptr inbounds %struct.replay, %struct.replay* %119, i32 0, i32 3
  store i64 %118, i64* %120, align 8
  %121 = load %struct.replay*, %struct.replay** %2, align 8
  %122 = getelementptr inbounds %struct.replay, %struct.replay* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.pattern*, %struct.pattern** %6, align 8
  %125 = getelementptr inbounds %struct.pattern, %struct.pattern* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp uge i64 %123, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %102
  %129 = load %struct.replay*, %struct.replay** %2, align 8
  %130 = getelementptr inbounds %struct.replay, %struct.replay* %129, i32 0, i32 3
  store i64 0, i64* %130, align 8
  br label %131

131:                                              ; preds = %128, %102
  %132 = load %struct.replay*, %struct.replay** %2, align 8
  %133 = getelementptr inbounds %struct.replay, %struct.replay* %132, i32 0, i32 4
  %134 = load i32**, i32*** %133, align 8
  %135 = icmp ne i32** %134, null
  br i1 %135, label %136, label %182

136:                                              ; preds = %131
  %137 = load %struct.replay*, %struct.replay** %2, align 8
  %138 = getelementptr inbounds %struct.replay, %struct.replay* %137, i32 0, i32 4
  %139 = load i32**, i32*** %138, align 8
  %140 = getelementptr inbounds i32*, i32** %139, i64 0
  %141 = load i32*, i32** %140, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %182

143:                                              ; preds = %136
  %144 = load %struct.replay*, %struct.replay** %2, align 8
  %145 = getelementptr inbounds %struct.replay, %struct.replay* %144, i32 0, i32 4
  %146 = load i32**, i32*** %145, align 8
  %147 = load %struct.replay*, %struct.replay** %2, align 8
  %148 = getelementptr inbounds %struct.replay, %struct.replay* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %146, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.replay*, %struct.replay** %2, align 8
  %154 = getelementptr inbounds %struct.replay, %struct.replay* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %4, align 4
  %158 = load %struct.replay*, %struct.replay** %2, align 8
  %159 = getelementptr inbounds %struct.replay, %struct.replay* %158, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %181

162:                                              ; preds = %143
  %163 = load i32, i32* %4, align 4
  %164 = icmp slt i32 %163, 127
  br i1 %164, label %165, label %181

165:                                              ; preds = %162
  %166 = load i32, i32* %4, align 4
  %167 = add nsw i32 %166, 1
  %168 = load %struct.replay*, %struct.replay** %2, align 8
  %169 = getelementptr inbounds %struct.replay, %struct.replay* %168, i32 0, i32 4
  %170 = load i32**, i32*** %169, align 8
  %171 = load %struct.replay*, %struct.replay** %2, align 8
  %172 = getelementptr inbounds %struct.replay, %struct.replay* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32*, i32** %170, i64 %174
  %176 = load i32*, i32** %175, align 8
  %177 = load %struct.replay*, %struct.replay** %2, align 8
  %178 = getelementptr inbounds %struct.replay, %struct.replay* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  store i32 %167, i32* %180, align 4
  br label %181

181:                                              ; preds = %165, %162, %143
  br label %182

182:                                              ; preds = %181, %136, %131
  %183 = load %struct.replay*, %struct.replay** %2, align 8
  %184 = getelementptr inbounds %struct.replay, %struct.replay* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = add i64 %185, 1
  %187 = load %struct.replay*, %struct.replay** %2, align 8
  %188 = getelementptr inbounds %struct.replay, %struct.replay* %187, i32 0, i32 0
  store i64 %186, i64* %188, align 8
  %189 = load %struct.replay*, %struct.replay** %2, align 8
  %190 = getelementptr inbounds %struct.replay, %struct.replay* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.pattern*, %struct.pattern** %6, align 8
  %193 = getelementptr inbounds %struct.pattern, %struct.pattern* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp uge i64 %191, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %182
  %197 = load %struct.replay*, %struct.replay** %2, align 8
  %198 = getelementptr inbounds %struct.replay, %struct.replay* %197, i32 0, i32 0
  store i64 -1, i64* %198, align 8
  br label %199

199:                                              ; preds = %196, %182
  store i32 0, i32* %3, align 4
  br label %200

200:                                              ; preds = %433, %199
  %201 = load i32, i32* %3, align 4
  %202 = load %struct.module*, %struct.module** %8, align 8
  %203 = getelementptr inbounds %struct.module, %struct.module* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = icmp slt i32 %201, %204
  br i1 %205, label %206, label %436

206:                                              ; preds = %200
  %207 = load %struct.replay*, %struct.replay** %2, align 8
  %208 = getelementptr inbounds %struct.replay, %struct.replay* %207, i32 0, i32 10
  %209 = load %struct.channel*, %struct.channel** %208, align 8
  %210 = load i32, i32* %3, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.channel, %struct.channel* %209, i64 %211
  store %struct.channel* %212, %struct.channel** %7, align 8
  %213 = load %struct.pattern*, %struct.pattern** %6, align 8
  %214 = load %struct.replay*, %struct.replay** %2, align 8
  %215 = getelementptr inbounds %struct.replay, %struct.replay* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = trunc i64 %216 to i32
  %218 = load i32, i32* %3, align 4
  %219 = call i32 @pattern_get_note(%struct.pattern* %213, i32 %217, i32 %218, %struct.note* %5)
  %220 = getelementptr inbounds %struct.note, %struct.note* %5, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 %221, 14
  br i1 %222, label %223, label %232

223:                                              ; preds = %206
  %224 = getelementptr inbounds %struct.note, %struct.note* %5, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = ashr i32 %225, 4
  %227 = or i32 112, %226
  %228 = getelementptr inbounds %struct.note, %struct.note* %5, i32 0, i32 0
  store i32 %227, i32* %228, align 4
  %229 = getelementptr inbounds %struct.note, %struct.note* %5, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = and i32 %230, 15
  store i32 %231, i32* %229, align 4
  br label %232

232:                                              ; preds = %223, %206
  %233 = getelementptr inbounds %struct.note, %struct.note* %5, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = icmp eq i32 %234, 147
  br i1 %235, label %236, label %245

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.note, %struct.note* %5, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = ashr i32 %238, 4
  %240 = or i32 240, %239
  %241 = getelementptr inbounds %struct.note, %struct.note* %5, i32 0, i32 0
  store i32 %240, i32* %241, align 4
  %242 = getelementptr inbounds %struct.note, %struct.note* %5, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = and i32 %243, 15
  store i32 %244, i32* %242, align 4
  br label %245

245:                                              ; preds = %236, %232
  %246 = getelementptr inbounds %struct.note, %struct.note* %5, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.note, %struct.note* %5, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = icmp sgt i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.note, %struct.note* %5, i32 0, i32 0
  store i32 138, i32* %254, align 4
  br label %255

255:                                              ; preds = %253, %249, %245
  %256 = load %struct.channel*, %struct.channel** %7, align 8
  %257 = call i32 @channel_row(%struct.channel* %256, %struct.note* %5)
  %258 = getelementptr inbounds %struct.note, %struct.note* %5, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  switch i32 %259, label %432 [
    i32 129, label %260
    i32 11, label %272
    i32 130, label %272
    i32 13, label %285
    i32 131, label %285
    i32 15, label %315
    i32 148, label %337
    i32 118, label %347
    i32 251, label %347
    i32 126, label %419
    i32 254, label %419
  ]

260:                                              ; preds = %255
  %261 = getelementptr inbounds %struct.note, %struct.note* %5, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = icmp sgt i32 %262, 0
  br i1 %263, label %264, label %271

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.note, %struct.note* %5, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.replay*, %struct.replay** %2, align 8
  %268 = getelementptr inbounds %struct.replay, %struct.replay* %267, i32 0, i32 7
  store i32 %266, i32* %268, align 4
  %269 = load %struct.replay*, %struct.replay** %2, align 8
  %270 = getelementptr inbounds %struct.replay, %struct.replay* %269, i32 0, i32 6
  store i32 %266, i32* %270, align 8
  br label %271

271:                                              ; preds = %264, %260
  br label %432

272:                                              ; preds = %255, %255
  %273 = load %struct.replay*, %struct.replay** %2, align 8
  %274 = getelementptr inbounds %struct.replay, %struct.replay* %273, i32 0, i32 5
  %275 = load i64, i64* %274, align 8
  %276 = icmp slt i64 %275, 0
  br i1 %276, label %277, label %284

277:                                              ; preds = %272
  %278 = getelementptr inbounds %struct.note, %struct.note* %5, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.replay*, %struct.replay** %2, align 8
  %281 = getelementptr inbounds %struct.replay, %struct.replay* %280, i32 0, i32 1
  store i32 %279, i32* %281, align 8
  %282 = load %struct.replay*, %struct.replay** %2, align 8
  %283 = getelementptr inbounds %struct.replay, %struct.replay* %282, i32 0, i32 0
  store i64 0, i64* %283, align 8
  br label %284

284:                                              ; preds = %277, %272
  br label %432

285:                                              ; preds = %255, %255
  %286 = load %struct.replay*, %struct.replay** %2, align 8
  %287 = getelementptr inbounds %struct.replay, %struct.replay* %286, i32 0, i32 5
  %288 = load i64, i64* %287, align 8
  %289 = icmp slt i64 %288, 0
  br i1 %289, label %290, label %314

290:                                              ; preds = %285
  %291 = load %struct.replay*, %struct.replay** %2, align 8
  %292 = getelementptr inbounds %struct.replay, %struct.replay* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %295, label %302

295:                                              ; preds = %290
  %296 = load %struct.replay*, %struct.replay** %2, align 8
  %297 = getelementptr inbounds %struct.replay, %struct.replay* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  %299 = add nsw i32 %298, 1
  %300 = load %struct.replay*, %struct.replay** %2, align 8
  %301 = getelementptr inbounds %struct.replay, %struct.replay* %300, i32 0, i32 1
  store i32 %299, i32* %301, align 8
  br label %302

302:                                              ; preds = %295, %290
  %303 = getelementptr inbounds %struct.note, %struct.note* %5, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = ashr i32 %304, 4
  %306 = mul nsw i32 %305, 10
  %307 = getelementptr inbounds %struct.note, %struct.note* %5, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = and i32 %308, 15
  %310 = add nsw i32 %306, %309
  %311 = sext i32 %310 to i64
  %312 = load %struct.replay*, %struct.replay** %2, align 8
  %313 = getelementptr inbounds %struct.replay, %struct.replay* %312, i32 0, i32 0
  store i64 %311, i64* %313, align 8
  br label %314

314:                                              ; preds = %302, %285
  br label %432

315:                                              ; preds = %255
  %316 = getelementptr inbounds %struct.note, %struct.note* %5, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = icmp sgt i32 %317, 0
  br i1 %318, label %319, label %336

319:                                              ; preds = %315
  %320 = getelementptr inbounds %struct.note, %struct.note* %5, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = icmp slt i32 %321, 32
  br i1 %322, label %323, label %330

323:                                              ; preds = %319
  %324 = getelementptr inbounds %struct.note, %struct.note* %5, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.replay*, %struct.replay** %2, align 8
  %327 = getelementptr inbounds %struct.replay, %struct.replay* %326, i32 0, i32 7
  store i32 %325, i32* %327, align 4
  %328 = load %struct.replay*, %struct.replay** %2, align 8
  %329 = getelementptr inbounds %struct.replay, %struct.replay* %328, i32 0, i32 6
  store i32 %325, i32* %329, align 8
  br label %335

330:                                              ; preds = %319
  %331 = getelementptr inbounds %struct.note, %struct.note* %5, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.replay*, %struct.replay** %2, align 8
  %334 = getelementptr inbounds %struct.replay, %struct.replay* %333, i32 0, i32 8
  store i32 %332, i32* %334, align 8
  br label %335

335:                                              ; preds = %330, %323
  br label %336

336:                                              ; preds = %335, %315
  br label %432

337:                                              ; preds = %255
  %338 = getelementptr inbounds %struct.note, %struct.note* %5, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = icmp sgt i32 %339, 32
  br i1 %340, label %341, label %346

341:                                              ; preds = %337
  %342 = getelementptr inbounds %struct.note, %struct.note* %5, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.replay*, %struct.replay** %2, align 8
  %345 = getelementptr inbounds %struct.replay, %struct.replay* %344, i32 0, i32 8
  store i32 %343, i32* %345, align 8
  br label %346

346:                                              ; preds = %341, %337
  br label %432

347:                                              ; preds = %255, %255
  %348 = getelementptr inbounds %struct.note, %struct.note* %5, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %358

351:                                              ; preds = %347
  %352 = load %struct.replay*, %struct.replay** %2, align 8
  %353 = getelementptr inbounds %struct.replay, %struct.replay* %352, i32 0, i32 3
  %354 = load i64, i64* %353, align 8
  %355 = trunc i64 %354 to i32
  %356 = load %struct.channel*, %struct.channel** %7, align 8
  %357 = getelementptr inbounds %struct.channel, %struct.channel* %356, i32 0, i32 0
  store i32 %355, i32* %357, align 4
  br label %358

358:                                              ; preds = %351, %347
  %359 = load %struct.channel*, %struct.channel** %7, align 8
  %360 = getelementptr inbounds %struct.channel, %struct.channel* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = sext i32 %361 to i64
  %363 = load %struct.replay*, %struct.replay** %2, align 8
  %364 = getelementptr inbounds %struct.replay, %struct.replay* %363, i32 0, i32 3
  %365 = load i64, i64* %364, align 8
  %366 = icmp ult i64 %362, %365
  br i1 %366, label %367, label %418

367:                                              ; preds = %358
  %368 = load %struct.replay*, %struct.replay** %2, align 8
  %369 = getelementptr inbounds %struct.replay, %struct.replay* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 8
  %371 = icmp slt i32 %370, 0
  br i1 %371, label %372, label %418

372:                                              ; preds = %367
  %373 = load %struct.replay*, %struct.replay** %2, align 8
  %374 = getelementptr inbounds %struct.replay, %struct.replay* %373, i32 0, i32 5
  %375 = load i64, i64* %374, align 8
  %376 = icmp slt i64 %375, 0
  br i1 %376, label %377, label %386

377:                                              ; preds = %372
  %378 = getelementptr inbounds %struct.note, %struct.note* %5, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = sext i32 %379 to i64
  %381 = load %struct.replay*, %struct.replay** %2, align 8
  %382 = getelementptr inbounds %struct.replay, %struct.replay* %381, i32 0, i32 5
  store i64 %380, i64* %382, align 8
  %383 = load i32, i32* %3, align 4
  %384 = load %struct.replay*, %struct.replay** %2, align 8
  %385 = getelementptr inbounds %struct.replay, %struct.replay* %384, i32 0, i32 9
  store i32 %383, i32* %385, align 4
  br label %386

386:                                              ; preds = %377, %372
  %387 = load %struct.replay*, %struct.replay** %2, align 8
  %388 = getelementptr inbounds %struct.replay, %struct.replay* %387, i32 0, i32 9
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* %3, align 4
  %391 = icmp eq i32 %389, %390
  br i1 %391, label %392, label %417

392:                                              ; preds = %386
  %393 = load %struct.replay*, %struct.replay** %2, align 8
  %394 = getelementptr inbounds %struct.replay, %struct.replay* %393, i32 0, i32 5
  %395 = load i64, i64* %394, align 8
  %396 = icmp eq i64 %395, 0
  br i1 %396, label %397, label %405

397:                                              ; preds = %392
  %398 = load %struct.replay*, %struct.replay** %2, align 8
  %399 = getelementptr inbounds %struct.replay, %struct.replay* %398, i32 0, i32 3
  %400 = load i64, i64* %399, align 8
  %401 = add i64 %400, 1
  %402 = trunc i64 %401 to i32
  %403 = load %struct.channel*, %struct.channel** %7, align 8
  %404 = getelementptr inbounds %struct.channel, %struct.channel* %403, i32 0, i32 0
  store i32 %402, i32* %404, align 4
  br label %412

405:                                              ; preds = %392
  %406 = load %struct.channel*, %struct.channel** %7, align 8
  %407 = getelementptr inbounds %struct.channel, %struct.channel* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = sext i32 %408 to i64
  %410 = load %struct.replay*, %struct.replay** %2, align 8
  %411 = getelementptr inbounds %struct.replay, %struct.replay* %410, i32 0, i32 0
  store i64 %409, i64* %411, align 8
  br label %412

412:                                              ; preds = %405, %397
  %413 = load %struct.replay*, %struct.replay** %2, align 8
  %414 = getelementptr inbounds %struct.replay, %struct.replay* %413, i32 0, i32 5
  %415 = load i64, i64* %414, align 8
  %416 = add nsw i64 %415, -1
  store i64 %416, i64* %414, align 8
  br label %417

417:                                              ; preds = %412, %386
  br label %418

418:                                              ; preds = %417, %367, %358
  br label %432

419:                                              ; preds = %255, %255
  %420 = load %struct.replay*, %struct.replay** %2, align 8
  %421 = getelementptr inbounds %struct.replay, %struct.replay* %420, i32 0, i32 7
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.replay*, %struct.replay** %2, align 8
  %424 = getelementptr inbounds %struct.replay, %struct.replay* %423, i32 0, i32 7
  %425 = load i32, i32* %424, align 4
  %426 = getelementptr inbounds %struct.note, %struct.note* %5, i32 0, i32 1
  %427 = load i32, i32* %426, align 4
  %428 = mul nsw i32 %425, %427
  %429 = add nsw i32 %422, %428
  %430 = load %struct.replay*, %struct.replay** %2, align 8
  %431 = getelementptr inbounds %struct.replay, %struct.replay* %430, i32 0, i32 6
  store i32 %429, i32* %431, align 8
  br label %432

432:                                              ; preds = %255, %419, %418, %346, %336, %314, %284, %271
  br label %433

433:                                              ; preds = %432
  %434 = load i32, i32* %3, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %3, align 4
  br label %200

436:                                              ; preds = %200
  ret void
}

declare dso_local i32 @pattern_get_note(%struct.pattern*, i32, i32, %struct.note*) #1

declare dso_local i32 @channel_row(%struct.channel*, %struct.note*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
