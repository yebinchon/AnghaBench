; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_getinfo.c_getinfo_socket.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_getinfo.c_getinfo_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i32 }

@CURLE_UNKNOWN_OPTION = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_easy*, i32, i32*)* @getinfo_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getinfo_socket(%struct.Curl_easy* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %13 [
    i32 128, label %9
  ]

9:                                                ; preds = %3
  %10 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %11 = call i32 @Curl_getconnectinfo(%struct.Curl_easy* %10, i32* null)
  %12 = load i32*, i32** %7, align 8
  store i32 %11, i32* %12, align 4
  br label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @CURLE_UNKNOWN_OPTION, align 4
  store i32 %14, i32* %4, align 4
  br label %17

15:                                               ; preds = %9
  %16 = load i32, i32* @CURLE_OK, align 4
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = load i32, i32* %4, align 4
  ret i32 %18
}

declare dso_local i32 @Curl_getconnectinfo(%struct.Curl_easy*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
