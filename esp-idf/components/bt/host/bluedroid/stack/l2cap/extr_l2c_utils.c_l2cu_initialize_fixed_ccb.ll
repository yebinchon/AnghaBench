; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_initialize_fixed_ccb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_initialize_fixed_ccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_22__**, i32 }
%struct.TYPE_22__ = type { i64, i64, i32, i32, %struct.TYPE_21__*, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_23__ }
%struct.TYPE_15__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@CST_OPEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@L2CAP_FCR_RX_BUF_SIZE = common dso_local global i32 0, align 4
@L2CAP_FCR_TX_BUF_SIZE = common dso_local global i32 0, align 4
@L2CAP_FIRST_FIXED_CHNL = common dso_local global i64 0, align 8
@L2CAP_USER_RX_BUF_SIZE = common dso_local global i32 0, align 4
@L2CAP_USER_TX_BUF_SIZE = common dso_local global i32 0, align 4
@LST_CONNECTED = common dso_local global i64 0, align 8
@l2cb = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l2cu_initialize_fixed_ccb(%struct.TYPE_21__* %0, i64 %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %6, align 8
  %7 = load i32, i32* @TRUE, align 4
  ret i32 %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
