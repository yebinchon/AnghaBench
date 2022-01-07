; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_add_next_timeout.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_add_next_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_multi = type { i32 }
%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.curl_llist, %struct.curltime }
%struct.curl_llist = type { %struct.curl_llist_element* }
%struct.curl_llist_element = type { i64, %struct.curl_llist_element* }
%struct.curltime = type { i64, i64 }
%struct.time_node = type { i32 }

@CURLM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.Curl_multi*, %struct.Curl_easy*)* @add_next_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_next_timeout(i64 %0, i64 %1, %struct.Curl_multi* %2, %struct.Curl_easy* %3) #0 {
  %5 = alloca %struct.curltime, align 8
  %6 = alloca %struct.Curl_multi*, align 8
  %7 = alloca %struct.Curl_easy*, align 8
  %8 = alloca %struct.curltime*, align 8
  %9 = alloca %struct.curl_llist*, align 8
  %10 = alloca %struct.curl_llist_element*, align 8
  %11 = alloca %struct.time_node*, align 8
  %12 = alloca %struct.curl_llist_element*, align 8
  %13 = alloca i64, align 8
  %14 = bitcast %struct.curltime* %5 to { i64, i64 }*
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  store i64 %0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  store i64 %1, i64* %16, align 8
  store %struct.Curl_multi* %2, %struct.Curl_multi** %6, align 8
  store %struct.Curl_easy* %3, %struct.Curl_easy** %7, align 8
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %18 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store %struct.curltime* %19, %struct.curltime** %8, align 8
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %21 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store %struct.curl_llist* %22, %struct.curl_llist** %9, align 8
  store %struct.time_node* null, %struct.time_node** %11, align 8
  %23 = load %struct.curl_llist*, %struct.curl_llist** %9, align 8
  %24 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %23, i32 0, i32 0
  %25 = load %struct.curl_llist_element*, %struct.curl_llist_element** %24, align 8
  store %struct.curl_llist_element* %25, %struct.curl_llist_element** %10, align 8
  br label %26

26:                                               ; preds = %53, %4
  %27 = load %struct.curl_llist_element*, %struct.curl_llist_element** %10, align 8
  %28 = icmp ne %struct.curl_llist_element* %27, null
  br i1 %28, label %29, label %55

29:                                               ; preds = %26
  %30 = load %struct.curl_llist_element*, %struct.curl_llist_element** %10, align 8
  %31 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %30, i32 0, i32 1
  %32 = load %struct.curl_llist_element*, %struct.curl_llist_element** %31, align 8
  store %struct.curl_llist_element* %32, %struct.curl_llist_element** %12, align 8
  %33 = load %struct.curl_llist_element*, %struct.curl_llist_element** %10, align 8
  %34 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.time_node*
  store %struct.time_node* %36, %struct.time_node** %11, align 8
  %37 = load %struct.time_node*, %struct.time_node** %11, align 8
  %38 = getelementptr inbounds %struct.time_node, %struct.time_node* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = bitcast %struct.curltime* %5 to { i64, i64 }*
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @Curl_timediff(i32 %39, i64 %42, i64 %44)
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %13, align 8
  %47 = icmp sle i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %29
  %49 = load %struct.curl_llist*, %struct.curl_llist** %9, align 8
  %50 = load %struct.curl_llist_element*, %struct.curl_llist_element** %10, align 8
  %51 = call i32 @Curl_llist_remove(%struct.curl_llist* %49, %struct.curl_llist_element* %50, i32* null)
  br label %53

52:                                               ; preds = %29
  br label %55

53:                                               ; preds = %48
  %54 = load %struct.curl_llist_element*, %struct.curl_llist_element** %12, align 8
  store %struct.curl_llist_element* %54, %struct.curl_llist_element** %10, align 8
  br label %26

55:                                               ; preds = %52, %26
  %56 = load %struct.curl_llist*, %struct.curl_llist** %9, align 8
  %57 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %56, i32 0, i32 0
  %58 = load %struct.curl_llist_element*, %struct.curl_llist_element** %57, align 8
  store %struct.curl_llist_element* %58, %struct.curl_llist_element** %10, align 8
  %59 = load %struct.curl_llist_element*, %struct.curl_llist_element** %10, align 8
  %60 = icmp ne %struct.curl_llist_element* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %55
  %62 = load %struct.curltime*, %struct.curltime** %8, align 8
  %63 = getelementptr inbounds %struct.curltime, %struct.curltime* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.curltime*, %struct.curltime** %8, align 8
  %65 = getelementptr inbounds %struct.curltime, %struct.curltime* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  br label %86

66:                                               ; preds = %55
  %67 = load %struct.curltime*, %struct.curltime** %8, align 8
  %68 = load %struct.time_node*, %struct.time_node** %11, align 8
  %69 = getelementptr inbounds %struct.time_node, %struct.time_node* %68, i32 0, i32 0
  %70 = call i32 @memcpy(%struct.curltime* %67, i32* %69, i32 16)
  %71 = load %struct.curltime*, %struct.curltime** %8, align 8
  %72 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %73 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %76 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = bitcast %struct.curltime* %71 to { i64, i64 }*
  %79 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %78, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @Curl_splayinsert(i64 %80, i64 %82, i32 %74, i32* %77)
  %84 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %85 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %66, %61
  %87 = load i32, i32* @CURLM_OK, align 4
  ret i32 %87
}

declare dso_local i64 @Curl_timediff(i32, i64, i64) #1

declare dso_local i32 @Curl_llist_remove(%struct.curl_llist*, %struct.curl_llist_element*, i32*) #1

declare dso_local i32 @memcpy(%struct.curltime*, i32*, i32) #1

declare dso_local i32 @Curl_splayinsert(i64, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
