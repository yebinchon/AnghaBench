; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_api.c_L2CA_LocalLoopbackReq.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_api.c_L2CA_LocalLoopbackReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [49 x i8] c"L2CA_LocalLoopbackReq()  PSM: %d  Handle: 0x%04x\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"L2CAP loop req - BTU not ready\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"L2CAP - no RCB for L2CA_conn_req, PSM: %d\00", align 1
@FALSE = common dso_local global i32 0, align 4
@BT_TRANSPORT_BR_EDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"L2CAP - no LCB for L2CA_conn_req\00", align 1
@LST_CONNECTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"L2CAP - no CCB for L2CA_conn_req\00", align 1
@CST_OPEN = common dso_local global i32 0, align 4
@CFG_DONE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @L2CA_LocalLoopbackReq(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @L2CAP_TRACE_API(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = call i32 (...) @BTM_IsDeviceUp()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = call i32 (i8*, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %63

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = call i32* @l2cu_find_rcb_by_psm(i32 %19)
  store i32* %20, i32** %10, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = call i32 (i8*, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  store i32 0, i32* %4, align 4
  br label %63

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @FALSE, align 4
  %28 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %29 = call %struct.TYPE_6__* @l2cu_allocate_lcb(i32 %26, i32 %27, i32 %28)
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %8, align 8
  %30 = icmp eq %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 (i8*, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %63

33:                                               ; preds = %25
  %34 = load i32, i32* @LST_CONNECTED, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = call %struct.TYPE_7__* @l2cu_allocate_ccb(%struct.TYPE_6__* %40, i32 0)
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %9, align 8
  %42 = icmp eq %struct.TYPE_7__* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = call i32 (i8*, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %63

45:                                               ; preds = %33
  %46 = load i32*, i32** %10, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 4
  store i32* %46, i32** %48, align 8
  %49 = load i32, i32* @CST_OPEN, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @CFG_DONE_MASK, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %45, %43, %31, %22, %16
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @L2CAP_TRACE_API(i8*, i32, i32) #1

declare dso_local i32 @BTM_IsDeviceUp(...) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*, ...) #1

declare dso_local i32* @l2cu_find_rcb_by_psm(i32) #1

declare dso_local %struct.TYPE_6__* @l2cu_allocate_lcb(i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @l2cu_allocate_ccb(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
