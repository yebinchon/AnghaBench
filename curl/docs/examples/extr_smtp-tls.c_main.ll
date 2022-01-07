; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_smtp-tls.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_smtp-tls.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type { i32 }
%struct.upload_status = type { i64 }

@CURLE_OK = common dso_local global i64 0, align 8
@CURLOPT_USERNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"user\00", align 1
@CURLOPT_PASSWORD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"secret\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"smtp://mainserver.example.net:587\00", align 1
@CURLOPT_USE_SSL = common dso_local global i32 0, align 4
@CURLUSESSL_ALL = common dso_local global i64 0, align 8
@CURLOPT_CAINFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"/path/to/certificate.pem\00", align 1
@CURLOPT_MAIL_FROM = common dso_local global i32 0, align 4
@FROM = common dso_local global i64 0, align 8
@TO = common dso_local global i32 0, align 4
@CC = common dso_local global i32 0, align 4
@CURLOPT_MAIL_RCPT = common dso_local global i32 0, align 4
@CURLOPT_READFUNCTION = common dso_local global i32 0, align 4
@payload_source = common dso_local global i64 0, align 8
@CURLOPT_READDATA = common dso_local global i32 0, align 4
@CURLOPT_UPLOAD = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"curl_easy_perform() failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.curl_slist*, align 8
  %5 = alloca %struct.upload_status, align 8
  store i32 0, i32* %1, align 4
  %6 = load i64, i64* @CURLE_OK, align 8
  store i64 %6, i64* %3, align 8
  store %struct.curl_slist* null, %struct.curl_slist** %4, align 8
  %7 = getelementptr inbounds %struct.upload_status, %struct.upload_status* %5, i32 0, i32 0
  store i64 0, i64* %7, align 8
  %8 = call i32* (...) @curl_easy_init()
  store i32* %8, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %70

11:                                               ; preds = %0
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @CURLOPT_USERNAME, align 4
  %14 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %12, i32 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @CURLOPT_PASSWORD, align 4
  %17 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %15, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @CURLOPT_URL, align 4
  %20 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %18, i32 %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @CURLOPT_USE_SSL, align 4
  %23 = load i64, i64* @CURLUSESSL_ALL, align 8
  %24 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %21, i32 %22, i64 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* @CURLOPT_CAINFO, align 4
  %27 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %25, i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @CURLOPT_MAIL_FROM, align 4
  %30 = load i64, i64* @FROM, align 8
  %31 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %28, i32 %29, i64 %30)
  %32 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %33 = load i32, i32* @TO, align 4
  %34 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %32, i32 %33)
  store %struct.curl_slist* %34, %struct.curl_slist** %4, align 8
  %35 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %36 = load i32, i32* @CC, align 4
  %37 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %35, i32 %36)
  store %struct.curl_slist* %37, %struct.curl_slist** %4, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* @CURLOPT_MAIL_RCPT, align 4
  %40 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %41 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %38, i32 %39, %struct.curl_slist* %40)
  %42 = load i32*, i32** %2, align 8
  %43 = load i32, i32* @CURLOPT_READFUNCTION, align 4
  %44 = load i64, i64* @payload_source, align 8
  %45 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %42, i32 %43, i64 %44)
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* @CURLOPT_READDATA, align 4
  %48 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %46, i32 %47, %struct.upload_status* %5)
  %49 = load i32*, i32** %2, align 8
  %50 = load i32, i32* @CURLOPT_UPLOAD, align 4
  %51 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %49, i32 %50, i64 1)
  %52 = load i32*, i32** %2, align 8
  %53 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %54 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %52, i32 %53, i64 1)
  %55 = load i32*, i32** %2, align 8
  %56 = call i64 @curl_easy_perform(i32* %55)
  store i64 %56, i64* %3, align 8
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* @CURLE_OK, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %11
  %61 = load i32, i32* @stderr, align 4
  %62 = load i64, i64* %3, align 8
  %63 = call i8* @curl_easy_strerror(i64 %62)
  %64 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %60, %11
  %66 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %67 = call i32 @curl_slist_free_all(%struct.curl_slist* %66)
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @curl_easy_cleanup(i32* %68)
  br label %70

70:                                               ; preds = %65, %0
  %71 = load i64, i64* %3, align 8
  %72 = trunc i64 %71 to i32
  ret i32 %72
}

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #1

declare dso_local %struct.curl_slist* @curl_slist_append(%struct.curl_slist*, i32) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @curl_easy_strerror(i64) #1

declare dso_local i32 @curl_slist_free_all(%struct.curl_slist*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
