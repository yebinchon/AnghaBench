; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_getparam.c_GetSizeParameter.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_getparam.c_GetSizeParameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GlobalConfig = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"invalid number specified for %s\0A\00", align 1
@PARAM_BAD_USE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@CURL_OFF_T_MAX = common dso_local global i32 0, align 4
@PARAM_NUMBER_TOO_LARGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"unsupported %s unit. Use G, M, K or B!\0A\00", align 1
@PARAM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.GlobalConfig*, i8*, i8*, i32*)* @GetSizeParameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetSizeParameter(%struct.GlobalConfig* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.GlobalConfig*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.GlobalConfig* %0, %struct.GlobalConfig** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @curlx_strtoofft(i8* %12, i8** %10, i32 0, i32* %11)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.GlobalConfig*, %struct.GlobalConfig** %6, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @warnf(%struct.GlobalConfig* %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* @PARAM_BAD_USE, align 4
  store i32 %19, i32* %5, align 4
  br label %75

20:                                               ; preds = %4
  %21 = load i8*, i8** %10, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %31

25:                                               ; preds = %20
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %30

30:                                               ; preds = %29, %25
  br label %31

31:                                               ; preds = %30, %24
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  switch i32 %34, label %66 [
    i32 71, label %35
    i32 103, label %35
    i32 77, label %45
    i32 109, label %45
    i32 75, label %55
    i32 107, label %55
    i32 98, label %65
    i32 66, label %65
  ]

35:                                               ; preds = %31, %31
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @CURL_OFF_T_MAX, align 4
  %38 = sdiv i32 %37, 1073741824
  %39 = icmp sgt i32 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @PARAM_NUMBER_TOO_LARGE, align 4
  store i32 %41, i32* %5, align 4
  br label %75

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  %44 = mul nsw i32 %43, 1073741824
  store i32 %44, i32* %11, align 4
  br label %71

45:                                               ; preds = %31, %31
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @CURL_OFF_T_MAX, align 4
  %48 = sdiv i32 %47, 1048576
  %49 = icmp sgt i32 %46, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @PARAM_NUMBER_TOO_LARGE, align 4
  store i32 %51, i32* %5, align 4
  br label %75

52:                                               ; preds = %45
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 %53, 1048576
  store i32 %54, i32* %11, align 4
  br label %71

55:                                               ; preds = %31, %31
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @CURL_OFF_T_MAX, align 4
  %58 = sdiv i32 %57, 1024
  %59 = icmp sgt i32 %56, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @PARAM_NUMBER_TOO_LARGE, align 4
  store i32 %61, i32* %5, align 4
  br label %75

62:                                               ; preds = %55
  %63 = load i32, i32* %11, align 4
  %64 = mul nsw i32 %63, 1024
  store i32 %64, i32* %11, align 4
  br label %71

65:                                               ; preds = %31, %31
  br label %71

66:                                               ; preds = %31
  %67 = load %struct.GlobalConfig*, %struct.GlobalConfig** %6, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @warnf(%struct.GlobalConfig* %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* @PARAM_BAD_USE, align 4
  store i32 %70, i32* %5, align 4
  br label %75

71:                                               ; preds = %65, %62, %52, %42
  %72 = load i32, i32* %11, align 4
  %73 = load i32*, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* @PARAM_OK, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %66, %60, %50, %40, %15
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i64 @curlx_strtoofft(i8*, i8**, i32, i32*) #1

declare dso_local i32 @warnf(%struct.GlobalConfig*, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
