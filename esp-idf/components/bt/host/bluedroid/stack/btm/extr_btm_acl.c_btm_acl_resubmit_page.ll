; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_acl_resubmit_page.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_acl_resubmit_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"btm_acl_resubmit_page\0A\00", align 1
@btm_cb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@DEV_CLASS_LEN = common dso_local global i32 0, align 4
@LOCAL_BR_EDR_CONTROLLER_ID = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_acl_resubmit_page() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 3), align 4
  %7 = call i64 @fixed_queue_dequeue(i32 %6, i32 0)
  %8 = inttoptr i64 %7 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %2, align 8
  %9 = icmp ne %struct.TYPE_7__* %8, null
  br i1 %9, label %10, label %40

10:                                               ; preds = %0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i64 1
  %13 = bitcast %struct.TYPE_7__* %12 to i32*
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  %19 = getelementptr inbounds i32, i32* %18, i64 3
  store i32* %19, i32** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @STREAM_TO_BDADDR(i32 %20, i32* %21)
  %23 = load i32, i32* %4, align 4
  %24 = call %struct.TYPE_6__* @btm_find_or_alloc_dev(i32 %23)
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %1, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 2), align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BD_ADDR_LEN, align 4
  %30 = call i32 @memcpy(i32 %25, i32 %28, i32 %29)
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 1), align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @DEV_CLASS_LEN, align 4
  %36 = call i32 @memcpy(i32 %31, i32 %34, i32 %35)
  %37 = load i32, i32* @LOCAL_BR_EDR_CONTROLLER_ID, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = call i32 @btu_hcif_send_cmd(i32 %37, %struct.TYPE_7__* %38)
  br label %42

40:                                               ; preds = %0
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0), align 4
  br label %42

42:                                               ; preds = %40, %10
  ret void
}

declare dso_local i32 @BTM_TRACE_DEBUG(i8*) #1

declare dso_local i64 @fixed_queue_dequeue(i32, i32) #1

declare dso_local i32 @STREAM_TO_BDADDR(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @btm_find_or_alloc_dev(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @btu_hcif_send_cmd(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
