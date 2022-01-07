; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_smtp-mail.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_smtp-mail.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type { i32 }
%struct.upload_status = type { i64 }

@CURLE_OK = common dso_local global i64 0, align 8
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"smtp://mail.example.com\00", align 1
@CURLOPT_MAIL_FROM = common dso_local global i32 0, align 4
@FROM_ADDR = common dso_local global i64 0, align 8
@TO_ADDR = common dso_local global i32 0, align 4
@CC_ADDR = common dso_local global i32 0, align 4
@CURLOPT_MAIL_RCPT = common dso_local global i32 0, align 4
@CURLOPT_READFUNCTION = common dso_local global i32 0, align 4
@payload_source = common dso_local global i64 0, align 8
@CURLOPT_READDATA = common dso_local global i32 0, align 4
@CURLOPT_UPLOAD = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"curl_easy_perform() failed: %s\0A\00", align 1

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
  br i1 %10, label %11, label %54

11:                                               ; preds = %0
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @CURLOPT_URL, align 4
  %14 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %12, i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @CURLOPT_MAIL_FROM, align 4
  %17 = load i64, i64* @FROM_ADDR, align 8
  %18 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %15, i32 %16, i64 %17)
  %19 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %20 = load i32, i32* @TO_ADDR, align 4
  %21 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %19, i32 %20)
  store %struct.curl_slist* %21, %struct.curl_slist** %4, align 8
  %22 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %23 = load i32, i32* @CC_ADDR, align 4
  %24 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %22, i32 %23)
  store %struct.curl_slist* %24, %struct.curl_slist** %4, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* @CURLOPT_MAIL_RCPT, align 4
  %27 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %28 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %25, i32 %26, %struct.curl_slist* %27)
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @CURLOPT_READFUNCTION, align 4
  %31 = load i64, i64* @payload_source, align 8
  %32 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %29, i32 %30, i64 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @CURLOPT_READDATA, align 4
  %35 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %33, i32 %34, %struct.upload_status* %5)
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* @CURLOPT_UPLOAD, align 4
  %38 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %36, i32 %37, i64 1)
  %39 = load i32*, i32** %2, align 8
  %40 = call i64 @curl_easy_perform(i32* %39)
  store i64 %40, i64* %3, align 8
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* @CURLE_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %11
  %45 = load i32, i32* @stderr, align 4
  %46 = load i64, i64* %3, align 8
  %47 = call i8* @curl_easy_strerror(i64 %46)
  %48 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %44, %11
  %50 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %51 = call i32 @curl_slist_free_all(%struct.curl_slist* %50)
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @curl_easy_cleanup(i32* %52)
  br label %54

54:                                               ; preds = %49, %0
  %55 = load i64, i64* %3, align 8
  %56 = trunc i64 %55 to i32
  ret i32 %56
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
