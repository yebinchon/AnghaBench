; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_easy.c_curl_easy_recv.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_easy.c_curl_easy_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i32 }
%struct.connectdata = type { i32 }

@CURLE_RECURSIVE_API_CALL = common dso_local global i64 0, align 8
@CURLE_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @curl_easy_recv(%struct.Curl_easy* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.connectdata*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %15 = call i64 @Curl_is_in_callback(%struct.Curl_easy* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i64, i64* @CURLE_RECURSIVE_API_CALL, align 8
  store i64 %18, i64* %5, align 8
  br label %41

19:                                               ; preds = %4
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %21 = call i64 @easy_connection(%struct.Curl_easy* %20, i32* %10, %struct.connectdata** %13)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i64, i64* %11, align 8
  store i64 %25, i64* %5, align 8
  br label %41

26:                                               ; preds = %19
  %27 = load i64*, i64** %9, align 8
  store i64 0, i64* %27, align 8
  %28 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @Curl_read(%struct.connectdata* %28, i32 %29, i8* %30, i64 %31, i64* %12)
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i64, i64* %11, align 8
  store i64 %36, i64* %5, align 8
  br label %41

37:                                               ; preds = %26
  %38 = load i64, i64* %12, align 8
  %39 = load i64*, i64** %9, align 8
  store i64 %38, i64* %39, align 8
  %40 = load i64, i64* @CURLE_OK, align 8
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %37, %35, %24, %17
  %42 = load i64, i64* %5, align 8
  ret i64 %42
}

declare dso_local i64 @Curl_is_in_callback(%struct.Curl_easy*) #1

declare dso_local i64 @easy_connection(%struct.Curl_easy*, i32*, %struct.connectdata**) #1

declare dso_local i64 @Curl_read(%struct.connectdata*, i32, i8*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
