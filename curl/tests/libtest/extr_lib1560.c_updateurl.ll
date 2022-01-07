; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1560.c_updateurl.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1560.c_updateurl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"%79[^=]=%79[^,]\00", align 1
@CURLUPART_ZONEID = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"UNKNOWN part '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CURLUE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @updateurl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @updateurl(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [80 x i8], align 16
  %13 = alloca [80 x i8], align 16
  %14 = alloca [80 x i8], align 16
  %15 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %8, align 8
  br label %17

17:                                               ; preds = %83, %3
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %87

20:                                               ; preds = %17
  %21 = load i8*, i8** %8, align 8
  %22 = call i8* @strchr(i8* %21, i8 signext 44)
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %86

25:                                               ; preds = %20
  %26 = load i8*, i8** %10, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  store i64 %30, i64* %11, align 8
  %31 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @memcpy(i8* %31, i8* %32, i64 %33)
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 %35
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %38 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %39 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %40 = call i32 @sscanf(i8* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %38, i8* %39)
  %41 = icmp eq i32 2, %40
  br i1 %41, label %42, label %83

42:                                               ; preds = %25
  %43 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %44 = call i64 @part2id(i8* %43)
  store i64 %44, i64* %15, align 8
  %45 = load i64, i64* %15, align 8
  %46 = load i64, i64* @CURLUPART_ZONEID, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* @stderr, align 4
  %50 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %51 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %48, %42
  %53 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %54 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = load i32*, i32** %5, align 8
  %58 = load i64, i64* %15, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @curl_url_set(i32* %57, i64 %58, i8* null, i32 %59)
  store i32 %60, i32* %9, align 4
  br label %77

61:                                               ; preds = %52
  %62 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %63 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = load i32*, i32** %5, align 8
  %67 = load i64, i64* %15, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @curl_url_set(i32* %66, i64 %67, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  store i32 %69, i32* %9, align 4
  br label %76

70:                                               ; preds = %61
  %71 = load i32*, i32** %5, align 8
  %72 = load i64, i64* %15, align 8
  %73 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @curl_url_set(i32* %71, i64 %72, i8* %73, i32 %74)
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %70, %65
  br label %77

77:                                               ; preds = %76, %56
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %4, align 4
  br label %89

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82, %25
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  store i8* %85, i8** %8, align 8
  br label %17

86:                                               ; preds = %20
  br label %87

87:                                               ; preds = %86, %17
  %88 = load i32, i32* @CURLUE_OK, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %80
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*) #1

declare dso_local i64 @part2id(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @curl_url_set(i32*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
