; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vsrc_mptestsrc.c_idct.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vsrc_mptestsrc.c_idct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @idct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idct(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [64 x double], align 16
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %60, %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %63

16:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %56, %16
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 8
  br i1 %19, label %20, label %59

20:                                               ; preds = %17
  store double 0.000000e+00, double* %11, align 8
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %45, %20
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %48

24:                                               ; preds = %21
  %25 = load i32*, i32** @c, align 8
  %26 = load i32, i32* %9, align 4
  %27 = mul nsw i32 %26, 8
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %25, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 8, %34
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %32, %40
  %42 = sitofp i32 %41 to double
  %43 = load double, double* %11, align 8
  %44 = fadd double %43, %42
  store double %44, double* %11, align 8
  br label %45

45:                                               ; preds = %24
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %21

48:                                               ; preds = %21
  %49 = load double, double* %11, align 8
  %50 = load i32, i32* %7, align 4
  %51 = mul nsw i32 8, %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [64 x double], [64 x double]* %10, i64 0, i64 %54
  store double %49, double* %55, align 8
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %17

59:                                               ; preds = %17
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %13

63:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %114, %63
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 8
  br i1 %66, label %67, label %117

67:                                               ; preds = %64
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %110, %67
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 8
  br i1 %70, label %71, label %113

71:                                               ; preds = %68
  store double 0.000000e+00, double* %12, align 8
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %95, %71
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 8
  br i1 %74, label %75, label %98

75:                                               ; preds = %72
  %76 = load i32*, i32** @c, align 8
  %77 = load i32, i32* %9, align 4
  %78 = mul nsw i32 %77, 8
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %76, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = sitofp i32 %83 to double
  %85 = load i32, i32* %9, align 4
  %86 = mul nsw i32 8, %85
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [64 x double], [64 x double]* %10, i64 0, i64 %89
  %91 = load double, double* %90, align 8
  %92 = fmul double %84, %91
  %93 = load double, double* %12, align 8
  %94 = fadd double %93, %92
  store double %94, double* %12, align 8
  br label %95

95:                                               ; preds = %75
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %72

98:                                               ; preds = %72
  %99 = load double, double* %12, align 8
  %100 = call i32 @lrint(double %99)
  %101 = call i32 @av_clip_uint8(i32 %100)
  %102 = load i32*, i32** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %7, align 4
  %105 = mul nsw i32 %103, %104
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %102, i64 %108
  store i32 %101, i32* %109, align 4
  br label %110

110:                                              ; preds = %98
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %68

113:                                              ; preds = %68
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %64

117:                                              ; preds = %64
  ret void
}

declare dso_local i32 @av_clip_uint8(i32) #1

declare dso_local i32 @lrint(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
