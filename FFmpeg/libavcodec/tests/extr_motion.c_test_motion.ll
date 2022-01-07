; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_motion.c_test_motion.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_motion.c_test_motion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"testing '%s'\0A\00", align 1
@img1 = common dso_local global i32* null, align 8
@WIDTH = common dso_local global i32 0, align 4
@HEIGHT = common dso_local global i32 0, align 4
@img2 = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"error: mmx=%d c=%d\0A\00", align 1
@NB_ITS = common dso_local global i32 0, align 4
@dummy = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"  %0.0f kop/s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32 (i32*, i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32*, i32, i32)*)* @test_motion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_motion(i8* %0, i32 (i32*, i32*, i32*, i32, i32)* %1, i32 (i32*, i32*, i32*, i32, i32)* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32 (i32*, i32*, i32*, i32, i32)*, align 8
  %6 = alloca i32 (i32*, i32*, i32*, i32, i32)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca double, align 8
  store i8* %0, i8** %4, align 8
  store i32 (i32*, i32*, i32*, i32, i32)* %1, i32 (i32*, i32*, i32*, i32, i32)** %5, align 8
  store i32 (i32*, i32*, i32*, i32, i32)* %2, i32 (i32*, i32*, i32*, i32, i32)** %6, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %77, %3
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 20
  br i1 %18, label %19, label %80

19:                                               ; preds = %16
  %20 = load i32*, i32** @img1, align 8
  %21 = load i32, i32* @WIDTH, align 4
  %22 = load i32, i32* @HEIGHT, align 4
  %23 = mul nsw i32 %21, %22
  %24 = call i32 @fill_random(i32* %20, i32 %23)
  %25 = load i32*, i32** @img2, align 8
  %26 = load i32, i32* @WIDTH, align 4
  %27 = load i32, i32* @HEIGHT, align 4
  %28 = mul nsw i32 %26, %27
  %29 = call i32 @fill_random(i32* %25, i32 %28)
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %73, %19
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @HEIGHT, align 4
  %33 = sub nsw i32 %32, 17
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %76

35:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %69, %35
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @WIDTH, align 4
  %39 = sub nsw i32 %38, 17
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %72

41:                                               ; preds = %36
  %42 = load i32*, i32** @img2, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @WIDTH, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32* %50, i32** %12, align 8
  %51 = load i32 (i32*, i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32*, i32, i32)** %5, align 8
  %52 = load i32*, i32** @img1, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* @WIDTH, align 4
  %55 = call i32 %51(i32* null, i32* %52, i32* %53, i32 %54, i32 8)
  store i32 %55, i32* %9, align 4
  %56 = load i32 (i32*, i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32*, i32, i32)** %6, align 8
  %57 = load i32*, i32** @img1, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* @WIDTH, align 4
  %60 = call i32 %56(i32* null, i32* %57, i32* %58, i32 %59, i32 8)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %41
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %41
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %36

72:                                               ; preds = %36
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %30

76:                                               ; preds = %30
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %16

80:                                               ; preds = %16
  %81 = call i32 (...) @emms_c()
  %82 = call double (...) @av_gettime_relative()
  store double %82, double* %13, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %83

83:                                               ; preds = %124, %80
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @NB_ITS, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %127

87:                                               ; preds = %83
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %120, %87
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @HEIGHT, align 4
  %91 = sub nsw i32 %90, 17
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %123

93:                                               ; preds = %88
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %116, %93
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @WIDTH, align 4
  %97 = sub nsw i32 %96, 17
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %119

99:                                               ; preds = %94
  %100 = load i32*, i32** @img2, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @WIDTH, align 4
  %103 = mul nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32* %108, i32** %12, align 8
  %109 = load i32 (i32*, i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32*, i32, i32)** %5, align 8
  %110 = load i32*, i32** @img1, align 8
  %111 = load i32*, i32** %12, align 8
  %112 = load i32, i32* @WIDTH, align 4
  %113 = call i32 %109(i32* null, i32* %110, i32* %111, i32 %112, i32 8)
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %99
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %94

119:                                              ; preds = %94
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %88

123:                                              ; preds = %88
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %11, align 4
  br label %83

127:                                              ; preds = %83
  %128 = call i32 (...) @emms_c()
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* @dummy, align 4
  %130 = call double (...) @av_gettime_relative()
  %131 = load double, double* %13, align 8
  %132 = fsub double %130, %131
  store double %132, double* %13, align 8
  %133 = load i32, i32* @NB_ITS, align 4
  %134 = sitofp i32 %133 to double
  %135 = load i32, i32* @WIDTH, align 4
  %136 = sub nsw i32 %135, 16
  %137 = sitofp i32 %136 to double
  %138 = fmul double %134, %137
  %139 = load i32, i32* @HEIGHT, align 4
  %140 = sub nsw i32 %139, 16
  %141 = sitofp i32 %140 to double
  %142 = fmul double %138, %141
  %143 = load double, double* %13, align 8
  %144 = fdiv double %143, 1.000000e+03
  %145 = fdiv double %142, %144
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), double %145)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fill_random(i32*, i32) #1

declare dso_local i32 @emms_c(...) #1

declare dso_local double @av_gettime_relative(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
