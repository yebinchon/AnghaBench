; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_encavcodec.c_apply_vpx_preset.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_encavcodec.c_apply_vpx_preset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"deadline\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"good\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"cpu-used\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"veryfast\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"faster\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"medium\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"slow\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"slower\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"veryslow\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"best\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"apply_vpx_preset: Unknown VPx encoder preset %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8*)* @apply_vpx_preset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_vpx_preset(i32** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  store i32** %0, i32*** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32**, i32*** %4, align 8
  %10 = call i32 @av_dict_set(i32** %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %11 = load i32**, i32*** %4, align 8
  %12 = call i32 @av_dict_set(i32** %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 0)
  br label %86

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strcasecmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load i32**, i32*** %4, align 8
  %19 = call i32 @av_dict_set(i32** %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %20 = load i32**, i32*** %4, align 8
  %21 = call i32 @av_dict_set(i32** %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 0)
  br label %85

22:                                               ; preds = %13
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strcasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load i32**, i32*** %4, align 8
  %28 = call i32 @av_dict_set(i32** %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %29 = load i32**, i32*** %4, align 8
  %30 = call i32 @av_dict_set(i32** %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 0)
  br label %84

31:                                               ; preds = %22
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load i32**, i32*** %4, align 8
  %37 = call i32 @av_dict_set(i32** %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %38 = load i32**, i32*** %4, align 8
  %39 = call i32 @av_dict_set(i32** %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 0)
  br label %83

40:                                               ; preds = %31
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @strcasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = load i32**, i32*** %4, align 8
  %46 = call i32 @av_dict_set(i32** %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %47 = load i32**, i32*** %4, align 8
  %48 = call i32 @av_dict_set(i32** %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 0)
  br label %82

49:                                               ; preds = %40
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = load i32**, i32*** %4, align 8
  %55 = call i32 @av_dict_set(i32** %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %56 = load i32**, i32*** %4, align 8
  %57 = call i32 @av_dict_set(i32** %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 0)
  br label %81

58:                                               ; preds = %49
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @strcasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = load i32**, i32*** %4, align 8
  %64 = call i32 @av_dict_set(i32** %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %65 = load i32**, i32*** %4, align 8
  %66 = call i32 @av_dict_set(i32** %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 0)
  br label %80

67:                                               ; preds = %58
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @strcasecmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load i32**, i32*** %4, align 8
  %73 = call i32 @av_dict_set(i32** %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 0)
  %74 = load i32**, i32*** %4, align 8
  %75 = call i32 @av_dict_set(i32** %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 0)
  br label %79

76:                                               ; preds = %67
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @hb_log(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17, i64 0, i64 0), i8* %77)
  store i32 -1, i32* %3, align 4
  br label %87

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %62
  br label %81

81:                                               ; preds = %80, %53
  br label %82

82:                                               ; preds = %81, %44
  br label %83

83:                                               ; preds = %82, %35
  br label %84

84:                                               ; preds = %83, %26
  br label %85

85:                                               ; preds = %84, %17
  br label %86

86:                                               ; preds = %85, %8
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %76
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @hb_log(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
