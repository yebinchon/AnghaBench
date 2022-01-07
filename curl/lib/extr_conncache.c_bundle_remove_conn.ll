; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_conncache.c_bundle_remove_conn.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_conncache.c_bundle_remove_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectbundle = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.curl_llist_element* }
%struct.curl_llist_element = type { %struct.curl_llist_element*, %struct.connectdata* }
%struct.connectdata = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectbundle*, %struct.connectdata*)* @bundle_remove_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bundle_remove_conn(%struct.connectbundle* %0, %struct.connectdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connectbundle*, align 8
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca %struct.curl_llist_element*, align 8
  store %struct.connectbundle* %0, %struct.connectbundle** %4, align 8
  store %struct.connectdata* %1, %struct.connectdata** %5, align 8
  %7 = load %struct.connectbundle*, %struct.connectbundle** %4, align 8
  %8 = getelementptr inbounds %struct.connectbundle, %struct.connectbundle* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.curl_llist_element*, %struct.curl_llist_element** %9, align 8
  store %struct.curl_llist_element* %10, %struct.curl_llist_element** %6, align 8
  br label %11

11:                                               ; preds = %31, %2
  %12 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %13 = icmp ne %struct.curl_llist_element* %12, null
  br i1 %13, label %14, label %35

14:                                               ; preds = %11
  %15 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %16 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %15, i32 0, i32 1
  %17 = load %struct.connectdata*, %struct.connectdata** %16, align 8
  %18 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %19 = icmp eq %struct.connectdata* %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %14
  %21 = load %struct.connectbundle*, %struct.connectbundle** %4, align 8
  %22 = getelementptr inbounds %struct.connectbundle, %struct.connectbundle* %21, i32 0, i32 1
  %23 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %24 = call i32 @Curl_llist_remove(%struct.TYPE_2__* %22, %struct.curl_llist_element* %23, i32* null)
  %25 = load %struct.connectbundle*, %struct.connectbundle** %4, align 8
  %26 = getelementptr inbounds %struct.connectbundle, %struct.connectbundle* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 8
  %29 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %30 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  store i32 1, i32* %3, align 4
  br label %36

31:                                               ; preds = %14
  %32 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %33 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %32, i32 0, i32 0
  %34 = load %struct.curl_llist_element*, %struct.curl_llist_element** %33, align 8
  store %struct.curl_llist_element* %34, %struct.curl_llist_element** %6, align 8
  br label %11

35:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %20
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @Curl_llist_remove(%struct.TYPE_2__*, %struct.curl_llist_element*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
