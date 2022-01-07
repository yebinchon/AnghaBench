; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_multi_addtimeout.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_multi_addtimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.time_node*, %struct.curl_llist }
%struct.time_node = type { i64, i32, i32 }
%struct.curl_llist = type { %struct.curl_llist_element* }
%struct.curl_llist_element = type { i64, %struct.curl_llist_element* }
%struct.curltime = type { i32 }

@CURLM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_easy*, %struct.curltime*, i64)* @multi_addtimeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multi_addtimeout(%struct.Curl_easy* %0, %struct.curltime* %1, i64 %2) #0 {
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca %struct.curltime*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.curl_llist_element*, align 8
  %8 = alloca %struct.time_node*, align 8
  %9 = alloca %struct.curl_llist_element*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.curl_llist*, align 8
  %12 = alloca %struct.time_node*, align 8
  %13 = alloca i64, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %4, align 8
  store %struct.curltime* %1, %struct.curltime** %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.curl_llist_element* null, %struct.curl_llist_element** %9, align 8
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %15 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store %struct.curl_llist* %16, %struct.curl_llist** %11, align 8
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %18 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.time_node*, %struct.time_node** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.time_node, %struct.time_node* %20, i64 %21
  store %struct.time_node* %22, %struct.time_node** %8, align 8
  %23 = load %struct.time_node*, %struct.time_node** %8, align 8
  %24 = getelementptr inbounds %struct.time_node, %struct.time_node* %23, i32 0, i32 2
  %25 = load %struct.curltime*, %struct.curltime** %5, align 8
  %26 = call i32 @memcpy(i32* %24, %struct.curltime* %25, i32 4)
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.time_node*, %struct.time_node** %8, align 8
  %29 = getelementptr inbounds %struct.time_node, %struct.time_node* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.curl_llist*, %struct.curl_llist** %11, align 8
  %31 = call i64 @Curl_llist_count(%struct.curl_llist* %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %63

34:                                               ; preds = %3
  %35 = load %struct.curl_llist*, %struct.curl_llist** %11, align 8
  %36 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %35, i32 0, i32 0
  %37 = load %struct.curl_llist_element*, %struct.curl_llist_element** %36, align 8
  store %struct.curl_llist_element* %37, %struct.curl_llist_element** %7, align 8
  br label %38

38:                                               ; preds = %58, %34
  %39 = load %struct.curl_llist_element*, %struct.curl_llist_element** %7, align 8
  %40 = icmp ne %struct.curl_llist_element* %39, null
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  %42 = load %struct.curl_llist_element*, %struct.curl_llist_element** %7, align 8
  %43 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.time_node*
  store %struct.time_node* %45, %struct.time_node** %12, align 8
  %46 = load %struct.time_node*, %struct.time_node** %12, align 8
  %47 = getelementptr inbounds %struct.time_node, %struct.time_node* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.time_node*, %struct.time_node** %8, align 8
  %50 = getelementptr inbounds %struct.time_node, %struct.time_node* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @Curl_timediff(i32 %48, i32 %51)
  store i64 %52, i64* %13, align 8
  %53 = load i64, i64* %13, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  br label %62

56:                                               ; preds = %41
  %57 = load %struct.curl_llist_element*, %struct.curl_llist_element** %7, align 8
  store %struct.curl_llist_element* %57, %struct.curl_llist_element** %9, align 8
  br label %58

58:                                               ; preds = %56
  %59 = load %struct.curl_llist_element*, %struct.curl_llist_element** %7, align 8
  %60 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %59, i32 0, i32 1
  %61 = load %struct.curl_llist_element*, %struct.curl_llist_element** %60, align 8
  store %struct.curl_llist_element* %61, %struct.curl_llist_element** %7, align 8
  br label %38

62:                                               ; preds = %55, %38
  br label %63

63:                                               ; preds = %62, %3
  %64 = load %struct.curl_llist*, %struct.curl_llist** %11, align 8
  %65 = load %struct.curl_llist_element*, %struct.curl_llist_element** %9, align 8
  %66 = load %struct.time_node*, %struct.time_node** %8, align 8
  %67 = load %struct.time_node*, %struct.time_node** %8, align 8
  %68 = getelementptr inbounds %struct.time_node, %struct.time_node* %67, i32 0, i32 1
  %69 = call i32 @Curl_llist_insert_next(%struct.curl_llist* %64, %struct.curl_llist_element* %65, %struct.time_node* %66, i32* %68)
  %70 = load i32, i32* @CURLM_OK, align 4
  ret i32 %70
}

declare dso_local i32 @memcpy(i32*, %struct.curltime*, i32) #1

declare dso_local i64 @Curl_llist_count(%struct.curl_llist*) #1

declare dso_local i64 @Curl_timediff(i32, i32) #1

declare dso_local i32 @Curl_llist_insert_next(%struct.curl_llist*, %struct.curl_llist_element*, %struct.time_node*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
