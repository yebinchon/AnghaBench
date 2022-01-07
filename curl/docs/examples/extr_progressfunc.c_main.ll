; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_progressfunc.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_progressfunc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myprogress = type { i32*, i64 }

@CURLE_OK = common dso_local global i64 0, align 8
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"https://example.com/\00", align 1
@CURLOPT_PROGRESSFUNCTION = common dso_local global i32 0, align 4
@older_progress = common dso_local global i64 0, align 8
@CURLOPT_PROGRESSDATA = common dso_local global i32 0, align 4
@CURLOPT_NOPROGRESS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@CURLOPT_XFERINFODATA = common dso_local global i32 0, align 4
@CURLOPT_XFERINFOFUNCTION = common dso_local global i32 0, align 4
@xferinfo = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.myprogress, align 8
  store i32 0, i32* %1, align 4
  %5 = load i64, i64* @CURLE_OK, align 8
  store i64 %5, i64* %3, align 8
  %6 = call i32* (...) @curl_easy_init()
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %39

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.myprogress, %struct.myprogress* %4, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds %struct.myprogress, %struct.myprogress* %4, i32 0, i32 0
  store i32* %11, i32** %12, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @CURLOPT_URL, align 4
  %15 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %13, i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @CURLOPT_PROGRESSFUNCTION, align 4
  %18 = load i64, i64* @older_progress, align 8
  %19 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %16, i32 %17, i64 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @CURLOPT_PROGRESSDATA, align 4
  %22 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %20, i32 %21, %struct.myprogress* %4)
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @CURLOPT_NOPROGRESS, align 4
  %25 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %23, i32 %24, i64 0)
  %26 = load i32*, i32** %2, align 8
  %27 = call i64 @curl_easy_perform(i32* %26)
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @CURLE_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %9
  %32 = load i32, i32* @stderr, align 4
  %33 = load i64, i64* %3, align 8
  %34 = call i8* @curl_easy_strerror(i64 %33)
  %35 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %31, %9
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @curl_easy_cleanup(i32* %37)
  br label %39

39:                                               ; preds = %36, %0
  %40 = load i64, i64* %3, align 8
  %41 = trunc i64 %40 to i32
  ret i32 %41
}

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @curl_easy_strerror(i64) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
