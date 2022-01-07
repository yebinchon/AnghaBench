; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_conncache.c_conncache_find_first_connection.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_conncache.c_conncache_find_first_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32 }
%struct.conncache = type { i32 }
%struct.curl_hash_iterator = type { i32 }
%struct.curl_hash_element = type { %struct.connectbundle* }
%struct.connectbundle = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.curl_llist_element* }
%struct.curl_llist_element = type { %struct.connectdata* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.connectdata* (%struct.conncache*)* @conncache_find_first_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.connectdata* @conncache_find_first_connection(%struct.conncache* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  %3 = alloca %struct.conncache*, align 8
  %4 = alloca %struct.curl_hash_iterator, align 4
  %5 = alloca %struct.curl_hash_element*, align 8
  %6 = alloca %struct.connectbundle*, align 8
  %7 = alloca %struct.curl_llist_element*, align 8
  store %struct.conncache* %0, %struct.conncache** %3, align 8
  %8 = load %struct.conncache*, %struct.conncache** %3, align 8
  %9 = getelementptr inbounds %struct.conncache, %struct.conncache* %8, i32 0, i32 0
  %10 = call i32 @Curl_hash_start_iterate(i32* %9, %struct.curl_hash_iterator* %4)
  %11 = call %struct.curl_hash_element* @Curl_hash_next_element(%struct.curl_hash_iterator* %4)
  store %struct.curl_hash_element* %11, %struct.curl_hash_element** %5, align 8
  br label %12

12:                                               ; preds = %29, %1
  %13 = load %struct.curl_hash_element*, %struct.curl_hash_element** %5, align 8
  %14 = icmp ne %struct.curl_hash_element* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  %16 = load %struct.curl_hash_element*, %struct.curl_hash_element** %5, align 8
  %17 = getelementptr inbounds %struct.curl_hash_element, %struct.curl_hash_element* %16, i32 0, i32 0
  %18 = load %struct.connectbundle*, %struct.connectbundle** %17, align 8
  store %struct.connectbundle* %18, %struct.connectbundle** %6, align 8
  %19 = load %struct.connectbundle*, %struct.connectbundle** %6, align 8
  %20 = getelementptr inbounds %struct.connectbundle, %struct.connectbundle* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.curl_llist_element*, %struct.curl_llist_element** %21, align 8
  store %struct.curl_llist_element* %22, %struct.curl_llist_element** %7, align 8
  %23 = load %struct.curl_llist_element*, %struct.curl_llist_element** %7, align 8
  %24 = icmp ne %struct.curl_llist_element* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load %struct.curl_llist_element*, %struct.curl_llist_element** %7, align 8
  %27 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %26, i32 0, i32 0
  %28 = load %struct.connectdata*, %struct.connectdata** %27, align 8
  store %struct.connectdata* %28, %struct.connectdata** %2, align 8
  br label %32

29:                                               ; preds = %15
  %30 = call %struct.curl_hash_element* @Curl_hash_next_element(%struct.curl_hash_iterator* %4)
  store %struct.curl_hash_element* %30, %struct.curl_hash_element** %5, align 8
  br label %12

31:                                               ; preds = %12
  store %struct.connectdata* null, %struct.connectdata** %2, align 8
  br label %32

32:                                               ; preds = %31, %25
  %33 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  ret %struct.connectdata* %33
}

declare dso_local i32 @Curl_hash_start_iterate(i32*, %struct.curl_hash_iterator*) #1

declare dso_local %struct.curl_hash_element* @Curl_hash_next_element(%struct.curl_hash_iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
