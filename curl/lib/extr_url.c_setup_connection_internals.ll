; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_setup_connection_internals.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_setup_connection_internals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32, %struct.Curl_handler* }
%struct.Curl_handler = type { i32, {}* }

@CURLE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*)* @setup_connection_internals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @setup_connection_internals(%struct.connectdata* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca %struct.Curl_handler*, align 8
  %5 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %6 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %7 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %6, i32 0, i32 1
  %8 = load %struct.Curl_handler*, %struct.Curl_handler** %7, align 8
  store %struct.Curl_handler* %8, %struct.Curl_handler** %4, align 8
  %9 = load %struct.Curl_handler*, %struct.Curl_handler** %4, align 8
  %10 = getelementptr inbounds %struct.Curl_handler, %struct.Curl_handler* %9, i32 0, i32 1
  %11 = bitcast {}** %10 to i64 (%struct.connectdata*)**
  %12 = load i64 (%struct.connectdata*)*, i64 (%struct.connectdata*)** %11, align 8
  %13 = icmp ne i64 (%struct.connectdata*)* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load %struct.Curl_handler*, %struct.Curl_handler** %4, align 8
  %16 = getelementptr inbounds %struct.Curl_handler, %struct.Curl_handler* %15, i32 0, i32 1
  %17 = bitcast {}** %16 to i64 (%struct.connectdata*)**
  %18 = load i64 (%struct.connectdata*)*, i64 (%struct.connectdata*)** %17, align 8
  %19 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %20 = call i64 %18(%struct.connectdata* %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i64, i64* %5, align 8
  store i64 %24, i64* %2, align 8
  br label %42

25:                                               ; preds = %14
  %26 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %27 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %26, i32 0, i32 1
  %28 = load %struct.Curl_handler*, %struct.Curl_handler** %27, align 8
  store %struct.Curl_handler* %28, %struct.Curl_handler** %4, align 8
  br label %29

29:                                               ; preds = %25, %1
  %30 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %31 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.Curl_handler*, %struct.Curl_handler** %4, align 8
  %36 = getelementptr inbounds %struct.Curl_handler, %struct.Curl_handler* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %39 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %34, %29
  %41 = load i64, i64* @CURLE_OK, align 8
  store i64 %41, i64* %2, align 8
  br label %42

42:                                               ; preds = %40, %23
  %43 = load i64, i64* %2, align 8
  ret i64 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
