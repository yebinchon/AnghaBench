; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_multi_timeout.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_multi_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curltime = type { i32, i32 }
%struct.Curl_multi = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@multi_timeout.tv_zero = internal global %struct.curltime zeroinitializer, align 4
@CURLM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_multi*, i64*)* @multi_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multi_timeout(%struct.Curl_multi* %0, i64* %1) #0 {
  %3 = alloca %struct.Curl_multi*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.curltime, align 4
  %6 = alloca i64, align 8
  store %struct.Curl_multi* %0, %struct.Curl_multi** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load %struct.Curl_multi*, %struct.Curl_multi** %3, align 8
  %8 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %50

11:                                               ; preds = %2
  %12 = call i64 (...) @Curl_now()
  %13 = bitcast %struct.curltime* %5 to i64*
  store i64 %12, i64* %13, align 4
  %14 = load %struct.Curl_multi*, %struct.Curl_multi** %3, align 8
  %15 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i64, i64* bitcast (%struct.curltime* @multi_timeout.tv_zero to i64*), align 4
  %18 = call %struct.TYPE_3__* @Curl_splay(i64 %17, %struct.TYPE_3__* %16)
  %19 = load %struct.Curl_multi*, %struct.Curl_multi** %3, align 8
  %20 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %19, i32 0, i32 0
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %20, align 8
  %21 = load %struct.Curl_multi*, %struct.Curl_multi** %3, align 8
  %22 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = bitcast %struct.curltime* %5 to i64*
  %27 = load i64, i64* %26, align 4
  %28 = call i64 @Curl_splaycomparekeys(i32 %25, i64 %27)
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %11
  %31 = load %struct.Curl_multi*, %struct.Curl_multi** %3, align 8
  %32 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = bitcast %struct.curltime* %5 to i64*
  %37 = load i64, i64* %36, align 4
  %38 = call i64 @Curl_timediff(i32 %35, i64 %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i64*, i64** %4, align 8
  store i64 1, i64* %42, align 8
  br label %46

43:                                               ; preds = %30
  %44 = load i64, i64* %6, align 8
  %45 = load i64*, i64** %4, align 8
  store i64 %44, i64* %45, align 8
  br label %46

46:                                               ; preds = %43, %41
  br label %49

47:                                               ; preds = %11
  %48 = load i64*, i64** %4, align 8
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %47, %46
  br label %52

50:                                               ; preds = %2
  %51 = load i64*, i64** %4, align 8
  store i64 -1, i64* %51, align 8
  br label %52

52:                                               ; preds = %50, %49
  %53 = load i32, i32* @CURLM_OK, align 4
  ret i32 %53
}

declare dso_local i64 @Curl_now(...) #1

declare dso_local %struct.TYPE_3__* @Curl_splay(i64, %struct.TYPE_3__*) #1

declare dso_local i64 @Curl_splaycomparekeys(i32, i64) #1

declare dso_local i64 @Curl_timediff(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
