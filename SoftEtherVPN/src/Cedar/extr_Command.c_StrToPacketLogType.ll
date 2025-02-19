; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_StrToPacketLogType.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_StrToPacketLogType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"tcpconn\00", align 1
@PACKET_LOG_TCP_CONN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"tcpdata\00", align 1
@PACKET_LOG_TCP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"dhcp\00", align 1
@PACKET_LOG_DHCP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@PACKET_LOG_UDP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"icmp\00", align 1
@PACKET_LOG_ICMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@PACKET_LOG_IP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"arp\00", align 1
@PACKET_LOG_ARP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"ethernet\00", align 1
@PACKET_LOG_ETHERNET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StrToPacketLogType(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @INFINITE, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @IsEmptyStr(i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %1
  %13 = load i32, i32* @INFINITE, align 4
  store i32 %13, i32* %2, align 4
  br label %71

14:                                               ; preds = %8
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @StartWith(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @PACKET_LOG_TCP_CONN, align 4
  store i32 %19, i32* %4, align 4
  br label %69

20:                                               ; preds = %14
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @StartWith(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @PACKET_LOG_TCP, align 4
  store i32 %25, i32* %4, align 4
  br label %68

26:                                               ; preds = %20
  %27 = load i8*, i8** %3, align 8
  %28 = call i64 @StartWith(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @PACKET_LOG_DHCP, align 4
  store i32 %31, i32* %4, align 4
  br label %67

32:                                               ; preds = %26
  %33 = load i8*, i8** %3, align 8
  %34 = call i64 @StartWith(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @PACKET_LOG_UDP, align 4
  store i32 %37, i32* %4, align 4
  br label %66

38:                                               ; preds = %32
  %39 = load i8*, i8** %3, align 8
  %40 = call i64 @StartWith(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @PACKET_LOG_ICMP, align 4
  store i32 %43, i32* %4, align 4
  br label %65

44:                                               ; preds = %38
  %45 = load i8*, i8** %3, align 8
  %46 = call i64 @StartWith(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @PACKET_LOG_IP, align 4
  store i32 %49, i32* %4, align 4
  br label %64

50:                                               ; preds = %44
  %51 = load i8*, i8** %3, align 8
  %52 = call i64 @StartWith(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @PACKET_LOG_ARP, align 4
  store i32 %55, i32* %4, align 4
  br label %63

56:                                               ; preds = %50
  %57 = load i8*, i8** %3, align 8
  %58 = call i64 @StartWith(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @PACKET_LOG_ETHERNET, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %56
  br label %63

63:                                               ; preds = %62, %54
  br label %64

64:                                               ; preds = %63, %48
  br label %65

65:                                               ; preds = %64, %42
  br label %66

66:                                               ; preds = %65, %36
  br label %67

67:                                               ; preds = %66, %30
  br label %68

68:                                               ; preds = %67, %24
  br label %69

69:                                               ; preds = %68, %18
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %12
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @IsEmptyStr(i8*) #1

declare dso_local i64 @StartWith(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
