; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_tetrahedron.c_TH_FindTetrahedron1.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_tetrahedron.c_TH_FindTetrahedron1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32* }

@thworld = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TH_FindTetrahedron1(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [3 x i32], align 4
  %15 = alloca [3 x i32], align 4
  %16 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %16, align 8
  br label %20

20:                                               ; preds = %258, %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %262

23:                                               ; preds = %20
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, -2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, -2
  %32 = icmp eq i32 %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %258

34:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %73, %34
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %38, label %76

38:                                               ; preds = %35
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @abs(i32 %45)
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %65, %38
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 3
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @abs(i32 %60)
  %62 = icmp eq i64 %53, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %68

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %48

68:                                               ; preds = %63, %48
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 3
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %76

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %35

76:                                               ; preds = %71, %35
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 3
  br i1 %78, label %79, label %257

79:                                               ; preds = %76
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  %85 = srem i32 %84, 3
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %79
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @thworld, i32 0, i32 1), align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i64 @abs(i32 %93)
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %10, align 4
  br label %109

100:                                              ; preds = %79
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @thworld, i32 0, i32 1), align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %100, %91
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  %115 = srem i32 %114, 3
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %109
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @thworld, i32 0, i32 1), align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i64 @abs(i32 %123)
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %11, align 4
  br label %139

130:                                              ; preds = %109
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @thworld, i32 0, i32 1), align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %11, align 4
  br label %139

139:                                              ; preds = %130, %121
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %11, align 4
  %142 = call i64 @TH_TryEdge(i32 %140, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %256

144:                                              ; preds = %139
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp slt i32 %152, 0
  %154 = zext i1 %153 to i32
  store i32 %154, i32* %9, align 4
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @thworld, i32 0, i32 1), align 8
  %156 = load i32, i32* %8, align 4
  %157 = call i64 @abs(i32 %156)
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %12, align 4
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @thworld, i32 0, i32 1), align 8
  %166 = load i32, i32* %8, align 4
  %167 = call i64 @abs(i32 %166)
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  %173 = xor i1 %172, true
  %174 = zext i1 %173 to i32
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %170, i64 %175
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %13, align 4
  %178 = load i32, i32* %10, align 4
  %179 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %178, i32* %179, align 4
  %180 = load i32, i32* %11, align 4
  %181 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 %180, i32* %181, align 4
  %182 = load i32, i32* %12, align 4
  %183 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  store i32 %182, i32* %183, align 4
  %184 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %185 = call i32 @TH_FindTriangle(i32* %184)
  %186 = load i32*, i32** %5, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 2
  store i32 %185, i32* %187, align 4
  %188 = load i32*, i32** %5, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 2
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %144
  %193 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %194 = call i64 @TH_TryTriangle(i32* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %255

196:                                              ; preds = %192, %144
  %197 = load i32, i32* %11, align 4
  %198 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  store i32 %197, i32* %198, align 4
  %199 = load i32, i32* %10, align 4
  %200 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 1
  store i32 %199, i32* %200, align 4
  %201 = load i32, i32* %13, align 4
  %202 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 2
  store i32 %201, i32* %202, align 4
  %203 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %204 = call i32 @TH_FindTriangle(i32* %203)
  %205 = load i32*, i32** %5, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 3
  store i32 %204, i32* %206, align 4
  %207 = load i32*, i32** %5, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 3
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %196
  %212 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %213 = call i64 @TH_TryTriangle(i32* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %254

215:                                              ; preds = %211, %196
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @thworld, i32 0, i32 0), align 8
  %218 = ptrtoint %struct.TYPE_6__* %216 to i64
  %219 = ptrtoint %struct.TYPE_6__* %217 to i64
  %220 = sub i64 %218, %219
  %221 = sdiv exact i64 %220, 24
  %222 = trunc i64 %221 to i32
  %223 = load i32*, i32** %5, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  store i32 %222, i32* %224, align 4
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @thworld, i32 0, i32 0), align 8
  %227 = ptrtoint %struct.TYPE_6__* %225 to i64
  %228 = ptrtoint %struct.TYPE_6__* %226 to i64
  %229 = sub i64 %227, %228
  %230 = sdiv exact i64 %229, 24
  %231 = trunc i64 %230 to i32
  %232 = load i32*, i32** %5, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 1
  store i32 %231, i32* %233, align 4
  %234 = load i32*, i32** %5, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 2
  %236 = load i32, i32* %235, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %243, label %238

238:                                              ; preds = %215
  %239 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %240 = call i32 @TH_CreateTriangle(i32* %239)
  %241 = load i32*, i32** %5, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 2
  store i32 %240, i32* %242, align 4
  br label %243

243:                                              ; preds = %238, %215
  %244 = load i32*, i32** %5, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 3
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %253, label %248

248:                                              ; preds = %243
  %249 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %250 = call i32 @TH_CreateTriangle(i32* %249)
  %251 = load i32*, i32** %5, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 3
  store i32 %250, i32* %252, align 4
  br label %253

253:                                              ; preds = %248, %243
  store i32 1, i32* %3, align 4
  br label %263

254:                                              ; preds = %211
  br label %255

255:                                              ; preds = %254, %192
  br label %256

256:                                              ; preds = %255, %139
  br label %257

257:                                              ; preds = %256, %76
  br label %258

258:                                              ; preds = %257, %33
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 2
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %260, align 8
  store %struct.TYPE_6__* %261, %struct.TYPE_6__** %16, align 8
  br label %20

262:                                              ; preds = %20
  store i32 0, i32* %3, align 4
  br label %263

263:                                              ; preds = %262, %253
  %264 = load i32, i32* %3, align 4
  ret i32 %264
}

declare dso_local i64 @abs(i32) #1

declare dso_local i64 @TH_TryEdge(i32, i32) #1

declare dso_local i32 @TH_FindTriangle(i32*) #1

declare dso_local i64 @TH_TryTriangle(i32*) #1

declare dso_local i32 @TH_CreateTriangle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
