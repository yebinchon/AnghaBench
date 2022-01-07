; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_cJSON.c_print_number.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_cJSON.c_print_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { double }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%1.15g\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%lg\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%1.17g\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_6__*)* @print_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_number(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [26 x i8], align 16
  %11 = alloca i8, align 1
  %12 = alloca double, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i8* null, i8** %6, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load double, double* %14, align 8
  store double %15, double* %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %16 = call zeroext i8 (...) @get_decimal_point()
  store i8 %16, i8* %11, align 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = icmp eq %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %96

20:                                               ; preds = %2
  %21 = load double, double* %7, align 8
  %22 = fmul double %21, 0.000000e+00
  %23 = fcmp une double %22, 0.000000e+00
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds [26 x i8], [26 x i8]* %10, i64 0, i64 0
  %26 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %8, align 4
  br label %43

27:                                               ; preds = %20
  %28 = getelementptr inbounds [26 x i8], [26 x i8]* %10, i64 0, i64 0
  %29 = load double, double* %7, align 8
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), double %29)
  store i32 %30, i32* %8, align 4
  %31 = getelementptr inbounds [26 x i8], [26 x i8]* %10, i64 0, i64 0
  %32 = call i32 @sscanf(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double* %12)
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = load double, double* %12, align 8
  %36 = load double, double* %7, align 8
  %37 = fcmp une double %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34, %27
  %39 = getelementptr inbounds [26 x i8], [26 x i8]* %10, i64 0, i64 0
  %40 = load double, double* %7, align 8
  %41 = call i32 (i8*, i8*, ...) @sprintf(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), double %40)
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %38, %34
  br label %43

43:                                               ; preds = %42, %24
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = icmp sgt i32 %47, 25
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %43
  store i32 0, i32* %3, align 4
  br label %96

50:                                               ; preds = %46
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = call i8* @ensure(%struct.TYPE_6__* %51, i64 %53)
  store i8* %54, i8** %6, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %96

58:                                               ; preds = %50
  store i64 0, i64* %9, align 8
  br label %59

59:                                               ; preds = %83, %58
  %60 = load i64, i64* %9, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp ult i64 %60, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %59
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds [26 x i8], [26 x i8]* %10, i64 0, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* %11, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load i8*, i8** %6, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8 46, i8* %75, align 1
  br label %83

76:                                               ; preds = %64
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds [26 x i8], [26 x i8]* %10, i64 0, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = load i8*, i8** %6, align 8
  %81 = load i64, i64* %9, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8 %79, i8* %82, align 1
  br label %83

83:                                               ; preds = %76, %72
  %84 = load i64, i64* %9, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %9, align 8
  br label %59

86:                                               ; preds = %59
  %87 = load i8*, i8** %6, align 8
  %88 = load i64, i64* %9, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8 0, i8* %89, align 1
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, %91
  store i64 %95, i64* %93, align 8
  store i32 1, i32* %3, align 4
  br label %96

96:                                               ; preds = %86, %57, %49, %19
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local zeroext i8 @get_decimal_point(...) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @sscanf(i8*, i8*, double*) #1

declare dso_local i8* @ensure(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
