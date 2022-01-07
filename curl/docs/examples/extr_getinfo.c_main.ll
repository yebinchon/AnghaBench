; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_getinfo.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_getinfo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLOPT_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"https://www.example.com/\00", align 1
@CURLE_OK = common dso_local global i32 0, align 4
@CURLINFO_CONTENT_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"We received Content-Type: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %5 = call i32* (...) @curl_easy_init()
  store i32* %5, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %34

8:                                                ; preds = %0
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @CURLOPT_URL, align 4
  %11 = call i32 @curl_easy_setopt(i32* %9, i32 %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @curl_easy_perform(i32* %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @CURLE_OK, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %8
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @CURLINFO_CONTENT_TYPE, align 4
  %20 = call i32 @curl_easy_getinfo(i32* %18, i32 %19, i8** %4)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @CURLE_OK, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i8*, i8** %4, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %27, %24, %17
  br label %31

31:                                               ; preds = %30, %8
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @curl_easy_cleanup(i32* %32)
  br label %34

34:                                               ; preds = %31, %0
  ret i32 0
}

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i8*) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_easy_getinfo(i32*, i32, i8**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
