; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadHubLogCfg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadHubLogCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8**, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [16 x i8] c"SaveSecurityLog\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"SecurityLogSwitchType\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"SavePacketLog\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"PacketLogSwitchType\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"PACKET_LOG_TCP_CONN\00", align 1
@PACKET_LOG_TCP_CONN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"PACKET_LOG_TCP\00", align 1
@PACKET_LOG_TCP = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"PACKET_LOG_DHCP\00", align 1
@PACKET_LOG_DHCP = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"PACKET_LOG_UDP\00", align 1
@PACKET_LOG_UDP = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"PACKET_LOG_ICMP\00", align 1
@PACKET_LOG_ICMP = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"PACKET_LOG_IP\00", align 1
@PACKET_LOG_IP = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [15 x i8] c"PACKET_LOG_ARP\00", align 1
@PACKET_LOG_ARP = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [20 x i8] c"PACKET_LOG_ETHERNET\00", align 1
@PACKET_LOG_ETHERNET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiLoadHubLogCfg(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = icmp eq %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  br label %86

11:                                               ; preds = %7
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = call i32 @Zero(%struct.TYPE_4__* %12, i32 40)
  %14 = load i32*, i32** %4, align 8
  %15 = call i8* @CfgGetBool(i32* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 4
  store i8* %15, i8** %17, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i8* @CfgGetInt(i32* %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i8* @CfgGetBool(i32* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i8* @CfgGetInt(i32* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i8* @CfgGetInt(i32* %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i8**, i8*** %33, align 8
  %35 = load i64, i64* @PACKET_LOG_TCP_CONN, align 8
  %36 = getelementptr inbounds i8*, i8** %34, i64 %35
  store i8* %31, i8** %36, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i8* @CfgGetInt(i32* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i8**, i8*** %40, align 8
  %42 = load i64, i64* @PACKET_LOG_TCP, align 8
  %43 = getelementptr inbounds i8*, i8** %41, i64 %42
  store i8* %38, i8** %43, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i8* @CfgGetInt(i32* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = load i64, i64* @PACKET_LOG_DHCP, align 8
  %50 = getelementptr inbounds i8*, i8** %48, i64 %49
  store i8* %45, i8** %50, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i8* @CfgGetInt(i32* %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = load i64, i64* @PACKET_LOG_UDP, align 8
  %57 = getelementptr inbounds i8*, i8** %55, i64 %56
  store i8* %52, i8** %57, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = call i8* @CfgGetInt(i32* %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i8**, i8*** %61, align 8
  %63 = load i64, i64* @PACKET_LOG_ICMP, align 8
  %64 = getelementptr inbounds i8*, i8** %62, i64 %63
  store i8* %59, i8** %64, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = call i8* @CfgGetInt(i32* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i8**, i8*** %68, align 8
  %70 = load i64, i64* @PACKET_LOG_IP, align 8
  %71 = getelementptr inbounds i8*, i8** %69, i64 %70
  store i8* %66, i8** %71, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = call i8* @CfgGetInt(i32* %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i8**, i8*** %75, align 8
  %77 = load i64, i64* @PACKET_LOG_ARP, align 8
  %78 = getelementptr inbounds i8*, i8** %76, i64 %77
  store i8* %73, i8** %78, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = call i8* @CfgGetInt(i32* %79, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i8**, i8*** %82, align 8
  %84 = load i64, i64* @PACKET_LOG_ETHERNET, align 8
  %85 = getelementptr inbounds i8*, i8** %83, i64 %84
  store i8* %80, i8** %85, align 8
  br label %86

86:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_4__*, i32) #1

declare dso_local i8* @CfgGetBool(i32*, i8*) #1

declare dso_local i8* @CfgGetInt(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
