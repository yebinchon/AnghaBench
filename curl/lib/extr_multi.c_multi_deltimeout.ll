; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_multi_deltimeout.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_multi_deltimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.curl_llist }
%struct.curl_llist = type { %struct.curl_llist_element* }
%struct.curl_llist_element = type { i64, %struct.curl_llist_element* }
%struct.time_node = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Curl_easy*, i64)* @multi_deltimeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @multi_deltimeout(%struct.Curl_easy* %0, i64 %1) #0 {
  %3 = alloca %struct.Curl_easy*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.curl_llist_element*, align 8
  %6 = alloca %struct.curl_llist*, align 8
  %7 = alloca %struct.time_node*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %9 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.curl_llist* %10, %struct.curl_llist** %6, align 8
  %11 = load %struct.curl_llist*, %struct.curl_llist** %6, align 8
  %12 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %11, i32 0, i32 0
  %13 = load %struct.curl_llist_element*, %struct.curl_llist_element** %12, align 8
  store %struct.curl_llist_element* %13, %struct.curl_llist_element** %5, align 8
  br label %14

14:                                               ; preds = %32, %2
  %15 = load %struct.curl_llist_element*, %struct.curl_llist_element** %5, align 8
  %16 = icmp ne %struct.curl_llist_element* %15, null
  br i1 %16, label %17, label %36

17:                                               ; preds = %14
  %18 = load %struct.curl_llist_element*, %struct.curl_llist_element** %5, align 8
  %19 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.time_node*
  store %struct.time_node* %21, %struct.time_node** %7, align 8
  %22 = load %struct.time_node*, %struct.time_node** %7, align 8
  %23 = getelementptr inbounds %struct.time_node, %struct.time_node* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load %struct.curl_llist*, %struct.curl_llist** %6, align 8
  %29 = load %struct.curl_llist_element*, %struct.curl_llist_element** %5, align 8
  %30 = call i32 @Curl_llist_remove(%struct.curl_llist* %28, %struct.curl_llist_element* %29, i32* null)
  br label %36

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.curl_llist_element*, %struct.curl_llist_element** %5, align 8
  %34 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %33, i32 0, i32 1
  %35 = load %struct.curl_llist_element*, %struct.curl_llist_element** %34, align 8
  store %struct.curl_llist_element* %35, %struct.curl_llist_element** %5, align 8
  br label %14

36:                                               ; preds = %27, %14
  ret void
}

declare dso_local i32 @Curl_llist_remove(%struct.curl_llist*, %struct.curl_llist_element*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
