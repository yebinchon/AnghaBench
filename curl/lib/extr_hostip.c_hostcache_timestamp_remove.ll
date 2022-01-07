; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_hostip.c_hostcache_timestamp_remove.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_hostip.c_hostcache_timestamp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostcache_prune_data = type { i64, i64 }
%struct.Curl_dns_entry = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @hostcache_timestamp_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostcache_timestamp_remove(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hostcache_prune_data*, align 8
  %6 = alloca %struct.Curl_dns_entry*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.hostcache_prune_data*
  store %struct.hostcache_prune_data* %8, %struct.hostcache_prune_data** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.Curl_dns_entry*
  store %struct.Curl_dns_entry* %10, %struct.Curl_dns_entry** %6, align 8
  %11 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %6, align 8
  %12 = getelementptr inbounds %struct.Curl_dns_entry, %struct.Curl_dns_entry* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 0, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.hostcache_prune_data*, %struct.hostcache_prune_data** %5, align 8
  %17 = getelementptr inbounds %struct.hostcache_prune_data, %struct.hostcache_prune_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %6, align 8
  %20 = getelementptr inbounds %struct.Curl_dns_entry, %struct.Curl_dns_entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  %23 = load %struct.hostcache_prune_data*, %struct.hostcache_prune_data** %5, align 8
  %24 = getelementptr inbounds %struct.hostcache_prune_data, %struct.hostcache_prune_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  br label %27

27:                                               ; preds = %15, %2
  %28 = phi i1 [ false, %2 ], [ %26, %15 ]
  %29 = zext i1 %28 to i32
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
