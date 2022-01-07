; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_act.c_bta_hf_client_rfc_acp_open.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_act.c_bta_hf_client_rfc_acp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@BTA_HF_CLIENT_ACP = common dso_local global i32 0, align 4
@bta_hf_client_cb = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [66 x i8] c"bta_hf_client_rfc_acp_open: serv_handle = %d rfc.port_handle = %d\00", align 1
@PORT_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"bta_hf_client_rfc_acp_open error PORT_CheckConnection returned status %d\00", align 1
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_hf_client_rfc_acp_open(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load i32, i32* @BTA_HF_CLIENT_ACP, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bta_hf_client_cb, i32 0, i32 0, i32 5), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bta_hf_client_cb, i32 0, i32 0, i32 4), align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 (i8*, i32, ...) @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %11)
  %13 = load i32, i32* @PORT_SUCCESS, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @PORT_CheckConnection(i32 %17, i32 %18, i32* %3)
  store i32 %19, i32* %5, align 4
  %20 = icmp ne i32 %13, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i8*, i32, ...) @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %1
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bta_hf_client_cb, i32 0, i32 0, i32 3), align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bta_hf_client_cb, i32 0, i32 0, i32 3), align 8
  %29 = call i32 @bta_sys_free_timer(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bta_hf_client_cb, i32 0, i32 0, i32 2))
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bta_hf_client_cb, i32 0, i32 0, i32 1), align 4
  %32 = call i64 @bdcmp(i32 %30, i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %37

35:                                               ; preds = %27
  %36 = call i32 (...) @bta_hf_client_resume_open()
  br label %37

37:                                               ; preds = %35, %34
  br label %38

38:                                               ; preds = %37, %24
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bta_hf_client_cb, i32 0, i32 0, i32 1), align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @bdcpy(i32 %39, i32 %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bta_hf_client_cb, i32 0, i32 0, i32 0), align 8
  %46 = call i32 (...) @bta_hf_client_do_disc()
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %48 = call i32 @bta_hf_client_rfc_open(%struct.TYPE_9__* %47)
  ret void
}

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i32, ...) #1

declare dso_local i32 @PORT_CheckConnection(i32, i32, i32*) #1

declare dso_local i32 @bta_sys_free_timer(i32*) #1

declare dso_local i64 @bdcmp(i32, i32) #1

declare dso_local i32 @bta_hf_client_resume_open(...) #1

declare dso_local i32 @bdcpy(i32, i32) #1

declare dso_local i32 @bta_hf_client_do_disc(...) #1

declare dso_local i32 @bta_hf_client_rfc_open(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
