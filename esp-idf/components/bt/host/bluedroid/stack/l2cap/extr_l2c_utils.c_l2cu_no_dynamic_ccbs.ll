; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_no_dynamic_ccbs.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_no_dynamic_ccbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i8*, i32, i64, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"l2cu_no_dynamic_ccbs() IDLE timer 0, disconnecting link\00", align 1
@HCI_ERR_PEER_USER = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i64 0, align 8
@LST_DISCONNECTING = common dso_local global i8* null, align 8
@L2CAP_LINK_DISCONNECT_TOUT = common dso_local global i32 0, align 4
@BTM_SUCCESS = common dso_local global i64 0, align 8
@BT_1SEC_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"l2cu_no_dynamic_ccbs() starting IDLE timeout: %d\00", align 1
@BTU_TTYPE_L2CAP_LINK = common dso_local global i32 0, align 4
@L2CAP_NUM_FIXED_CHNLS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2cu_no_dynamic_ccbs(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %82

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %67

16:                                               ; preds = %13
  %17 = call i32 (i8*, ...) @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @HCI_ERR_PEER_USER, align 4
  %22 = call i64 @btm_sec_disconnect(i32 %20, i32 %21)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @BTM_CMD_STARTED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %16
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %28 = call i32 @l2cu_process_fixed_disc_cback(%struct.TYPE_6__* %27)
  %29 = load i8*, i8** @LST_DISCONNECTING, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* @L2CAP_LINK_DISCONNECT_TOUT, align 4
  store i32 %32, i32* %4, align 4
  br label %66

33:                                               ; preds = %16
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* @BTM_SUCCESS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = call i32 @l2cu_process_fixed_disc_cback(%struct.TYPE_6__* %38)
  %40 = load i8*, i8** @LST_DISCONNECTING, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  store i32 65535, i32* %4, align 4
  br label %65

43:                                               ; preds = %33
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @HCI_ERR_PEER_USER, align 4
  %53 = call i64 @btsnd_hcic_disconnect(i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %57 = call i32 @l2cu_process_fixed_disc_cback(%struct.TYPE_6__* %56)
  %58 = load i8*, i8** @LST_DISCONNECTING, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* @L2CAP_LINK_DISCONNECT_TOUT, align 4
  store i32 %61, i32* %4, align 4
  br label %64

62:                                               ; preds = %48, %43
  %63 = load i32, i32* @BT_1SEC_TIMEOUT, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %55
  br label %65

65:                                               ; preds = %64, %37
  br label %66

66:                                               ; preds = %65, %26
  br label %67

67:                                               ; preds = %66, %13
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 65535
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load i32, i32* %4, align 4
  %72 = call i32 (i8*, ...) @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* @BTU_TTYPE_L2CAP_LINK, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @btu_start_timer(i32* %74, i32 %75, i32 %76)
  br label %82

78:                                               ; preds = %67
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = call i32 @btu_stop_timer(i32* %80)
  br label %82

82:                                               ; preds = %12, %78, %70
  ret void
}

declare dso_local i32 @L2CAP_TRACE_DEBUG(i8*, ...) #1

declare dso_local i64 @btm_sec_disconnect(i32, i32) #1

declare dso_local i32 @l2cu_process_fixed_disc_cback(%struct.TYPE_6__*) #1

declare dso_local i64 @btsnd_hcic_disconnect(i32, i32) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

declare dso_local i32 @btu_stop_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
