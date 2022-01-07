; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_http-post.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_http-post.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"http://postit.example.com/moo.cgi\00", align 1
@CURLOPT_POSTFIELDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"name=daniel&project=curl\00", align 1
@CURLE_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"curl_easy_perform() failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %5 = call i32 @curl_global_init(i32 %4)
  %6 = call i32* (...) @curl_easy_init()
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %0
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @CURLOPT_URL, align 4
  %12 = call i32 @curl_easy_setopt(i32* %10, i32 %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @CURLOPT_POSTFIELDS, align 4
  %15 = call i32 @curl_easy_setopt(i32* %13, i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @curl_easy_perform(i32* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @CURLE_OK, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %9
  %22 = load i32, i32* @stderr, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i8* @curl_easy_strerror(i32 %23)
  %25 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %21, %9
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @curl_easy_cleanup(i32* %27)
  br label %29

29:                                               ; preds = %26, %0
  %30 = call i32 (...) @curl_global_cleanup()
  ret i32 0
}

declare dso_local i32 @curl_global_init(i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i8*) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @curl_easy_strerror(i32) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
