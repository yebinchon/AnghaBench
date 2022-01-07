; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_conncache.c_conncache_remove_bundle.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_conncache.c_conncache_remove_bundle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conncache = type { i32 }
%struct.connectbundle = type { i32 }
%struct.curl_hash_iterator = type { i32 }
%struct.curl_hash_element = type { i32, i32, %struct.connectbundle* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.conncache*, %struct.connectbundle*)* @conncache_remove_bundle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conncache_remove_bundle(%struct.conncache* %0, %struct.connectbundle* %1) #0 {
  %3 = alloca %struct.conncache*, align 8
  %4 = alloca %struct.connectbundle*, align 8
  %5 = alloca %struct.curl_hash_iterator, align 4
  %6 = alloca %struct.curl_hash_element*, align 8
  store %struct.conncache* %0, %struct.conncache** %3, align 8
  store %struct.connectbundle* %1, %struct.connectbundle** %4, align 8
  %7 = load %struct.conncache*, %struct.conncache** %3, align 8
  %8 = icmp ne %struct.conncache* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %36

10:                                               ; preds = %2
  %11 = load %struct.conncache*, %struct.conncache** %3, align 8
  %12 = getelementptr inbounds %struct.conncache, %struct.conncache* %11, i32 0, i32 0
  %13 = call i32 @Curl_hash_start_iterate(i32* %12, %struct.curl_hash_iterator* %5)
  %14 = call %struct.curl_hash_element* @Curl_hash_next_element(%struct.curl_hash_iterator* %5)
  store %struct.curl_hash_element* %14, %struct.curl_hash_element** %6, align 8
  br label %15

15:                                               ; preds = %34, %10
  %16 = load %struct.curl_hash_element*, %struct.curl_hash_element** %6, align 8
  %17 = icmp ne %struct.curl_hash_element* %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %15
  %19 = load %struct.curl_hash_element*, %struct.curl_hash_element** %6, align 8
  %20 = getelementptr inbounds %struct.curl_hash_element, %struct.curl_hash_element* %19, i32 0, i32 2
  %21 = load %struct.connectbundle*, %struct.connectbundle** %20, align 8
  %22 = load %struct.connectbundle*, %struct.connectbundle** %4, align 8
  %23 = icmp eq %struct.connectbundle* %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load %struct.conncache*, %struct.conncache** %3, align 8
  %26 = getelementptr inbounds %struct.conncache, %struct.conncache* %25, i32 0, i32 0
  %27 = load %struct.curl_hash_element*, %struct.curl_hash_element** %6, align 8
  %28 = getelementptr inbounds %struct.curl_hash_element, %struct.curl_hash_element* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.curl_hash_element*, %struct.curl_hash_element** %6, align 8
  %31 = getelementptr inbounds %struct.curl_hash_element, %struct.curl_hash_element* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @Curl_hash_delete(i32* %26, i32 %29, i32 %32)
  br label %36

34:                                               ; preds = %18
  %35 = call %struct.curl_hash_element* @Curl_hash_next_element(%struct.curl_hash_iterator* %5)
  store %struct.curl_hash_element* %35, %struct.curl_hash_element** %6, align 8
  br label %15

36:                                               ; preds = %9, %24, %15
  ret void
}

declare dso_local i32 @Curl_hash_start_iterate(i32*, %struct.curl_hash_iterator*) #1

declare dso_local %struct.curl_hash_element* @Curl_hash_next_element(%struct.curl_hash_iterator*) #1

declare dso_local i32 @Curl_hash_delete(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
