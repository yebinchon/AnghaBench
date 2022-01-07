; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_hostip.c_Curl_fetch_addr.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_hostip.c_Curl_fetch_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_dns_entry = type { i32 }
%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { i64 }

@CURL_LOCK_DATA_DNS = common dso_local global i32 0, align 4
@CURL_LOCK_ACCESS_SINGLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Curl_dns_entry* @Curl_fetch_addr(%struct.connectdata* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Curl_easy*, align 8
  %8 = alloca %struct.Curl_dns_entry*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %10 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %9, i32 0, i32 0
  %11 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  store %struct.Curl_easy* %11, %struct.Curl_easy** %7, align 8
  store %struct.Curl_dns_entry* null, %struct.Curl_dns_entry** %8, align 8
  %12 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %13 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %18 = load i32, i32* @CURL_LOCK_DATA_DNS, align 4
  %19 = load i32, i32* @CURL_LOCK_ACCESS_SINGLE, align 4
  %20 = call i32 @Curl_share_lock(%struct.Curl_easy* %17, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %16, %3
  %22 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.Curl_dns_entry* @fetch_addr(%struct.connectdata* %22, i8* %23, i32 %24)
  store %struct.Curl_dns_entry* %25, %struct.Curl_dns_entry** %8, align 8
  %26 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %8, align 8
  %27 = icmp ne %struct.Curl_dns_entry* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %8, align 8
  %30 = getelementptr inbounds %struct.Curl_dns_entry, %struct.Curl_dns_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %28, %21
  %34 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %35 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %40 = load i32, i32* @CURL_LOCK_DATA_DNS, align 4
  %41 = call i32 @Curl_share_unlock(%struct.Curl_easy* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %33
  %43 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %8, align 8
  ret %struct.Curl_dns_entry* %43
}

declare dso_local i32 @Curl_share_lock(%struct.Curl_easy*, i32, i32) #1

declare dso_local %struct.Curl_dns_entry* @fetch_addr(%struct.connectdata*, i8*, i32) #1

declare dso_local i32 @Curl_share_unlock(%struct.Curl_easy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
