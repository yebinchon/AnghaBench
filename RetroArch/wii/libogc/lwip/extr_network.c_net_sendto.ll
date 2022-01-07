; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_net_sendto.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_net_sendto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.netsocket = type { i32 }
%struct.ip_addr = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SOCKETS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"net_sendto(%d, data=%p, size=%d, flags=0x%x)\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@ENOTSOCK = common dso_local global i64 0, align 8
@ERR_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"net_sendto(%d, data=%p, size=%d, flags=0x%x to=\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" port=%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @net_sendto(i64 %0, i8* %1, i64 %2, i32 %3, %struct.sockaddr* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.netsocket*, align 8
  %15 = alloca %struct.ip_addr, align 4
  %16 = alloca %struct.ip_addr, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.sockaddr* %4, %struct.sockaddr** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %18, align 4
  %21 = load i32, i32* @SOCKETS_DEBUG, align 4
  %22 = load i64, i64* %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @LWIP_DEBUGF(i32 %21, i8* %27)
  %29 = load i8*, i8** %9, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %6
  %32 = load i64, i64* %10, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %6
  %35 = load i64, i64* @EINVAL, align 8
  %36 = sub nsw i64 0, %35
  store i64 %36, i64* %7, align 8
  br label %106

37:                                               ; preds = %31
  %38 = load i64, i64* %8, align 8
  %39 = call %struct.netsocket* @get_socket(i64 %38)
  store %struct.netsocket* %39, %struct.netsocket** %14, align 8
  %40 = load %struct.netsocket*, %struct.netsocket** %14, align 8
  %41 = icmp ne %struct.netsocket* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* @ENOTSOCK, align 8
  %44 = sub nsw i64 0, %43
  store i64 %44, i64* %7, align 8
  br label %106

45:                                               ; preds = %37
  %46 = load %struct.netsocket*, %struct.netsocket** %14, align 8
  %47 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @netconn_peer(i32 %48, %struct.ip_addr* %16, i32* %18)
  %50 = load i64, i64* @ERR_OK, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %20, align 8
  %54 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %55 = bitcast %struct.sockaddr* %54 to %struct.sockaddr_in*
  %56 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %15, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %61 = bitcast %struct.sockaddr* %60 to %struct.sockaddr_in*
  %62 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* @SOCKETS_DEBUG, align 4
  %65 = load i64, i64* %8, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 @LWIP_DEBUGF(i32 %64, i8* %70)
  %72 = load i32, i32* @SOCKETS_DEBUG, align 4
  %73 = call i32 @ip_addr_debug_print(i32 %72, %struct.ip_addr* %15)
  %74 = load i32, i32* @SOCKETS_DEBUG, align 4
  %75 = load i32, i32* %17, align 4
  %76 = call i32 @ntohs(i32 %75)
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = call i32 @LWIP_DEBUGF(i32 %74, i8* %78)
  %80 = load %struct.netsocket*, %struct.netsocket** %14, align 8
  %81 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @ntohs(i32 %83)
  %85 = call i32 @netconn_connect(i32 %82, %struct.ip_addr* %15, i32 %84)
  %86 = load i64, i64* %8, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i64 @net_send(i64 %86, i8* %87, i64 %88, i32 %89)
  store i64 %90, i64* %19, align 8
  %91 = load i64, i64* %20, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %45
  %94 = load %struct.netsocket*, %struct.netsocket** %14, align 8
  %95 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %18, align 4
  %98 = call i32 @netconn_connect(i32 %96, %struct.ip_addr* %16, i32 %97)
  br label %104

99:                                               ; preds = %45
  %100 = load %struct.netsocket*, %struct.netsocket** %14, align 8
  %101 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @netconn_disconnect(i32 %102)
  br label %104

104:                                              ; preds = %99, %93
  %105 = load i64, i64* %19, align 8
  store i64 %105, i64* %7, align 8
  br label %106

106:                                              ; preds = %104, %42, %34
  %107 = load i64, i64* %7, align 8
  ret i64 %107
}

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local %struct.netsocket* @get_socket(i64) #1

declare dso_local i64 @netconn_peer(i32, %struct.ip_addr*, i32*) #1

declare dso_local i32 @ip_addr_debug_print(i32, %struct.ip_addr*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @netconn_connect(i32, %struct.ip_addr*, i32) #1

declare dso_local i64 @net_send(i64, i8*, i64, i32) #1

declare dso_local i32 @netconn_disconnect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
