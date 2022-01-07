; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_net.c_NET_IPXSocket.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_net.c_NET_IPXSocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_ipx = type { i64, i32, i32, i32 }

@AF_IPX = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@NSPROTO_IPX = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i32 0, align 4
@WSAEAFNOSUPPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"WARNING: IPX_Socket: socket: %s\0A\00", align 1
@FIONBIO = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"WARNING: IPX_Socket: ioctl FIONBIO: %s\0A\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_BROADCAST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"WARNING: IPX_Socket: setsockopt SO_BROADCAST: %s\0A\00", align 1
@PORT_ANY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"WARNING: IPX_Socket: bind: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NET_IPXSocket(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_ipx, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 1, i32* %6, align 4
  %8 = load i32, i32* @AF_IPX, align 4
  %9 = load i32, i32* @SOCK_DGRAM, align 4
  %10 = load i32, i32* @NSPROTO_IPX, align 4
  %11 = call i32 @socket(i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @INVALID_SOCKET, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = call i32 (...) @WSAGetLastError()
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @WSAEAFNOSUPPORT, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = call i32 (...) @NET_ErrorString()
  %21 = call i32 @Com_Printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %19, %14
  store i32 0, i32* %2, align 4
  br label %75

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @FIONBIO, align 4
  %26 = call i64 @ioctlsocket(i32 %24, i32 %25, i32* %6)
  %27 = load i64, i64* @SOCKET_ERROR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = call i32 (...) @NET_ErrorString()
  %31 = call i32 @Com_Printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  store i32 0, i32* %2, align 4
  br label %75

32:                                               ; preds = %23
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @SOL_SOCKET, align 4
  %35 = load i32, i32* @SO_BROADCAST, align 4
  %36 = bitcast i32* %6 to i8*
  %37 = call i64 @setsockopt(i32 %33, i32 %34, i32 %35, i8* %36, i32 4)
  %38 = load i64, i64* @SOCKET_ERROR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = call i32 (...) @NET_ErrorString()
  %42 = call i32 @Com_Printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  store i32 0, i32* %2, align 4
  br label %75

43:                                               ; preds = %32
  %44 = load i32, i32* @AF_IPX, align 4
  %45 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %5, i32 0, i32 3
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %5, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @memset(i32 %47, i32 0, i32 4)
  %49 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %5, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @memset(i32 %50, i32 0, i32 6)
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @PORT_ANY, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %5, i32 0, i32 0
  store i64 0, i64* %56, align 8
  br label %62

57:                                               ; preds = %43
  %58 = load i32, i32* %3, align 4
  %59 = trunc i32 %58 to i16
  %60 = call i64 @htons(i16 signext %59)
  %61 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %5, i32 0, i32 0
  store i64 %60, i64* %61, align 8
  br label %62

62:                                               ; preds = %57, %55
  %63 = load i32, i32* %4, align 4
  %64 = bitcast %struct.sockaddr_ipx* %5 to i8*
  %65 = call i64 @bind(i32 %63, i8* %64, i32 24)
  %66 = load i64, i64* @SOCKET_ERROR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = call i32 (...) @NET_ErrorString()
  %70 = call i32 @Com_Printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @closesocket(i32 %71)
  store i32 0, i32* %2, align 4
  br label %75

73:                                               ; preds = %62
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %68, %40, %29, %22
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @Com_Printf(i8*, i32) #1

declare dso_local i32 @NET_ErrorString(...) #1

declare dso_local i64 @ioctlsocket(i32, i32, i32*) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @htons(i16 signext) #1

declare dso_local i64 @bind(i32, i8*, i32) #1

declare dso_local i32 @closesocket(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
