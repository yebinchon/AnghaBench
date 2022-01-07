; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_hostip.c_Curl_hostcache_prune.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_hostip.c_Curl_hostcache_prune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@CURL_LOCK_DATA_DNS = common dso_local global i32 0, align 4
@CURL_LOCK_ACCESS_SINGLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Curl_hostcache_prune(%struct.Curl_easy* %0) #0 {
  %2 = alloca %struct.Curl_easy*, align 8
  %3 = alloca i32, align 4
  store %struct.Curl_easy* %0, %struct.Curl_easy** %2, align 8
  %4 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %5 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %11 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9, %1
  br label %46

16:                                               ; preds = %9
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %18 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %23 = load i32, i32* @CURL_LOCK_DATA_DNS, align 4
  %24 = load i32, i32* @CURL_LOCK_ACCESS_SINGLE, align 4
  %25 = call i32 @Curl_share_lock(%struct.Curl_easy* %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = call i32 @time(i32* %3)
  %28 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %29 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %33 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @hostcache_prune(i32 %31, i32 %35, i32 %36)
  %38 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %39 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %26
  %43 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %44 = load i32, i32* @CURL_LOCK_DATA_DNS, align 4
  %45 = call i32 @Curl_share_unlock(%struct.Curl_easy* %43, i32 %44)
  br label %46

46:                                               ; preds = %15, %42, %26
  ret void
}

declare dso_local i32 @Curl_share_lock(%struct.Curl_easy*, i32, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @hostcache_prune(i32, i32, i32) #1

declare dso_local i32 @Curl_share_unlock(%struct.Curl_easy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
