; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_pop3-authzid.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_pop3-authzid.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLE_OK = common dso_local global i64 0, align 8
@CURLOPT_USERNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"user\00", align 1
@CURLOPT_PASSWORD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"secret\00", align 1
@CURLOPT_SASL_AUTHZID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"shared-mailbox\00", align 1
@CURLOPT_LOGIN_OPTIONS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"AUTH=PLAIN\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"pop3://pop.example.com/1\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"curl_easy_perform() failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %4 = load i64, i64* @CURLE_OK, align 8
  store i64 %4, i64* %3, align 8
  %5 = call i32* (...) @curl_easy_init()
  store i32* %5, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %37

8:                                                ; preds = %0
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @CURLOPT_USERNAME, align 4
  %11 = call i32 @curl_easy_setopt(i32* %9, i32 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @CURLOPT_PASSWORD, align 4
  %14 = call i32 @curl_easy_setopt(i32* %12, i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @CURLOPT_SASL_AUTHZID, align 4
  %17 = call i32 @curl_easy_setopt(i32* %15, i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @CURLOPT_LOGIN_OPTIONS, align 4
  %20 = call i32 @curl_easy_setopt(i32* %18, i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @CURLOPT_URL, align 4
  %23 = call i32 @curl_easy_setopt(i32* %21, i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %24 = load i32*, i32** %2, align 8
  %25 = call i64 @curl_easy_perform(i32* %24)
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @CURLE_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %8
  %30 = load i32, i32* @stderr, align 4
  %31 = load i64, i64* %3, align 8
  %32 = call i8* @curl_easy_strerror(i64 %31)
  %33 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %29, %8
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @curl_easy_cleanup(i32* %35)
  br label %37

37:                                               ; preds = %34, %0
  %38 = load i64, i64* %3, align 8
  %39 = trunc i64 %38 to i32
  ret i32 %39
}

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i8*) #1

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
