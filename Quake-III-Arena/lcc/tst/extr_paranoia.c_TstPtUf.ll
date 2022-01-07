; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_paranoia.c_TstPtUf.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_paranoia.c_TstPtUf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@N = common dso_local global i32 0, align 4
@Z = common dso_local global double 0.000000e+00, align 8
@Zero = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [43 x i8] c"Since comparison denies Z = 0, evaluating \00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"(Z + Z) / Z should be safe.\0A\00", align 1
@sigfpe = common dso_local global i64 0, align 8
@sigsave = common dso_local global i64 0, align 8
@ovfl_buf = common dso_local global i32 0, align 4
@Q9 = common dso_local global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"What the machine gets for (Z + Z) / Z is  %.17e .\0A\00", align 1
@Two = common dso_local global double 0.000000e+00, align 8
@Radix = common dso_local global i32 0, align 4
@U2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"This is O.K., provided Over/Underflow\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c" has NOT just been signaled.\0A\00", align 1
@One = common dso_local global double 0.000000e+00, align 8
@ErrCnt = common dso_local global i64* null, align 8
@Serious = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"This is a VERY SERIOUS DEFECT!\0A\00", align 1
@Defect = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"This is a DEFECT!\0A\00", align 1
@V9 = common dso_local global double 0.000000e+00, align 8
@Random1 = common dso_local global double 0.000000e+00, align 8
@Random2 = common dso_local global double 0.000000e+00, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"What prints as Z = \00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"%.17e\0A\09compares different from  \00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Z * 1 = %.17e \00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"1 * Z == %g\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Z / 1 = %.17e\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"Multiplication does not commute!\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"\09Comparison alleges that 1 * Z = %.17e\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"\09differs from Z * 1 = %.17e\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TstPtUf() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* @N, align 4
  %2 = load double, double* @Z, align 8
  %3 = load double, double* @Zero, align 8
  %4 = fcmp une double %2, %3
  br i1 %4, label %5, label %142

5:                                                ; preds = %0
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i64, i64* @sigfpe, align 8
  store i64 %8, i64* @sigsave, align 8
  %9 = load i32, i32* @ovfl_buf, align 4
  %10 = call i64 @setjmp(i32 %9) #3
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  br label %41

13:                                               ; preds = %5
  %14 = load double, double* @Z, align 8
  %15 = load double, double* @Z, align 8
  %16 = fadd double %14, %15
  %17 = load double, double* @Z, align 8
  %18 = fdiv double %16, %17
  store double %18, double* @Q9, align 8
  %19 = load double, double* @Q9, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), double %19)
  %21 = load double, double* @Q9, align 8
  %22 = load double, double* @Two, align 8
  %23 = fsub double %21, %22
  %24 = call i32 @FABS(double %23)
  %25 = load i32, i32* @Radix, align 4
  %26 = load i32, i32* @U2, align 4
  %27 = mul nsw i32 %25, %26
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %13
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %62

32:                                               ; preds = %13
  %33 = load double, double* @Q9, align 8
  %34 = load double, double* @One, align 8
  %35 = fcmp olt double %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load double, double* @Q9, align 8
  %38 = load double, double* @Two, align 8
  %39 = fcmp ogt double %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36, %32
  br label %41

41:                                               ; preds = %40, %12
  store i32 1, i32* @N, align 4
  %42 = load i64*, i64** @ErrCnt, align 8
  %43 = load i64, i64* @Serious, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  %47 = load i64*, i64** @ErrCnt, align 8
  %48 = load i64, i64* @Serious, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  store i64 %46, i64* %49, align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %61

51:                                               ; preds = %36
  store i32 1, i32* @N, align 4
  %52 = load i64*, i64** @ErrCnt, align 8
  %53 = load i64, i64* @Defect, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  %57 = load i64*, i64** @ErrCnt, align 8
  %58 = load i64, i64* @Defect, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  store i64 %56, i64* %59, align 8
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %61

61:                                               ; preds = %51, %41
  br label %62

62:                                               ; preds = %61, %29
  store i64 0, i64* @sigsave, align 8
  %63 = load double, double* @Z, align 8
  %64 = load double, double* @One, align 8
  %65 = fmul double %63, %64
  store double %65, double* @V9, align 8
  %66 = load double, double* @V9, align 8
  store double %66, double* @Random1, align 8
  %67 = load double, double* @One, align 8
  %68 = load double, double* @Z, align 8
  %69 = fmul double %67, %68
  store double %69, double* @V9, align 8
  %70 = load double, double* @V9, align 8
  store double %70, double* @Random2, align 8
  %71 = load double, double* @Z, align 8
  %72 = load double, double* @One, align 8
  %73 = fdiv double %71, %72
  store double %73, double* @V9, align 8
  %74 = load double, double* @Z, align 8
  %75 = load double, double* @Random1, align 8
  %76 = fcmp oeq double %74, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %62
  %78 = load double, double* @Z, align 8
  %79 = load double, double* @Random2, align 8
  %80 = fcmp oeq double %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %77
  %82 = load double, double* @Z, align 8
  %83 = load double, double* @V9, align 8
  %84 = fcmp oeq double %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load i32, i32* @N, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = call i32 (...) @Pause()
  br label %90

90:                                               ; preds = %88, %85
  br label %141

91:                                               ; preds = %81, %77, %62
  store i32 1, i32* @N, align 4
  %92 = load i64, i64* @Defect, align 8
  %93 = call i32 @BadCond(i64 %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %94 = load double, double* @Z, align 8
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), double %94)
  %96 = load double, double* @Z, align 8
  %97 = load double, double* @Random1, align 8
  %98 = fcmp une double %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load double, double* @Random1, align 8
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), double %100)
  br label %102

102:                                              ; preds = %99, %91
  %103 = load double, double* @Z, align 8
  %104 = load double, double* @Random2, align 8
  %105 = fcmp oeq double %103, %104
  br i1 %105, label %113, label %106

106:                                              ; preds = %102
  %107 = load double, double* @Random2, align 8
  %108 = load double, double* @Random1, align 8
  %109 = fcmp oeq double %107, %108
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = load double, double* @Random2, align 8
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), double %111)
  br label %113

113:                                              ; preds = %110, %106, %102
  %114 = load double, double* @Z, align 8
  %115 = load double, double* @V9, align 8
  %116 = fcmp oeq double %114, %115
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = load double, double* @V9, align 8
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), double %118)
  br label %120

120:                                              ; preds = %117, %113
  %121 = load double, double* @Random2, align 8
  %122 = load double, double* @Random1, align 8
  %123 = fcmp une double %121, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %120
  %125 = load i64*, i64** @ErrCnt, align 8
  %126 = load i64, i64* @Defect, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, 1
  %130 = load i64*, i64** @ErrCnt, align 8
  %131 = load i64, i64* @Defect, align 8
  %132 = getelementptr inbounds i64, i64* %130, i64 %131
  store i64 %129, i64* %132, align 8
  %133 = load i64, i64* @Defect, align 8
  %134 = call i32 @BadCond(i64 %133, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %135 = load double, double* @Random2, align 8
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), double %135)
  %137 = load double, double* @Random1, align 8
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), double %137)
  br label %139

139:                                              ; preds = %124, %120
  %140 = call i32 (...) @Pause()
  br label %141

141:                                              ; preds = %139, %90
  br label %142

142:                                              ; preds = %141, %0
  %143 = load i32, i32* %1, align 4
  ret i32 %143
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @FABS(double) #1

declare dso_local i32 @Pause(...) #1

declare dso_local i32 @BadCond(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
