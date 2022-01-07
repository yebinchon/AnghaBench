; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light_trace.c_TraceLine.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light_trace.c_TraceLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { double*, double, i32*, i32 }
%struct.TYPE_13__ = type { i32, i64*, i32, %struct.TYPE_12__*, i32, i32 }

@MAX_MAP_DRAW_SURFS = common dso_local global i32 0, align 4
@numthreads = common dso_local global i32 0, align 4
@c_totalTrace = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@noSurfaces = common dso_local global i64 0, align 8
@numDrawSurfaces = common dso_local global i32 0, align 4
@dleafs = common dso_local global %struct.TYPE_15__* null, align 8
@dleafsurfaces = common dso_local global i32* null, align 8
@surfaceTest = common dso_local global %struct.TYPE_14__** null, align 8
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TraceLine(i32* %0, i32* %1, %struct.TYPE_12__* %2, i32 %3, %struct.TYPE_13__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca float, align 4
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %10, align 8
  %21 = load i32, i32* @MAX_MAP_DRAW_SURFS, align 4
  %22 = sdiv i32 %21, 8
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %18, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %19, align 8
  %26 = load i32, i32* @numthreads, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @c_totalTrace, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @c_totalTrace, align 4
  br label %31

31:                                               ; preds = %28, %5
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load double*, double** %33, align 8
  %35 = getelementptr inbounds double, double* %34, i64 0
  store double 1.000000e+00, double* %35, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load double*, double** %37, align 8
  %39 = getelementptr inbounds double, double* %38, i64 1
  store double 1.000000e+00, double* %39, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load double*, double** %41, align 8
  %43 = getelementptr inbounds double, double* %42, i64 2
  store double 1.000000e+00, double* %43, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @VectorCopy(i32* %44, i32 %47)
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @VectorCopy(i32* %49, i32 %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 3
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %56, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load i32, i32* @qfalse, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  store double 1.000000e+00, double* %63, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %67 = call i32 @TraceLine_r(i32 0, i32* %64, i32* %65, %struct.TYPE_13__* %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %31
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  store i32 1, i32* %20, align 4
  br label %220

74:                                               ; preds = %70, %31
  %75 = load i64, i64* @noSurfaces, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 1, i32* %20, align 4
  br label %220

78:                                               ; preds = %74
  %79 = load i32, i32* @numDrawSurfaces, align 4
  %80 = add nsw i32 %79, 7
  %81 = sdiv i32 %80, 8
  %82 = call i32 @memset(i32* %25, i32 0, i32 %81)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load double, double* %84, align 8
  %86 = fptrunc double %85 to float
  store float %86, float* %15, align 4
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %178, %78
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %181

93:                                               ; preds = %87
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** @dleafs, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i64 %101
  store %struct.TYPE_15__* %102, %struct.TYPE_15__** %14, align 8
  store i32 0, i32* %13, align 4
  br label %103

103:                                              ; preds = %163, %93
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %166

109:                                              ; preds = %103
  %110 = load i32*, i32** @dleafsurfaces, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %110, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %17, align 4
  %120 = ashr i32 %119, 3
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %25, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %17, align 4
  %125 = and i32 %124, 7
  %126 = shl i32 1, %125
  %127 = and i32 %123, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %109
  br label %163

130:                                              ; preds = %109
  %131 = load i32, i32* %17, align 4
  %132 = and i32 %131, 7
  %133 = shl i32 1, %132
  %134 = load i32, i32* %17, align 4
  %135 = ashr i32 %134, 3
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %25, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %133
  store i32 %139, i32* %137, align 4
  %140 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @surfaceTest, align 8
  %141 = load i32, i32* %17, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %140, i64 %142
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %143, align 8
  store %struct.TYPE_14__* %144, %struct.TYPE_14__** %16, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %146 = icmp ne %struct.TYPE_14__* %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %130
  br label %163

148:                                              ; preds = %130
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %148
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %163

159:                                              ; preds = %153, %148
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %162 = call i32 @TraceAgainstSurface(%struct.TYPE_13__* %160, %struct.TYPE_14__* %161)
  br label %163

163:                                              ; preds = %159, %158, %147, %129
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %13, align 4
  br label %103

166:                                              ; preds = %103
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 1
  %169 = load double, double* %168, align 8
  %170 = load float, float* %15, align 4
  %171 = fpext float %170 to double
  %172 = fcmp olt double %169, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %166
  %174 = load i32, i32* @qtrue, align 4
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 8
  br label %181

177:                                              ; preds = %166
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %12, align 4
  br label %87

181:                                              ; preds = %173, %87
  store i32 0, i32* %12, align 4
  br label %182

182:                                              ; preds = %216, %181
  %183 = load i32, i32* %12, align 4
  %184 = icmp slt i32 %183, 3
  br i1 %184, label %185, label %219

185:                                              ; preds = %182
  %186 = load i32*, i32** %6, align 8
  %187 = load i32, i32* %12, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = sitofp i32 %190 to double
  %192 = load i32*, i32** %7, align 8
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %6, align 8
  %198 = load i32, i32* %12, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = sub nsw i32 %196, %201
  %203 = sitofp i32 %202 to double
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 1
  %206 = load double, double* %205, align 8
  %207 = fmul double %203, %206
  %208 = fadd double %191, %207
  %209 = fptosi double %208 to i32
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 2
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %12, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  store i32 %209, i32* %215, align 4
  br label %216

216:                                              ; preds = %185
  %217 = load i32, i32* %12, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %12, align 4
  br label %182

219:                                              ; preds = %182
  store i32 0, i32* %20, align 4
  br label %220

220:                                              ; preds = %219, %77, %73
  %221 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %221)
  %222 = load i32, i32* %20, align 4
  switch i32 %222, label %224 [
    i32 0, label %223
    i32 1, label %223
  ]

223:                                              ; preds = %220, %220
  ret void

224:                                              ; preds = %220
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @VectorCopy(i32*, i32) #2

declare dso_local i32 @TraceLine_r(i32, i32*, i32*, %struct.TYPE_13__*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @TraceAgainstSurface(%struct.TYPE_13__*, %struct.TYPE_14__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
