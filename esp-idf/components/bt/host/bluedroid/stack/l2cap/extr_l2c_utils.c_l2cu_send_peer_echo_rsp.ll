; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_send_peer_echo_rsp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_send_peer_echo_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64 (...)*, i64 (...)* }

@.str = private unnamed_addr constant [43 x i8] c"L2CAP ignoring duplicate echo request (%d)\00", align 1
@L2CAP_CMD_BUF_SIZE = common dso_local global i64 0, align 8
@BT_HDR_SIZE = common dso_local global i64 0, align 8
@HCI_DATA_PREAMBLE_SIZE = common dso_local global i64 0, align 8
@L2CAP_PKT_OVERHEAD = common dso_local global i64 0, align 8
@L2CAP_CMD_OVERHEAD = common dso_local global i64 0, align 8
@L2CAP_ECHO_RSP_LEN = common dso_local global i64 0, align 8
@L2CAP_CMD_ECHO_RSP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"L2CAP - no buffer for echo_rsp\00", align 1
@L2CAP_SEND_CMD_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2cu_send_peer_echo_rsp(%struct.TYPE_6__* %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16, %4
  %23 = load i64, i64* %6, align 8
  %24 = call i32 (i8*, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %23)
  br label %97

25:                                               ; preds = %16
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %25
  %30 = call %struct.TYPE_7__* (...) @controller_get_interface()
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64 (...)*, i64 (...)** %31, align 8
  %33 = call i64 (...) %32()
  store i64 %33, i64* %12, align 8
  %34 = call %struct.TYPE_7__* (...) @controller_get_interface()
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i64 (...)*, i64 (...)** %35, align 8
  %37 = call i64 (...) %36()
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* @L2CAP_CMD_BUF_SIZE, align 8
  %39 = load i64, i64* %13, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i64, i64* %12, align 8
  br label %45

43:                                               ; preds = %29
  %44 = load i64, i64* @L2CAP_CMD_BUF_SIZE, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i64 [ %42, %41 ], [ %44, %43 ]
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* @BT_HDR_SIZE, align 8
  %48 = load i64, i64* @HCI_DATA_PREAMBLE_SIZE, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i64, i64* @L2CAP_PKT_OVERHEAD, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i64, i64* @L2CAP_CMD_OVERHEAD, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i64, i64* @L2CAP_ECHO_RSP_LEN, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i64, i64* %11, align 8
  %57 = sub nsw i64 %56, %55
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %11, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %45
  store i64 0, i64* %8, align 8
  br label %62

62:                                               ; preds = %61, %45
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = load i64, i64* @L2CAP_ECHO_RSP_LEN, align 8
  %65 = load i64, i64* %8, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i32, i32* @L2CAP_CMD_ECHO_RSP, align 4
  %68 = load i64, i64* %6, align 8
  %69 = call i32* @l2cu_build_header(%struct.TYPE_6__* %63, i64 %66, i32 %67, i64 %68)
  store i32* %69, i32** %9, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = call i32 (i8*, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %97

73:                                               ; preds = %62
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = bitcast i32* %75 to i64*
  %77 = load i32, i32* @L2CAP_SEND_CMD_OFFSET, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* @HCI_DATA_PREAMBLE_SIZE, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* @L2CAP_PKT_OVERHEAD, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* @L2CAP_CMD_OVERHEAD, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  store i64* %85, i64** %10, align 8
  %86 = load i64, i64* %8, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %73
  %89 = load i64*, i64** %10, align 8
  %90 = load i64*, i64** %7, align 8
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @ARRAY_TO_STREAM(i64* %89, i64* %90, i64 %91)
  br label %93

93:                                               ; preds = %88, %73
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = call i32 @l2c_link_check_send_pkts(%struct.TYPE_6__* %94, i32* null, i32* %95)
  br label %97

97:                                               ; preds = %93, %71, %22
  ret void
}

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*, ...) #1

declare dso_local %struct.TYPE_7__* @controller_get_interface(...) #1

declare dso_local i32* @l2cu_build_header(%struct.TYPE_6__*, i64, i32, i64) #1

declare dso_local i32 @ARRAY_TO_STREAM(i64*, i64*, i64) #1

declare dso_local i32 @l2c_link_check_send_pkts(%struct.TYPE_6__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
