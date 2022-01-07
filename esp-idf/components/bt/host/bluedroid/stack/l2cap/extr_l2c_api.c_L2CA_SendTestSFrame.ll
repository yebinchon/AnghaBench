; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_api.c_L2CA_SendTestSFrame.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_api.c_L2CA_SendTestSFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [65 x i8] c"L2CA_SendTestSFrame()  CID: 0x%04x  Type: 0x%02x  back_track: %u\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"L2CAP - no CCB for L2CA_SendTestSFrame, CID: %d\00", align 1
@FALSE = common dso_local global i32 0, align 4
@CST_OPEN = common dso_local global i64 0, align 8
@L2CAP_FCR_ERTM_MODE = common dso_local global i64 0, align 8
@L2CAP_FCR_P_BIT = common dso_local global i32 0, align 4
@L2CAP_FCR_F_BIT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @L2CA_SendTestSFrame(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @L2CAP_TRACE_API(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.TYPE_10__* @l2cu_find_ccb_by_cid(i32* null, i32 %13)
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %8, align 8
  %15 = icmp eq %struct.TYPE_10__* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %4, align 4
  br label %53

20:                                               ; preds = %3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CST_OPEN, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @L2CAP_FCR_ERTM_MODE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26, %20
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %4, align 4
  br label %53

36:                                               ; preds = %26
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, %37
  store i32 %42, i32* %40, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, 3
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @L2CAP_FCR_P_BIT, align 4
  %48 = load i32, i32* @L2CAP_FCR_F_BIT, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = call i32 @l2c_fcr_send_S_frame(%struct.TYPE_10__* %43, i32 %45, i32 %50)
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %36, %34, %16
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @L2CAP_TRACE_API(i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @l2cu_find_ccb_by_cid(i32*, i32) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*, i32) #1

declare dso_local i32 @l2c_fcr_send_S_frame(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
