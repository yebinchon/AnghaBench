; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_line_ticker_smooth_generic.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_line_ticker_smooth_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i64, i64, i64, i64, i64*, i64*, float*, i32*, i64*, float*, float*, i64*, float*, float*)* @menu_animation_line_ticker_smooth_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_animation_line_ticker_smooth_generic(i64 %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64* %6, i64* %7, float* %8, i32* %9, i64* %10, float* %11, float* %12, i64* %13, float* %14, float* %15) #0 {
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca float*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i64*, align 8
  %28 = alloca float*, align 8
  %29 = alloca float*, align 8
  %30 = alloca i64*, align 8
  %31 = alloca float*, align 8
  %32 = alloca float*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store i64 %0, i64* %17, align 8
  store i32 %1, i32* %18, align 4
  store i64 %2, i64* %19, align 8
  store i64 %3, i64* %20, align 8
  store i64 %4, i64* %21, align 8
  store i64 %5, i64* %22, align 8
  store i64* %6, i64** %23, align 8
  store i64* %7, i64** %24, align 8
  store float* %8, float** %25, align 8
  store i32* %9, i32** %26, align 8
  store i64* %10, i64** %27, align 8
  store float* %11, float** %28, align 8
  store float* %12, float** %29, align 8
  store i64* %13, i64** %30, align 8
  store float* %14, float** %31, align 8
  store float* %15, float** %32, align 8
  %40 = load i64, i64* %19, align 8
  %41 = call i64 @get_line_smooth_scroll_ticks(i64 %40)
  store i64 %41, i64* %33, align 8
  %42 = load i64, i64* %22, align 8
  %43 = load i64, i64* %21, align 8
  %44 = sub i64 %42, %43
  store i64 %44, i64* %34, align 8
  %45 = load i64, i64* %34, align 8
  %46 = mul i64 %45, 2
  %47 = add i64 %46, 2
  %48 = load i64, i64* %33, align 8
  %49 = mul i64 %47, %48
  store i64 %49, i64* %35, align 8
  %50 = load i64, i64* %17, align 8
  %51 = load i64, i64* %35, align 8
  %52 = urem i64 %50, %51
  store i64 %52, i64* %36, align 8
  store i64 0, i64* %37, align 8
  store i32 0, i32* %38, align 4
  store i32 1, i32* %39, align 4
  %53 = load i64, i64* %36, align 8
  %54 = load i64, i64* %33, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %16
  store i32 1, i32* %38, align 4
  br label %57

57:                                               ; preds = %56, %16
  %58 = load i64, i64* %36, align 8
  %59 = load i64, i64* %33, align 8
  %60 = icmp uge i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i64, i64* %36, align 8
  %63 = load i64, i64* %33, align 8
  %64 = sub i64 %62, %63
  br label %66

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %61
  %67 = phi i64 [ %64, %61 ], [ 0, %65 ]
  store i64 %67, i64* %36, align 8
  %68 = load i64, i64* %36, align 8
  %69 = load i64, i64* %34, align 8
  %70 = load i64, i64* %33, align 8
  %71 = mul i64 %69, %70
  %72 = icmp uge i64 %68, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %66
  store i32 0, i32* %39, align 4
  %74 = load i64, i64* %36, align 8
  %75 = load i64, i64* %34, align 8
  %76 = add i64 %75, 1
  %77 = load i64, i64* %33, align 8
  %78 = mul i64 %76, %77
  %79 = icmp ult i64 %74, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i32 1, i32* %38, align 4
  store i64 0, i64* %36, align 8
  br label %88

81:                                               ; preds = %73
  %82 = load i64, i64* %34, align 8
  %83 = add i64 %82, 1
  %84 = load i64, i64* %33, align 8
  %85 = mul i64 %83, %84
  %86 = load i64, i64* %36, align 8
  %87 = sub i64 %86, %85
  store i64 %87, i64* %36, align 8
  br label %88

88:                                               ; preds = %81, %80
  br label %89

89:                                               ; preds = %88, %66
  %90 = load i64, i64* %36, align 8
  %91 = load i64, i64* %33, align 8
  %92 = urem i64 %90, %91
  store i64 %92, i64* %37, align 8
  %93 = load i32, i32* %38, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %89
  %96 = load i64, i64* %37, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %131

98:                                               ; preds = %95, %89
  %99 = load i64, i64* %21, align 8
  %100 = load i64*, i64** %23, align 8
  store i64 %99, i64* %100, align 8
  %101 = load float*, float** %25, align 8
  store float 0.000000e+00, float* %101, align 4
  %102 = load i32*, i32** %26, align 8
  store i32 0, i32* %102, align 4
  %103 = load i32, i32* %38, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %98
  %106 = load i32, i32* %39, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %111

109:                                              ; preds = %105
  %110 = load i64, i64* %34, align 8
  br label %111

111:                                              ; preds = %109, %108
  %112 = phi i64 [ 0, %108 ], [ %110, %109 ]
  %113 = load i64*, i64** %24, align 8
  store i64 %112, i64* %113, align 8
  br label %130

