; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_resolve.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_resolve.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type opaque

@CURLE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"example.com:443:127.0.0.1\00", align 1
@CURLOPT_RESOLVE = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"https://example.com\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.curl_slist*, align 8
  store i32 0, i32* %1, align 4
  %5 = load i64, i64* @CURLE_OK, align 8
  store i64 %5, i64* %3, align 8
  %6 = call i8* @curl_slist_append(i32* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %7 = bitcast i8* %6 to %struct.curl_slist*
  store %struct.curl_slist* %7, %struct.curl_slist** %4, align 8
  %8 = call i32* (...) @curl_easy_init()
  store i32* %8, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %0
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @CURLOPT_RESOLVE, align 4
  %14 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %15 = bitcast %struct.curl_slist* %14 to i8*
  %16 = call i32 @curl_easy_setopt(i32* %12, i32 %13, i8* %15)
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @CURLOPT_URL, align 4
  %19 = call i32 @curl_easy_setopt(i32* %17, i32 %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32*, i32** %2, align 8
  %21 = call i64 @curl_easy_perform(i32* %20)
  store i64 %21, i64* %3, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @curl_easy_cleanup(i32* %22)
  br label %24

24:                                               ; preds = %11, %0
  %25 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %26 = bitcast %struct.curl_slist* %25 to i8*
  %27 = call i32 @curl_slist_free_all(i8* %26)
  %28 = load i64, i64* %3, align 8
  %29 = trunc i64 %28 to i32
  ret i32 %29
}

declare dso_local i8* @curl_slist_append(i32*, i8*) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i8*) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_slist_free_all(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
