; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_paramhlp.c_file2string.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_paramhlp.c_file2string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARAM_NO_MEM = common dso_local global i32 0, align 4
@SIZE_T_MAX = common dso_local global i64 0, align 8
@PARAM_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file2string(i8** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [256 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* null, i8** %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %85

15:                                               ; preds = %2
  store i64 512, i64* %8, align 8
  store i64 0, i64* %11, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i8* @malloc(i64 %16)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @PARAM_NO_MEM, align 4
  store i32 %21, i32* %3, align 4
  br label %89

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %75, %22
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @fgets(i8* %24, i32 256, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %84

28:                                               ; preds = %23
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %30 = call i8* @strchr(i8* %29, i8 signext 13)
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i8*, i8** %7, align 8
  store i8 0, i8* %34, align 1
  br label %35

35:                                               ; preds = %33, %28
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %37 = call i8* @strchr(i8* %36, i8 signext 10)
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i8*, i8** %7, align 8
  store i8 0, i8* %41, align 1
  br label %42

42:                                               ; preds = %40, %35
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %44 = call i64 @strlen(i8* %43)
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %12, align 8
  %47 = add i64 %45, %46
  %48 = add i64 %47, 1
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %42
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @SIZE_T_MAX, align 8
  %55 = udiv i64 %54, 2
  %56 = icmp uge i64 %53, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @Curl_safefree(i8* %58)
  %60 = load i32, i32* @PARAM_NO_MEM, align 4
  store i32 %60, i32* %3, align 4
  br label %89

61:                                               ; preds = %52
  %62 = load i64, i64* %8, align 8
  %63 = mul i64 %62, 2
  store i64 %63, i64* %8, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i8* @realloc(i8* %64, i64 %65)
  store i8* %66, i8** %7, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %61
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @Curl_safefree(i8* %70)
  %72 = load i32, i32* @PARAM_NO_MEM, align 4
  store i32 %72, i32* %3, align 4
  br label %89

73:                                               ; preds = %61
  %74 = load i8*, i8** %7, align 8
  store i8* %74, i8** %6, align 8
  br label %75

75:                                               ; preds = %73, %42
  %76 = load i8*, i8** %6, align 8
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %80 = call i32 @strcpy(i8* %78, i8* %79)
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* %11, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %11, align 8
  br label %23

84:                                               ; preds = %23
  br label %85

85:                                               ; preds = %84, %2
  %86 = load i8*, i8** %6, align 8
  %87 = load i8**, i8*** %4, align 8
  store i8* %86, i8** %87, align 8
  %88 = load i32, i32* @PARAM_OK, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %85, %69, %57, %20
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @Curl_safefree(i8*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
