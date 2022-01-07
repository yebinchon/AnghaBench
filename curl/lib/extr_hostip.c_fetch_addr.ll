; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_hostip.c_fetch_addr.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_hostip.c_fetch_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_dns_entry = type { i32 }
%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.hostcache_prune_data = type { i32, i32 }

@MAX_HOSTCACHE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Hostname in DNS cache was stale, zapped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Curl_dns_entry* (%struct.connectdata*, i8*, i32)* @fetch_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Curl_dns_entry* @fetch_addr(%struct.connectdata* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Curl_dns_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.Curl_easy*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.hostcache_prune_data, align 4
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.Curl_dns_entry* null, %struct.Curl_dns_entry** %7, align 8
  %13 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %14 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %13, i32 0, i32 0
  %15 = load %struct.Curl_easy*, %struct.Curl_easy** %14, align 8
  store %struct.Curl_easy* %15, %struct.Curl_easy** %9, align 8
  %16 = load i32, i32* @MAX_HOSTCACHE_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = trunc i64 %17 to i32
  %23 = call i32 @create_hostcache_id(i8* %20, i32 %21, i8* %19, i32 %22)
  %24 = call i64 @strlen(i8* %19)
  store i64 %24, i64* %8, align 8
  %25 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %26 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = add i64 %29, 1
  %31 = call %struct.Curl_dns_entry* @Curl_hash_pick(i32 %28, i8* %19, i64 %30)
  store %struct.Curl_dns_entry* %31, %struct.Curl_dns_entry** %7, align 8
  %32 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %7, align 8
  %33 = icmp ne %struct.Curl_dns_entry* %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %3
  %35 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %36 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = trunc i64 %17 to i32
  %43 = call i32 @create_hostcache_id(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %41, i8* %19, i32 %42)
  %44 = call i64 @strlen(i8* %19)
  store i64 %44, i64* %8, align 8
  %45 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %46 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %49, 1
  %51 = call %struct.Curl_dns_entry* @Curl_hash_pick(i32 %48, i8* %19, i64 %50)
  store %struct.Curl_dns_entry* %51, %struct.Curl_dns_entry** %7, align 8
  br label %52

52:                                               ; preds = %40, %34, %3
  %53 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %7, align 8
  %54 = icmp ne %struct.Curl_dns_entry* %53, null
  br i1 %54, label %55, label %83

55:                                               ; preds = %52
  %56 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %57 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, -1
  br i1 %60, label %61, label %83

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.hostcache_prune_data, %struct.hostcache_prune_data* %12, i32 0, i32 1
  %63 = call i32 @time(i32* %62)
  %64 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %65 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.hostcache_prune_data, %struct.hostcache_prune_data* %12, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %7, align 8
  %70 = call i64 @hostcache_timestamp_remove(%struct.hostcache_prune_data* %12, %struct.Curl_dns_entry* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %61
  %73 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %74 = call i32 @infof(%struct.Curl_easy* %73, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store %struct.Curl_dns_entry* null, %struct.Curl_dns_entry** %7, align 8
  %75 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %76 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %79, 1
  %81 = call i32 @Curl_hash_delete(i32 %78, i8* %19, i64 %80)
  br label %82

82:                                               ; preds = %72, %61
  br label %83

83:                                               ; preds = %82, %55, %52
  %84 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %7, align 8
  %85 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %85)
  ret %struct.Curl_dns_entry* %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @create_hostcache_id(i8*, i32, i8*, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local %struct.Curl_dns_entry* @Curl_hash_pick(i32, i8*, i64) #2

declare dso_local i32 @time(i32*) #2

declare dso_local i64 @hostcache_timestamp_remove(%struct.hostcache_prune_data*, %struct.Curl_dns_entry*) #2

declare dso_local i32 @infof(%struct.Curl_easy*, i8*) #2

declare dso_local i32 @Curl_hash_delete(i32, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
