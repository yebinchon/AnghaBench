; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadGlobalParamsCfg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadGlobalParamsCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GP_MAX_SEND_SOCKET_QUEUE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"MAX_SEND_SOCKET_QUEUE_SIZE\00", align 1
@GP_MIN_SEND_SOCKET_QUEUE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"MIN_SEND_SOCKET_QUEUE_SIZE\00", align 1
@GP_MAX_SEND_SOCKET_QUEUE_NUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"MAX_SEND_SOCKET_QUEUE_NUM\00", align 1
@GP_SELECT_TIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"SELECT_TIME\00", align 1
@GP_SELECT_TIME_FOR_NAT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"SELECT_TIME_FOR_NAT\00", align 1
@GP_MAX_STORED_QUEUE_NUM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"MAX_STORED_QUEUE_NUM\00", align 1
@GP_MAX_BUFFERING_PACKET_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"MAX_BUFFERING_PACKET_SIZE\00", align 1
@GP_HUB_ARP_SEND_INTERVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"HUB_ARP_SEND_INTERVAL\00", align 1
@GP_MAC_TABLE_EXPIRE_TIME = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"MAC_TABLE_EXPIRE_TIME\00", align 1
@GP_IP_TABLE_EXPIRE_TIME = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"IP_TABLE_EXPIRE_TIME\00", align 1
@GP_IP_TABLE_EXPIRE_TIME_DHCP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"IP_TABLE_EXPIRE_TIME_DHCP\00", align 1
@GP_STORM_CHECK_SPAN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"STORM_CHECK_SPAN\00", align 1
@GP_STORM_DISCARD_VALUE_START = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"STORM_DISCARD_VALUE_START\00", align 1
@GP_STORM_DISCARD_VALUE_END = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"STORM_DISCARD_VALUE_END\00", align 1
@GP_MAX_MAC_TABLES = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"MAX_MAC_TABLES\00", align 1
@GP_MAX_IP_TABLES = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [14 x i8] c"MAX_IP_TABLES\00", align 1
@GP_MAX_HUB_LINKS = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [14 x i8] c"MAX_HUB_LINKS\00", align 1
@GP_MEM_FIFO_REALLOC_MEM_SIZE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [26 x i8] c"MEM_FIFO_REALLOC_MEM_SIZE\00", align 1
@GP_QUEUE_BUDGET = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [13 x i8] c"QUEUE_BUDGET\00", align 1
@GP_FIFO_BUDGET = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [12 x i8] c"FIFO_BUDGET\00", align 1
@MEM_FIFO_REALLOC_MEM_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiLoadGlobalParamsCfg(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @GP_MAX_SEND_SOCKET_QUEUE_SIZE, align 4
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @CfgGetInt(i32* %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @SiLoadGlobalParamItem(i32 %3, i32 %5)
  %7 = load i32, i32* @GP_MIN_SEND_SOCKET_QUEUE_SIZE, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @CfgGetInt(i32* %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @SiLoadGlobalParamItem(i32 %7, i32 %9)
  %11 = load i32, i32* @GP_MAX_SEND_SOCKET_QUEUE_NUM, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @CfgGetInt(i32* %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 @SiLoadGlobalParamItem(i32 %11, i32 %13)
  %15 = load i32, i32* @GP_SELECT_TIME, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @CfgGetInt(i32* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %18 = call i32 @SiLoadGlobalParamItem(i32 %15, i32 %17)
  %19 = load i32, i32* @GP_SELECT_TIME_FOR_NAT, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @CfgGetInt(i32* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %22 = call i32 @SiLoadGlobalParamItem(i32 %19, i32 %21)
  %23 = load i32, i32* @GP_MAX_STORED_QUEUE_NUM, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @CfgGetInt(i32* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %26 = call i32 @SiLoadGlobalParamItem(i32 %23, i32 %25)
  %27 = load i32, i32* @GP_MAX_BUFFERING_PACKET_SIZE, align 4
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @CfgGetInt(i32* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %30 = call i32 @SiLoadGlobalParamItem(i32 %27, i32 %29)
  %31 = load i32, i32* @GP_HUB_ARP_SEND_INTERVAL, align 4
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @CfgGetInt(i32* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %34 = call i32 @SiLoadGlobalParamItem(i32 %31, i32 %33)
  %35 = load i32, i32* @GP_MAC_TABLE_EXPIRE_TIME, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @CfgGetInt(i32* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %38 = call i32 @SiLoadGlobalParamItem(i32 %35, i32 %37)
  %39 = load i32, i32* @GP_IP_TABLE_EXPIRE_TIME, align 4
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @CfgGetInt(i32* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %42 = call i32 @SiLoadGlobalParamItem(i32 %39, i32 %41)
  %43 = load i32, i32* @GP_IP_TABLE_EXPIRE_TIME_DHCP, align 4
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @CfgGetInt(i32* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %46 = call i32 @SiLoadGlobalParamItem(i32 %43, i32 %45)
  %47 = load i32, i32* @GP_STORM_CHECK_SPAN, align 4
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @CfgGetInt(i32* %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %50 = call i32 @SiLoadGlobalParamItem(i32 %47, i32 %49)
  %51 = load i32, i32* @GP_STORM_DISCARD_VALUE_START, align 4
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @CfgGetInt(i32* %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  %54 = call i32 @SiLoadGlobalParamItem(i32 %51, i32 %53)
  %55 = load i32, i32* @GP_STORM_DISCARD_VALUE_END, align 4
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @CfgGetInt(i32* %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  %58 = call i32 @SiLoadGlobalParamItem(i32 %55, i32 %57)
  %59 = load i32, i32* @GP_MAX_MAC_TABLES, align 4
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @CfgGetInt(i32* %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %62 = call i32 @SiLoadGlobalParamItem(i32 %59, i32 %61)
  %63 = load i32, i32* @GP_MAX_IP_TABLES, align 4
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @CfgGetInt(i32* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %66 = call i32 @SiLoadGlobalParamItem(i32 %63, i32 %65)
  %67 = load i32, i32* @GP_MAX_HUB_LINKS, align 4
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @CfgGetInt(i32* %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  %70 = call i32 @SiLoadGlobalParamItem(i32 %67, i32 %69)
  %71 = load i32, i32* @GP_MEM_FIFO_REALLOC_MEM_SIZE, align 4
  %72 = load i32*, i32** %2, align 8
  %73 = call i32 @CfgGetInt(i32* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0))
  %74 = call i32 @SiLoadGlobalParamItem(i32 %71, i32 %73)
  %75 = load i32, i32* @GP_QUEUE_BUDGET, align 4
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @CfgGetInt(i32* %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  %78 = call i32 @SiLoadGlobalParamItem(i32 %75, i32 %77)
  %79 = load i32, i32* @GP_FIFO_BUDGET, align 4
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @CfgGetInt(i32* %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  %82 = call i32 @SiLoadGlobalParamItem(i32 %79, i32 %81)
  %83 = load i32, i32* @MEM_FIFO_REALLOC_MEM_SIZE, align 4
  %84 = call i32 @SetFifoCurrentReallocMemSize(i32 %83)
  ret void
}

declare dso_local i32 @SiLoadGlobalParamItem(i32, i32) #1

declare dso_local i32 @CfgGetInt(i32*, i8*) #1

declare dso_local i32 @SetFifoCurrentReallocMemSize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
