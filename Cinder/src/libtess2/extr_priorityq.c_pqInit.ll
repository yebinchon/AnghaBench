; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_priorityq.c_pqInit.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_priorityq.c_pqInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 (i32, i64)* }
%struct.TYPE_6__ = type { i32, i32, i32**, i32, i32, i32* }
%struct.anon = type { i32**, i32** }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqInit(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [50 x %struct.anon], align 16
  %12 = alloca %struct.anon*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds [50 x %struct.anon], [50 x %struct.anon]* %11, i64 0, i64 0
  store %struct.anon* %14, %struct.anon** %12, align 8
  store i32 2016473283, i32* %13, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i64 (i32, i64)*, i64 (i32, i64)** %16, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = call i64 %17(i32 %20, i64 %26)
  %28 = inttoptr i64 %27 to i32**
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  store i32** %28, i32*** %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i32**, i32*** %32, align 8
  %34 = icmp eq i32** %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %273

36:                                               ; preds = %2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i32**, i32*** %38, align 8
  store i32** %39, i32*** %6, align 8
  %40 = load i32**, i32*** %6, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %40, i64 %44
  %46 = getelementptr inbounds i32*, i32** %45, i64 -1
  store i32** %46, i32*** %7, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %10, align 8
  %50 = load i32**, i32*** %6, align 8
  store i32** %50, i32*** %8, align 8
  br label %51

51:                                               ; preds = %58, %36
  %52 = load i32**, i32*** %8, align 8
  %53 = load i32**, i32*** %7, align 8
  %54 = icmp ule i32** %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load i32*, i32** %10, align 8
  %57 = load i32**, i32*** %8, align 8
  store i32* %56, i32** %57, align 8
  br label %58

58:                                               ; preds = %55
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %10, align 8
  %61 = load i32**, i32*** %8, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i32 1
  store i32** %62, i32*** %8, align 8
  br label %51

63:                                               ; preds = %51
  %64 = load i32**, i32*** %6, align 8
  %65 = load %struct.anon*, %struct.anon** %12, align 8
  %66 = getelementptr inbounds %struct.anon, %struct.anon* %65, i32 0, i32 0
  store i32** %64, i32*** %66, align 8
  %67 = load i32**, i32*** %7, align 8
  %68 = load %struct.anon*, %struct.anon** %12, align 8
  %69 = getelementptr inbounds %struct.anon, %struct.anon* %68, i32 0, i32 1
  store i32** %67, i32*** %69, align 8
  %70 = load %struct.anon*, %struct.anon** %12, align 8
  %71 = getelementptr inbounds %struct.anon, %struct.anon* %70, i32 1
  store %struct.anon* %71, %struct.anon** %12, align 8
  br label %72

72:                                               ; preds = %230, %63
  %73 = load %struct.anon*, %struct.anon** %12, align 8
  %74 = getelementptr inbounds %struct.anon, %struct.anon* %73, i32 -1
  store %struct.anon* %74, %struct.anon** %12, align 8
  %75 = getelementptr inbounds [50 x %struct.anon], [50 x %struct.anon]* %11, i64 0, i64 0
  %76 = icmp uge %struct.anon* %74, %75
  br i1 %76, label %77, label %231

77:                                               ; preds = %72
  %78 = load %struct.anon*, %struct.anon** %12, align 8
  %79 = getelementptr inbounds %struct.anon, %struct.anon* %78, i32 0, i32 0
  %80 = load i32**, i32*** %79, align 8
  store i32** %80, i32*** %6, align 8
  %81 = load %struct.anon*, %struct.anon** %12, align 8
  %82 = getelementptr inbounds %struct.anon, %struct.anon* %81, i32 0, i32 1
  %83 = load i32**, i32*** %82, align 8
  store i32** %83, i32*** %7, align 8
  br label %84

84:                                               ; preds = %189, %77
  %85 = load i32**, i32*** %7, align 8
  %86 = load i32**, i32*** %6, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 10
  %88 = icmp ugt i32** %85, %87
  br i1 %88, label %89, label %190

89:                                               ; preds = %84
  %90 = load i32, i32* %13, align 4
  %91 = mul i32 %90, 1539415821
  %92 = add i32 %91, 1
  store i32 %92, i32* %13, align 4
  %93 = load i32**, i32*** %6, align 8
  %94 = load i32, i32* %13, align 4
  %95 = zext i32 %94 to i64
  %96 = load i32**, i32*** %7, align 8
  %97 = load i32**, i32*** %6, align 8
  %98 = ptrtoint i32** %96 to i64
  %99 = ptrtoint i32** %97 to i64
  %100 = sub i64 %98, %99
  %101 = sdiv exact i64 %100, 8
  %102 = add nsw i64 %101, 1
  %103 = srem i64 %95, %102
  %104 = getelementptr inbounds i32*, i32** %93, i64 %103
  store i32** %104, i32*** %8, align 8
  %105 = load i32**, i32*** %8, align 8
  %106 = load i32*, i32** %105, align 8
  store i32* %106, i32** %10, align 8
  %107 = load i32**, i32*** %6, align 8
  %108 = load i32*, i32** %107, align 8
  %109 = load i32**, i32*** %8, align 8
  store i32* %108, i32** %109, align 8
  %110 = load i32*, i32** %10, align 8
  %111 = load i32**, i32*** %6, align 8
  store i32* %110, i32** %111, align 8
  %112 = load i32**, i32*** %6, align 8
  %113 = getelementptr inbounds i32*, i32** %112, i64 -1
  store i32** %113, i32*** %8, align 8
  %114 = load i32**, i32*** %7, align 8
  %115 = getelementptr inbounds i32*, i32** %114, i64 1
  store i32** %115, i32*** %9, align 8
  br label %116

116:                                              ; preds = %144, %89
  br label %117

117:                                              ; preds = %120, %116
  %118 = load i32**, i32*** %8, align 8
  %119 = getelementptr inbounds i32*, i32** %118, i32 1
  store i32** %119, i32*** %8, align 8
  br label %120

120:                                              ; preds = %117
  %121 = load i32**, i32*** %8, align 8
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %10, align 8
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @GT(i32 %123, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %117, label %128

128:                                              ; preds = %120
  br label %129

129:                                              ; preds = %132, %128
  %130 = load i32**, i32*** %9, align 8
  %131 = getelementptr inbounds i32*, i32** %130, i32 -1
  store i32** %131, i32*** %9, align 8
  br label %132

132:                                              ; preds = %129
  %133 = load i32**, i32*** %9, align 8
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %10, align 8
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @LT(i32 %135, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %129, label %140

140:                                              ; preds = %132
  %141 = load i32**, i32*** %8, align 8
  %142 = load i32**, i32*** %9, align 8
  %143 = call i32 @Swap(i32** %141, i32** %142)
  br label %144

144:                                              ; preds = %140
  %145 = load i32**, i32*** %8, align 8
  %146 = load i32**, i32*** %9, align 8
  %147 = icmp ult i32** %145, %146
  br i1 %147, label %116, label %148

148:                                              ; preds = %144
  %149 = load i32**, i32*** %8, align 8
  %150 = load i32**, i32*** %9, align 8
  %151 = call i32 @Swap(i32** %149, i32** %150)
  %152 = load i32**, i32*** %8, align 8
  %153 = load i32**, i32*** %6, align 8
  %154 = ptrtoint i32** %152 to i64
  %155 = ptrtoint i32** %153 to i64
  %156 = sub i64 %154, %155
  %157 = sdiv exact i64 %156, 8
  %158 = load i32**, i32*** %7, align 8
  %159 = load i32**, i32*** %9, align 8
  %160 = ptrtoint i32** %158 to i64
  %161 = ptrtoint i32** %159 to i64
  %162 = sub i64 %160, %161
  %163 = sdiv exact i64 %162, 8
  %164 = icmp slt i64 %157, %163
  br i1 %164, label %165, label %177

165:                                              ; preds = %148
  %166 = load i32**, i32*** %9, align 8
  %167 = getelementptr inbounds i32*, i32** %166, i64 1
  %168 = load %struct.anon*, %struct.anon** %12, align 8
  %169 = getelementptr inbounds %struct.anon, %struct.anon* %168, i32 0, i32 0
  store i32** %167, i32*** %169, align 8
  %170 = load i32**, i32*** %7, align 8
  %171 = load %struct.anon*, %struct.anon** %12, align 8
  %172 = getelementptr inbounds %struct.anon, %struct.anon* %171, i32 0, i32 1
  store i32** %170, i32*** %172, align 8
  %173 = load %struct.anon*, %struct.anon** %12, align 8
  %174 = getelementptr inbounds %struct.anon, %struct.anon* %173, i32 1
  store %struct.anon* %174, %struct.anon** %12, align 8
  %175 = load i32**, i32*** %8, align 8
  %176 = getelementptr inbounds i32*, i32** %175, i64 -1
  store i32** %176, i32*** %7, align 8
  br label %189

177:                                              ; preds = %148
  %178 = load i32**, i32*** %6, align 8
  %179 = load %struct.anon*, %struct.anon** %12, align 8
  %180 = getelementptr inbounds %struct.anon, %struct.anon* %179, i32 0, i32 0
  store i32** %178, i32*** %180, align 8
  %181 = load i32**, i32*** %8, align 8
  %182 = getelementptr inbounds i32*, i32** %181, i64 -1
  %183 = load %struct.anon*, %struct.anon** %12, align 8
  %184 = getelementptr inbounds %struct.anon, %struct.anon* %183, i32 0, i32 1
  store i32** %182, i32*** %184, align 8
  %185 = load %struct.anon*, %struct.anon** %12, align 8
  %186 = getelementptr inbounds %struct.anon, %struct.anon* %185, i32 1
  store %struct.anon* %186, %struct.anon** %12, align 8
  %187 = load i32**, i32*** %9, align 8
  %188 = getelementptr inbounds i32*, i32** %187, i64 1
  store i32** %188, i32*** %6, align 8
  br label %189

189:                                              ; preds = %177, %165
  br label %84

190:                                              ; preds = %84
  %191 = load i32**, i32*** %6, align 8
  %192 = getelementptr inbounds i32*, i32** %191, i64 1
  store i32** %192, i32*** %8, align 8
  br label %193

193:                                              ; preds = %227, %190
  %194 = load i32**, i32*** %8, align 8
  %195 = load i32**, i32*** %7, align 8
  %196 = icmp ule i32** %194, %195
  br i1 %196, label %197, label %230

197:                                              ; preds = %193
  %198 = load i32**, i32*** %8, align 8
  %199 = load i32*, i32** %198, align 8
  store i32* %199, i32** %10, align 8
  %200 = load i32**, i32*** %8, align 8
  store i32** %200, i32*** %9, align 8
  br label %201

201:                                              ; preds = %221, %197
  %202 = load i32**, i32*** %9, align 8
  %203 = load i32**, i32*** %6, align 8
  %204 = icmp ugt i32** %202, %203
  br i1 %204, label %205, label %214

205:                                              ; preds = %201
  %206 = load i32**, i32*** %9, align 8
  %207 = getelementptr inbounds i32*, i32** %206, i64 -1
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %208, align 4
  %210 = load i32*, i32** %10, align 8
  %211 = load i32, i32* %210, align 4
  %212 = call i64 @LT(i32 %209, i32 %211)
  %213 = icmp ne i64 %212, 0
  br label %214

214:                                              ; preds = %205, %201
  %215 = phi i1 [ false, %201 ], [ %213, %205 ]
  br i1 %215, label %216, label %224

216:                                              ; preds = %214
  %217 = load i32**, i32*** %9, align 8
  %218 = getelementptr inbounds i32*, i32** %217, i64 -1
  %219 = load i32*, i32** %218, align 8
  %220 = load i32**, i32*** %9, align 8
  store i32* %219, i32** %220, align 8
  br label %221

221:                                              ; preds = %216
  %222 = load i32**, i32*** %9, align 8
  %223 = getelementptr inbounds i32*, i32** %222, i32 -1
  store i32** %223, i32*** %9, align 8
  br label %201

224:                                              ; preds = %214
  %225 = load i32*, i32** %10, align 8
  %226 = load i32**, i32*** %9, align 8
  store i32* %225, i32** %226, align 8
  br label %227

227:                                              ; preds = %224
  %228 = load i32**, i32*** %8, align 8
  %229 = getelementptr inbounds i32*, i32** %228, i32 1
  store i32** %229, i32*** %8, align 8
  br label %193

230:                                              ; preds = %193
  br label %72

231:                                              ; preds = %72
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 4
  %237 = load i32, i32* @TRUE, align 4
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 4
  store i32 %237, i32* %239, align 4
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @pqHeapInit(i32 %242)
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 2
  %246 = load i32**, i32*** %245, align 8
  store i32** %246, i32*** %6, align 8
  %247 = load i32**, i32*** %6, align 8
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32*, i32** %247, i64 %251
  %253 = getelementptr inbounds i32*, i32** %252, i64 -1
  store i32** %253, i32*** %7, align 8
  %254 = load i32**, i32*** %6, align 8
  store i32** %254, i32*** %8, align 8
  br label %255

255:                                              ; preds = %269, %231
  %256 = load i32**, i32*** %8, align 8
  %257 = load i32**, i32*** %7, align 8
  %258 = icmp ult i32** %256, %257
  br i1 %258, label %259, label %272

259:                                              ; preds = %255
  %260 = load i32**, i32*** %8, align 8
  %261 = getelementptr inbounds i32*, i32** %260, i64 1
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %262, align 4
  %264 = load i32**, i32*** %8, align 8
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @LEQ(i32 %263, i32 %266)
  %268 = call i32 @assert(i32 %267)
  br label %269

269:                                              ; preds = %259
  %270 = load i32**, i32*** %8, align 8
  %271 = getelementptr inbounds i32*, i32** %270, i32 1
  store i32** %271, i32*** %8, align 8
  br label %255

272:                                              ; preds = %255
  store i32 1, i32* %3, align 4
  br label %273

273:                                              ; preds = %272, %35
  %274 = load i32, i32* %3, align 4
  ret i32 %274
}

declare dso_local i64 @GT(i32, i32) #1

declare dso_local i64 @LT(i32, i32) #1

declare dso_local i32 @Swap(i32**, i32**) #1

declare dso_local i32 @pqHeapInit(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @LEQ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
