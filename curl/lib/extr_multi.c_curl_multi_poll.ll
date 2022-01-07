; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_curl_multi_poll.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_curl_multi_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_multi = type { i32 }
%struct.curl_waitfd = type { i32 }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @curl_multi_poll(%struct.Curl_multi* %0, %struct.curl_waitfd* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.Curl_multi*, align 8
  %7 = alloca %struct.curl_waitfd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.Curl_multi* %0, %struct.Curl_multi** %6, align 8
  store %struct.curl_waitfd* %1, %struct.curl_waitfd** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %11 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %12 = load %struct.curl_waitfd*, %struct.curl_waitfd** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32*, i32** %10, align 8
  %16 = load i32, i32* @TRUE, align 4
  %17 = call i32 @Curl_multi_wait(%struct.Curl_multi* %11, %struct.curl_waitfd* %12, i32 %13, i32 %14, i32* %15, i32 %16)
  ret i32 %17
}

declare dso_local i32 @Curl_multi_wait(%struct.Curl_multi*, %struct.curl_waitfd*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
