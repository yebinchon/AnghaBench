; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_cmpl_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_cmpl_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [55 x i8] c"bta_gattc_cmpl_cback: conn_id = %d op = %d status = %d\00", align 1
@GATTC_OPTYPE_NOTIFICATION = common dso_local global i64 0, align 8
@GATTC_OPTYPE_INDICATION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"bta_gattc_cmpl_cback unknown conn_id =  %d, ignore data\00", align 1
@BTA_TRANSPORT_BR_EDR = common dso_local global i64 0, align 8
@BTA_ID_GATTC = common dso_local global i32 0, align 4
@BTA_ALL_APP_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32, i32*)* @bta_gattc_cmpl_cback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_gattc_cmpl_cback(i32 %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i64, i64* %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %10, i64 %11, i32 %12)
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @GATTC_OPTYPE_NOTIFICATION, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @GATTC_OPTYPE_INDICATION, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17, %4
  %22 = load i32, i32* %5, align 4
  %23 = load i64, i64* %6, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @bta_gattc_process_indicate(i32 %22, i64 %23, i32* %24)
  br label %59

26:                                               ; preds = %17
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.TYPE_3__* @bta_gattc_find_clcb_by_conn_id(i32 %27)
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %9, align 8
  %29 = icmp eq %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @APPL_TRACE_ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %59

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BTA_TRANSPORT_BR_EDR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = load i32, i32* @BTA_ID_GATTC, align 4
  %42 = load i32, i32* @BTA_ALL_APP_ID, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @bta_sys_busy(i32 %41, i32 %42, i32 %45)
  %47 = load i32, i32* @BTA_ID_GATTC, align 4
  %48 = load i32, i32* @BTA_ALL_APP_ID, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @bta_sys_idle(i32 %47, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %40, %34
  %54 = load i32, i32* %5, align 4
  %55 = load i64, i64* %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @bta_gattc_cmpl_sendmsg(i32 %54, i64 %55, i32 %56, i32* %57)
  br label %59

59:                                               ; preds = %53, %30, %21
  ret void
}

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i32, i64, i32) #1

declare dso_local i32 @bta_gattc_process_indicate(i32, i64, i32*) #1

declare dso_local %struct.TYPE_3__* @bta_gattc_find_clcb_by_conn_id(i32) #1

declare dso_local i32 @APPL_TRACE_ERROR(i8*, i32) #1

declare dso_local i32 @bta_sys_busy(i32, i32, i32) #1

declare dso_local i32 @bta_sys_idle(i32, i32, i32) #1

declare dso_local i32 @bta_gattc_cmpl_sendmsg(i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
