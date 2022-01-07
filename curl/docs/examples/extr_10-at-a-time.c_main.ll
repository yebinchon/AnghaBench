; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_10-at-a-time.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_10-at-a-time.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32 }

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLMOPT_MAXCONNECTS = common dso_local global i32 0, align 4
@MAX_PARALLEL = common dso_local global i32 0, align 4
@CURLMSG_DONE = common dso_local global i64 0, align 8
@CURLINFO_PRIVATE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"R: %d - %s <%s>\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"E: CURLMsg (%d)\0A\00", align 1
@NUM_URLS = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %9 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %10 = call i32 @curl_global_init(i32 %9)
  %11 = call i32* (...) @curl_multi_init()
  store i32* %11, i32** %2, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @CURLMOPT_MAXCONNECTS, align 4
  %14 = load i32, i32* @MAX_PARALLEL, align 4
  %15 = zext i32 %14 to i64
  %16 = call i32 @curl_multi_setopt(i32* %12, i32 %13, i64 %15)
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %25, %0
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MAX_PARALLEL, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @add_transfer(i32* %22, i32 %23)
  br label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %17

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %99, %28
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @curl_multi_perform(i32* %30, i32* %6)
  br label %32

32:                                               ; preds = %84, %29
  %33 = load i32*, i32** %2, align 8
  %34 = call %struct.TYPE_5__* @curl_multi_info_read(i32* %33, i32* %5)
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %3, align 8
  %35 = icmp ne %struct.TYPE_5__* %34, null
  br i1 %35, label %36, label %85

36:                                               ; preds = %32
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CURLMSG_DONE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %36
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %8, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @CURLINFO_PRIVATE, align 4
  %50 = call i32 @curl_easy_getinfo(i32* %48, i32 %49, i8** %7)
  %51 = load i32, i32* @stderr, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @curl_easy_strerror(i32 %60)
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %56, i8* %61, i8* %62)
  %64 = load i32*, i32** %2, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @curl_multi_remove_handle(i32* %64, i32* %65)
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @curl_easy_cleanup(i32* %67)
  br label %75

69:                                               ; preds = %36
  %70 = load i32, i32* @stderr, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  br label %75

75:                                               ; preds = %69, %42
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @NUM_URLS, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32*, i32** %2, align 8
  %81 = load i32, i32* %4, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %4, align 4
  %83 = call i32 @add_transfer(i32* %80, i32 %81)
  br label %84

84:                                               ; preds = %79, %75
  br label %32

85:                                               ; preds = %32
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32*, i32** %2, align 8
  %90 = call i32 @curl_multi_wait(i32* %89, i32* null, i32 0, i32 1000, i32* null)
  br label %91

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @NUM_URLS, align 4
  %98 = icmp ult i32 %96, %97
  br label %99

99:                                               ; preds = %95, %92
  %100 = phi i1 [ true, %92 ], [ %98, %95 ]
  br i1 %100, label %29, label %101

101:                                              ; preds = %99
  %102 = load i32*, i32** %2, align 8
  %103 = call i32 @curl_multi_cleanup(i32* %102)
  %104 = call i32 (...) @curl_global_cleanup()
  %105 = load i32, i32* @EXIT_SUCCESS, align 4
  ret i32 %105
}

declare dso_local i32 @curl_global_init(i32) #1

declare dso_local i32* @curl_multi_init(...) #1

declare dso_local i32 @curl_multi_setopt(i32*, i32, i64) #1

declare dso_local i32 @add_transfer(i32*, i32) #1

declare dso_local i32 @curl_multi_perform(i32*, i32*) #1

declare dso_local %struct.TYPE_5__* @curl_multi_info_read(i32*, i32*) #1

declare dso_local i32 @curl_easy_getinfo(i32*, i32, i8**) #1

declare dso_local i32 @fprintf(i32, i8*, i64, ...) #1

declare dso_local i8* @curl_easy_strerror(i32) #1

declare dso_local i32 @curl_multi_remove_handle(i32*, i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_multi_wait(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @curl_multi_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
