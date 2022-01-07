; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ucd.c_l2c_ucd_check_rx_pkts.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ucd.c_l2c_ucd_check_rx_pkts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32, i8*, i8* }

@L2CAP_CONNECTIONLESS_CID = common dso_local global i8* null, align 8
@L2C_UCD_RCB_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"L2CAP - no CCB for UCD reception\00", align 1
@TRUE = common dso_local global i32 0, align 4
@L2CAP_UCD_IDLE_TIMEOUT = common dso_local global i32 0, align 4
@L2CAP_UCD_CH_PRIORITY = common dso_local global i32 0, align 4
@CST_OPEN = common dso_local global i32 0, align 4
@L2CEVT_L2CAP_DATA = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l2c_ucd_check_rx_pkts(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i8*, i8** @L2CAP_CONNECTIONLESS_CID, align 8
  %10 = call %struct.TYPE_6__* @l2cu_find_ccb_by_cid(i32* %8, i8* %9)
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %6, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @L2C_UCD_RCB_ID, align 4
  %14 = call i32* @l2cu_find_rcb_by_psm(i32 %13)
  store i32* %14, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %54

16:                                               ; preds = %12, %2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = icmp eq %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %48

19:                                               ; preds = %16
  %20 = load i32*, i32** %4, align 8
  %21 = call %struct.TYPE_6__* @l2cu_allocate_ccb(i32* %20, i32 0)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %6, align 8
  %22 = icmp eq %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @osi_free(i32* %25)
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %3, align 4
  br label %56

28:                                               ; preds = %19
  %29 = load i8*, i8** @L2CAP_CONNECTIONLESS_CID, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 4
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** @L2CAP_CONNECTIONLESS_CID, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* @L2CAP_UCD_IDLE_TIMEOUT, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = load i32, i32* @L2CAP_UCD_CH_PRIORITY, align 4
  %40 = call i32 @l2cu_change_pri_ccb(%struct.TYPE_6__* %38, i32 %39)
  %41 = load i32*, i32** %7, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = load i32, i32* @CST_OPEN, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %47, %16
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = load i32, i32* @L2CEVT_L2CAP_DATA, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @l2c_csm_execute(%struct.TYPE_6__* %49, i32 %50, i32* %51)
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %3, align 4
  br label %56

54:                                               ; preds = %12
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %48, %23
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.TYPE_6__* @l2cu_find_ccb_by_cid(i32*, i8*) #1

declare dso_local i32* @l2cu_find_rcb_by_psm(i32) #1

declare dso_local %struct.TYPE_6__* @l2cu_allocate_ccb(i32*, i32) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*) #1

declare dso_local i32 @osi_free(i32*) #1

declare dso_local i32 @l2cu_change_pri_ccb(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @l2c_csm_execute(%struct.TYPE_6__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
