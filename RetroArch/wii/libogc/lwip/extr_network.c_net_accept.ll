; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_net_accept.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_net_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.netsocket = type { i32, i32 }
%struct.netconn = type { i32, i32 }
%struct.ip_addr = type { i32, i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SOCKETS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"net_accept(%d)\0A\00", align 1
@ENOTSOCK = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@evt_callback = common dso_local global i32 0, align 4
@netsocket_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @net_accept(i32 %0, %struct.sockaddr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.netsocket*, align 8
  %9 = alloca %struct.netconn*, align 8
  %10 = alloca %struct.ip_addr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr_in, align 4
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = bitcast %struct.ip_addr* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* @SOCKETS_DEBUG, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @LWIP_DEBUGF(i32 %15, i8* %18)
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.netsocket* @get_socket(i32 %20)
  store %struct.netsocket* %21, %struct.netsocket** %8, align 8
  %22 = load %struct.netsocket*, %struct.netsocket** %8, align 8
  %23 = icmp ne %struct.netsocket* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOTSOCK, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %84

27:                                               ; preds = %3
  %28 = load %struct.netsocket*, %struct.netsocket** %8, align 8
  %29 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.netconn* @netconn_accept(i32 %30)
  store %struct.netconn* %31, %struct.netconn** %9, align 8
  %32 = load %struct.netconn*, %struct.netconn** %9, align 8
  %33 = call i32 @netconn_peer(%struct.netconn* %32, %struct.ip_addr* %10, i32* %11)
  %34 = call i32 @memset(%struct.sockaddr_in* %13, i32 0, i32 12)
  %35 = load i32, i32* @AF_INET, align 4
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @htons(i32 %37)
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %10, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ugt i64 %46, 12
  br i1 %47, label %48, label %50

48:                                               ; preds = %27
  %49 = load i32*, i32** %7, align 8
  store i32 12, i32* %49, align 4
  br label %50

50:                                               ; preds = %48, %27
  %51 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @memcpy(%struct.sockaddr* %51, %struct.sockaddr_in* %13, i32 %53)
  %55 = load %struct.netconn*, %struct.netconn** %9, align 8
  %56 = call i32 @alloc_socket(%struct.netconn* %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load %struct.netconn*, %struct.netconn** %9, align 8
  %61 = call i32 @netconn_delete(%struct.netconn* %60)
  store i32 -1, i32* %4, align 4
  br label %84

62:                                               ; preds = %50
  %63 = load i32, i32* @evt_callback, align 4
  %64 = load %struct.netconn*, %struct.netconn** %9, align 8
  %65 = getelementptr inbounds %struct.netconn, %struct.netconn* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call %struct.netsocket* @get_socket(i32 %66)
  store %struct.netsocket* %67, %struct.netsocket** %8, align 8
  %68 = load i32, i32* @netsocket_sem, align 4
  %69 = call i32 @LWP_SemWait(i32 %68)
  %70 = load %struct.netconn*, %struct.netconn** %9, align 8
  %71 = getelementptr inbounds %struct.netconn, %struct.netconn* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 -1, %72
  %74 = load %struct.netsocket*, %struct.netsocket** %8, align 8
  %75 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.netconn*, %struct.netconn** %9, align 8
  %80 = getelementptr inbounds %struct.netconn, %struct.netconn* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @netsocket_sem, align 4
  %82 = call i32 @LWP_SemPost(i32 %81)
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %62, %59, %24
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #2

declare dso_local %struct.netsocket* @get_socket(i32) #2

declare dso_local %struct.netconn* @netconn_accept(i32) #2

declare dso_local i32 @netconn_peer(%struct.netconn*, %struct.ip_addr*, i32*) #2

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @memcpy(%struct.sockaddr*, %struct.sockaddr_in*, i32) #2

declare dso_local i32 @alloc_socket(%struct.netconn*) #2

declare dso_local i32 @netconn_delete(%struct.netconn*) #2

declare dso_local i32 @LWP_SemWait(i32) #2

declare dso_local i32 @LWP_SemPost(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
