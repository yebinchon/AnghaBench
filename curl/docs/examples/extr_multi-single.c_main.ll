; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_multi-single.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_multi-single.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURL_GLOBAL_DEFAULT = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"https://www.example.com/\00", align 1
@CURLM_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"curl_multi_wait() failed, code %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @CURL_GLOBAL_DEFAULT, align 4
  %9 = call i32 @curl_global_init(i32 %8)
  %10 = call i32* (...) @curl_easy_init()
  store i32* %10, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @CURLOPT_URL, align 4
  %13 = call i32 @curl_easy_setopt(i32* %11, i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = call i32* (...) @curl_multi_init()
  store i32* %14, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @curl_multi_add_handle(i32* %15, i32* %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @curl_multi_perform(i32* %18, i32* %4)
  br label %20

20:                                               ; preds = %45, %0
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %20
  %24 = load i32*, i32** %3, align 8
  %25 = call i64 @curl_multi_wait(i32* %24, i32* null, i32 0, i32 1000, i32* %7)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @CURLM_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @stderr, align 4
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  br label %48

33:                                               ; preds = %23
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 @WAITMS(i32 100)
  br label %43

43:                                               ; preds = %41, %36
  br label %45

44:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @curl_multi_perform(i32* %46, i32* %4)
  br label %20

48:                                               ; preds = %29, %20
  %49 = load i32*, i32** %3, align 8
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @curl_multi_remove_handle(i32* %49, i32* %50)
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @curl_easy_cleanup(i32* %52)
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @curl_multi_cleanup(i32* %54)
  %56 = call i32 (...) @curl_global_cleanup()
  ret i32 0
}

declare dso_local i32 @curl_global_init(i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i8*) #1

declare dso_local i32* @curl_multi_init(...) #1

declare dso_local i32 @curl_multi_add_handle(i32*, i32*) #1

declare dso_local i32 @curl_multi_perform(i32*, i32*) #1

declare dso_local i64 @curl_multi_wait(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i32 @WAITMS(i32) #1

declare dso_local i32 @curl_multi_remove_handle(i32*, i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_multi_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
