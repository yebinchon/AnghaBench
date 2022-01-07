; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_conncache.c_Curl_conncache_extract_oldest.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_conncache.c_Curl_conncache_extract_oldest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy*, i32 }
%struct.Curl_easy = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.conncache* }
%struct.conncache = type { i32, i32 }
%struct.curl_hash_iterator = type { i32 }
%struct.curl_llist_element = type { %struct.curl_llist_element*, %struct.connectdata* }
%struct.curl_hash_element = type { %struct.connectbundle* }
%struct.connectbundle = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.curl_llist_element* }
%struct.curltime = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"The cache now contains %zu members\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.connectdata* @Curl_conncache_extract_oldest(%struct.Curl_easy* %0) #0 {
  %2 = alloca %struct.Curl_easy*, align 8
  %3 = alloca %struct.conncache*, align 8
  %4 = alloca %struct.curl_hash_iterator, align 4
  %5 = alloca %struct.curl_llist_element*, align 8
  %6 = alloca %struct.curl_hash_element*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.curltime, align 4
  %10 = alloca %struct.connectdata*, align 8
  %11 = alloca %struct.connectbundle*, align 8
  %12 = alloca %struct.connectbundle*, align 8
  %13 = alloca %struct.curltime, align 4
  %14 = alloca %struct.connectdata*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %2, align 8
  %15 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %16 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.conncache*, %struct.conncache** %17, align 8
  store %struct.conncache* %18, %struct.conncache** %3, align 8
  store i32 -1, i32* %7, align 4
  store %struct.connectdata* null, %struct.connectdata** %10, align 8
  store %struct.connectbundle* null, %struct.connectbundle** %12, align 8
  %19 = call i32 (...) @Curl_now()
  %20 = getelementptr inbounds %struct.curltime, %struct.curltime* %13, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = bitcast %struct.curltime* %9 to i8*
  %22 = bitcast %struct.curltime* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %24 = call i32 @CONN_LOCK(%struct.Curl_easy* %23)
  %25 = load %struct.conncache*, %struct.conncache** %3, align 8
  %26 = getelementptr inbounds %struct.conncache, %struct.conncache* %25, i32 0, i32 1
  %27 = call i32 @Curl_hash_start_iterate(i32* %26, %struct.curl_hash_iterator* %4)
  %28 = call %struct.curl_hash_element* @Curl_hash_next_element(%struct.curl_hash_iterator* %4)
  store %struct.curl_hash_element* %28, %struct.curl_hash_element** %6, align 8
  br label %29

29:                                               ; preds = %74, %1
  %30 = load %struct.curl_hash_element*, %struct.curl_hash_element** %6, align 8
  %31 = icmp ne %struct.curl_hash_element* %30, null
  br i1 %31, label %32, label %76

32:                                               ; preds = %29
  %33 = load %struct.curl_hash_element*, %struct.curl_hash_element** %6, align 8
  %34 = getelementptr inbounds %struct.curl_hash_element, %struct.curl_hash_element* %33, i32 0, i32 0
  %35 = load %struct.connectbundle*, %struct.connectbundle** %34, align 8
  store %struct.connectbundle* %35, %struct.connectbundle** %11, align 8
  %36 = load %struct.connectbundle*, %struct.connectbundle** %11, align 8
  %37 = getelementptr inbounds %struct.connectbundle, %struct.connectbundle* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.curl_llist_element*, %struct.curl_llist_element** %38, align 8
  store %struct.curl_llist_element* %39, %struct.curl_llist_element** %5, align 8
  br label %40

40:                                               ; preds = %70, %32
  %41 = load %struct.curl_llist_element*, %struct.curl_llist_element** %5, align 8
  %42 = icmp ne %struct.curl_llist_element* %41, null
  br i1 %42, label %43, label %74

