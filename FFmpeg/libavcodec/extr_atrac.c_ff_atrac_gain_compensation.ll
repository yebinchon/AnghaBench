; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac.c_ff_atrac_gain_compensation.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac.c_ff_atrac_gain_compensation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { float*, i32, float*, i32, i32 }
%struct.TYPE_6__ = type { i32, i64*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_atrac_gain_compensation(%struct.TYPE_7__* %0, float* %1, float* %2, %struct.TYPE_6__* %3, %struct.TYPE_6__* %4, i32 %5, float* %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store float* %1, float** %9, align 8
  store float* %2, float** %10, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %12, align 8
  store i32 %5, i32* %13, align 4
  store float* %6, float** %14, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %7
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load float*, float** %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds float, float* %28, i64 %33
  %35 = load float, float* %34, align 4
  br label %37

36:                                               ; preds = %7
  br label %37

37:                                               ; preds = %36, %25
  %38 = phi float [ %35, %25 ], [ 1.000000e+00, %36 ]
  store float %38, float* %16, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %70, label %43

43:                                               ; preds = %37
  store i32 0, i32* %19, align 4
  br label %44

44:                                               ; preds = %66, %43
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %44
  %49 = load float*, float** %9, align 8
  %50 = load i32, i32* %19, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %49, i64 %51
  %53 = load float, float* %52, align 4
  %54 = load float, float* %16, align 4
  %55 = fmul float %53, %54
  %56 = load float*, float** %10, align 8
  %57 = load i32, i32* %19, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %56, i64 %58
  %60 = load float, float* %59, align 4
  %61 = fadd float %55, %60
  %62 = load float*, float** %14, align 8
  %63 = load i32, i32* %19, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %62, i64 %64
  store float %61, float* %65, align 4
  br label %66

66:                                               ; preds = %48
  %67 = load i32, i32* %19, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %19, align 4
  br label %44

69:                                               ; preds = %44
  br label %230

70:                                               ; preds = %37
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %71

71:                                               ; preds = %200, %70
  %72 = load i32, i32* %18, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %203

77:                                               ; preds = %71
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %18, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = shl i32 %84, %87
  store i32 %88, i32* %20, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load float*, float** %90, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %18, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds float, float* %91, i64 %98
  %100 = load float, float* %99, align 4
  store float %100, float* %15, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  %103 = load float*, float** %102, align 8
  %104 = load i32, i32* %18, align 4
  %105 = add nsw i32 %104, 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %77
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %18, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %113, i64 %116
  %118 = load i64, i64* %117, align 8
  br label %124

119:                                              ; preds = %77
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  br label %124

124:                                              ; preds = %119, %110
  %125 = phi i64 [ %118, %110 ], [ %123, %119 ]
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* %18, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = sub i64 %125, %132
  %134 = add i64 %133, 15
  %135 = getelementptr inbounds float, float* %103, i64 %134
  %136 = load float, float* %135, align 4
  store float %136, float* %17, align 4
  br label %137

137:                                              ; preds = %161, %124
  %138 = load i32, i32* %19, align 4
  %139 = load i32, i32* %20, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %164

141:                                              ; preds = %137
  %142 = load float*, float** %9, align 8
  %143 = load i32, i32* %19, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds float, float* %142, i64 %144
  %146 = load float, float* %145, align 4
  %147 = load float, float* %16, align 4
  %148 = fmul float %146, %147
  %149 = load float*, float** %10, align 8
  %150 = load i32, i32* %19, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float, float* %149, i64 %151
  %153 = load float, float* %152, align 4
  %154 = fadd float %148, %153
  %155 = load float, float* %15, align 4
  %156 = fmul float %154, %155
  %157 = load float*, float** %14, align 8
  %158 = load i32, i32* %19, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds float, float* %157, i64 %159
  store float %156, float* %160, align 4
  br label %161

161:                                              ; preds = %141
  %162 = load i32, i32* %19, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %19, align 4
  br label %137

164:                                              ; preds = %137
  br label %165

165:                                              ; preds = %196, %164
  %166 = load i32, i32* %19, align 4
  %167 = load i32, i32* %20, align 4
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %167, %170
  %172 = icmp slt i32 %166, %171
  br i1 %172, label %173, label %199

173:                                              ; preds = %165
  %174 = load float*, float** %9, align 8
  %175 = load i32, i32* %19, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds float, float* %174, i64 %176
  %178 = load float, float* %177, align 4
  %179 = load float, float* %16, align 4
  %180 = fmul float %178, %179
  %181 = load float*, float** %10, align 8
  %182 = load i32, i32* %19, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds float, float* %181, i64 %183
  %185 = load float, float* %184, align 4
  %186 = fadd float %180, %185
  %187 = load float, float* %15, align 4
  %188 = fmul float %186, %187
  %189 = load float*, float** %14, align 8
  %190 = load i32, i32* %19, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds float, float* %189, i64 %191
  store float %188, float* %192, align 4
  %193 = load float, float* %17, align 4
  %194 = load float, float* %15, align 4
  %195 = fmul float %194, %193
  store float %195, float* %15, align 4
  br label %196

196:                                              ; preds = %173
  %197 = load i32, i32* %19, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %19, align 4
  br label %165

199:                                              ; preds = %165
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %18, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %18, align 4
  br label %71

203:                                              ; preds = %71
  br label %204

204:                                              ; preds = %226, %203
  %205 = load i32, i32* %19, align 4
  %206 = load i32, i32* %13, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %229

208:                                              ; preds = %204
  %209 = load float*, float** %9, align 8
  %210 = load i32, i32* %19, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds float, float* %209, i64 %211
  %213 = load float, float* %212, align 4
  %214 = load float, float* %16, align 4
  %215 = fmul float %213, %214
  %216 = load float*, float** %10, align 8
  %217 = load i32, i32* %19, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds float, float* %216, i64 %218
  %220 = load float, float* %219, align 4
  %221 = fadd float %215, %220
  %222 = load float*, float** %14, align 8
  %223 = load i32, i32* %19, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds float, float* %222, i64 %224
  store float %221, float* %225, align 4
  br label %226

226:                                              ; preds = %208
  %227 = load i32, i32* %19, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %19, align 4
  br label %204

229:                                              ; preds = %204
  br label %230

230:                                              ; preds = %229, %69
  %231 = load float*, float** %10, align 8
  %232 = load float*, float** %9, align 8
  %233 = load i32, i32* %13, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds float, float* %232, i64 %234
  %236 = load i32, i32* %13, align 4
  %237 = sext i32 %236 to i64
  %238 = mul i64 %237, 4
  %239 = trunc i64 %238 to i32
  %240 = call i32 @memcpy(float* %231, float* %235, i32 %239)
  ret void
}

declare dso_local i32 @memcpy(float*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
