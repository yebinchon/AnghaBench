; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_main.c_bta_hf_client_collision_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_main.c_bta_hf_client_collision_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32* }

@bta_hf_client_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@BTA_HF_CLIENT_OPENING_ST = common dso_local global i64 0, align 8
@BTA_ID_SYS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"HF Client found collision (ACL) ...\00", align 1
@BTA_ID_HS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"HF Client found collision (RFCOMM) ...\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"HF Client found collision (???) ...\00", align 1
@BTA_HF_CLIENT_INIT_ST = common dso_local global i64 0, align 8
@bta_hf_client_colli_timer_cback = common dso_local global i32 0, align 4
@BTA_HF_CLIENT_COLLISION_TIMER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_hf_client_collision_cback(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @UNUSED(i64 %9)
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @UNUSED(i64 %11)
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @UNUSED(i64 %13)
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bta_hf_client_cb, i32 0, i32 0, i32 0), align 8
  %16 = load i64, i64* @BTA_HF_CLIENT_OPENING_ST, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %4
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @BTA_ID_SYS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @APPL_TRACE_WARNING(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %33

24:                                               ; preds = %18
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @BTA_ID_HS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @APPL_TRACE_WARNING(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %32

30:                                               ; preds = %24
  %31 = call i32 @APPL_TRACE_WARNING(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %28
  br label %33

33:                                               ; preds = %32, %22
  %34 = load i64, i64* @BTA_HF_CLIENT_INIT_ST, align 8
  store i64 %34, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bta_hf_client_cb, i32 0, i32 0, i32 0), align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bta_hf_client_cb, i32 0, i32 0, i32 3), align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bta_hf_client_cb, i32 0, i32 0, i32 3), align 8
  %39 = call i32 @SDP_CancelServiceSearch(i64 %38)
  %40 = call i32 @bta_hf_client_free_db(i32* null)
  br label %41

41:                                               ; preds = %37, %33
  %42 = call i32 (...) @bta_hf_client_start_server()
  store i32* @bta_hf_client_colli_timer_cback, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bta_hf_client_cb, i32 0, i32 0, i32 2, i32 0), align 8
  %43 = load i32, i32* @BTA_HF_CLIENT_COLLISION_TIMER, align 4
  %44 = call i32 @bta_sys_start_timer(%struct.TYPE_5__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bta_hf_client_cb, i32 0, i32 0, i32 2), i32 0, i32 %43)
  %45 = load i32, i32* @TRUE, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bta_hf_client_cb, i32 0, i32 0, i32 1), align 8
  br label %46

46:                                               ; preds = %41, %4
  ret void
}

declare dso_local i32 @UNUSED(i64) #1

declare dso_local i32 @APPL_TRACE_WARNING(i8*) #1

declare dso_local i32 @SDP_CancelServiceSearch(i64) #1

declare dso_local i32 @bta_hf_client_free_db(i32*) #1

declare dso_local i32 @bta_hf_client_start_server(...) #1

declare dso_local i32 @bta_sys_start_timer(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
