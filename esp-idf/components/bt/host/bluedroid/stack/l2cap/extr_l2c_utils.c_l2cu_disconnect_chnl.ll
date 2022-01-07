; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_disconnect_chnl.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_disconnect_chnl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (i64, i32)* }

@L2CAP_BASE_APPL_CID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"L2CAP - disconnect_chnl CID: 0x%04x\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"L2CAP - disconnect_chnl CID: 0x%04x Ignored\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2cu_disconnect_chnl(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32 (i64, i32)**, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @L2CAP_BASE_APPL_CID, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32 (i64, i32)*, i32 (i64, i32)** %16, align 8
  %18 = bitcast i32 (i64, i32)* %17 to i32 (i64, i32)**
  store i32 (i64, i32)** %18, i32 (i64, i32)*** %4, align 8
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = call i32 @l2cu_send_peer_disc_req(%struct.TYPE_9__* %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = call i32 @l2cu_release_ccb(%struct.TYPE_9__* %23)
  %25 = load i32 (i64, i32)**, i32 (i64, i32)*** %4, align 8
  %26 = load i32 (i64, i32)*, i32 (i64, i32)** %25, align 8
  %27 = load i64, i64* %3, align 8
  %28 = load i32, i32* @FALSE, align 4
  %29 = call i32 %26(i64 %27, i32 %28)
  br label %33

30:                                               ; preds = %1
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  br label %33

33:                                               ; preds = %30, %11
  ret void
}

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*, i64) #1

declare dso_local i32 @l2cu_send_peer_disc_req(%struct.TYPE_9__*) #1

declare dso_local i32 @l2cu_release_ccb(%struct.TYPE_9__*) #1

declare dso_local i32 @L2CAP_TRACE_ERROR(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
