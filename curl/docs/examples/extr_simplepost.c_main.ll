; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_simplepost.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_simplepost.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.postthis = internal global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [17 x i8] c"moo mooo moo moo\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"https://example.com\00", align 1
@CURLOPT_POSTFIELDS = common dso_local global i32 0, align 4
@CURLOPT_POSTFIELDSIZE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"curl_easy_perform() failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = call i32* (...) @curl_easy_init()
  store i32* %4, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %33

7:                                                ; preds = %0
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @CURLOPT_URL, align 4
  %10 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %8, i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @CURLOPT_POSTFIELDS, align 4
  %13 = load i8*, i8** @main.postthis, align 8
  %14 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %11, i32 %12, i8* %13)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @CURLOPT_POSTFIELDSIZE, align 4
  %17 = load i8*, i8** @main.postthis, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %15, i32 %16, i64 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @curl_easy_perform(i32* %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @CURLE_OK, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %7
  %26 = load i32, i32* @stderr, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i8* @curl_easy_strerror(i32 %27)
  %29 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %25, %7
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @curl_easy_cleanup(i32* %31)
  br label %33

33:                                               ; preds = %30, %0
  ret i32 0
}

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @curl_easy_strerror(i32) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
