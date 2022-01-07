; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_easy.c_curl_easy_upkeep.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_easy.c_curl_easy_upkeep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CURLE_BAD_FUNCTION_ARGUMENT = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @curl_easy_upkeep(%struct.Curl_easy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Curl_easy*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %3, align 8
  %4 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %5 = call i32 @GOOD_EASY_HANDLE(%struct.Curl_easy* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @CURLE_BAD_FUNCTION_ARGUMENT, align 4
  store i32 %8, i32* %2, align 4
  br label %23

9:                                                ; preds = %1
  %10 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %11 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %16 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %20 = call i32 @upkeep(i32* %18, %struct.Curl_easy* %19)
  store i32 %20, i32* %2, align 4
  br label %23

21:                                               ; preds = %9
  %22 = load i32, i32* @CURLE_OK, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %14, %7
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @GOOD_EASY_HANDLE(%struct.Curl_easy*) #1

declare dso_local i32 @upkeep(i32*, %struct.Curl_easy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
