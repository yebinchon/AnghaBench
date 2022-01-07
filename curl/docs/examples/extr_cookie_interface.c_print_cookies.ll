; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_cookie_interface.c_print_cookies.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_cookie_interface.c_print_cookies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type { i8*, %struct.curl_slist* }

@.str = private unnamed_addr constant [22 x i8] c"Cookies, curl knows:\0A\00", align 1
@CURLINFO_COOKIELIST = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Curl curl_easy_getinfo failed: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"[%d]: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"(none)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @print_cookies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_cookies(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.curl_slist*, align 8
  %5 = alloca %struct.curl_slist*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @CURLINFO_COOKIELIST, align 4
  %10 = call i64 @curl_easy_getinfo(i32* %8, i32 %9, %struct.curl_slist** %4)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @CURLE_OK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load i32, i32* @stderr, align 4
  %16 = load i64, i64* %3, align 8
  %17 = call i8* @curl_easy_strerror(i64 %16)
  %18 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %19 = call i32 @exit(i32 1) #3
  unreachable

20:                                               ; preds = %1
  %21 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  store %struct.curl_slist* %21, %struct.curl_slist** %5, align 8
  store i32 1, i32* %6, align 4
  br label %22

22:                                               ; preds = %25, %20
  %23 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %24 = icmp ne %struct.curl_slist* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %28 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %26, i8* %29)
  %31 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %32 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %31, i32 0, i32 1
  %33 = load %struct.curl_slist*, %struct.curl_slist** %32, align 8
  store %struct.curl_slist* %33, %struct.curl_slist** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %22

36:                                               ; preds = %22
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %36
  %42 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %43 = call i32 @curl_slist_free_all(%struct.curl_slist* %42)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @curl_easy_getinfo(i32*, i32, %struct.curl_slist**) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @curl_easy_strerror(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @curl_slist_free_all(%struct.curl_slist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
