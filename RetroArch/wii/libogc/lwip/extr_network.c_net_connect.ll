; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_net_connect.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_net_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.netsocket = type { i32 }
%struct.ip_addr = type { i32 }
%struct.sockaddr_in = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOTSOCK = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i64 0, align 8
@SOCKETS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"net_connect(%d, AF_UNSPEC)\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"net_connect(%d, addr=\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" port=%u)\0A\00", align 1
@ERR_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"net_connect(%d) failed, err=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"net_connect(%d) succeeded\0A\00", align 1
@EISCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @net_connect(i32 %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netsocket*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ip_addr, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.netsocket* @get_socket(i32 %12)
  store %struct.netsocket* %13, %struct.netsocket** %8, align 8
  %14 = load %struct.netsocket*, %struct.netsocket** %8, align 8
  %15 = icmp ne %struct.netsocket* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOTSOCK, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %84

19:                                               ; preds = %3
  %20 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %21 = bitcast %struct.sockaddr* %20 to %struct.sockaddr_in*
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AF_UNSPEC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = load i32, i32* @SOCKETS_DEBUG, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @LWIP_DEBUGF(i32 %27, i8* %30)
  %32 = load %struct.netsocket*, %struct.netsocket** %8, align 8
  %33 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @netconn_disconnect(i32 %34)
  store i64 %35, i64* %9, align 8
  br label %66

36:                                               ; preds = %19
  %37 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %38 = bitcast %struct.sockaddr* %37 to %struct.sockaddr_in*
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %10, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %44 = bitcast %struct.sockaddr* %43 to %struct.sockaddr_in*
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* @SOCKETS_DEBUG, align 4
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @LWIP_DEBUGF(i32 %47, i8* %50)
  %52 = load i32, i32* @SOCKETS_DEBUG, align 4
  %53 = call i32 @ip_addr_debug_print(i32 %52, %struct.ip_addr* %10)
  %54 = load i32, i32* @SOCKETS_DEBUG, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @ntohs(i32 %55)
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = call i32 @LWIP_DEBUGF(i32 %54, i8* %58)
  %60 = load %struct.netsocket*, %struct.netsocket** %8, align 8
  %61 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @ntohs(i32 %63)
  %65 = call i64 @netconn_connect(i32 %62, %struct.ip_addr* %10, i32 %64)
  store i64 %65, i64* %9, align 8
  br label %66

66:                                               ; preds = %36, %26
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* @ERR_OK, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* @SOCKETS_DEBUG, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i64, i64* %9, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = call i32 @LWIP_DEBUGF(i32 %71, i8* %74)
  store i32 -1, i32* %4, align 4
  br label %84

76:                                               ; preds = %66
  %77 = load i32, i32* @SOCKETS_DEBUG, align 4
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = call i32 @LWIP_DEBUGF(i32 %77, i8* %80)
  %82 = load i32, i32* @EISCONN, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %76, %70, %16
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.netsocket* @get_socket(i32) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i64 @netconn_disconnect(i32) #1

declare dso_local i32 @ip_addr_debug_print(i32, %struct.ip_addr*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @netconn_connect(i32, %struct.ip_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
