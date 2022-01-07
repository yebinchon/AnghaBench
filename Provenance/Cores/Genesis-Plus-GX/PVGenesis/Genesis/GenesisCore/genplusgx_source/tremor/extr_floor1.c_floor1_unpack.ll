; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_floor1.c_floor1_unpack.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_floor1.c_floor1_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32*, i64*, i32**, i32*, i64*, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_9__*, i32*)* @floor1_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @floor1_unpack(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %18 = call i64 @_ogg_calloc(i32 1, i32 64)
  %19 = inttoptr i64 %18 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %12, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i8* @oggpack_read(i32* %20, i32 5)
  %22 = ptrtoint i8* %21 to i32
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %59, %2
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %25
  %32 = load i32*, i32** %5, align 8
  %33 = call i8* @oggpack_read(i32* %32, i32 4)
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %41, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %31
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %50, %31
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %25

62:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %200, %62
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %203

68:                                               ; preds = %63
  %69 = load i32*, i32** %5, align 8
  %70 = call i8* @oggpack_read(i32* %69, i32 3)
  %71 = getelementptr i8, i8* %70, i64 1
  %72 = ptrtoint i8* %71 to i64
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 6
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  store i64 %72, i64* %78, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = call i8* @oggpack_read(i32* %79, i32 2)
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %81, i32* %87, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %68
  br label %281

97:                                               ; preds = %68
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %97
  %107 = load i32*, i32** %5, align 8
  %108 = call i8* @oggpack_read(i32* %107, i32 8)
  %109 = ptrtoint i8* %108 to i64
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  store i64 %109, i64* %115, align 8
  br label %116

116:                                              ; preds = %106, %97
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 3
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %137, label %125

125:                                              ; preds = %116
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 3
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp sge i64 %132, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %125, %116
  br label %281

138:                                              ; preds = %125
  store i32 0, i32* %8, align 4
  br label %139

139:                                              ; preds = %196, %138
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = shl i32 1, %147
  %149 = icmp slt i32 %140, %148
  br i1 %149, label %150, label %199

150:                                              ; preds = %139
  %151 = load i32*, i32** %5, align 8
  %152 = call i8* @oggpack_read(i32* %151, i32 8)
  %153 = getelementptr i8, i8* %152, i64 -1
  %154 = ptrtoint i8* %153 to i32
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 4
  %157 = load i32**, i32*** %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32*, i32** %157, i64 %159
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %154, i32* %164, align 4
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 4
  %167 = load i32**, i32*** %166, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32*, i32** %167, i64 %169
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = icmp slt i32 %175, -1
  br i1 %176, label %194, label %177

177:                                              ; preds = %150
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 4
  %180 = load i32**, i32*** %179, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32*, i32** %180, i64 %182
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp sge i64 %189, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %177, %150
  br label %281

195:                                              ; preds = %177
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %8, align 4
  br label %139

199:                                              ; preds = %139
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %7, align 4
  br label %63

203:                                              ; preds = %63
  %204 = load i32*, i32** %5, align 8
  %205 = call i8* @oggpack_read(i32* %204, i32 2)
  %206 = getelementptr i8, i8* %205, i64 1
  %207 = ptrtoint i8* %206 to i64
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 7
  store i64 %207, i64* %209, align 8
  %210 = load i32*, i32** %5, align 8
  %211 = call i8* @oggpack_read(i32* %210, i32 4)
  %212 = ptrtoint i8* %211 to i32
  store i32 %212, i32* %11, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %213

213:                                              ; preds = %266, %203
  %214 = load i32, i32* %7, align 4
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp slt i32 %214, %217
  br i1 %218, label %219, label %269

219:                                              ; preds = %213
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 6
  %222 = load i64*, i64** %221, align 8
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %7, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i64, i64* %222, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = load i32, i32* %9, align 4
  %234 = sext i32 %233 to i64
  %235 = add nsw i64 %234, %232
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %9, align 4
  br label %237

237:                                              ; preds = %262, %219
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* %9, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %265

241:                                              ; preds = %237
  %242 = load i32*, i32** %5, align 8
  %243 = load i32, i32* %11, align 4
  %244 = call i8* @oggpack_read(i32* %242, i32 %243)
  %245 = ptrtoint i8* %244 to i32
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 5
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %8, align 4
  %250 = add nsw i32 %249, 2
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %248, i64 %251
  store i32 %245, i32* %252, align 4
  store i32 %245, i32* %13, align 4
  %253 = load i32, i32* %13, align 4
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %260, label %255

255:                                              ; preds = %241
  %256 = load i32, i32* %13, align 4
  %257 = load i32, i32* %11, align 4
  %258 = shl i32 1, %257
  %259 = icmp sge i32 %256, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %255, %241
  br label %281

261:                                              ; preds = %255
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %8, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %8, align 4
  br label %237

265:                                              ; preds = %237
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %7, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %7, align 4
  br label %213

269:                                              ; preds = %213
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 5
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 0
  store i32 0, i32* %273, align 4
  %274 = load i32, i32* %11, align 4
  %275 = shl i32 1, %274
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 5
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 1
  store i32 %275, i32* %279, align 4
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %280, %struct.TYPE_8__** %3, align 8
  br label %284

281:                                              ; preds = %260, %194, %137, %96
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %283 = call i32 @floor1_free_info(%struct.TYPE_8__* %282)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %284

284:                                              ; preds = %281, %269
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %285
}

declare dso_local i64 @_ogg_calloc(i32, i32) #1

declare dso_local i8* @oggpack_read(i32*, i32) #1

declare dso_local i32 @floor1_free_info(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
