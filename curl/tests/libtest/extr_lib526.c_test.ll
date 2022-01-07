; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib526.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib526.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@NUM_HANDLES = common dso_local global i32 0, align 4
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Start at URL 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Advancing to URL %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.timeval, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %15 = load i32, i32* @NUM_HANDLES, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %4, align 8
  %18 = alloca i32*, i64 %16, align 16
  store i64 %16, i64* %5, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %27, %1
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @NUM_HANDLES, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %18, i64 %25
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  br label %19

30:                                               ; preds = %19
  %31 = call i32 (...) @start_test_timing()
  %32 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %33 = call i32 @global_init(i32 %32)
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %57, %30
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @NUM_HANDLES, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %18, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @easy_init(i32* %42)
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %18, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @CURLOPT_URL, align 4
  %49 = load i8*, i8** %2, align 8
  %50 = call i32 (i32*, i32, ...) @easy_setopt(i32* %47, i32 %48, i8* %49)
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %18, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %56 = call i32 (i32*, i32, ...) @easy_setopt(i32* %54, i32 %55, i64 1)
  br label %57

57:                                               ; preds = %38
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %34

60:                                               ; preds = %34
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @multi_init(i32* %61)
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %18, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @multi_add_handle(i32* %63, i32* %67)
  %69 = load i32, i32* @stderr, align 4
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %96, %60
  store i32 -99, i32* %14, align 4
  %72 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @multi_perform(i32* %74, i32* %6)
  %76 = call i32 (...) @abort_on_test_timeout()
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %96, label %79

79:                                               ; preds = %71
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* @NUM_HANDLES, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %79
  %85 = load i32, i32* @stderr, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %18, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @multi_add_handle(i32* %88, i32* %92)
  br label %95

94:                                               ; preds = %79
  br label %106

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95, %71
  %97 = call i32 @FD_ZERO(i32* %11)
  %98 = call i32 @FD_ZERO(i32* %12)
  %99 = call i32 @FD_ZERO(i32* %13)
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @multi_fdset(i32* %100, i32* %11, i32* %12, i32* %13, i32* %14)
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %102, 1
  %104 = call i32 @select_test(i32 %103, i32* %11, i32* %12, i32* %13, %struct.timeval* %10)
  %105 = call i32 (...) @abort_on_test_timeout()
  br label %71

106:                                              ; preds = %94
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %3, align 4
  %109 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %109)
  ret i32 %108
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @start_test_timing(...) #2

declare dso_local i32 @global_init(i32) #2

declare dso_local i32 @easy_init(i32*) #2

declare dso_local i32 @easy_setopt(i32*, i32, ...) #2

declare dso_local i32 @multi_init(i32*) #2

declare dso_local i32 @multi_add_handle(i32*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @multi_perform(i32*, i32*) #2

declare dso_local i32 @abort_on_test_timeout(...) #2

declare dso_local i32 @FD_ZERO(i32*) #2

declare dso_local i32 @multi_fdset(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @select_test(i32, i32*, i32*, i32*, %struct.timeval*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
