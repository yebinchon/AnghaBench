; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_threaded-ssl.c_pull_one_url.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_threaded-ssl.c_pull_one_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_SSL_VERIFYPEER = common dso_local global i32 0, align 4
@CURLOPT_SSL_VERIFYHOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @pull_one_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pull_one_url(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i32* (...) @curl_easy_init()
  store i32* %4, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* @CURLOPT_URL, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = ptrtoint i8* %7 to i64
  %9 = call i32 @curl_easy_setopt(i32* %5, i32 %6, i64 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @CURLOPT_SSL_VERIFYPEER, align 4
  %12 = call i32 @curl_easy_setopt(i32* %10, i32 %11, i64 0)
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @CURLOPT_SSL_VERIFYHOST, align 4
  %15 = call i32 @curl_easy_setopt(i32* %13, i32 %14, i64 0)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @curl_easy_perform(i32* %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @curl_easy_cleanup(i32* %18)
  ret i8* null
}

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i64) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
