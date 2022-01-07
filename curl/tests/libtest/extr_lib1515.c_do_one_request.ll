; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1515.c_do_one_request.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1515.c_do_one_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type { i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.timeval = type { i32, i64 }

@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_RESOLVE = common dso_local global i32 0, align 4
@CURLOPT_DEBUGFUNCTION = common dso_local global i32 0, align 4
@debug_callback = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_DNS_CACHE_TIMEOUT = common dso_local global i32 0, align 4
@DNS_TIMEOUT = common dso_local global i32 0, align 4
@CURLMSG_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @do_one_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_one_request(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.curl_slist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.timeval, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.curl_slist* null, %struct.curl_slist** %8, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.curl_slist*, %struct.curl_slist** %8, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %18, i8* %19)
  store %struct.curl_slist* %20, %struct.curl_slist** %8, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @easy_init(i32* %21)
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* @CURLOPT_URL, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 (i32*, i32, ...) @easy_setopt(i32* %23, i32 %24, i8* %25)
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* @CURLOPT_RESOLVE, align 4
  %29 = load %struct.curl_slist*, %struct.curl_slist** %8, align 8
  %30 = call i32 (i32*, i32, ...) @easy_setopt(i32* %27, i32 %28, %struct.curl_slist* %29)
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @CURLOPT_DEBUGFUNCTION, align 4
  %33 = load i32, i32* @debug_callback, align 4
  %34 = call i32 (i32*, i32, ...) @easy_setopt(i32* %31, i32 %32, i32 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %37 = call i32 (i32*, i32, ...) @easy_setopt(i32* %35, i32 %36, i32 1)
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* @CURLOPT_DNS_CACHE_TIMEOUT, align 4
  %40 = load i32, i32* @DNS_TIMEOUT, align 4
  %41 = call i32 (i32*, i32, ...) @easy_setopt(i32* %38, i32 %39, i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @multi_add_handle(i32* %42, i32* %43)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @multi_perform(i32* %45, i32* %9)
  %47 = call i32 (...) @abort_on_test_timeout()
  br label %48

48:                                               ; preds = %51, %3
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %48
  store i32 -99, i32* %17, align 4
  %52 = call i32 @FD_ZERO(i32* %14)
  %53 = call i32 @FD_ZERO(i32* %15)
  %54 = call i32 @FD_ZERO(i32* %16)
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @multi_fdset(i32* %57, i32* %14, i32* %15, i32* %16, i32* %17)
  %59 = load i32, i32* %17, align 4
  %60 = add nsw i32 %59, 1
  %61 = call i32 @select_test(i32 %60, i32* %14, i32* %15, i32* %16, %struct.timeval* %13)
  %62 = call i32 (...) @abort_on_test_timeout()
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @multi_perform(i32* %63, i32* %9)
  %65 = call i32 (...) @abort_on_test_timeout()
  br label %48

66:                                               ; preds = %48
  br label %67

67:                                               ; preds = %90, %66
  %68 = load i32*, i32** %4, align 8
  %69 = call %struct.TYPE_5__* @curl_multi_info_read(i32* %68, i32* %12)
  store %struct.TYPE_5__* %69, %struct.TYPE_5__** %11, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %71 = icmp ne %struct.TYPE_5__* %70, null
  br i1 %71, label %72, label %89

72:                                               ; preds = %67
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CURLMSG_DONE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %72
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = icmp eq i32* %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %10, align 4
  br label %93

89:                                               ; preds = %78, %72, %67
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %92 = icmp ne %struct.TYPE_5__* %91, null
  br i1 %92, label %67, label %93

93:                                               ; preds = %90, %84
  br label %94

94:                                               ; preds = %93
  %95 = load i32*, i32** %4, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @curl_multi_remove_handle(i32* %95, i32* %96)
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @curl_easy_cleanup(i32* %98)
  %100 = load %struct.curl_slist*, %struct.curl_slist** %8, align 8
  %101 = call i32 @curl_slist_free_all(%struct.curl_slist* %100)
  %102 = load i32, i32* %10, align 4
  ret i32 %102
}

declare dso_local %struct.curl_slist* @curl_slist_append(%struct.curl_slist*, i8*) #1

declare dso_local i32 @easy_init(i32*) #1

declare dso_local i32 @easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @multi_add_handle(i32*, i32*) #1

declare dso_local i32 @multi_perform(i32*, i32*) #1

declare dso_local i32 @abort_on_test_timeout(...) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @multi_fdset(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @select_test(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local %struct.TYPE_5__* @curl_multi_info_read(i32*, i32*) #1

declare dso_local i32 @curl_multi_remove_handle(i32*, i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_slist_free_all(%struct.curl_slist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
