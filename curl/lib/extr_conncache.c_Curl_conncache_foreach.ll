; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_conncache.c_Curl_conncache_foreach.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_conncache.c_Curl_conncache_foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i32 }
%struct.conncache = type { i32 }
%struct.connectdata = type opaque
%struct.curl_hash_iterator = type { i32 }
%struct.curl_llist_element = type { %struct.connectdata*, %struct.curl_llist_element* }
%struct.curl_hash_element = type { %struct.connectbundle* }
%struct.connectbundle = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.curl_llist_element* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_conncache_foreach(%struct.Curl_easy* %0, %struct.conncache* %1, i8* %2, i32 (%struct.connectdata*, i8*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca %struct.conncache*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32 (%struct.connectdata*, i8*)*, align 8
  %10 = alloca %struct.curl_hash_iterator, align 4
  %11 = alloca %struct.curl_llist_element*, align 8
  %12 = alloca %struct.curl_hash_element*, align 8
  %13 = alloca %struct.connectbundle*, align 8
  %14 = alloca %struct.connectdata*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %6, align 8
  store %struct.conncache* %1, %struct.conncache** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 (%struct.connectdata*, i8*)* %3, i32 (%struct.connectdata*, i8*)** %9, align 8
  %15 = load %struct.conncache*, %struct.conncache** %7, align 8
  %16 = icmp ne %struct.conncache* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %5, align 4
  br label %63

19:                                               ; preds = %4
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %21 = call i32 @CONN_LOCK(%struct.Curl_easy* %20)
  %22 = load %struct.conncache*, %struct.conncache** %7, align 8
  %23 = getelementptr inbounds %struct.conncache, %struct.conncache* %22, i32 0, i32 0
  %24 = call i32 @Curl_hash_start_iterate(i32* %23, %struct.curl_hash_iterator* %10)
  %25 = call %struct.curl_hash_element* @Curl_hash_next_element(%struct.curl_hash_iterator* %10)
  store %struct.curl_hash_element* %25, %struct.curl_hash_element** %12, align 8
  br label %26

26:                                               ; preds = %58, %19
  %27 = load %struct.curl_hash_element*, %struct.curl_hash_element** %12, align 8
  %28 = icmp ne %struct.curl_hash_element* %27, null
  br i1 %28, label %29, label %59

29:                                               ; preds = %26
  %30 = load %struct.curl_hash_element*, %struct.curl_hash_element** %12, align 8
  %31 = getelementptr inbounds %struct.curl_hash_element, %struct.curl_hash_element* %30, i32 0, i32 0
  %32 = load %struct.connectbundle*, %struct.connectbundle** %31, align 8
  store %struct.connectbundle* %32, %struct.connectbundle** %13, align 8
  %33 = call %struct.curl_hash_element* @Curl_hash_next_element(%struct.curl_hash_iterator* %10)
  store %struct.curl_hash_element* %33, %struct.curl_hash_element** %12, align 8
  %34 = load %struct.connectbundle*, %struct.connectbundle** %13, align 8
  %35 = getelementptr inbounds %struct.connectbundle, %struct.connectbundle* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.curl_llist_element*, %struct.curl_llist_element** %36, align 8
  store %struct.curl_llist_element* %37, %struct.curl_llist_element** %11, align 8
  br label %38

38:                                               ; preds = %57, %29
  %39 = load %struct.curl_llist_element*, %struct.curl_llist_element** %11, align 8
  %40 = icmp ne %struct.curl_llist_element* %39, null
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = load %struct.curl_llist_element*, %struct.curl_llist_element** %11, align 8
  %43 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %42, i32 0, i32 0
  %44 = load %struct.connectdata*, %struct.connectdata** %43, align 8
  store %struct.connectdata* %44, %struct.connectdata** %14, align 8
  %45 = load %struct.curl_llist_element*, %struct.curl_llist_element** %11, align 8
  %46 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %45, i32 0, i32 1
  %47 = load %struct.curl_llist_element*, %struct.curl_llist_element** %46, align 8
  store %struct.curl_llist_element* %47, %struct.curl_llist_element** %11, align 8
  %48 = load i32 (%struct.connectdata*, i8*)*, i32 (%struct.connectdata*, i8*)** %9, align 8
  %49 = load %struct.connectdata*, %struct.connectdata** %14, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 %48(%struct.connectdata* %49, i8* %50)
  %52 = icmp eq i32 1, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %41
  %54 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %55 = call i32 @CONN_UNLOCK(%struct.Curl_easy* %54)
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %5, align 4
  br label %63

57:                                               ; preds = %41
  br label %38

58:                                               ; preds = %38
  br label %26

59:                                               ; preds = %26
  %60 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %61 = call i32 @CONN_UNLOCK(%struct.Curl_easy* %60)
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %53, %17
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @CONN_LOCK(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_hash_start_iterate(i32*, %struct.curl_hash_iterator*) #1

declare dso_local %struct.curl_hash_element* @Curl_hash_next_element(%struct.curl_hash_iterator*) #1

declare dso_local i32 @CONN_UNLOCK(%struct.Curl_easy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
