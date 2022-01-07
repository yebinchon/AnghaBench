; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_httpcustomheader.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_httpcustomheader.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"Accept:\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Another: yes\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Host: example.com\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"X-silly-header;\00", align 1
@CURLOPT_HTTPHEADER = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"curl_easy_perform() failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.curl_slist*, align 8
  store i32 0, i32* %1, align 4
  %5 = call i32* (...) @curl_easy_init()
  store i32* %5, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %42

8:                                                ; preds = %0
  store %struct.curl_slist* null, %struct.curl_slist** %4, align 8
  %9 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %10 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.curl_slist* %10, %struct.curl_slist** %4, align 8
  %11 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %12 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store %struct.curl_slist* %12, %struct.curl_slist** %4, align 8
  %13 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %14 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store %struct.curl_slist* %14, %struct.curl_slist** %4, align 8
  %15 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %16 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store %struct.curl_slist* %16, %struct.curl_slist** %4, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @CURLOPT_HTTPHEADER, align 4
  %19 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %20 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %17, i32 %18, %struct.curl_slist* %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @CURLOPT_URL, align 4
  %23 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %21, i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %26 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %24, i32 %25, i64 1)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @curl_easy_perform(i32* %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @CURLE_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %8
  %33 = load i32, i32* @stderr, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i8* @curl_easy_strerror(i32 %34)
  %36 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %32, %8
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @curl_easy_cleanup(i32* %38)
  %40 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %41 = call i32 @curl_slist_free_all(%struct.curl_slist* %40)
  br label %42

42:                                               ; preds = %37, %0
  ret i32 0
}

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local %struct.curl_slist* @curl_slist_append(%struct.curl_slist*, i8*) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @curl_easy_strerror(i32) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_slist_free_all(%struct.curl_slist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
