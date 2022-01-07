; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qcelpdec.c_do_pitchfilter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qcelpdec.c_do_pitchfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qcelp_hammsinc_table = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (float* (float*, float*, float*, float**, float**)* @do_pitchfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float* @do_pitchfilter(float* %0, float* %1, float* %2, float** %3, float** %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float**, align 8
  %10 = alloca float**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store float** %3, float*** %9, align 8
  store float** %4, float*** %10, align 8
  %16 = load float*, float** %6, align 8
  %17 = getelementptr inbounds float, float* %16, i64 143
  store float* %17, float** %14, align 8
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %124, %5
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %127

21:                                               ; preds = %18
  %22 = load float*, float** %8, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds float, float* %22, i64 %24
  %26 = load float, float* %25, align 4
  %27 = fcmp une float %26, 0.000000e+00
  br i1 %27, label %28, label %115

28:                                               ; preds = %21
  %29 = load float*, float** %6, align 8
  %30 = getelementptr inbounds float, float* %29, i64 143
  %31 = load i32, i32* %11, align 4
  %32 = mul nsw i32 40, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %30, i64 %33
  %35 = load float**, float*** %9, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float*, float** %35, i64 %37
  %39 = load float*, float** %38, align 8
  %40 = ptrtoint float* %34 to i64
  %41 = ptrtoint float* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 4
  %44 = inttoptr i64 %43 to float*
  store float* %44, float** %13, align 8
  %45 = load float*, float** %7, align 8
  %46 = getelementptr inbounds float, float* %45, i64 40
  store float* %46, float** %15, align 8
  br label %47

47:                                               ; preds = %111, %28
  %48 = load float*, float** %7, align 8
  %49 = load float*, float** %15, align 8
  %50 = icmp ult float* %48, %49
  br i1 %50, label %51, label %114

51:                                               ; preds = %47
  %52 = load float**, float*** %10, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float*, float** %52, i64 %54
  %56 = load float*, float** %55, align 8
  %57 = icmp ne float* %56, null
  br i1 %57, label %58, label %90

58:                                               ; preds = %51
  store i32 0, i32* %12, align 4
  %59 = load float*, float** %14, align 8
  store float 0.000000e+00, float* %59, align 4
  br label %60

60:                                               ; preds = %86, %58
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 4
  br i1 %62, label %63, label %89

63:                                               ; preds = %60
  %64 = load float*, float** @qcelp_hammsinc_table, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %64, i64 %66
  %68 = load float, float* %67, align 4
  %69 = load float*, float** %13, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sub nsw i32 %70, 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %69, i64 %72
  %74 = load float, float* %73, align 4
  %75 = load float*, float** %13, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sub nsw i32 3, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %75, i64 %78
  %80 = load float, float* %79, align 4
  %81 = fadd float %74, %80
  %82 = fmul float %68, %81
  %83 = load float*, float** %14, align 8
  %84 = load float, float* %83, align 4
  %85 = fadd float %84, %82
  store float %85, float* %83, align 4
  br label %86

86:                                               ; preds = %63
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %60

89:                                               ; preds = %60
  br label %94

90:                                               ; preds = %51
  %91 = load float*, float** %13, align 8
  %92 = load float, float* %91, align 4
  %93 = load float*, float** %14, align 8
  store float %92, float* %93, align 4
  br label %94

94:                                               ; preds = %90, %89
  %95 = load float*, float** %7, align 8
  %96 = load float, float* %95, align 4
  %97 = load float*, float** %8, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %97, i64 %99
  %101 = load float, float* %100, align 4
  %102 = load float*, float** %14, align 8
  %103 = load float, float* %102, align 4
  %104 = fmul float %101, %103
  %105 = fadd float %96, %104
  %106 = load float*, float** %14, align 8
  store float %105, float* %106, align 4
  %107 = load float*, float** %13, align 8
  %108 = getelementptr inbounds float, float* %107, i32 1
  store float* %108, float** %13, align 8
  %109 = load float*, float** %14, align 8
  %110 = getelementptr inbounds float, float* %109, i32 1
  store float* %110, float** %14, align 8
  br label %111

111:                                              ; preds = %94
  %112 = load float*, float** %7, align 8
  %113 = getelementptr inbounds float, float* %112, i32 1
  store float* %113, float** %7, align 8
  br label %47

114:                                              ; preds = %47
  br label %123

115:                                              ; preds = %21
  %116 = load float*, float** %14, align 8
  %117 = load float*, float** %7, align 8
  %118 = call i32 @memcpy(float* %116, float* %117, i32 160)
  %119 = load float*, float** %7, align 8
  %120 = getelementptr inbounds float, float* %119, i64 40
  store float* %120, float** %7, align 8
  %121 = load float*, float** %14, align 8
  %122 = getelementptr inbounds float, float* %121, i64 40
  store float* %122, float** %14, align 8
  br label %123

123:                                              ; preds = %115, %114
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %11, align 4
  br label %18

127:                                              ; preds = %18
  %128 = load float*, float** %6, align 8
  %129 = load float*, float** %6, align 8
  %130 = getelementptr inbounds float, float* %129, i64 160
  %131 = call i32 @memmove(float* %128, float* %130, i32 572)
  %132 = load float*, float** %6, align 8
  %133 = getelementptr inbounds float, float* %132, i64 143
  ret float* %133
}

declare dso_local i32 @memcpy(float*, float*, i32) #1

declare dso_local i32 @memmove(float*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
