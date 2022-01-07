; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_send_peer_cmd_reject.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_send_peer_cmd_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L2CAP_CMD_REJ_MTU_EXCEEDED = common dso_local global i32 0, align 4
@L2CAP_CMD_REJ_INVALID_CID = common dso_local global i32 0, align 4
@L2CAP_CMD_REJECT_LEN = common dso_local global i64 0, align 8
@L2CAP_CMD_REJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"L2CAP - no buffer cmd_rej\00", align 1
@L2CAP_SEND_CMD_OFFSET = common dso_local global i32 0, align 4
@HCI_DATA_PREAMBLE_SIZE = common dso_local global i32 0, align 4
@L2CAP_PKT_OVERHEAD = common dso_local global i32 0, align 4
@L2CAP_CMD_OVERHEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2cu_send_peer_cmd_reject(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @L2CAP_CMD_REJ_MTU_EXCEEDED, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 2, i32* %11, align 4
  br label %25

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @L2CAP_CMD_REJ_INVALID_CID, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 4, i32* %11, align 4
  br label %24

23:                                               ; preds = %18
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %23, %22
  br label %25

25:                                               ; preds = %24, %17
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* @L2CAP_CMD_REJECT_LEN, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @L2CAP_CMD_REJECT, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32* @l2cu_build_header(i32* %26, i32 %31, i32 %32, i32 %33)
  store i32* %34, i32** %12, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %73

38:                                               ; preds = %25
  %39 = load i32*, i32** %12, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* @L2CAP_SEND_CMD_OFFSET, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* @HCI_DATA_PREAMBLE_SIZE, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* @L2CAP_PKT_OVERHEAD, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* @L2CAP_CMD_OVERHEAD, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32* %52, i32** %13, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @UINT16_TO_STREAM(i32* %53, i32 %54)
  %56 = load i32, i32* %11, align 4
  %57 = icmp sge i32 %56, 2
  br i1 %57, label %58, label %62

58:                                               ; preds = %38
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @UINT16_TO_STREAM(i32* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %38
  %63 = load i32, i32* %11, align 4
  %64 = icmp sge i32 %63, 4
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @UINT16_TO_STREAM(i32* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i32*, i32** %6, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @l2c_link_check_send_pkts(i32* %70, i32* null, i32* %71)
  br label %73

73:                                               ; preds = %69, %36
  ret void
}

declare dso_local i32* @l2cu_build_header(i32*, i32, i32, i32) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*) #1

declare dso_local i32 @UINT16_TO_STREAM(i32*, i32) #1

declare dso_local i32 @l2c_link_check_send_pkts(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
