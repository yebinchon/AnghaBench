; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_hostip.c_Curl_resolv_unlock.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_hostip.c_Curl_resolv_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i64 }
%struct.Curl_dns_entry = type { i32 }

@CURL_LOCK_DATA_DNS = common dso_local global i32 0, align 4
@CURL_LOCK_ACCESS_SINGLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Curl_resolv_unlock(%struct.Curl_easy* %0, %struct.Curl_dns_entry* %1) #0 {
  %3 = alloca %struct.Curl_easy*, align 8
  %4 = alloca %struct.Curl_dns_entry*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %3, align 8
  store %struct.Curl_dns_entry* %1, %struct.Curl_dns_entry** %4, align 8
  %5 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %6 = icmp ne %struct.Curl_easy* %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %9 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %14 = load i32, i32* @CURL_LOCK_DATA_DNS, align 4
  %15 = load i32, i32* @CURL_LOCK_ACCESS_SINGLE, align 4
  %16 = call i32 @Curl_share_lock(%struct.Curl_easy* %13, i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %12, %7, %2
  %18 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %4, align 8
  %19 = call i32 @freednsentry(%struct.Curl_dns_entry* %18)
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %21 = icmp ne %struct.Curl_easy* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %24 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %29 = load i32, i32* @CURL_LOCK_DATA_DNS, align 4
  %30 = call i32 @Curl_share_unlock(%struct.Curl_easy* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %22, %17
  ret void
}

declare dso_local i32 @Curl_share_lock(%struct.Curl_easy*, i32, i32) #1

declare dso_local i32 @freednsentry(%struct.Curl_dns_entry*) #1

declare dso_local i32 @Curl_share_unlock(%struct.Curl_easy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
