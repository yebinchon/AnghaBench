; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_curl_multi_info_read.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_curl_multi_info_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_multi = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.curl_llist_element* }
%struct.curl_llist_element = type { %struct.Curl_message* }
%struct.Curl_message = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @curl_multi_info_read(%struct.Curl_multi* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.Curl_multi*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.Curl_message*, align 8
  %7 = alloca %struct.curl_llist_element*, align 8
  store %struct.Curl_multi* %0, %struct.Curl_multi** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %10 = call i64 @GOOD_MULTI_HANDLE(%struct.Curl_multi* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %14 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %41, label %17

17:                                               ; preds = %12
  %18 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %19 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %18, i32 0, i32 0
  %20 = call i64 @Curl_llist_count(%struct.TYPE_3__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  %23 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %24 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.curl_llist_element*, %struct.curl_llist_element** %25, align 8
  store %struct.curl_llist_element* %26, %struct.curl_llist_element** %7, align 8
  %27 = load %struct.curl_llist_element*, %struct.curl_llist_element** %7, align 8
  %28 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %27, i32 0, i32 0
  %29 = load %struct.Curl_message*, %struct.Curl_message** %28, align 8
  store %struct.Curl_message* %29, %struct.Curl_message** %6, align 8
  %30 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %31 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %30, i32 0, i32 0
  %32 = load %struct.curl_llist_element*, %struct.curl_llist_element** %7, align 8
  %33 = call i32 @Curl_llist_remove(%struct.TYPE_3__* %31, %struct.curl_llist_element* %32, i32* null)
  %34 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %35 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %34, i32 0, i32 0
  %36 = call i64 @Curl_llist_count(%struct.TYPE_3__* %35)
  %37 = call i32 @curlx_uztosi(i64 %36)
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.Curl_message*, %struct.Curl_message** %6, align 8
  %40 = getelementptr inbounds %struct.Curl_message, %struct.Curl_message* %39, i32 0, i32 0
  store i32* %40, i32** %3, align 8
  br label %42

41:                                               ; preds = %17, %12, %2
  store i32* null, i32** %3, align 8
  br label %42

42:                                               ; preds = %41, %22
  %43 = load i32*, i32** %3, align 8
  ret i32* %43
}

declare dso_local i64 @GOOD_MULTI_HANDLE(%struct.Curl_multi*) #1

declare dso_local i64 @Curl_llist_count(%struct.TYPE_3__*) #1

declare dso_local i32 @Curl_llist_remove(%struct.TYPE_3__*, %struct.curl_llist_element*, i32*) #1

declare dso_local i32 @curlx_uztosi(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
