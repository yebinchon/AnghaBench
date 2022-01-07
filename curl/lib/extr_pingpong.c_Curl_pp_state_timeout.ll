; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_pingpong.c_Curl_pp_state_timeout.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_pingpong.c_Curl_pp_state_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pingpong = type { i64, i32, %struct.connectdata* }
%struct.connectdata = type { i32, %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_pp_state_timeout(%struct.pingpong* %0, i32 %1) #0 {
  %3 = alloca %struct.pingpong*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pingpong* %0, %struct.pingpong** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.pingpong*, %struct.pingpong** %3, align 8
  %11 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %10, i32 0, i32 2
  %12 = load %struct.connectdata*, %struct.connectdata** %11, align 8
  store %struct.connectdata* %12, %struct.connectdata** %5, align 8
  %13 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %14 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %13, i32 0, i32 1
  %15 = load %struct.Curl_easy*, %struct.Curl_easy** %14, align 8
  store %struct.Curl_easy* %15, %struct.Curl_easy** %6, align 8
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %17 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %23 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  br label %30

26:                                               ; preds = %2
  %27 = load %struct.pingpong*, %struct.pingpong** %3, align 8
  %28 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  br label %30

30:                                               ; preds = %26, %21
  %31 = phi i64 [ %25, %21 ], [ %29, %26 ]
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 (...) @Curl_now()
  %34 = load %struct.pingpong*, %struct.pingpong** %3, align 8
  %35 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @Curl_timediff(i32 %33, i32 %36)
  %38 = sub nsw i64 %32, %37
  store i64 %38, i64* %7, align 8
  %39 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %40 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %30
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %44
  %48 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %49 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (...) @Curl_now()
  %53 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %54 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @Curl_timediff(i32 %52, i32 %55)
  %57 = sub nsw i64 %51, %56
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i64 @CURLMIN(i64 %58, i64 %59)
  store i64 %60, i64* %7, align 8
  br label %61

61:                                               ; preds = %47, %44, %30
  %62 = load i64, i64* %7, align 8
  ret i64 %62
}

declare dso_local i64 @Curl_timediff(i32, i32) #1

declare dso_local i32 @Curl_now(...) #1

declare dso_local i64 @CURLMIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
