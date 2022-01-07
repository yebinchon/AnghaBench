; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_ir.c_interpret_ir_data.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_ir.c_interpret_ir_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ir_t = type { i32, i32, i64, float, float, float, float, i64, i32, float, float, i32, i32*, i32, i32*, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.orient_t = type { i32 }

@SB_Z_COEFFICIENT = common dso_local global i32 0, align 4
@ERROR_MAX_COUNT = common dso_local global i64 0, align 8
@GLITCH_DIST = common dso_local global float 0.000000e+00, align 4
@GLITCH_MAX_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @interpret_ir_data(%struct.ir_t* %0, %struct.orient_t* %1) #0 {
  %3 = alloca %struct.ir_t*, align 8
  %4 = alloca %struct.orient_t*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store %struct.ir_t* %0, %struct.ir_t** %3, align 8
  store %struct.orient_t* %1, %struct.orient_t** %4, align 8
  %8 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %9 = load %struct.orient_t*, %struct.orient_t** %4, align 8
  %10 = call i32 @find_sensorbar(%struct.ir_t* %8, %struct.orient_t* %9)
  %11 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %12 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %11, i32 0, i32 17
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %100

15:                                               ; preds = %2
  %16 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %17 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %16, i32 0, i32 15
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %21 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %20, i32 0, i32 16
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @SB_Z_COEFFICIENT, align 4
  %23 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %24 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %22, %25
  %27 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %28 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %30 = call i32 @calc_yaw(%struct.ir_t* %29)
  %31 = load %struct.orient_t*, %struct.orient_t** %4, align 8
  %32 = getelementptr inbounds %struct.orient_t, %struct.orient_t* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %34 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ERROR_MAX_COUNT, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %15
  %39 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %40 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %39, i32 0, i32 4
  %41 = load float, float* %40, align 4
  %42 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %43 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %42, i32 0, i32 3
  store float %41, float* %43, align 8
  %44 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %45 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %44, i32 0, i32 6
  %46 = load float, float* %45, align 4
  %47 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %48 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %47, i32 0, i32 5
  store float %46, float* %48, align 8
  %49 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %50 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %49, i32 0, i32 7
  store i64 0, i64* %50, align 8
  br label %95

51:                                               ; preds = %15
  %52 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %53 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %52, i32 0, i32 4
  %54 = load float, float* %53, align 4
  %55 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %56 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %55, i32 0, i32 3
  %57 = load float, float* %56, align 8
  %58 = fsub float %54, %57
  %59 = call float @SQUARED(float %58)
  %60 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %61 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %60, i32 0, i32 6
  %62 = load float, float* %61, align 4
  %63 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %64 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %63, i32 0, i32 5
  %65 = load float, float* %64, align 8
  %66 = fsub float %62, %65
  %67 = call float @SQUARED(float %66)
  %68 = fadd float %59, %67
  store float %68, float* %7, align 4
  %69 = load float, float* %7, align 4
  %70 = load float, float* @GLITCH_DIST, align 4
  %71 = fcmp ogt float %69, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %51
  %73 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %74 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %73, i32 0, i32 7
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @GLITCH_MAX_COUNT, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %80 = call i32 @apply_ir_smoothing(%struct.ir_t* %79)
  %81 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %82 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %81, i32 0, i32 7
  store i64 0, i64* %82, align 8
  br label %88

83:                                               ; preds = %72
  %84 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %85 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %84, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %85, align 8
  br label %88

88:                                               ; preds = %83, %78
  br label %94

89:                                               ; preds = %51
  %90 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %91 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %90, i32 0, i32 7
  store i64 0, i64* %91, align 8
  %92 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %93 = call i32 @apply_ir_smoothing(%struct.ir_t* %92)
  br label %94

94:                                               ; preds = %89, %88
  br label %95

95:                                               ; preds = %94, %38
  %96 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %97 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %96, i32 0, i32 8
  store i32 1, i32* %97, align 8
  %98 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %99 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %98, i32 0, i32 2
  store i64 0, i64* %99, align 8
  br label %117

100:                                              ; preds = %2
  %101 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %102 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @ERROR_MAX_COUNT, align 8
  %105 = icmp sge i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %108 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %107, i32 0, i32 8
  store i32 0, i32* %108, align 8
  br label %116

109:                                              ; preds = %100
  %110 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %111 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %110, i32 0, i32 8
  store i32 1, i32* %111, align 8
  %112 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %113 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %113, align 8
  br label %116

116:                                              ; preds = %109, %106
  br label %117

117:                                              ; preds = %116, %95
  %118 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %119 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %171

122:                                              ; preds = %117
  %123 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %124 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %123, i32 0, i32 3
  %125 = load float, float* %124, align 8
  store float %125, float* %5, align 4
  %126 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %127 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %126, i32 0, i32 5
  %128 = load float, float* %127, align 8
  store float %128, float* %6, align 4
  %129 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %130 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %129, i32 0, i32 13
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %133 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %132, i32 0, i32 14
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %138 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %137, i32 0, i32 14
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @ir_correct_for_bounds(float* %5, float* %6, i32 %131, i32 %136, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %167

144:                                              ; preds = %122
  %145 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %146 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %145, i32 0, i32 13
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %149 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %148, i32 0, i32 12
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %154 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %153, i32 0, i32 12
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @ir_convert_to_vres(float* %5, float* %6, i32 %147, i32 %152, i32 %157)
  %159 = load float, float* %5, align 4
  %160 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %161 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %160, i32 0, i32 9
  store float %159, float* %161, align 4
  %162 = load float, float* %6, align 4
  %163 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %164 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %163, i32 0, i32 10
  store float %162, float* %164, align 8
  %165 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %166 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %165, i32 0, i32 11
  store i32 1, i32* %166, align 4
  br label %170

167:                                              ; preds = %122
  %168 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %169 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %168, i32 0, i32 11
  store i32 0, i32* %169, align 4
  br label %170

170:                                              ; preds = %167, %144
  br label %174

171:                                              ; preds = %117
  %172 = load %struct.ir_t*, %struct.ir_t** %3, align 8
  %173 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %172, i32 0, i32 11
  store i32 0, i32* %173, align 4
  br label %174

174:                                              ; preds = %171, %170
  ret void
}

declare dso_local i32 @find_sensorbar(%struct.ir_t*, %struct.orient_t*) #1

declare dso_local i32 @calc_yaw(%struct.ir_t*) #1

declare dso_local float @SQUARED(float) #1

declare dso_local i32 @apply_ir_smoothing(%struct.ir_t*) #1

declare dso_local i64 @ir_correct_for_bounds(float*, float*, i32, i32, i32) #1

declare dso_local i32 @ir_convert_to_vres(float*, float*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
