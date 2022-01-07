; ModuleID = '/home/carl/AnghaBench/RetroArch/network/extr_net_logger.c_logger_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/extr_net_logger.c_logger_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32 }

@PC_DEVELOPMENT_IP_ADDRESS = common dso_local global i8* null, align 8
@PC_DEVELOPMENT_UDP_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Could not initialize network logger interface.\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ra_netlogger\00", align 1
@SOCKET_DOMAIN_INET = common dso_local global i32 0, align 4
@SOCKET_TYPE_DATAGRAM = common dso_local global i32 0, align 4
@SOCKET_PROTOCOL_NONE = common dso_local global i32 0, align 4
@g_sid = common dso_local global i32 0, align 4
@target = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @logger_init() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load i8*, i8** @PC_DEVELOPMENT_IP_ADDRESS, align 8
  store i8* %4, i8** %2, align 8
  %5 = load i32, i32* @PC_DEVELOPMENT_UDP_PORT, align 4
  store i32 %5, i32* %3, align 4
  %6 = call i32 (...) @network_init()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %22

10:                                               ; preds = %0
  %11 = load i32, i32* @SOCKET_DOMAIN_INET, align 4
  %12 = load i32, i32* @SOCKET_TYPE_DATAGRAM, align 4
  %13 = load i32, i32* @SOCKET_PROTOCOL_NONE, align 4
  %14 = call i32 @socket_create(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* @g_sid, align 4
  %15 = load i32, i32* %3, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* @SOCKET_DOMAIN_INET, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  store i32 %19, i32* %20, align 8
  %21 = call i32 @socket_set_target(i32* @target, %struct.TYPE_3__* %1)
  br label %22

22:                                               ; preds = %10, %8
  ret void
}

declare dso_local i32 @network_init(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @socket_create(i8*, i32, i32, i32) #1

declare dso_local i32 @socket_set_target(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
