; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_i2s.c_i2s_apll_calculate_fi2s.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_i2s.c_i2s_apll_calculate_fi2s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APLL_I2S_MIN_RATE = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@APLL_MAX_FREQ = common dso_local global float 0.000000e+00, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*, i32*, i32*)* @i2s_apll_calculate_fi2s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2s_apll_calculate_fi2s(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sdiv i32 %22, %23
  %25 = sdiv i32 %24, 2
  %26 = sdiv i32 %25, 8
  %27 = load i32, i32* @APLL_I2S_MIN_RATE, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %30, i32* %7, align 4
  br label %227

31:                                               ; preds = %6
  %32 = load i32*, i32** %10, align 8
  store i32 0, i32* %32, align 4
  %33 = load i32*, i32** %11, align 8
  store i32 0, i32* %33, align 4
  %34 = load i32*, i32** %12, align 8
  store i32 0, i32* %34, align 4
  %35 = load i32*, i32** %13, align 8
  store i32 0, i32* %35, align 4
  %36 = load float, float* @APLL_MAX_FREQ, align 4
  store float %36, float* %21, align 4
  store i32 4, i32* %17, align 4
  br label %37

37:                                               ; preds = %67, %31
  %38 = load i32, i32* %17, align 4
  %39 = icmp slt i32 %38, 9
  br i1 %39, label %40, label %70

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %17, align 4
  %43 = call float @i2s_apll_get_fi2s(i32 %41, i32 255, i32 255, i32 %42, i32 0)
  store float %43, float* %20, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %17, align 4
  %46 = call float @i2s_apll_get_fi2s(i32 %44, i32 0, i32 0, i32 %45, i32 31)
  store float %46, float* %19, align 4
  %47 = load float, float* %20, align 4
  %48 = load float, float* %19, align 4
  %49 = fadd float %47, %48
  %50 = fdiv float %49, 2.000000e+00
  store float %50, float* %18, align 4
  %51 = load float, float* %18, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sitofp i32 %52 to float
  %54 = fsub float %51, %53
  %55 = call float @abs(float %54)
  %56 = load float, float* %21, align 4
  %57 = fcmp olt float %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %40
  %59 = load float, float* %18, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sitofp i32 %60 to float
  %62 = fsub float %59, %61
  %63 = call float @abs(float %62)
  store float %63, float* %21, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load i32*, i32** %12, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %58, %40
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %17, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %17, align 4
  br label %37

70:                                               ; preds = %37
  %71 = load float, float* @APLL_MAX_FREQ, align 4
  store float %71, float* %21, align 4
  store i32 0, i32* %14, align 4
  br label %72

72:                                               ; preds = %106, %70
  %73 = load i32, i32* %14, align 4
  %74 = icmp slt i32 %73, 32
  br i1 %74, label %75, label %109

75:                                               ; preds = %72
  %76 = load i32, i32* %9, align 4
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %14, align 4
  %80 = call float @i2s_apll_get_fi2s(i32 %76, i32 255, i32 255, i32 %78, i32 %79)
  store float %80, float* %20, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %14, align 4
  %85 = call float @i2s_apll_get_fi2s(i32 %81, i32 0, i32 0, i32 %83, i32 %84)
  store float %85, float* %19, align 4
  %86 = load float, float* %20, align 4
  %87 = load float, float* %19, align 4
  %88 = fadd float %86, %87
  %89 = fdiv float %88, 2.000000e+00
  store float %89, float* %18, align 4
  %90 = load float, float* %18, align 4
  %91 = load i32, i32* %8, align 4
  %92 = sitofp i32 %91 to float
  %93 = fsub float %90, %92
  %94 = call float @abs(float %93)
  %95 = load float, float* %21, align 4
  %96 = fcmp olt float %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %75
  %98 = load float, float* %18, align 4
  %99 = load i32, i32* %8, align 4
  %100 = sitofp i32 %99 to float
  %101 = fsub float %98, %100
  %102 = call float @abs(float %101)
  store float %102, float* %21, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32*, i32** %13, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %97, %75
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  br label %72

109:                                              ; preds = %72
  %110 = load float, float* @APLL_MAX_FREQ, align 4
  store float %110, float* %21, align 4
  store i32 4, i32* %17, align 4
  br label %111

111:                                              ; preds = %145, %109
  %112 = load i32, i32* %17, align 4
  %113 = icmp slt i32 %112, 9
  br i1 %113, label %114, label %148

114:                                              ; preds = %111
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %17, align 4
  %117 = load i32*, i32** %13, align 8
  %118 = load i32, i32* %117, align 4
  %119 = call float @i2s_apll_get_fi2s(i32 %115, i32 255, i32 255, i32 %116, i32 %118)
  store float %119, float* %20, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %17, align 4
  %122 = load i32*, i32** %13, align 8
  %123 = load i32, i32* %122, align 4
  %124 = call float @i2s_apll_get_fi2s(i32 %120, i32 0, i32 0, i32 %121, i32 %123)
  store float %124, float* %19, align 4
  %125 = load float, float* %20, align 4
  %126 = load float, float* %19, align 4
  %127 = fadd float %125, %126
  %128 = fdiv float %127, 2.000000e+00
  store float %128, float* %18, align 4
  %129 = load float, float* %18, align 4
  %130 = load i32, i32* %8, align 4
  %131 = sitofp i32 %130 to float
  %132 = fsub float %129, %131
  %133 = call float @abs(float %132)
  %134 = load float, float* %21, align 4
  %135 = fcmp olt float %133, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %114
  %137 = load float, float* %18, align 4
  %138 = load i32, i32* %8, align 4
  %139 = sitofp i32 %138 to float
  %140 = fsub float %137, %139
  %141 = call float @abs(float %140)
  store float %141, float* %21, align 4
  %142 = load i32, i32* %17, align 4
  %143 = load i32*, i32** %12, align 8
  store i32 %142, i32* %143, align 4
  br label %144

144:                                              ; preds = %136, %114
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %17, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %17, align 4
  br label %111

148:                                              ; preds = %111
  %149 = load float, float* @APLL_MAX_FREQ, align 4
  store float %149, float* %21, align 4
  store i32 0, i32* %16, align 4
  br label %150

150:                                              ; preds = %188, %148
  %151 = load i32, i32* %16, align 4
  %152 = icmp slt i32 %151, 256
  br i1 %152, label %153, label %191

153:                                              ; preds = %150
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %16, align 4
  %156 = load i32*, i32** %12, align 8
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %13, align 8
  %159 = load i32, i32* %158, align 4
  %160 = call float @i2s_apll_get_fi2s(i32 %154, i32 255, i32 %155, i32 %157, i32 %159)
  store float %160, float* %20, align 4
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %16, align 4
  %163 = load i32*, i32** %12, align 8
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %13, align 8
  %166 = load i32, i32* %165, align 4
  %167 = call float @i2s_apll_get_fi2s(i32 %161, i32 0, i32 %162, i32 %164, i32 %166)
  store float %167, float* %19, align 4
  %168 = load float, float* %20, align 4
  %169 = load float, float* %19, align 4
  %170 = fadd float %168, %169
  %171 = fdiv float %170, 2.000000e+00
  store float %171, float* %18, align 4
  %172 = load float, float* %18, align 4
  %173 = load i32, i32* %8, align 4
  %174 = sitofp i32 %173 to float
  %175 = fsub float %172, %174
  %176 = call float @abs(float %175)
  %177 = load float, float* %21, align 4
  %178 = fcmp olt float %176, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %153
  %180 = load float, float* %18, align 4
  %181 = load i32, i32* %8, align 4
  %182 = sitofp i32 %181 to float
  %183 = fsub float %180, %182
  %184 = call float @abs(float %183)
  store float %184, float* %21, align 4
  %185 = load i32, i32* %16, align 4
  %186 = load i32*, i32** %11, align 8
  store i32 %185, i32* %186, align 4
  br label %187

187:                                              ; preds = %179, %153
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %16, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %16, align 4
  br label %150

191:                                              ; preds = %150
  %192 = load float, float* @APLL_MAX_FREQ, align 4
  store float %192, float* %21, align 4
  store i32 0, i32* %15, align 4
  br label %193

193:                                              ; preds = %222, %191
  %194 = load i32, i32* %15, align 4
  %195 = icmp slt i32 %194, 256
  br i1 %195, label %196, label %225

196:                                              ; preds = %193
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* %15, align 4
  %199 = load i32*, i32** %11, align 8
  %200 = load i32, i32* %199, align 4
  %201 = load i32*, i32** %12, align 8
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** %13, align 8
  %204 = load i32, i32* %203, align 4
  %205 = call float @i2s_apll_get_fi2s(i32 %197, i32 %198, i32 %200, i32 %202, i32 %204)
  store float %205, float* %18, align 4
  %206 = load float, float* %18, align 4
  %207 = load i32, i32* %8, align 4
  %208 = sitofp i32 %207 to float
  %209 = fsub float %206, %208
  %210 = call float @abs(float %209)
  %211 = load float, float* %21, align 4
  %212 = fcmp olt float %210, %211
  br i1 %212, label %213, label %221

213:                                              ; preds = %196
  %214 = load float, float* %18, align 4
  %215 = load i32, i32* %8, align 4
  %216 = sitofp i32 %215 to float
  %217 = fsub float %214, %216
  %218 = call float @abs(float %217)
  store float %218, float* %21, align 4
  %219 = load i32, i32* %15, align 4
  %220 = load i32*, i32** %10, align 8
  store i32 %219, i32* %220, align 4
  br label %221

221:                                              ; preds = %213, %196
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %15, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %15, align 4
  br label %193

225:                                              ; preds = %193
  %226 = load i32, i32* @ESP_OK, align 4
  store i32 %226, i32* %7, align 4
  br label %227

227:                                              ; preds = %225, %29
  %228 = load i32, i32* %7, align 4
  ret i32 %228
}

declare dso_local float @i2s_apll_get_fi2s(i32, i32, i32, i32, i32) #1

declare dso_local float @abs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
