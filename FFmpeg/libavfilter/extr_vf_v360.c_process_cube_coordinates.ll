; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_process_cube_coordinates.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_process_cube_coordinates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float, float, i32, float*, float*, i32*)* @process_cube_coordinates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_cube_coordinates(%struct.TYPE_3__* %0, float %1, float %2, i32 %3, float* %4, float* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store float %1, float* %9, align 4
  store float %2, float* %10, align 4
  store i32 %3, i32* %11, align 4
  store float* %4, float** %12, align 8
  store float* %5, float** %13, align 8
  store i32* %6, i32** %14, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %14, align 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @rotate_cube_face_inverse(float* %9, float* %10, i32 %30)
  %32 = load float, float* %9, align 4
  %33 = fcmp olt float %32, -1.000000e+00
  br i1 %33, label %37, label %34

34:                                               ; preds = %7
  %35 = load float, float* %9, align 4
  %36 = fcmp oge float %35, 1.000000e+00
  br i1 %36, label %37, label %48

37:                                               ; preds = %34, %7
  %38 = load float, float* %10, align 4
  %39 = fcmp olt float %38, -1.000000e+00
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load float, float* %10, align 4
  %42 = fcmp oge float %41, 1.000000e+00
  br i1 %42, label %43, label %48

43:                                               ; preds = %40, %37
  %44 = load float, float* %9, align 4
  %45 = load float*, float** %12, align 8
  store float %44, float* %45, align 4
  %46 = load float, float* %10, align 4
  %47 = load float*, float** %13, align 8
  store float %46, float* %47, align 4
  br label %233

48:                                               ; preds = %40, %34
  %49 = load float, float* %9, align 4
  %50 = fcmp olt float %49, -1.000000e+00
  br i1 %50, label %51, label %90

51:                                               ; preds = %48
  %52 = load float, float* %9, align 4
  %53 = fadd float %52, 2.000000e+00
  store float %53, float* %9, align 4
  %54 = load i32, i32* %11, align 4
  switch i32 %54, label %87 [
    i32 129, label %55
    i32 130, label %60
    i32 128, label %65
    i32 132, label %71
    i32 131, label %77
    i32 133, label %82
  ]

55:                                               ; preds = %51
  store i32 131, i32* %11, align 4
  %56 = load float, float* %9, align 4
  %57 = load float*, float** %12, align 8
  store float %56, float* %57, align 4
  %58 = load float, float* %10, align 4
  %59 = load float*, float** %13, align 8
  store float %58, float* %59, align 4
  br label %89

60:                                               ; preds = %51
  store i32 133, i32* %11, align 4
  %61 = load float, float* %9, align 4
  %62 = load float*, float** %12, align 8
  store float %61, float* %62, align 4
  %63 = load float, float* %10, align 4
  %64 = load float*, float** %13, align 8
  store float %63, float* %64, align 4
  br label %89

65:                                               ; preds = %51
  store i32 130, i32* %11, align 4
  %66 = load float, float* %10, align 4
  %67 = load float*, float** %12, align 8
  store float %66, float* %67, align 4
  %68 = load float, float* %9, align 4
  %69 = fneg float %68
  %70 = load float*, float** %13, align 8
  store float %69, float* %70, align 4
  br label %89

71:                                               ; preds = %51
  store i32 130, i32* %11, align 4
  %72 = load float, float* %10, align 4
  %73 = fneg float %72
  %74 = load float*, float** %12, align 8
  store float %73, float* %74, align 4
  %75 = load float, float* %9, align 4
  %76 = load float*, float** %13, align 8
  store float %75, float* %76, align 4
  br label %89

77:                                               ; preds = %51
  store i32 130, i32* %11, align 4
  %78 = load float, float* %9, align 4
  %79 = load float*, float** %12, align 8
  store float %78, float* %79, align 4
  %80 = load float, float* %10, align 4
  %81 = load float*, float** %13, align 8
  store float %80, float* %81, align 4
  br label %89

82:                                               ; preds = %51
  store i32 129, i32* %11, align 4
  %83 = load float, float* %9, align 4
  %84 = load float*, float** %12, align 8
  store float %83, float* %84, align 4
  %85 = load float, float* %10, align 4
  %86 = load float*, float** %13, align 8
  store float %85, float* %86, align 4
  br label %89

87:                                               ; preds = %51
  %88 = call i32 @av_assert0(i32 0)
  br label %89

89:                                               ; preds = %87, %82, %77, %71, %65, %60, %55
  br label %232

90:                                               ; preds = %48
  %91 = load float, float* %9, align 4
  %92 = fcmp oge float %91, 1.000000e+00
  br i1 %92, label %93, label %132

93:                                               ; preds = %90
  %94 = load float, float* %9, align 4
  %95 = fsub float %94, 2.000000e+00
  store float %95, float* %9, align 4
  %96 = load i32, i32* %11, align 4
  switch i32 %96, label %129 [
    i32 129, label %97
    i32 130, label %102
    i32 128, label %107
    i32 132, label %113
    i32 131, label %119
    i32 133, label %124
  ]

97:                                               ; preds = %93
  store i32 133, i32* %11, align 4
  %98 = load float, float* %9, align 4
  %99 = load float*, float** %12, align 8
  store float %98, float* %99, align 4
  %100 = load float, float* %10, align 4
  %101 = load float*, float** %13, align 8
  store float %100, float* %101, align 4
  br label %131

102:                                              ; preds = %93
  store i32 131, i32* %11, align 4
  %103 = load float, float* %9, align 4
  %104 = load float*, float** %12, align 8
  store float %103, float* %104, align 4
  %105 = load float, float* %10, align 4
  %106 = load float*, float** %13, align 8
  store float %105, float* %106, align 4
  br label %131

107:                                              ; preds = %93
  store i32 129, i32* %11, align 4
  %108 = load float, float* %10, align 4
  %109 = fneg float %108
  %110 = load float*, float** %12, align 8
  store float %109, float* %110, align 4
  %111 = load float, float* %9, align 4
  %112 = load float*, float** %13, align 8
  store float %111, float* %112, align 4
  br label %131

113:                                              ; preds = %93
  store i32 129, i32* %11, align 4
  %114 = load float, float* %10, align 4
  %115 = load float*, float** %12, align 8
  store float %114, float* %115, align 4
  %116 = load float, float* %9, align 4
  %117 = fneg float %116
  %118 = load float*, float** %13, align 8
  store float %117, float* %118, align 4
  br label %131

119:                                              ; preds = %93
  store i32 129, i32* %11, align 4
  %120 = load float, float* %9, align 4
  %121 = load float*, float** %12, align 8
  store float %120, float* %121, align 4
  %122 = load float, float* %10, align 4
  %123 = load float*, float** %13, align 8
  store float %122, float* %123, align 4
  br label %131

124:                                              ; preds = %93
  store i32 130, i32* %11, align 4
  %125 = load float, float* %9, align 4
  %126 = load float*, float** %12, align 8
  store float %125, float* %126, align 4
  %127 = load float, float* %10, align 4
  %128 = load float*, float** %13, align 8
  store float %127, float* %128, align 4
  br label %131

129:                                              ; preds = %93
  %130 = call i32 @av_assert0(i32 0)
  br label %131

131:                                              ; preds = %129, %124, %119, %113, %107, %102, %97
  br label %231

132:                                              ; preds = %90
  %133 = load float, float* %10, align 4
  %134 = fcmp olt float %133, -1.000000e+00
  br i1 %134, label %135, label %178

135:                                              ; preds = %132
  %136 = load float, float* %10, align 4
  %137 = fadd float %136, 2.000000e+00
  store float %137, float* %10, align 4
  %138 = load i32, i32* %11, align 4
  switch i32 %138, label %175 [
    i32 129, label %139
    i32 130, label %145
    i32 128, label %151
    i32 132, label %158
    i32 131, label %163
    i32 133, label %168
  ]

139:                                              ; preds = %135
  store i32 128, i32* %11, align 4
  %140 = load float, float* %10, align 4
  %141 = load float*, float** %12, align 8
  store float %140, float* %141, align 4
  %142 = load float, float* %9, align 4
  %143 = fneg float %142
  %144 = load float*, float** %13, align 8
  store float %143, float* %144, align 4
  br label %177

145:                                              ; preds = %135
  store i32 128, i32* %11, align 4
  %146 = load float, float* %10, align 4
  %147 = fneg float %146
  %148 = load float*, float** %12, align 8
  store float %147, float* %148, align 4
  %149 = load float, float* %9, align 4
  %150 = load float*, float** %13, align 8
  store float %149, float* %150, align 4
  br label %177

151:                                              ; preds = %135
  store i32 133, i32* %11, align 4
  %152 = load float, float* %9, align 4
  %153 = fneg float %152
  %154 = load float*, float** %12, align 8
  store float %153, float* %154, align 4
  %155 = load float, float* %10, align 4
  %156 = fneg float %155
  %157 = load float*, float** %13, align 8
  store float %156, float* %157, align 4
  br label %177

158:                                              ; preds = %135
  store i32 131, i32* %11, align 4
  %159 = load float, float* %9, align 4
  %160 = load float*, float** %12, align 8
  store float %159, float* %160, align 4
  %161 = load float, float* %10, align 4
  %162 = load float*, float** %13, align 8
  store float %161, float* %162, align 4
  br label %177

163:                                              ; preds = %135
  store i32 128, i32* %11, align 4
  %164 = load float, float* %9, align 4
  %165 = load float*, float** %12, align 8
  store float %164, float* %165, align 4
  %166 = load float, float* %10, align 4
  %167 = load float*, float** %13, align 8
  store float %166, float* %167, align 4
  br label %177

168:                                              ; preds = %135
  store i32 128, i32* %11, align 4
  %169 = load float, float* %9, align 4
  %170 = fneg float %169
  %171 = load float*, float** %12, align 8
  store float %170, float* %171, align 4
  %172 = load float, float* %10, align 4
  %173 = fneg float %172
  %174 = load float*, float** %13, align 8
  store float %173, float* %174, align 4
  br label %177

175:                                              ; preds = %135
  %176 = call i32 @av_assert0(i32 0)
  br label %177

177:                                              ; preds = %175, %168, %163, %158, %151, %145, %139
  br label %230

178:                                              ; preds = %132
  %179 = load float, float* %10, align 4
  %180 = fcmp oge float %179, 1.000000e+00
  br i1 %180, label %181, label %224

181:                                              ; preds = %178
  %182 = load float, float* %10, align 4
  %183 = fsub float %182, 2.000000e+00
  store float %183, float* %10, align 4
  %184 = load i32, i32* %11, align 4
  switch i32 %184, label %221 [
    i32 129, label %185
    i32 130, label %191
    i32 128, label %197
    i32 132, label %202
    i32 131, label %209
    i32 133, label %214
  ]

185:                                              ; preds = %181
  store i32 132, i32* %11, align 4
  %186 = load float, float* %10, align 4
  %187 = fneg float %186
  %188 = load float*, float** %12, align 8
  store float %187, float* %188, align 4
  %189 = load float, float* %9, align 4
  %190 = load float*, float** %13, align 8
  store float %189, float* %190, align 4
  br label %223

191:                                              ; preds = %181
  store i32 132, i32* %11, align 4
  %192 = load float, float* %10, align 4
  %193 = load float*, float** %12, align 8
  store float %192, float* %193, align 4
  %194 = load float, float* %9, align 4
  %195 = fneg float %194
  %196 = load float*, float** %13, align 8
  store float %195, float* %196, align 4
  br label %223

197:                                              ; preds = %181
  store i32 131, i32* %11, align 4
  %198 = load float, float* %9, align 4
  %199 = load float*, float** %12, align 8
  store float %198, float* %199, align 4
  %200 = load float, float* %10, align 4
  %201 = load float*, float** %13, align 8
  store float %200, float* %201, align 4
  br label %223

202:                                              ; preds = %181
  store i32 133, i32* %11, align 4
  %203 = load float, float* %9, align 4
  %204 = fneg float %203
  %205 = load float*, float** %12, align 8
  store float %204, float* %205, align 4
  %206 = load float, float* %10, align 4
  %207 = fneg float %206
  %208 = load float*, float** %13, align 8
  store float %207, float* %208, align 4
  br label %223

209:                                              ; preds = %181
  store i32 132, i32* %11, align 4
  %210 = load float, float* %9, align 4
  %211 = load float*, float** %12, align 8
  store float %210, float* %211, align 4
  %212 = load float, float* %10, align 4
  %213 = load float*, float** %13, align 8
  store float %212, float* %213, align 4
  br label %223

214:                                              ; preds = %181
  store i32 132, i32* %11, align 4
  %215 = load float, float* %9, align 4
  %216 = fneg float %215
  %217 = load float*, float** %12, align 8
  store float %216, float* %217, align 4
  %218 = load float, float* %10, align 4
  %219 = fneg float %218
  %220 = load float*, float** %13, align 8
  store float %219, float* %220, align 4
  br label %223

221:                                              ; preds = %181
  %222 = call i32 @av_assert0(i32 0)
  br label %223

223:                                              ; preds = %221, %214, %209, %202, %197, %191, %185
  br label %229

224:                                              ; preds = %178
  %225 = load float, float* %9, align 4
  %226 = load float*, float** %12, align 8
  store float %225, float* %226, align 4
  %227 = load float, float* %10, align 4
  %228 = load float*, float** %13, align 8
  store float %227, float* %228, align 4
  br label %229

229:                                              ; preds = %224, %223
  br label %230

230:                                              ; preds = %229, %177
  br label %231

231:                                              ; preds = %230, %131
  br label %232

232:                                              ; preds = %231, %89
  br label %233

233:                                              ; preds = %232, %43
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %11, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = load i32*, i32** %14, align 8
  store i32 %240, i32* %241, align 4
  %242 = load float*, float** %12, align 8
  %243 = load float*, float** %13, align 8
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = load i32*, i32** %14, align 8
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %246, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @rotate_cube_face(float* %242, float* %243, i32 %251)
  ret void
}

declare dso_local i32 @rotate_cube_face_inverse(float*, float*, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @rotate_cube_face(float*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
