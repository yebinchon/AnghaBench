; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiWriteGlobalParamsCfg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiWriteGlobalParamsCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"MAX_SEND_SOCKET_QUEUE_SIZE\00", align 1
@MAX_SEND_SOCKET_QUEUE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"MIN_SEND_SOCKET_QUEUE_SIZE\00", align 1
@MIN_SEND_SOCKET_QUEUE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"MAX_SEND_SOCKET_QUEUE_NUM\00", align 1
@MAX_SEND_SOCKET_QUEUE_NUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"SELECT_TIME\00", align 1
@SELECT_TIME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"SELECT_TIME_FOR_NAT\00", align 1
@SELECT_TIME_FOR_NAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"MAX_STORED_QUEUE_NUM\00", align 1
@MAX_STORED_QUEUE_NUM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"MAX_BUFFERING_PACKET_SIZE\00", align 1
@MAX_BUFFERING_PACKET_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"HUB_ARP_SEND_INTERVAL\00", align 1
@HUB_ARP_SEND_INTERVAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"MAC_TABLE_EXPIRE_TIME\00", align 1
@MAC_TABLE_EXPIRE_TIME = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"IP_TABLE_EXPIRE_TIME\00", align 1
@IP_TABLE_EXPIRE_TIME = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"IP_TABLE_EXPIRE_TIME_DHCP\00", align 1
@IP_TABLE_EXPIRE_TIME_DHCP = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"STORM_CHECK_SPAN\00", align 1
@STORM_CHECK_SPAN = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"STORM_DISCARD_VALUE_START\00", align 1
@STORM_DISCARD_VALUE_START = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"STORM_DISCARD_VALUE_END\00", align 1
@STORM_DISCARD_VALUE_END = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"MAX_MAC_TABLES\00", align 1
@MAX_MAC_TABLES = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [14 x i8] c"MAX_IP_TABLES\00", align 1
@MAX_IP_TABLES = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [14 x i8] c"MAX_HUB_LINKS\00", align 1
@MAX_HUB_LINKS = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [26 x i8] c"MEM_FIFO_REALLOC_MEM_SIZE\00", align 1
@MEM_FIFO_REALLOC_MEM_SIZE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [13 x i8] c"QUEUE_BUDGET\00", align 1
@QUEUE_BUDGET = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [12 x i8] c"FIFO_BUDGET\00", align 1
@FIFO_BUDGET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiWriteGlobalParamsCfg(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %67

6:                                                ; preds = %1
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @MAX_SEND_SOCKET_QUEUE_SIZE, align 4
  %9 = call i32 @CfgAddInt(i32* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @MIN_SEND_SOCKET_QUEUE_SIZE, align 4
  %12 = call i32 @CfgAddInt(i32* %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @MAX_SEND_SOCKET_QUEUE_NUM, align 4
  %15 = call i32 @CfgAddInt(i32* %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @SELECT_TIME, align 4
  %18 = call i32 @CfgAddInt(i32* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @SELECT_TIME_FOR_NAT, align 4
  %21 = call i32 @CfgAddInt(i32* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @MAX_STORED_QUEUE_NUM, align 4
  %24 = call i32 @CfgAddInt(i32* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* @MAX_BUFFERING_PACKET_SIZE, align 4
  %27 = call i32 @CfgAddInt(i32* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @HUB_ARP_SEND_INTERVAL, align 4
  %30 = call i32 @CfgAddInt(i32* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @MAC_TABLE_EXPIRE_TIME, align 4
  %33 = call i32 @CfgAddInt(i32* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %32)
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* @IP_TABLE_EXPIRE_TIME, align 4
  %36 = call i32 @CfgAddInt(i32* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* @IP_TABLE_EXPIRE_TIME_DHCP, align 4
  %39 = call i32 @CfgAddInt(i32* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %38)
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* @STORM_CHECK_SPAN, align 4
  %42 = call i32 @CfgAddInt(i32* %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* @STORM_DISCARD_VALUE_START, align 4
  %45 = call i32 @CfgAddInt(i32* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %44)
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* @STORM_DISCARD_VALUE_END, align 4
  %48 = call i32 @CfgAddInt(i32* %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %47)
  %49 = load i32*, i32** %2, align 8
  %50 = load i32, i32* @MAX_MAC_TABLES, align 4
  %51 = call i32 @CfgAddInt(i32* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %2, align 8
  %53 = load i32, i32* @MAX_IP_TABLES, align 4
  %54 = call i32 @CfgAddInt(i32* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %53)
  %55 = load i32*, i32** %2, align 8
  %56 = load i32, i32* @MAX_HUB_LINKS, align 4
  %57 = call i32 @CfgAddInt(i32* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %2, align 8
  %59 = load i32, i32* @MEM_FIFO_REALLOC_MEM_SIZE, align 4
  %60 = call i32 @CfgAddInt(i32* %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i32 %59)
  %61 = load i32*, i32** %2, align 8
  %62 = load i32, i32* @QUEUE_BUDGET, align 4
  %63 = call i32 @CfgAddInt(i32* %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 %62)
  %64 = load i32*, i32** %2, align 8
  %65 = load i32, i32* @FIFO_BUDGET, align 4
  %66 = call i32 @CfgAddInt(i32* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @CfgAddInt(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
