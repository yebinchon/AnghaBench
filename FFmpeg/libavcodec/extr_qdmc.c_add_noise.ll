; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdmc.c_add_noise.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdmc.c_add_noise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float**, i32, i32, i32*, i64, i32***, i32 }

@noise_bands_size = common dso_local global i32* null, align 8
@qdmc_nodes = common dso_local global i32* null, align 8
@amplitude_tab = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32)* @add_noise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_noise(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load float**, float*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 0, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float*, float** %17, i64 %20
  %22 = load float*, float** %21, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 %28, %29
  %31 = add nsw i32 %25, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %22, i64 %32
  store float* %33, float** %11, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load float**, float*** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 2, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float*, float** %36, i64 %39
  %41 = load float*, float** %40, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = mul nsw i32 %47, %48
  %50 = add nsw i32 %44, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %41, i64 %51
  store float* %52, float** %12, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 4, %58
  %60 = call i32 @memset(i32* %55, i32 0, i32 %59)
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %141, %3
  %62 = load i32, i32* %7, align 4
  %63 = load i32*, i32** @noise_bands_size, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %62, %68
  br i1 %69, label %70, label %144

70:                                               ; preds = %61
  %71 = load i32*, i32** @qdmc_nodes, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = mul i64 21, %76
  %78 = add i64 %73, %77
  %79 = getelementptr inbounds i32, i32* %71, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, 1
  %85 = icmp sgt i32 %80, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %70
  br label %144

87:                                               ; preds = %70
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 5
  %90 = load i32***, i32**** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32**, i32*** %90, i64 %92
  %94 = load i32**, i32*** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sdiv i32 %99, 2
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %87
  %107 = load float*, float** @amplitude_tab, align 8
  %108 = load i32, i32* %9, align 4
  %109 = and i32 %108, 63
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %107, i64 %110
  %112 = load float, float* %111, align 4
  br label %114

113:                                              ; preds = %87
  br label %114

114:                                              ; preds = %113, %106
  %115 = phi float [ %112, %106 ], [ 0.000000e+00, %113 ]
  store float %115, float* %10, align 4
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %117 = load float, float* %10, align 4
  %118 = load i32*, i32** @qdmc_nodes, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = mul i64 21, %121
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = add i64 %122, %124
  %126 = getelementptr inbounds i32, i32* %118, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** @qdmc_nodes, align 8
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = mul i64 21, %131
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = add i64 %132, %134
  %136 = add i64 %135, 2
  %137 = getelementptr inbounds i32, i32* %128, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @lin_calc(%struct.TYPE_4__* %116, float %117, i32 %127, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %114
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %7, align 4
  br label %61

144:                                              ; preds = %86, %61
  store i32 2, i32* %8, align 4
  br label %145

145:                                              ; preds = %229, %144
  %146 = load i32, i32* %8, align 4
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 %149, 1
  %151 = icmp slt i32 %146, %150
  br i1 %151, label %152, label %232

152:                                              ; preds = %145
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 8
  %156 = mul i32 214013, %155
  %157 = add i32 %156, 2531011
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 6
  store i32 %157, i32* %159, align 8
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %162, 32767
  %164 = uitofp i32 %163 to float
  %165 = fsub float %164, 1.638400e+04
  %166 = fmul float %165, 0x3F00000000000000
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = sitofp i32 %173 to float
  %175 = fmul float %166, %174
  store float %175, float* %14, align 4
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 8
  %179 = mul i32 214013, %178
  %180 = add i32 %179, 2531011
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 6
  store i32 %180, i32* %182, align 8
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 8
  %186 = and i32 %185, 32767
  %187 = uitofp i32 %186 to float
  %188 = fsub float %187, 1.638400e+04
  %189 = fmul float %188, 0x3F00000000000000
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = sitofp i32 %196 to float
  %198 = fmul float %189, %197
  store float %198, float* %13, align 4
  %199 = load float, float* %14, align 4
  %200 = load float*, float** %11, align 8
  %201 = load i32, i32* %8, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds float, float* %200, i64 %202
  %204 = load float, float* %203, align 4
  %205 = fadd float %204, %199
  store float %205, float* %203, align 4
  %206 = load float, float* %13, align 4
  %207 = load float*, float** %12, align 8
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, float* %207, i64 %209
  %211 = load float, float* %210, align 4
  %212 = fadd float %211, %206
  store float %212, float* %210, align 4
  %213 = load float, float* %14, align 4
  %214 = load float*, float** %11, align 8
  %215 = load i32, i32* %8, align 4
  %216 = add nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds float, float* %214, i64 %217
  %219 = load float, float* %218, align 4
  %220 = fsub float %219, %213
  store float %220, float* %218, align 4
  %221 = load float, float* %13, align 4
  %222 = load float*, float** %12, align 8
  %223 = load i32, i32* %8, align 4
  %224 = add nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds float, float* %222, i64 %225
  %227 = load float, float* %226, align 4
  %228 = fsub float %227, %221
  store float %228, float* %226, align 4
  br label %229

229:                                              ; preds = %152
  %230 = load i32, i32* %8, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %8, align 4
  br label %145

232:                                              ; preds = %145
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @lin_calc(%struct.TYPE_4__*, float, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
