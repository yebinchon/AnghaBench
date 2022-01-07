; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_process_pending_handles.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_process_pending_handles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_multi = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.curl_llist_element* }
%struct.curl_llist_element = type { %struct.Curl_easy* }
%struct.Curl_easy = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CURLM_STATE_CONNECT_PEND = common dso_local global i64 0, align 8
@CURLM_STATE_CONNECT = common dso_local global i32 0, align 4
@EXPIRE_RUN_NOW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Curl_multi*)* @process_pending_handles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_pending_handles(%struct.Curl_multi* %0) #0 {
  %2 = alloca %struct.Curl_multi*, align 8
  %3 = alloca %struct.curl_llist_element*, align 8
  %4 = alloca %struct.Curl_easy*, align 8
  store %struct.Curl_multi* %0, %struct.Curl_multi** %2, align 8
  %5 = load %struct.Curl_multi*, %struct.Curl_multi** %2, align 8
  %6 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.curl_llist_element*, %struct.curl_llist_element** %7, align 8
  store %struct.curl_llist_element* %8, %struct.curl_llist_element** %3, align 8
  %9 = load %struct.curl_llist_element*, %struct.curl_llist_element** %3, align 8
  %10 = icmp ne %struct.curl_llist_element* %9, null
  br i1 %10, label %11, label %36

11:                                               ; preds = %1
  %12 = load %struct.curl_llist_element*, %struct.curl_llist_element** %3, align 8
  %13 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %12, i32 0, i32 0
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  store %struct.Curl_easy* %14, %struct.Curl_easy** %4, align 8
  %15 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %16 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CURLM_STATE_CONNECT_PEND, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @DEBUGASSERT(i32 %20)
  %22 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %23 = load i32, i32* @CURLM_STATE_CONNECT, align 4
  %24 = call i32 @multistate(%struct.Curl_easy* %22, i32 %23)
  %25 = load %struct.Curl_multi*, %struct.Curl_multi** %2, align 8
  %26 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %25, i32 0, i32 0
  %27 = load %struct.curl_llist_element*, %struct.curl_llist_element** %3, align 8
  %28 = call i32 @Curl_llist_remove(%struct.TYPE_4__* %26, %struct.curl_llist_element* %27, i32* null)
  %29 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %30 = load i32, i32* @EXPIRE_RUN_NOW, align 4
  %31 = call i32 @Curl_expire(%struct.Curl_easy* %29, i32 0, i32 %30)
  %32 = load i32, i32* @TRUE, align 4
  %33 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %34 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  br label %36

36:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @DEBUGASSERT(i32) #1

declare dso_local i32 @multistate(%struct.Curl_easy*, i32) #1

declare dso_local i32 @Curl_llist_remove(%struct.TYPE_4__*, %struct.curl_llist_element*, i32*) #1

declare dso_local i32 @Curl_expire(%struct.Curl_easy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
