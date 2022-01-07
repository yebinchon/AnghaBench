; ModuleID = '/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_stdlib_noniso.c_dtostrf.c'
source_filename = "/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_stdlib_noniso.c_dtostrf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"inf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dtostrf(double %0, i8 signext %1, i8 zeroext %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i8, align 1
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store double %0, double* %6, align 8
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load double, double* %6, align 8
  %19 = call i64 @isnan(double %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @strcpy(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** %9, align 8
  store i8* %24, i8** %5, align 8
  br label %145

25:                                               ; preds = %4
  %26 = load double, double* %6, align 8
  %27 = call i64 @isinf(double %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @strcpy(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i8*, i8** %9, align 8
  store i8* %32, i8** %5, align 8
  br label %145

33:                                               ; preds = %25
  %34 = load i8*, i8** %9, align 8
  store i8* %34, i8** %11, align 8
  %35 = load i8, i8* %7, align 1
  %36 = sext i8 %35 to i32
  store i32 %36, i32* %12, align 4
  %37 = load i8, i8* %8, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i8, i8* %8, align 1
  %42 = zext i8 %41 to i32
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* %12, align 4
  %45 = sub nsw i32 %44, %43
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %40, %33
  %47 = load double, double* %6, align 8
  %48 = fcmp olt double %47, 0.000000e+00
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  store i32 1, i32* %10, align 4
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %12, align 4
  %52 = load double, double* %6, align 8
  %53 = fneg double %52
  store double %53, double* %6, align 8
  br label %54

54:                                               ; preds = %49, %46
  store double 2.000000e+00, double* %13, align 8
  store i8 0, i8* %14, align 1
  br label %55

55:                                               ; preds = %64, %54
  %56 = load i8, i8* %14, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* %8, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load double, double* %13, align 8
  %63 = fmul double %62, 1.000000e+01
  store double %63, double* %13, align 8
  br label %64

64:                                               ; preds = %61
  %65 = load i8, i8* %14, align 1
  %66 = add i8 %65, 1
  store i8 %66, i8* %14, align 1
  br label %55

67:                                               ; preds = %55
  %68 = load double, double* %13, align 8
  %69 = fdiv double 1.000000e+00, %68
  store double %69, double* %13, align 8
  %70 = load double, double* %13, align 8
  %71 = load double, double* %6, align 8
  %72 = fadd double %71, %70
  store double %72, double* %6, align 8
  store double 1.000000e+00, double* %15, align 8
  store i32 1, i32* %16, align 4
  br label %73

73:                                               ; preds = %78, %67
  %74 = load double, double* %6, align 8
  %75 = load double, double* %15, align 8
  %76 = fmul double 1.000000e+01, %75
  %77 = fcmp oge double %74, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load double, double* %15, align 8
  %80 = fmul double %79, 1.000000e+01
  store double %80, double* %15, align 8
  %81 = load i32, i32* %16, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %16, align 4
  br label %73

83:                                               ; preds = %73
  %84 = load double, double* %15, align 8
  %85 = load double, double* %6, align 8
  %86 = fdiv double %85, %84
  store double %86, double* %6, align 8
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %12, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %94, %83
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %12, align 4
  %93 = icmp sgt i32 %91, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i8*, i8** %11, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %11, align 8
  store i8 32, i8* %95, align 1
  br label %90

97:                                               ; preds = %90
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i8*, i8** %11, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %11, align 8
  store i8 45, i8* %101, align 1
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i8, i8* %8, align 1
  %105 = zext i8 %104 to i32
  %106 = load i32, i32* %16, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %108

108:                                              ; preds = %135, %103
  %109 = load i32, i32* %16, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %16, align 4
  %111 = icmp sgt i32 %109, 0
  br i1 %111, label %112, label %142

112:                                              ; preds = %108
  %113 = load double, double* %6, align 8
  %114 = fptosi double %113 to i32
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %17, align 4
  %116 = icmp sgt i32 %115, 9
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i32 9, i32* %17, align 4
  br label %118

118:                                              ; preds = %117, %112
  %119 = load i32, i32* %17, align 4
  %120 = or i32 48, %119
  %121 = trunc i32 %120 to i8
  %122 = load i8*, i8** %11, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %11, align 8
  store i8 %121, i8* %122, align 1
  %124 = load i32, i32* %16, align 4
  %125 = load i8, i8* %8, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %118
  %129 = load i8, i8* %8, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i8*, i8** %11, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %11, align 8
  store i8 46, i8* %133, align 1
  br label %135

135:                                              ; preds = %132, %128, %118
  %136 = load i32, i32* %17, align 4
  %137 = sitofp i32 %136 to double
  %138 = load double, double* %6, align 8
  %139 = fsub double %138, %137
  store double %139, double* %6, align 8
  %140 = load double, double* %6, align 8
  %141 = fmul double %140, 1.000000e+01
  store double %141, double* %6, align 8
  br label %108

142:                                              ; preds = %108
  %143 = load i8*, i8** %11, align 8
  store i8 0, i8* %143, align 1
  %144 = load i8*, i8** %9, align 8
  store i8* %144, i8** %5, align 8
  br label %145

145:                                              ; preds = %142, %29, %21
  %146 = load i8*, i8** %5, align 8
  ret i8* %146
}

declare dso_local i64 @isnan(double) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @isinf(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
