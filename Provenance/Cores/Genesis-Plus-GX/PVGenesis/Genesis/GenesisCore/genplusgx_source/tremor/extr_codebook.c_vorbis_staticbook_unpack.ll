; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_codebook.c_vorbis_staticbook_unpack.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_codebook.c_vorbis_staticbook_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64*, i32, i32, i32, i32, i32, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vorbis_staticbook_unpack(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = call i32 @memset(%struct.TYPE_6__* %13, i32 0, i32 48)
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @oggpack_read(i32* %15, i32 24)
  %17 = icmp ne i32 %16, 5653314
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %268

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @oggpack_read(i32* %20, i32 16)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @oggpack_read(i32* %24, i32 24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %268

33:                                               ; preds = %19
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @oggpack_read(i32* %34, i32 1)
  switch i32 %35, label %182 [
    i32 0, label %36
    i32 1, label %116
  ]

36:                                               ; preds = %33
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 8, %40
  %42 = trunc i64 %41 to i32
  %43 = call i64 @_ogg_malloc(i32 %42)
  %44 = inttoptr i64 %43 to i64*
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  store i64* %44, i64** %46, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @oggpack_read(i32* %47, i32 1)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %88

50:                                               ; preds = %36
  store i64 0, i64* %6, align 8
  br label %51

51:                                               ; preds = %84, %50
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp slt i64 %52, %56
  br i1 %57, label %58, label %87

58:                                               ; preds = %51
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @oggpack_read(i32* %59, i32 1)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @oggpack_read(i32* %63, i32 5)
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = icmp eq i64 %66, -1
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %268

69:                                               ; preds = %62
  %70 = load i64, i64* %8, align 8
  %71 = add nsw i64 %70, 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  store i64 %71, i64* %76, align 8
  br label %83

77:                                               ; preds = %58
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %77, %69
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %6, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %6, align 8
  br label %51

87:                                               ; preds = %51
  br label %115

88:                                               ; preds = %36
  store i64 0, i64* %6, align 8
  br label %89

89:                                               ; preds = %111, %88
  %90 = load i64, i64* %6, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp slt i64 %90, %94
  br i1 %95, label %96, label %114

96:                                               ; preds = %89
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @oggpack_read(i32* %97, i32 5)
  %99 = sext i32 %98 to i64
  store i64 %99, i64* %9, align 8
  %100 = load i64, i64* %9, align 8
  %101 = icmp eq i64 %100, -1
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %268

103:                                              ; preds = %96
  %104 = load i64, i64* %9, align 8
  %105 = add nsw i64 %104, 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* %6, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  store i64 %105, i64* %110, align 8
  br label %111

111:                                              ; preds = %103
  %112 = load i64, i64* %6, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %6, align 8
  br label %89

114:                                              ; preds = %89
  br label %115

115:                                              ; preds = %114, %87
  br label %183

116:                                              ; preds = %33
  %117 = load i32*, i32** %4, align 8
  %118 = call i32 @oggpack_read(i32* %117, i32 5)
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %10, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = mul i64 8, %124
  %126 = trunc i64 %125 to i32
  %127 = call i64 @_ogg_malloc(i32 %126)
  %128 = inttoptr i64 %127 to i64*
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  store i64* %128, i64** %130, align 8
  store i64 0, i64* %6, align 8
  br label %131

131:                                              ; preds = %178, %116
  %132 = load i64, i64* %6, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = icmp slt i64 %132, %136
  br i1 %137, label %138, label %181

138:                                              ; preds = %131
  %139 = load i32*, i32** %4, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* %6, align 8
  %145 = sub nsw i64 %143, %144
  %146 = call i32 @_ilog(i64 %145)
  %147 = call i32 @oggpack_read(i32* %139, i32 %146)
  %148 = sext i32 %147 to i64
  store i64 %148, i64* %11, align 8
  %149 = load i64, i64* %11, align 8
  %150 = icmp eq i64 %149, -1
  br i1 %150, label %151, label %152

151:                                              ; preds = %138
  br label %268

152:                                              ; preds = %138
  store i64 0, i64* %7, align 8
  br label %153

153:                                              ; preds = %173, %152
  %154 = load i64, i64* %7, align 8
  %155 = load i64, i64* %11, align 8
  %156 = icmp slt i64 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %153
  %158 = load i64, i64* %6, align 8
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = icmp slt i64 %158, %162
  br label %164

164:                                              ; preds = %157, %153
  %165 = phi i1 [ false, %153 ], [ %163, %157 ]
  br i1 %165, label %166, label %178

166:                                              ; preds = %164
  %167 = load i64, i64* %10, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 2
  %170 = load i64*, i64** %169, align 8
  %171 = load i64, i64* %6, align 8
  %172 = getelementptr inbounds i64, i64* %170, i64 %171
  store i64 %167, i64* %172, align 8
  br label %173

173:                                              ; preds = %166
  %174 = load i64, i64* %7, align 8
  %175 = add nsw i64 %174, 1
  store i64 %175, i64* %7, align 8
  %176 = load i64, i64* %6, align 8
  %177 = add nsw i64 %176, 1
  store i64 %177, i64* %6, align 8
  br label %153

178:                                              ; preds = %164
  %179 = load i64, i64* %10, align 8
  %180 = add nsw i64 %179, 1
  store i64 %180, i64* %10, align 8
  br label %131

181:                                              ; preds = %131
  br label %183

182:                                              ; preds = %33
  store i32 -1, i32* %3, align 4
  br label %271

183:                                              ; preds = %181, %115
  %184 = load i32*, i32** %4, align 8
  %185 = call i32 @oggpack_read(i32* %184, i32 4)
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 8
  switch i32 %185, label %265 [
    i32 0, label %188
    i32 1, label %189
    i32 2, label %189
  ]

188:                                              ; preds = %183
  br label %266

189:                                              ; preds = %183, %183
  %190 = load i32*, i32** %4, align 8
  %191 = call i32 @oggpack_read(i32* %190, i32 32)
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 4
  store i32 %191, i32* %193, align 4
  %194 = load i32*, i32** %4, align 8
  %195 = call i32 @oggpack_read(i32* %194, i32 32)
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 5
  store i32 %195, i32* %197, align 8
  %198 = load i32*, i32** %4, align 8
  %199 = call i32 @oggpack_read(i32* %198, i32 4)
  %200 = add nsw i32 %199, 1
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 6
  store i32 %200, i32* %202, align 4
  %203 = load i32*, i32** %4, align 8
  %204 = call i32 @oggpack_read(i32* %203, i32 1)
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 7
  store i32 %204, i32* %206, align 8
  store i32 0, i32* %12, align 4
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  switch i32 %209, label %221 [
    i32 1, label %210
    i32 2, label %213
  ]

210:                                              ; preds = %189
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %212 = call i32 @_book_maptype1_quantvals(%struct.TYPE_6__* %211)
  store i32 %212, i32* %12, align 4
  br label %221

213:                                              ; preds = %189
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = mul nsw i32 %216, %219
  store i32 %220, i32* %12, align 4
  br label %221

221:                                              ; preds = %189, %213, %210
  %222 = load i32, i32* %12, align 4
  %223 = sext i32 %222 to i64
  %224 = mul i64 8, %223
  %225 = trunc i64 %224 to i32
  %226 = call i64 @_ogg_malloc(i32 %225)
  %227 = inttoptr i64 %226 to i64*
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 8
  store i64* %227, i64** %229, align 8
  store i64 0, i64* %6, align 8
  br label %230

230:                                              ; preds = %247, %221
  %231 = load i64, i64* %6, align 8
  %232 = load i32, i32* %12, align 4
  %233 = sext i32 %232 to i64
  %234 = icmp slt i64 %231, %233
  br i1 %234, label %235, label %250

235:                                              ; preds = %230
  %236 = load i32*, i32** %4, align 8
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 6
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @oggpack_read(i32* %236, i32 %239)
  %241 = sext i32 %240 to i64
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 8
  %244 = load i64*, i64** %243, align 8
  %245 = load i64, i64* %6, align 8
  %246 = getelementptr inbounds i64, i64* %244, i64 %245
  store i64 %241, i64* %246, align 8
  br label %247

247:                                              ; preds = %235
  %248 = load i64, i64* %6, align 8
  %249 = add nsw i64 %248, 1
  store i64 %249, i64* %6, align 8
  br label %230

250:                                              ; preds = %230
  %251 = load i32, i32* %12, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %264

253:                                              ; preds = %250
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 8
  %256 = load i64*, i64** %255, align 8
  %257 = load i32, i32* %12, align 4
  %258 = sub nsw i32 %257, 1
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i64, i64* %256, i64 %259
  %261 = load i64, i64* %260, align 8
  %262 = icmp eq i64 %261, -1
  br i1 %262, label %263, label %264

263:                                              ; preds = %253
  br label %268

264:                                              ; preds = %253, %250
  br label %266

265:                                              ; preds = %183
  br label %267

266:                                              ; preds = %264, %188
  store i32 0, i32* %3, align 4
  br label %271

267:                                              ; preds = %265
  br label %268

268:                                              ; preds = %267, %263, %151, %102, %68, %32, %18
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %270 = call i32 @vorbis_staticbook_clear(%struct.TYPE_6__* %269)
  store i32 -1, i32* %3, align 4
  br label %271

271:                                              ; preds = %268, %266, %182
  %272 = load i32, i32* %3, align 4
  ret i32 %272
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @oggpack_read(i32*, i32) #1

declare dso_local i64 @_ogg_malloc(i32) #1

declare dso_local i32 @_ilog(i64) #1

declare dso_local i32 @_book_maptype1_quantvals(%struct.TYPE_6__*) #1

declare dso_local i32 @vorbis_staticbook_clear(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
