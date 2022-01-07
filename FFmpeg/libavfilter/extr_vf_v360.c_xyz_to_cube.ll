; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_xyz_to_cube.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_xyz_to_cube.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, float*, i32* }

@M_PI_4 = common dso_local global float 0.000000e+00, align 4
@M_PI_2 = common dso_local global float 0.000000e+00, align 4
@M_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float*, float*, float*, i32*)* @xyz_to_cube to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xyz_to_cube(%struct.TYPE_3__* %0, float* %1, float* %2, float* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load float*, float** %7, align 8
  %17 = getelementptr inbounds float, float* %16, i64 0
  %18 = load float, float* %17, align 4
  %19 = load float*, float** %7, align 8
  %20 = getelementptr inbounds float, float* %19, i64 2
  %21 = load float, float* %20, align 4
  %22 = fneg float %21
  %23 = call float @atan2f(float %18, float %22) #3
  store float %23, float* %11, align 4
  %24 = load float*, float** %7, align 8
  %25 = getelementptr inbounds float, float* %24, i64 1
  %26 = load float, float* %25, align 4
  %27 = fneg float %26
  %28 = call float @asinf(float %27) #3
  store float %28, float* %12, align 4
  %29 = load float, float* %11, align 4
  %30 = load float, float* @M_PI_4, align 4
  %31 = fneg float %30
  %32 = fcmp oge float %29, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %5
  %34 = load float, float* %11, align 4
  %35 = load float, float* @M_PI_4, align 4
  %36 = fcmp olt float %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32*, i32** %10, align 8
  store i32 131, i32* %38, align 4
  %39 = load float, float* %11, align 4
  store float %39, float* %13, align 4
  br label %87

40:                                               ; preds = %33, %5
  %41 = load float, float* %11, align 4
  %42 = load float, float* @M_PI_2, align 4
  %43 = load float, float* @M_PI_4, align 4
  %44 = fadd float %42, %43
  %45 = fneg float %44
  %46 = fcmp oge float %41, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = load float, float* %11, align 4
  %49 = load float, float* @M_PI_4, align 4
  %50 = fneg float %49
  %51 = fcmp olt float %48, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32*, i32** %10, align 8
  store i32 130, i32* %53, align 4
  %54 = load float, float* %11, align 4
  %55 = load float, float* @M_PI_2, align 4
  %56 = fadd float %54, %55
  store float %56, float* %13, align 4
  br label %86

57:                                               ; preds = %47, %40
  %58 = load float, float* %11, align 4
  %59 = load float, float* @M_PI_4, align 4
  %60 = fcmp oge float %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load float, float* %11, align 4
  %63 = load float, float* @M_PI_2, align 4
  %64 = load float, float* @M_PI_4, align 4
  %65 = fadd float %63, %64
  %66 = fcmp olt float %62, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i32*, i32** %10, align 8
  store i32 129, i32* %68, align 4
  %69 = load float, float* %11, align 4
  %70 = load float, float* @M_PI_2, align 4
  %71 = fsub float %69, %70
  store float %71, float* %13, align 4
  br label %85

72:                                               ; preds = %61, %57
  %73 = load i32*, i32** %10, align 8
  store i32 133, i32* %73, align 4
  %74 = load float, float* %11, align 4
  %75 = load float, float* %11, align 4
  %76 = fcmp ogt float %75, 0.000000e+00
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load float, float* @M_PI, align 4
  %79 = fneg float %78
  br label %82

80:                                               ; preds = %72
  %81 = load float, float* @M_PI, align 4
  br label %82

82:                                               ; preds = %80, %77
  %83 = phi float [ %79, %77 ], [ %81, %80 ]
  %84 = fadd float %74, %83
  store float %84, float* %13, align 4
  br label %85

85:                                               ; preds = %82, %67
  br label %86

86:                                               ; preds = %85, %52
  br label %87

87:                                               ; preds = %86, %37
  %88 = load float, float* %13, align 4
  %89 = call i32 @cosf(float %88)
  %90 = call float @atanf(i32 %89)
  store float %90, float* %14, align 4
  %91 = load float, float* %12, align 4
  %92 = load float, float* %14, align 4
  %93 = fcmp ogt float %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32*, i32** %10, align 8
  store i32 132, i32* %95, align 4
  br label %104

96:                                               ; preds = %87
  %97 = load float, float* %12, align 4
  %98 = load float, float* %14, align 4
  %99 = fneg float %98
  %100 = fcmp olt float %97, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32*, i32** %10, align 8
  store i32 128, i32* %102, align 4
  br label %103

103:                                              ; preds = %101, %96
  br label %104

104:                                              ; preds = %103, %94
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %105, align 4
  switch i32 %106, label %216 [
    i32 129, label %107
    i32 130, label %125
    i32 128, label %142
    i32 132, label %160
    i32 131, label %179
    i32 133, label %197
  ]

107:                                              ; preds = %104
  %108 = load float*, float** %7, align 8
  %109 = getelementptr inbounds float, float* %108, i64 2
  %110 = load float, float* %109, align 4
  %111 = load float*, float** %7, align 8
  %112 = getelementptr inbounds float, float* %111, i64 0
  %113 = load float, float* %112, align 4
  %114 = fdiv float %110, %113
  %115 = load float*, float** %8, align 8
  store float %114, float* %115, align 4
  %116 = load float*, float** %7, align 8
  %117 = getelementptr inbounds float, float* %116, i64 1
  %118 = load float, float* %117, align 4
  %119 = fneg float %118
  %120 = load float*, float** %7, align 8
  %121 = getelementptr inbounds float, float* %120, i64 0
  %122 = load float, float* %121, align 4
  %123 = fdiv float %119, %122
  %124 = load float*, float** %9, align 8
  store float %123, float* %124, align 4
  br label %218

125:                                              ; preds = %104
  %126 = load float*, float** %7, align 8
  %127 = getelementptr inbounds float, float* %126, i64 2
  %128 = load float, float* %127, align 4
  %129 = load float*, float** %7, align 8
  %130 = getelementptr inbounds float, float* %129, i64 0
  %131 = load float, float* %130, align 4
  %132 = fdiv float %128, %131
  %133 = load float*, float** %8, align 8
  store float %132, float* %133, align 4
  %134 = load float*, float** %7, align 8
  %135 = getelementptr inbounds float, float* %134, i64 1
  %136 = load float, float* %135, align 4
  %137 = load float*, float** %7, align 8
  %138 = getelementptr inbounds float, float* %137, i64 0
  %139 = load float, float* %138, align 4
  %140 = fdiv float %136, %139
  %141 = load float*, float** %9, align 8
  store float %140, float* %141, align 4
  br label %218

142:                                              ; preds = %104
  %143 = load float*, float** %7, align 8
  %144 = getelementptr inbounds float, float* %143, i64 0
  %145 = load float, float* %144, align 4
  %146 = load float*, float** %7, align 8
  %147 = getelementptr inbounds float, float* %146, i64 1
  %148 = load float, float* %147, align 4
  %149 = fdiv float %145, %148
  %150 = load float*, float** %8, align 8
  store float %149, float* %150, align 4
  %151 = load float*, float** %7, align 8
  %152 = getelementptr inbounds float, float* %151, i64 2
  %153 = load float, float* %152, align 4
  %154 = fneg float %153
  %155 = load float*, float** %7, align 8
  %156 = getelementptr inbounds float, float* %155, i64 1
  %157 = load float, float* %156, align 4
  %158 = fdiv float %154, %157
  %159 = load float*, float** %9, align 8
  store float %158, float* %159, align 4
  br label %218

160:                                              ; preds = %104
  %161 = load float*, float** %7, align 8
  %162 = getelementptr inbounds float, float* %161, i64 0
  %163 = load float, float* %162, align 4
  %164 = fneg float %163
  %165 = load float*, float** %7, align 8
  %166 = getelementptr inbounds float, float* %165, i64 1
  %167 = load float, float* %166, align 4
  %168 = fdiv float %164, %167
  %169 = load float*, float** %8, align 8
  store float %168, float* %169, align 4
  %170 = load float*, float** %7, align 8
  %171 = getelementptr inbounds float, float* %170, i64 2
  %172 = load float, float* %171, align 4
  %173 = fneg float %172
  %174 = load float*, float** %7, align 8
  %175 = getelementptr inbounds float, float* %174, i64 1
  %176 = load float, float* %175, align 4
  %177 = fdiv float %173, %176
  %178 = load float*, float** %9, align 8
  store float %177, float* %178, align 4
  br label %218

179:                                              ; preds = %104
  %180 = load float*, float** %7, align 8
  %181 = getelementptr inbounds float, float* %180, i64 0
  %182 = load float, float* %181, align 4
  %183 = fneg float %182
  %184 = load float*, float** %7, align 8
  %185 = getelementptr inbounds float, float* %184, i64 2
  %186 = load float, float* %185, align 4
  %187 = fdiv float %183, %186
  %188 = load float*, float** %8, align 8
  store float %187, float* %188, align 4
  %189 = load float*, float** %7, align 8
  %190 = getelementptr inbounds float, float* %189, i64 1
  %191 = load float, float* %190, align 4
  %192 = load float*, float** %7, align 8
  %193 = getelementptr inbounds float, float* %192, i64 2
  %194 = load float, float* %193, align 4
  %195 = fdiv float %191, %194
  %196 = load float*, float** %9, align 8
  store float %195, float* %196, align 4
  br label %218

197:                                              ; preds = %104
  %198 = load float*, float** %7, align 8
  %199 = getelementptr inbounds float, float* %198, i64 0
  %200 = load float, float* %199, align 4
  %201 = fneg float %200
  %202 = load float*, float** %7, align 8
  %203 = getelementptr inbounds float, float* %202, i64 2
  %204 = load float, float* %203, align 4
  %205 = fdiv float %201, %204
  %206 = load float*, float** %8, align 8
  store float %205, float* %206, align 4
  %207 = load float*, float** %7, align 8
  %208 = getelementptr inbounds float, float* %207, i64 1
  %209 = load float, float* %208, align 4
  %210 = fneg float %209
  %211 = load float*, float** %7, align 8
  %212 = getelementptr inbounds float, float* %211, i64 2
  %213 = load float, float* %212, align 4
  %214 = fdiv float %210, %213
  %215 = load float*, float** %9, align 8
  store float %214, float* %215, align 4
  br label %218

216:                                              ; preds = %104
  %217 = call i32 @av_assert0(i32 0)
  br label %218

218:                                              ; preds = %216, %197, %179, %160, %142, %125, %107
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = load i32*, i32** %10, align 8
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %221, i64 %224
  %226 = load i32, i32* %225, align 4
  store i32 %226, i32* %15, align 4
  %227 = load float*, float** %8, align 8
  %228 = load float*, float** %9, align 8
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 2
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %15, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @rotate_cube_face(float* %227, float* %228, i32 %235)
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 1
  %239 = load float*, float** %238, align 8
  %240 = getelementptr inbounds float, float* %239, i64 0
  %241 = load float, float* %240, align 4
  %242 = load float*, float** %8, align 8
  %243 = load float, float* %242, align 4
  %244 = fmul float %243, %241
  store float %244, float* %242, align 4
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 1
  %247 = load float*, float** %246, align 8
  %248 = getelementptr inbounds float, float* %247, i64 1
  %249 = load float, float* %248, align 4
  %250 = load float*, float** %9, align 8
  %251 = load float, float* %250, align 4
  %252 = fmul float %251, %249
  store float %252, float* %250, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local float @atan2f(float, float) #1

; Function Attrs: nounwind
declare dso_local float @asinf(float) #1

declare dso_local float @atanf(i32) #2

declare dso_local i32 @cosf(float) #2

declare dso_local i32 @av_assert0(i32) #2

declare dso_local i32 @rotate_cube_face(float*, float*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
