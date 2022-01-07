; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_imap-append.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_imap-append.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upload_status = type { i64 }

@CURLE_OK = common dso_local global i64 0, align 8
@CURLOPT_USERNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"user\00", align 1
@CURLOPT_PASSWORD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"secret\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"imap://imap.example.com/100\00", align 1
@CURLOPT_READFUNCTION = common dso_local global i32 0, align 4
@payload_source = common dso_local global i64 0, align 8
@CURLOPT_READDATA = common dso_local global i32 0, align 4
@CURLOPT_UPLOAD = common dso_local global i32 0, align 4
@payload_text = common dso_local global i8** null, align 8
@CURLOPT_INFILESIZE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"curl_easy_perform() failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.upload_status, align 8
  store i32 0, i32* %1, align 4
  %7 = load i64, i64* @CURLE_OK, align 8
  store i64 %7, i64* %3, align 8
  %8 = call i32* (...) @curl_easy_init()
  store i32* %8, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %64

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.upload_status, %struct.upload_status* %6, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @CURLOPT_USERNAME, align 4
  %15 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %13, i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @CURLOPT_PASSWORD, align 4
  %18 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %16, i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @CURLOPT_URL, align 4
  %21 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %19, i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @CURLOPT_READFUNCTION, align 4
  %24 = load i64, i64* @payload_source, align 8
  %25 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %22, i32 %23, i64 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* @CURLOPT_READDATA, align 4
  %28 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %26, i32 %27, %struct.upload_status* %6)
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @CURLOPT_UPLOAD, align 4
  %31 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %29, i32 %30, i64 1)
  store i64 0, i64* %5, align 8
  %32 = load i8**, i8*** @payload_text, align 8
  store i8** %32, i8*** %4, align 8
  br label %33

33:                                               ; preds = %43, %11
  %34 = load i8**, i8*** %4, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i8**, i8*** %4, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = load i64, i64* %5, align 8
  %42 = add nsw i64 %41, %40
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %37
  %44 = load i8**, i8*** %4, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i32 1
  store i8** %45, i8*** %4, align 8
  br label %33

46:                                               ; preds = %33
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* @CURLOPT_INFILESIZE, align 4
  %49 = load i64, i64* %5, align 8
  %50 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %47, i32 %48, i64 %49)
  %51 = load i32*, i32** %2, align 8
  %52 = call i64 @curl_easy_perform(i32* %51)
  store i64 %52, i64* %3, align 8
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* @CURLE_OK, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load i32, i32* @stderr, align 4
  %58 = load i64, i64* %3, align 8
  %59 = call i8* @curl_easy_strerror(i64 %58)
  %60 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %56, %46
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @curl_easy_cleanup(i32* %62)
  br label %64

64:                                               ; preds = %61, %0
  %65 = load i64, i64* %3, align 8
  %66 = trunc i64 %65 to i32
  ret i32 %66
}

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #1

declare dso_local i64 @strlen(i8*) #1

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
