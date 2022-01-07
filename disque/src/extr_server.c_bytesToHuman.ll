; ModuleID = '/home/carl/AnghaBench/disque/src/extr_server.c_bytesToHuman.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_server.c_bytesToHuman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%lluB\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%.2fK\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%.2fM\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%.2fG\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%.2fT\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%.2fP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bytesToHuman(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ult i64 %6, 1024
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i8*, i8** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @sprintf(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %10)
  br label %76

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = icmp ult i64 %13, 1048576
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load i64, i64* %4, align 8
  %17 = uitofp i64 %16 to double
  %18 = fdiv double %17, 1.024000e+03
  store double %18, double* %5, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = load double, double* %5, align 8
  %21 = fptoui double %20 to i64
  %22 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  br label %75

23:                                               ; preds = %12
  %24 = load i64, i64* %4, align 8
  %25 = icmp ult i64 %24, 1073741824
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i64, i64* %4, align 8
  %28 = uitofp i64 %27 to double
  %29 = fdiv double %28, 0x4130000000000000
  store double %29, double* %5, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = load double, double* %5, align 8
  %32 = fptoui double %31 to i64
  %33 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  br label %74

34:                                               ; preds = %23
  %35 = load i64, i64* %4, align 8
  %36 = icmp ult i64 %35, 1099511627776
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i64, i64* %4, align 8
  %39 = uitofp i64 %38 to double
  %40 = fdiv double %39, 0x41D0000000000000
  store double %40, double* %5, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = load double, double* %5, align 8
  %43 = fptoui double %42 to i64
  %44 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 %43)
  br label %73

45:                                               ; preds = %34
  %46 = load i64, i64* %4, align 8
  %47 = icmp ult i64 %46, 1125899906842624
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i64, i64* %4, align 8
  %50 = uitofp i64 %49 to double
  %51 = fdiv double %50, 0x4270000000000000
  store double %51, double* %5, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = load double, double* %5, align 8
  %54 = fptoui double %53 to i64
  %55 = call i32 @sprintf(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %54)
  br label %72

56:                                               ; preds = %45
  %57 = load i64, i64* %4, align 8
  %58 = icmp ult i64 %57, 1152921504606846976
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i64, i64* %4, align 8
  %61 = uitofp i64 %60 to double
  %62 = fdiv double %61, 0x4310000000000000
  store double %62, double* %5, align 8
  %63 = load i8*, i8** %3, align 8
  %64 = load double, double* %5, align 8
  %65 = fptoui double %64 to i64
  %66 = call i32 @sprintf(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 %65)
  br label %71

67:                                               ; preds = %56
  %68 = load i8*, i8** %3, align 8
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @sprintf(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %69)
  br label %71

71:                                               ; preds = %67, %59
  br label %72

72:                                               ; preds = %71, %48
  br label %73

73:                                               ; preds = %72, %37
  br label %74

74:                                               ; preds = %73, %26
  br label %75

75:                                               ; preds = %74, %15
  br label %76

76:                                               ; preds = %8, %75
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
