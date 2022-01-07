; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_send_peer_disc_rsp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_send_peer_disc_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"lcb already released\0A\00", align 1
@L2CAP_DISC_RSP_LEN = common dso_local global i32 0, align 4
@L2CAP_CMD_DISC_RSP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"L2CAP - no buffer for disc_rsp\00", align 1
@L2CAP_SEND_CMD_OFFSET = common dso_local global i32 0, align 4
@HCI_DATA_PREAMBLE_SIZE = common dso_local global i32 0, align 4
@L2CAP_PKT_OVERHEAD = common dso_local global i32 0, align 4
@L2CAP_CMD_OVERHEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2cu_send_peer_disc_rsp(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %48

15:                                               ; preds = %4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @L2CAP_DISC_RSP_LEN, align 4
  %18 = load i32, i32* @L2CAP_CMD_DISC_RSP, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32* @l2cu_build_header(i32* %16, i32 %17, i32 %18, i32 %19)
  store i32* %20, i32** %9, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %48

24:                                               ; preds = %15
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* @L2CAP_SEND_CMD_OFFSET, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* @HCI_DATA_PREAMBLE_SIZE, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* @L2CAP_PKT_OVERHEAD, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* @L2CAP_CMD_OVERHEAD, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @UINT16_TO_STREAM(i32* %39, i32 %40)
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @UINT16_TO_STREAM(i32* %42, i32 %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @l2c_link_check_send_pkts(i32* %45, i32* null, i32* %46)
  br label %48

48:                                               ; preds = %24, %22, %13
  ret void
}

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*) #1

declare dso_local i32* @l2cu_build_header(i32*, i32, i32, i32) #1

declare dso_local i32 @UINT16_TO_STREAM(i32*, i32) #1

declare dso_local i32 @l2c_link_check_send_pkts(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
