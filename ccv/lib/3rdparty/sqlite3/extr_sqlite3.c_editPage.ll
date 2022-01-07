; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_editPage.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_editPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32*, %struct.TYPE_13__*, i32*, i32* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32*, i32**, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, i32*)* }

@CORRUPT_DB = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i32, i32, %struct.TYPE_15__*)* @editPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @editPage(%struct.TYPE_14__* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_15__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_15__* %4, %struct.TYPE_15__** %11, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 6
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %12, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %13, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = mul nsw i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  store i32* %36, i32** %14, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %40, %43
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %44, %47
  store i32 %48, i32* %19, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %20, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %5
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sub nsw i32 %58, %59
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %62 = call i32 @pageFreeArray(%struct.TYPE_14__* %56, i32 %57, i32 %60, %struct.TYPE_15__* %61)
  store i32 %62, i32* %21, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 5
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %21, align 4
  %70 = mul nsw i32 %69, 2
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %15, align 4
  %74 = mul nsw i32 %73, 2
  %75 = call i32 @memmove(i32* %65, i32* %72, i32 %74)
  %76 = load i32, i32* %21, align 4
  %77 = load i32, i32* %15, align 4
  %78 = sub nsw i32 %77, %76
  store i32 %78, i32* %15, align 4
  br label %79

79:                                               ; preds = %55, %5
  %80 = load i32, i32* %20, align 4
  %81 = load i32, i32* %19, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %85 = load i32, i32* %20, align 4
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %20, align 4
  %88 = sub nsw i32 %86, %87
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %90 = call i32 @pageFreeArray(%struct.TYPE_14__* %84, i32 %85, i32 %88, %struct.TYPE_15__* %89)
  %91 = load i32, i32* %15, align 4
  %92 = sub nsw i32 %91, %90
  store i32 %92, i32* %15, align 4
  br label %93

93:                                               ; preds = %83, %79
  %94 = load i32*, i32** %12, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 5
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = call i64 @get2byteNotZero(i32* %99)
  %101 = getelementptr inbounds i32, i32* %94, i64 %100
  store i32* %101, i32** %16, align 8
  %102 = load i32*, i32** %16, align 8
  %103 = load i32*, i32** %14, align 8
  %104 = icmp ult i32* %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %93
  br label %264

106:                                              ; preds = %93
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %156

110:                                              ; preds = %106
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = sub nsw i32 %112, %113
  %115 = call i32 @MIN(i32 %111, i32 %114)
  store i32 %115, i32* %22, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = sub nsw i32 %116, %117
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %127, label %121

121:                                              ; preds = %110
  %122 = load i32, i32* %15, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load i64, i64* @CORRUPT_DB, align 8
  %126 = icmp ne i64 %125, 0
  br label %127

127:                                              ; preds = %124, %121, %110
  %128 = phi i1 [ true, %121 ], [ true, %110 ], [ %126, %124 ]
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 5
  %133 = load i32*, i32** %132, align 8
  store i32* %133, i32** %17, align 8
  %134 = load i32*, i32** %17, align 8
  %135 = load i32, i32* %22, align 4
  %136 = mul nsw i32 %135, 2
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32*, i32** %17, align 8
  %140 = load i32, i32* %15, align 4
  %141 = mul nsw i32 %140, 2
  %142 = call i32 @memmove(i32* %138, i32* %139, i32 %141)
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %144 = load i32*, i32** %14, align 8
  %145 = load i32*, i32** %17, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %22, align 4
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %149 = call i64 @pageInsertArray(%struct.TYPE_14__* %143, i32* %144, i32** %16, i32* %145, i32 %146, i32 %147, %struct.TYPE_15__* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %127
  br label %264

152:                                              ; preds = %127
  %153 = load i32, i32* %22, align 4
  %154 = load i32, i32* %15, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %15, align 4
  br label %156

156:                                              ; preds = %152, %106
  store i32 0, i32* %18, align 4
  br label %157

157:                                              ; preds = %211, %156
  %158 = load i32, i32* %18, align 4
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %214

163:                                              ; preds = %157
  %164 = load i32, i32* %8, align 4
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 3
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %18, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %164, %171
  %173 = load i32, i32* %9, align 4
  %174 = sub nsw i32 %172, %173
  store i32 %174, i32* %23, align 4
  %175 = load i32, i32* %23, align 4
  %176 = icmp sge i32 %175, 0
  br i1 %176, label %177, label %210

177:                                              ; preds = %163
  %178 = load i32, i32* %23, align 4
  %179 = load i32, i32* %10, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %210

181:                                              ; preds = %177
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 5
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %23, align 4
  %186 = mul nsw i32 %185, 2
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %184, i64 %187
  store i32* %188, i32** %17, align 8
  %189 = load i32*, i32** %17, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 2
  %191 = load i32*, i32** %17, align 8
  %192 = load i32, i32* %15, align 4
  %193 = load i32, i32* %23, align 4
  %194 = sub nsw i32 %192, %193
  %195 = mul nsw i32 %194, 2
  %196 = call i32 @memmove(i32* %190, i32* %191, i32 %195)
  %197 = load i32, i32* %15, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %15, align 4
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %200 = load i32*, i32** %14, align 8
  %201 = load i32*, i32** %17, align 8
  %202 = load i32, i32* %23, align 4
  %203 = load i32, i32* %9, align 4
  %204 = add nsw i32 %202, %203
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %206 = call i64 @pageInsertArray(%struct.TYPE_14__* %199, i32* %200, i32** %16, i32* %201, i32 %204, i32 1, %struct.TYPE_15__* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %181
  br label %264

209:                                              ; preds = %181
  br label %210

210:                                              ; preds = %209, %177, %163
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %18, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %18, align 4
  br label %157

214:                                              ; preds = %157
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 5
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %15, align 4
  %219 = mul nsw i32 %218, 2
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  store i32* %221, i32** %17, align 8
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %223 = load i32*, i32** %14, align 8
  %224 = load i32*, i32** %17, align 8
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* %15, align 4
  %227 = add nsw i32 %225, %226
  %228 = load i32, i32* %10, align 4
  %229 = load i32, i32* %15, align 4
  %230 = sub nsw i32 %228, %229
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %232 = call i64 @pageInsertArray(%struct.TYPE_14__* %222, i32* %223, i32** %16, i32* %224, i32 %227, i32 %230, %struct.TYPE_15__* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %214
  br label %264

235:                                              ; preds = %214
  %236 = load i32, i32* %10, align 4
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 4
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 2
  store i32 0, i32* %240, align 8
  %241 = load i32*, i32** %12, align 8
  %242 = load i32, i32* %13, align 4
  %243 = add nsw i32 %242, 3
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %241, i64 %244
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @put2byte(i32* %245, i32 %248)
  %250 = load i32*, i32** %12, align 8
  %251 = load i32, i32* %13, align 4
  %252 = add nsw i32 %251, 5
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %250, i64 %253
  %255 = load i32*, i32** %16, align 8
  %256 = load i32*, i32** %12, align 8
  %257 = ptrtoint i32* %255 to i64
  %258 = ptrtoint i32* %256 to i64
  %259 = sub i64 %257, %258
  %260 = sdiv exact i64 %259, 4
  %261 = trunc i64 %260 to i32
  %262 = call i32 @put2byte(i32* %254, i32 %261)
  %263 = load i32, i32* @SQLITE_OK, align 4
  store i32 %263, i32* %6, align 4
  br label %284

264:                                              ; preds = %234, %208, %151, %105
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %266 = load i32, i32* %9, align 4
  %267 = load i32, i32* %10, align 4
  %268 = call i32 @populateCellCache(%struct.TYPE_15__* %265, i32 %266, i32 %267)
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %270 = load i32, i32* %10, align 4
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 1
  %273 = load i32**, i32*** %272, align 8
  %274 = load i32, i32* %9, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32*, i32** %273, i64 %275
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %9, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = call i32 @rebuildPage(%struct.TYPE_14__* %269, i32 %270, i32** %276, i32* %282)
  store i32 %283, i32* %6, align 4
  br label %284

284:                                              ; preds = %264, %235
  %285 = load i32, i32* %6, align 4
  ret i32 %285
}

declare dso_local i32 @pageFreeArray(%struct.TYPE_14__*, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i64 @get2byteNotZero(i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pageInsertArray(%struct.TYPE_14__*, i32*, i32**, i32*, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @put2byte(i32*, i32) #1

declare dso_local i32 @populateCellCache(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @rebuildPage(%struct.TYPE_14__*, i32, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
