; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_link.c_l2c_link_segments_xmitted.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_link.c_l2c_link_segments_xmitted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"L2CAP - rcvd segment complete, unknown handle: %d\0A\00", align 1
@LST_CONNECTED = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2c_link_segments_xmitted(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i64 1
  %8 = bitcast %struct.TYPE_9__* %7 to i32*
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %8, i64 %12
  store i32* %13, i32** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @STREAM_TO_UINT16(i32 %14, i32* %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @HCID_GET_HANDLE(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.TYPE_8__* @l2cu_find_lcb_by_handle(i32 %19)
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %5, align 8
  %21 = icmp eq %struct.TYPE_8__* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = call i32 @osi_free(%struct.TYPE_9__* %25)
  br label %47

27:                                               ; preds = %1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @LST_CONNECTED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %38 = call i32 @list_prepend(i32 %36, %struct.TYPE_9__* %37)
  %39 = load i32, i32* @FALSE, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = call i32 @l2c_link_check_send_pkts(%struct.TYPE_8__* %42, i32* null, i32* null)
  br label %47

44:                                               ; preds = %27
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %46 = call i32 @osi_free(%struct.TYPE_9__* %45)
  br label %47

47:                                               ; preds = %22, %44, %33
  ret void
}

declare dso_local i32 @STREAM_TO_UINT16(i32, i32*) #1

declare dso_local i32 @HCID_GET_HANDLE(i32) #1

declare dso_local %struct.TYPE_8__* @l2cu_find_lcb_by_handle(i32) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*, i32) #1

declare dso_local i32 @osi_free(%struct.TYPE_9__*) #1

declare dso_local i32 @list_prepend(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @l2c_link_check_send_pkts(%struct.TYPE_8__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