114:                                              ; preds = %98
  %115 = load i32, i32* %39, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i64, i64* %36, align 8
  %119 = load i64, i64* %33, align 8
  %120 = udiv i64 %118, %119
  br label %127

121:                                              ; preds = %114
  %122 = load i64, i64* %34, align 8
  %123 = load i64, i64* %36, align 8
  %124 = load i64, i64* %33, align 8
  %125 = udiv i64 %123, %124
  %126 = sub i64 %122, %125
  br label %127

127:                                              ; preds = %121, %117
  %128 = phi i64 [ %120, %117 ], [ %126, %121 ]
  %129 = load i64*, i64** %24, align 8
  store i64 %128, i64* %129, align 8
  br label %130

130:                                              ; preds = %127, %111
  br label %199

131:                                              ; preds = %95
  %132 = load i64, i64* %21, align 8
  %133 = sub i64 %132, 1
  %134 = load i64*, i64** %23, align 8
  store i64 %133, i64* %134, align 8
  %135 = load i32, i32* %18, align 4
  %136 = load i32*, i32** %26, align 8
  store i32 %135, i32* %136, align 4
  %137 = load i32, i32* %39, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %156

139:                                              ; preds = %131
  %140 = load i64, i64* %36, align 8
  %141 = load i64, i64* %33, align 8
  %142 = udiv i64 %140, %141
  %143 = add i64 %142, 1
  %144 = load i64*, i64** %24, align 8
  store i64 %143, i64* %144, align 8
  %145 = load i64, i64* %20, align 8
  %146 = uitofp i64 %145 to float
  %147 = load i64, i64* %33, align 8
  %148 = load i64, i64* %37, align 8
  %149 = sub i64 %147, %148
  %150 = uitofp i64 %149 to float
  %151 = fmul float %146, %150
  %152 = load i64, i64* %33, align 8
  %153 = uitofp i64 %152 to float
  %154 = fdiv float %151, %153
  %155 = load float*, float** %25, align 8
  store float %154, float* %155, align 4
  br label %175

156:                                              ; preds = %131
  %157 = load i64, i64* %34, align 8
  %158 = load i64, i64* %36, align 8
  %159 = load i64, i64* %33, align 8
  %160 = udiv i64 %158, %159
  %161 = sub i64 %157, %160
  %162 = load i64*, i64** %24, align 8
  store i64 %161, i64* %162, align 8
  %163 = load i64, i64* %20, align 8
  %164 = uitofp i64 %163 to float
  %165 = load i64, i64* %33, align 8
  %166 = load i64, i64* %37, align 8
  %167 = sub i64 %165, %166
  %168 = uitofp i64 %167 to float
  %169 = load i64, i64* %33, align 8
  %170 = uitofp i64 %169 to float
  %171 = fdiv float %168, %170
  %172 = fsub float 1.000000e+00, %171
  %173 = fmul float %164, %172
  %174 = load float*, float** %25, align 8
  store float %173, float* %174, align 4
  br label %175

175:                                              ; preds = %156, %139
  %176 = load i32*, i32** %26, align 8
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %198

179:                                              ; preds = %175
  %180 = load i32, i32* %39, align 4
  %181 = load i64, i64* %33, align 8
  %182 = load i64, i64* %37, align 8
  %183 = load i64, i64* %20, align 8
  %184 = load i64, i64* %22, align 8
  %185 = load i64*, i64** %23, align 8
  %186 = load i64, i64* %185, align 8
  %187 = load i64*, i64** %24, align 8
  %188 = load i64, i64* %187, align 8
  %189 = load float*, float** %25, align 8
  %190 = load float, float* %189, align 4
  %191 = load i64*, i64** %27, align 8
  %192 = load float*, float** %28, align 8
  %193 = load float*, float** %29, align 8
  %194 = load i64*, i64** %30, align 8
  %195 = load float*, float** %31, align 8
  %196 = load float*, float** %32, align 8
  %197 = call i32 @set_line_smooth_fade_parameters(i32 %180, i64 %181, i64 %182, i64 %183, i64 %184, i64 %186, i64 %188, float %190, i64* %191, float* %192, float* %193, i64* %194, float* %195, float* %196)
  br label %198

198:                                              ; preds = %179, %175
  br label %199

199:                                              ; preds = %198, %130
  %200 = load i32*, i32** %26, align 8
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %211, label %203

203:                                              ; preds = %199
  %204 = load i64*, i64** %27, align 8
  %205 = load float*, float** %28, align 8
  %206 = load float*, float** %29, align 8
  %207 = load i64*, i64** %30, align 8
  %208 = load float*, float** %31, align 8
  %209 = load float*, float** %32, align 8
  %210 = call i32 @set_line_smooth_fade_parameters_default(i64* %204, float* %205, float* %206, i64* %207, float* %208, float* %209)
  br label %211

211:                                              ; preds = %203, %199
  ret void
}

declare dso_local i64 @get_line_smooth_scroll_ticks(i64) #1

declare dso_local i32 @set_line_smooth_fade_parameters(i32, i64, i64, i64, i64, i64, i64, float, i64*, float*, float*, i64*, float*, float*) #1

declare dso_local i32 @set_line_smooth_fade_parameters_default(i64*, float*, float*, i64*, float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