43:                                               ; preds = %40
  %44 = load %struct.curl_llist_element*, %struct.curl_llist_element** %5, align 8
  %45 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %44, i32 0, i32 1
  %46 = load %struct.connectdata*, %struct.connectdata** %45, align 8
  store %struct.connectdata* %46, %struct.connectdata** %14, align 8
  %47 = load %struct.connectdata*, %struct.connectdata** %14, align 8
  %48 = call i32 @CONN_INUSE(%struct.connectdata* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %70, label %50

50:                                               ; preds = %43
  %51 = load %struct.connectdata*, %struct.connectdata** %14, align 8
  %52 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %51, i32 0, i32 0
  %53 = load %struct.Curl_easy*, %struct.Curl_easy** %52, align 8
  %54 = icmp ne %struct.Curl_easy* %53, null
  br i1 %54, label %70, label %55

55:                                               ; preds = %50
  %56 = load %struct.connectdata*, %struct.connectdata** %14, align 8
  %57 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.curltime, %struct.curltime* %9, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @Curl_timediff(i32 %60, i32 %58)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %7, align 4
  %67 = load %struct.connectdata*, %struct.connectdata** %14, align 8
  store %struct.connectdata* %67, %struct.connectdata** %10, align 8
  %68 = load %struct.connectbundle*, %struct.connectbundle** %11, align 8
  store %struct.connectbundle* %68, %struct.connectbundle** %12, align 8
  br label %69

69:                                               ; preds = %65, %55
  br label %70

70:                                               ; preds = %69, %50, %43
  %71 = load %struct.curl_llist_element*, %struct.curl_llist_element** %5, align 8
  %72 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %71, i32 0, i32 0
  %73 = load %struct.curl_llist_element*, %struct.curl_llist_element** %72, align 8
  store %struct.curl_llist_element* %73, %struct.curl_llist_element** %5, align 8
  br label %40

74:                                               ; preds = %40
  %75 = call %struct.curl_hash_element* @Curl_hash_next_element(%struct.curl_hash_iterator* %4)
  store %struct.curl_hash_element* %75, %struct.curl_hash_element** %6, align 8
  br label %29

76:                                               ; preds = %29
  %77 = load %struct.connectdata*, %struct.connectdata** %10, align 8
  %78 = icmp ne %struct.connectdata* %77, null
  br i1 %78, label %79, label %96

79:                                               ; preds = %76
  %80 = load %struct.connectbundle*, %struct.connectbundle** %12, align 8
  %81 = load %struct.connectdata*, %struct.connectdata** %10, align 8
  %82 = call i32 @bundle_remove_conn(%struct.connectbundle* %80, %struct.connectdata* %81)
  %83 = load %struct.conncache*, %struct.conncache** %3, align 8
  %84 = getelementptr inbounds %struct.conncache, %struct.conncache* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %88 = load %struct.conncache*, %struct.conncache** %3, align 8
  %89 = getelementptr inbounds %struct.conncache, %struct.conncache* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @infof(%struct.Curl_easy* %87, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = call i32 @DEBUGF(i32 %91)
  %93 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %94 = load %struct.connectdata*, %struct.connectdata** %10, align 8
  %95 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %94, i32 0, i32 0
  store %struct.Curl_easy* %93, %struct.Curl_easy** %95, align 8
  br label %96

96:                                               ; preds = %79, %76
  %97 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %98 = call i32 @CONN_UNLOCK(%struct.Curl_easy* %97)
  %99 = load %struct.connectdata*, %struct.connectdata** %10, align 8
  ret %struct.connectdata* %99
}

declare dso_local i32 @Curl_now(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @CONN_LOCK(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_hash_start_iterate(i32*, %struct.curl_hash_iterator*) #1

declare dso_local %struct.curl_hash_element* @Curl_hash_next_element(%struct.curl_hash_iterator*) #1

declare dso_local i32 @CONN_INUSE(%struct.connectdata*) #1

declare dso_local i32 @Curl_timediff(i32, i32) #1

declare dso_local i32 @bundle_remove_conn(%struct.connectbundle*, %struct.connectdata*) #1

declare dso_local i32 @DEBUGF(i32) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i32) #1

declare dso_local i32 @CONN_UNLOCK(%struct.Curl_easy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
