; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_progress.c_Curl_pgrsStartNow.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_progress.c_Curl_pgrsStartNow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i64, %struct.TYPE_5__, %struct.TYPE_4__, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@PGRS_HIDE = common dso_local global i32 0, align 4
@PGRS_HEADERS_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Curl_pgrsStartNow(%struct.Curl_easy* %0) #0 {
  %2 = alloca %struct.Curl_easy*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %2, align 8
  %3 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %4 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 7
  store i64 0, i64* %5, align 8
  %6 = call i32 (...) @Curl_now()
  %7 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %8 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store i32 %6, i32* %9, align 8
  %10 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %11 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %14 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %18 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %22 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %26 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %30 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %33 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @PGRS_HIDE, align 4
  %36 = load i32, i32* @PGRS_HEADERS_OUT, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %39 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %37
  store i32 %42, i32* %40, align 4
  %43 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %44 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %45 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @Curl_ratelimit(%struct.Curl_easy* %43, i32 %47)
  ret void
}

declare dso_local i32 @Curl_now(...) #1

declare dso_local i32 @Curl_ratelimit(%struct.Curl_easy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
