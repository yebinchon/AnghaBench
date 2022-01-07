; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_ftpgetresp.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_ftpgetresp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FTPBODY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@FTPHEADERS = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"ftp://ftp.example.com/\00", align 1
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@CURLOPT_HEADERFUNCTION = common dso_local global i32 0, align 4
@write_response = common dso_local global i8* null, align 8
@CURLOPT_HEADERDATA = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"curl_easy_perform() failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %6 = load i32, i32* @FTPBODY, align 4
  %7 = call i8* @fopen(i32 %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %4, align 8
  %8 = load i32, i32* @FTPHEADERS, align 4
  %9 = call i8* @fopen(i32 %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %5, align 8
  %10 = call i32* (...) @curl_easy_init()
  store i32* %10, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %42

13:                                               ; preds = %0
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @CURLOPT_URL, align 4
  %16 = call i32 @curl_easy_setopt(i32* %14, i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @curl_easy_setopt(i32* %17, i32 %18, i8* %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @CURLOPT_HEADERFUNCTION, align 4
  %23 = load i8*, i8** @write_response, align 8
  %24 = call i32 @curl_easy_setopt(i32* %21, i32 %22, i8* %23)
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* @CURLOPT_HEADERDATA, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @curl_easy_setopt(i32* %25, i32 %26, i8* %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @curl_easy_perform(i32* %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @CURLE_OK, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %13
  %35 = load i32, i32* @stderr, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i8* @curl_easy_strerror(i32 %36)
  %38 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %34, %13
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @curl_easy_cleanup(i32* %40)
  br label %42

42:                                               ; preds = %39, %0
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @fclose(i8* %43)
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @fclose(i8* %45)
  ret i32 0
}

declare dso_local i8* @fopen(i32, i8*) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i8*) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @curl_easy_strerror(i32) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @fclose(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
