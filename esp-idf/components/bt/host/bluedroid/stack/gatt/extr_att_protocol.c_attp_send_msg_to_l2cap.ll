; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_att_protocol.c_attp_send_msg_to_l2cap.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_att_protocol.c_attp_send_msg_to_l2cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32 }

@L2CAP_ATT_CID = common dso_local global i64 0, align 8
@L2CAP_DW_FAILED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"ATT   failed to pass msg:0x%0x to L2CAP\00", align 1
@GATT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@L2CAP_DW_CONGESTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"ATT congested, message accepted\00", align 1
@GATT_CONGESTED = common dso_local global i32 0, align 4
@GATT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @attp_send_msg_to_l2cap(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @L2CAP_ATT_CID, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i64, i64* @L2CAP_ATT_CID, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = call i64 @L2CA_SendFixedChnlData(i64 %13, i32 %16, %struct.TYPE_8__* %17)
  store i64 %18, i64* %6, align 8
  br label %25

19:                                               ; preds = %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = call i64 @L2CA_DataWrite(i64 %22, %struct.TYPE_8__* %23)
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %19, %12
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @L2CAP_DW_FAILED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 1
  %32 = bitcast %struct.TYPE_8__* %31 to i32*
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @GATT_INTERNAL_ERROR, align 4
  store i32 %40, i32* %3, align 4
  br label %51

41:                                               ; preds = %25
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @L2CAP_DW_CONGESTED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = call i32 (i8*, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @GATT_CONGESTED, align 4
  store i32 %47, i32* %3, align 4
  br label %51

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* @GATT_SUCCESS, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %45, %29
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @L2CA_SendFixedChnlData(i64, i32, %struct.TYPE_8__*) #1

declare dso_local i64 @L2CA_DataWrite(i64, %struct.TYPE_8__*) #1

declare dso_local i32 @GATT_TRACE_DEBUG(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
