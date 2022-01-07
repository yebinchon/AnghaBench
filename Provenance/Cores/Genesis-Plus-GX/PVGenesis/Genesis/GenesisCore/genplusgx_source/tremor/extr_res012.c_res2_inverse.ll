; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_res012.c_res2_inverse.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_res012.c_res2_inverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i32**, i32***, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @res2_inverse(%struct.TYPE_9__* %0, i32* %1, i32** %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32**, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = bitcast i32* %29 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %16, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %17, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %18, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %19, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %11, align 4
  %46 = mul nsw i32 %44, %45
  %47 = ashr i32 %46, 1
  store i32 %47, i32* %20, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %20, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %5
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  br label %59

57:                                               ; preds = %5
  %58 = load i32, i32* %20, align 4
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi i32 [ %56, %53 ], [ %58, %57 ]
  store i32 %60, i32* %21, align 4
  %61 = load i32, i32* %21, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %61, %64
  store i32 %65, i32* %22, align 4
  %66 = load i32, i32* %22, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %244

68:                                               ; preds = %59
  %69 = load i32, i32* %22, align 4
  %70 = load i32, i32* %18, align 4
  %71 = sdiv i32 %69, %70
  store i32 %71, i32* %23, align 4
  %72 = load i32, i32* %23, align 4
  %73 = load i32, i32* %19, align 4
  %74 = add nsw i32 %72, %73
  %75 = sub nsw i32 %74, 1
  %76 = load i32, i32* %19, align 4
  %77 = sdiv i32 %75, %76
  store i32 %77, i32* %24, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %79 = load i32, i32* %24, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 8
  %82 = trunc i64 %81 to i32
  %83 = call i64 @_vorbis_block_alloc(%struct.TYPE_9__* %78, i32 %82)
  %84 = inttoptr i64 %83 to i32**
  store i32** %84, i32*** %25, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sdiv i32 %87, %88
  store i32 %89, i32* %26, align 4
  store i64 0, i64* %12, align 8
  br label %90

90:                                               ; preds = %103, %68
  %91 = load i64, i64* %12, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %90
  %96 = load i32*, i32** %10, align 8
  %97 = load i64, i64* %12, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %106

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %12, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %12, align 8
  br label %90

106:                                              ; preds = %101, %90
  %107 = load i64, i64* %12, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = icmp eq i64 %107, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i32 0, i32* %6, align 4
  br label %247

112:                                              ; preds = %106
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %18, align 4
  %115 = sdiv i32 %114, %113
  store i32 %115, i32* %18, align 4
  store i64 0, i64* %15, align 8
  br label %116

116:                                              ; preds = %240, %112
  %117 = load i64, i64* %15, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp slt i64 %117, %120
  br i1 %121, label %122, label %243

122:                                              ; preds = %116
  store i64 0, i64* %12, align 8
  store i64 0, i64* %14, align 8
  br label %123

123:                                              ; preds = %236, %122
  %124 = load i64, i64* %12, align 8
  %125 = load i32, i32* %23, align 4
  %126 = sext i32 %125 to i64
  %127 = icmp slt i64 %124, %126
  br i1 %127, label %128, label %239

128:                                              ; preds = %123
  %129 = load i64, i64* %15, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %159

131:                                              ; preds = %128
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = call i32 @vorbis_book_decode(%struct.TYPE_10__* %134, i32* %136)
  store i32 %137, i32* %27, align 4
  %138 = load i32, i32* %27, align 4
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %140, label %141

140:                                              ; preds = %131
  br label %246

141:                                              ; preds = %131
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i32**, i32*** %143, align 8
  %145 = load i32, i32* %27, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32*, i32** %144, i64 %146
  %148 = load i32*, i32** %147, align 8
  %149 = load i32**, i32*** %25, align 8
  %150 = load i64, i64* %14, align 8
  %151 = getelementptr inbounds i32*, i32** %149, i64 %150
  store i32* %148, i32** %151, align 8
  %152 = load i32**, i32*** %25, align 8
  %153 = load i64, i64* %14, align 8
  %154 = getelementptr inbounds i32*, i32** %152, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = icmp eq i32* %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %141
  br label %245

158:                                              ; preds = %141
  br label %159

159:                                              ; preds = %158, %128
  store i64 0, i64* %13, align 8
  br label %160

160:                                              ; preds = %230, %159
  %161 = load i64, i64* %13, align 8
  %162 = load i32, i32* %19, align 4
  %163 = sext i32 %162 to i64
  %164 = icmp slt i64 %161, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = load i64, i64* %12, align 8
  %167 = load i32, i32* %23, align 4
  %168 = sext i32 %167 to i64
  %169 = icmp slt i64 %166, %168
  br label %170

170:                                              ; preds = %165, %160
  %171 = phi i1 [ false, %160 ], [ %169, %165 ]
  br i1 %171, label %172, label %235

172:                                              ; preds = %170
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 3
  %175 = load i32*, i32** %174, align 8
  %176 = load i32**, i32*** %25, align 8
  %177 = load i64, i64* %14, align 8
  %178 = getelementptr inbounds i32*, i32** %176, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* %13, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %175, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load i64, i64* %15, align 8
  %187 = trunc i64 %186 to i32
  %188 = shl i32 1, %187
  %189 = and i32 %185, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %229

191:                                              ; preds = %172
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 2
  %194 = load i32***, i32**** %193, align 8
  %195 = load i32**, i32*** %25, align 8
  %196 = load i64, i64* %14, align 8
  %197 = getelementptr inbounds i32*, i32** %195, i64 %196
  %198 = load i32*, i32** %197, align 8
  %199 = load i64, i64* %13, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32**, i32*** %194, i64 %202
  %204 = load i32**, i32*** %203, align 8
  %205 = load i64, i64* %15, align 8
  %206 = getelementptr inbounds i32*, i32** %204, i64 %205
  %207 = load i32*, i32** %206, align 8
  store i32* %207, i32** %28, align 8
  %208 = load i32*, i32** %28, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %228

210:                                              ; preds = %191
  %211 = load i32*, i32** %28, align 8
  %212 = load i32**, i32*** %9, align 8
  %213 = load i64, i64* %12, align 8
  %214 = load i32, i32* %18, align 4
  %215 = sext i32 %214 to i64
  %216 = mul nsw i64 %213, %215
  %217 = load i32, i32* %26, align 4
  %218 = sext i32 %217 to i64
  %219 = add nsw i64 %216, %218
  %220 = load i32, i32* %11, align 4
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 1
  %223 = load i32, i32* %18, align 4
  %224 = call i32 @vorbis_book_decodevv_add(i32* %211, i32** %212, i64 %219, i32 %220, i32* %222, i32 %223, i32 -8)
  %225 = icmp eq i32 %224, -1
  br i1 %225, label %226, label %227

226:                                              ; preds = %210
  br label %246

227:                                              ; preds = %210
  br label %228

228:                                              ; preds = %227, %191
  br label %229

229:                                              ; preds = %228, %172
  br label %230

230:                                              ; preds = %229
  %231 = load i64, i64* %13, align 8
  %232 = add nsw i64 %231, 1
  store i64 %232, i64* %13, align 8
  %233 = load i64, i64* %12, align 8
  %234 = add nsw i64 %233, 1
  store i64 %234, i64* %12, align 8
  br label %160

235:                                              ; preds = %170
  br label %236

236:                                              ; preds = %235
  %237 = load i64, i64* %14, align 8
  %238 = add nsw i64 %237, 1
  store i64 %238, i64* %14, align 8
  br label %123

239:                                              ; preds = %123
  br label %240

240:                                              ; preds = %239
  %241 = load i64, i64* %15, align 8
  %242 = add nsw i64 %241, 1
  store i64 %242, i64* %15, align 8
  br label %116

243:                                              ; preds = %116
  br label %244

244:                                              ; preds = %243, %59
  br label %245

245:                                              ; preds = %244, %157
  br label %246

246:                                              ; preds = %245, %226, %140
  store i32 0, i32* %6, align 4
  br label %247

247:                                              ; preds = %246, %111
  %248 = load i32, i32* %6, align 4
  ret i32 %248
}

declare dso_local i64 @_vorbis_block_alloc(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @vorbis_book_decode(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @vorbis_book_decodevv_add(i32*, i32**, i64, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
