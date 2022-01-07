; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cos_tablegen.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cos_tablegen.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"/* This file was automatically generated. */\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"#define FFT_FLOAT %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"#include \22libavcodec/%s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"rdft.h\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"fft.h\00", align 1
@BITS = common dso_local global i32 0, align 4
@M_PI = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"%s(%i) = {\0A   \00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"SINTABLE\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"COSTABLE\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"\0A   \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"\0A};\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double (double)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %16, %2
  %24 = phi i1 [ false, %2 ], [ %22, %16 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strstr(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %28, %23
  %35 = phi i1 [ false, %23 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, double (double)* @sin, double (double)* @cos
  store double (double)* %40, double (double)** %10, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %50)
  store i32 4, i32* %6, align 4
  br label %52

52:                                               ; preds = %140, %34
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @BITS, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %143

56:                                               ; preds = %52
  %57 = load i32, i32* %6, align 4
  %58 = shl i32 1, %57
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* @M_PI, align 4
  %60 = mul nsw i32 2, %59
  %61 = load i32, i32* %11, align 4
  %62 = sdiv i32 %60, %61
  %63 = sitofp i32 %62 to double
  store double %63, double* %12, align 8
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)
  %68 = load i32, i32* %11, align 4
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %67, i32 %68)
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %117, %56
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %11, align 4
  %73 = sdiv i32 %72, 2
  %74 = sub nsw i32 %73, 1
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %120

76:                                               ; preds = %70
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %11, align 4
  %79 = sdiv i32 %78, 4
  %80 = icmp sgt i32 %77, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i32, i32* %11, align 4
  %83 = sdiv i32 %82, 2
  %84 = load i32, i32* %7, align 4
  %85 = sub nsw i32 %83, %84
  br label %88

86:                                               ; preds = %76
  %87 = load i32, i32* %7, align 4
  br label %88

88:                                               ; preds = %86, %81
  %89 = phi i32 [ %85, %81 ], [ %87, %86 ]
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %88
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %11, align 4
  %95 = sdiv i32 %94, 4
  %96 = icmp sge i32 %93, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i32, i32* %11, align 4
  %99 = sdiv i32 %98, 4
  %100 = load i32, i32* %7, align 4
  %101 = sub nsw i32 %99, %100
  store i32 %101, i32* %13, align 4
  br label %102

102:                                              ; preds = %97, %92, %88
  %103 = load double (double)*, double (double)** %10, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sitofp i32 %104 to double
  %106 = load double, double* %12, align 8
  %107 = fmul double %105, %106
  %108 = call double %103(double %107)
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @printval(double %108, i32 %109)
  %111 = load i32, i32* %7, align 4
  %112 = and i32 %111, 3
  %113 = icmp eq i32 %112, 3
  br i1 %113, label %114, label %116

114:                                              ; preds = %102
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %102
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %70

120:                                              ; preds = %70
  %121 = load double (double)*, double (double)** %10, align 8
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load i32, i32* %11, align 4
  %126 = sdiv i32 %125, 4
  %127 = sub nsw i32 %126, 1
  %128 = sub nsw i32 0, %127
  %129 = sitofp i32 %128 to double
  %130 = load double, double* %12, align 8
  %131 = fmul double %129, %130
  br label %134

132:                                              ; preds = %120
  %133 = load double, double* %12, align 8
  br label %134

134:                                              ; preds = %132, %124
  %135 = phi double [ %131, %124 ], [ %133, %132 ]
  %136 = call double %121(double %135)
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @printval(double %136, i32 %137)
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %140

140:                                              ; preds = %134
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %6, align 4
  br label %52

143:                                              ; preds = %52
  ret i32 0
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local double @sin(double) #2

; Function Attrs: nounwind
declare dso_local double @cos(double) #2

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @printval(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
