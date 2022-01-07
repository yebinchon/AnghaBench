; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib540.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib540.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type { i32 }

@NUM_HANDLES = common dso_local global i32 0, align 4
@eh = common dso_local global i32** null, align 8
@test_argc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Host: %s\00", align 1
@HOST = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"curl_slist_append() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@PROXYUSERPWD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"lib540: now we do the request again\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.curl_slist*, align 8
  %6 = alloca [246 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %4, align 8
  store %struct.curl_slist* null, %struct.curl_slist** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %18, %1
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @NUM_HANDLES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load i32**, i32*** @eh, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %8, align 4
  br label %9

21:                                               ; preds = %9
  %22 = call i32 (...) @start_test_timing()
  %23 = load i32, i32* @test_argc, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 99, i32* %2, align 4
  br label %104

26:                                               ; preds = %21
  %27 = getelementptr inbounds [246 x i8], [246 x i8]* %6, i64 0, i64 0
  %28 = load i32, i32* @HOST, align 4
  %29 = call i32 @msnprintf(i8* %27, i32 246, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %31 = getelementptr inbounds [246 x i8], [246 x i8]* %6, i64 0, i64 0
  %32 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %30, i8* %31)
  store %struct.curl_slist* %32, %struct.curl_slist** %5, align 8
  %33 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %34 = icmp ne %struct.curl_slist* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %38, i32* %2, align 4
  br label %104

39:                                               ; preds = %26
  %40 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %41 = call i32 @res_global_init(i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %46 = call i32 @curl_slist_free_all(%struct.curl_slist* %45)
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %104

48:                                               ; preds = %39
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @res_multi_init(i32* %49)
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = call i32 (...) @curl_global_cleanup()
  %55 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %56 = call i32 @curl_slist_free_all(%struct.curl_slist* %55)
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %104

58:                                               ; preds = %48
  %59 = load i32*, i32** %4, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = load i32, i32* @PROXYUSERPWD, align 4
  %62 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %63 = call i32 @loop(i32 0, i32* %59, i8* %60, i32 %61, %struct.curl_slist* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %75

67:                                               ; preds = %58
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 @fprintf(i32 %68, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32*, i32** %4, align 8
  %71 = load i8*, i8** %3, align 8
  %72 = load i32, i32* @PROXYUSERPWD, align 4
  %73 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %74 = call i32 @loop(i32 1, i32* %70, i8* %71, i32 %72, %struct.curl_slist* %73)
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %67, %66
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %94, %75
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @NUM_HANDLES, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %76
  %81 = load i32*, i32** %4, align 8
  %82 = load i32**, i32*** @eh, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @curl_multi_remove_handle(i32* %81, i32* %86)
  %88 = load i32**, i32*** @eh, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @curl_easy_cleanup(i32* %92)
  br label %94

94:                                               ; preds = %80
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %76

97:                                               ; preds = %76
  %98 = load i32*, i32** %4, align 8
  %99 = call i32 @curl_multi_cleanup(i32* %98)
  %100 = call i32 (...) @curl_global_cleanup()
  %101 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %102 = call i32 @curl_slist_free_all(%struct.curl_slist* %101)
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %97, %53, %44, %35, %25
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @start_test_timing(...) #1

declare dso_local i32 @msnprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.curl_slist* @curl_slist_append(%struct.curl_slist*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @res_global_init(i32) #1

declare dso_local i32 @curl_slist_free_all(%struct.curl_slist*) #1

declare dso_local i32 @res_multi_init(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local i32 @loop(i32, i32*, i8*, i32, %struct.curl_slist*) #1

declare dso_local i32 @curl_multi_remove_handle(i32*, i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_multi_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
