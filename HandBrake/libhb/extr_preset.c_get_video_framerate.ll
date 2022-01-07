; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_get_video_framerate.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_get_video_framerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HB_VALUE_TYPE_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"same as source\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @get_video_framerate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_video_framerate(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @hb_value_type(i32* %12)
  %14 = load i64, i64* @HB_VALUE_TYPE_STRING, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = call i8* @hb_value_get_string(i32* %17)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strcasecmp(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strcasecmp(i8* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26, %22, %16
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %81

32:                                               ; preds = %26
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @hb_video_framerate_get_from_name(i8* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %81

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40, %1
  %42 = call i32 @hb_video_framerate_get_limits(i32* %6, i32* %7, i32* %8)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sdiv i32 %43, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sdiv i32 %46, %47
  store i32 %48, i32* %10, align 4
  %49 = load i32*, i32** %3, align 8
  %50 = call double @hb_value_get_double(i32* %49)
  store double %50, double* %11, align 8
  %51 = load double, double* %11, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sitofp i32 %52 to double
  %54 = fcmp oge double %51, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %41
  %56 = load double, double* %11, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sitofp i32 %57 to double
  %59 = fcmp ole double %56, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* %8, align 4
  %62 = sitofp i32 %61 to double
  %63 = load double, double* %11, align 8
  %64 = fdiv double %62, %63
  %65 = fptosi double %64 to i32
  store i32 %65, i32* %2, align 4
  br label %81

66:                                               ; preds = %55, %41
  %67 = load double, double* %11, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sitofp i32 %68 to double
  %70 = fcmp oge double %67, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load double, double* %11, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sitofp i32 %73 to double
  %75 = fcmp ole double %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load double, double* %11, align 8
  %78 = fptosi double %77 to i32
  store i32 %78, i32* %2, align 4
  br label %81

79:                                               ; preds = %71, %66
  br label %80

80:                                               ; preds = %79
  store i32 -1, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %76, %60, %37, %30
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i64 @hb_value_type(i32*) #1

declare dso_local i8* @hb_value_get_string(i32*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @hb_video_framerate_get_from_name(i8*) #1

declare dso_local i32 @hb_video_framerate_get_limits(i32*, i32*, i32*) #1

declare dso_local double @hb_value_get_double(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
