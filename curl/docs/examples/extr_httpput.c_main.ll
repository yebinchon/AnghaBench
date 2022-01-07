; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_httpput.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_httpput.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_READFUNCTION = common dso_local global i32 0, align 4
@read_callback = common dso_local global i8* null, align 8
@CURLOPT_UPLOAD = common dso_local global i32 0, align 4
@CURLOPT_PUT = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_READDATA = common dso_local global i32 0, align 4
@CURLOPT_INFILESIZE_LARGE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"curl_easy_perform() failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %73

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %10, align 8
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 2
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = call i32 @stat(i8* %22, %struct.stat* %9)
  %24 = load i8*, i8** %10, align 8
  %25 = call i8* @fopen(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %8, align 8
  %26 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %27 = call i32 @curl_global_init(i32 %26)
  %28 = call i32* (...) @curl_easy_init()
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %69

31:                                               ; preds = %15
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @CURLOPT_READFUNCTION, align 4
  %34 = load i8*, i8** @read_callback, align 8
  %35 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %32, i32 %33, i8* %34)
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* @CURLOPT_UPLOAD, align 4
  %38 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %36, i32 %37, i64 1)
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @CURLOPT_PUT, align 4
  %41 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %39, i32 %40, i64 1)
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* @CURLOPT_URL, align 4
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %42, i32 %43, i8* %44)
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @CURLOPT_READDATA, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %46, i32 %47, i8* %48)
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* @CURLOPT_INFILESIZE_LARGE, align 4
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %50, i32 %51, i8* %54)
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @curl_easy_perform(i32* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @CURLE_OK, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %31
  %62 = load i32, i32* @stderr, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i8* @curl_easy_strerror(i32 %63)
  %65 = call i32 @fprintf(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %61, %31
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @curl_easy_cleanup(i32* %67)
  br label %69

69:                                               ; preds = %66, %15
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @fclose(i8* %70)
  %72 = call i32 (...) @curl_global_cleanup()
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %14
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i32 @curl_global_init(i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @curl_easy_strerror(i32) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @fclose(i8*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
