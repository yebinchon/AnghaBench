; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_net.c_NET_IPSocket.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_net.c_NET_IPSocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@qtrue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Opening IP socket: %s:%i\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Opening IP socket: localhost:%i\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i32 0, align 4
@WSAEAFNOSUPPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"WARNING: UDP_OpenSocket: socket: %s\0A\00", align 1
@FIONBIO = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"WARNING: UDP_OpenSocket: ioctl FIONBIO: %s\0A\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_BROADCAST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"WARNING: UDP_OpenSocket: setsockopt SO_BROADCAST: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@INADDR_ANY = common dso_local global i32 0, align 4
@PORT_ANY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"WARNING: UDP_OpenSocket: bind: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NET_IPSocket(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @qtrue, align 4
  store i32 %11, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %16)
  br label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %14
  %22 = load i32, i32* @AF_INET, align 4
  %23 = load i32, i32* @SOCK_DGRAM, align 4
  %24 = load i32, i32* @IPPROTO_UDP, align 4
  %25 = call i32 @socket(i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @INVALID_SOCKET, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = call i32 (...) @WSAGetLastError()
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @WSAEAFNOSUPPORT, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = call i32 (...) @NET_ErrorString()
  %35 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %28
  store i32 0, i32* %3, align 4
  br label %103

37:                                               ; preds = %21
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @FIONBIO, align 4
  %40 = call i64 @ioctlsocket(i32 %38, i32 %39, i32* %8)
  %41 = load i64, i64* @SOCKET_ERROR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = call i32 (...) @NET_ErrorString()
  %45 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  store i32 0, i32* %3, align 4
  br label %103

46:                                               ; preds = %37
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @SOL_SOCKET, align 4
  %49 = load i32, i32* @SO_BROADCAST, align 4
  %50 = bitcast i32* %9 to i8*
  %51 = call i64 @setsockopt(i32 %47, i32 %48, i32 %49, i8* %50, i32 4)
  %52 = load i64, i64* @SOCKET_ERROR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = call i32 (...) @NET_ErrorString()
  %56 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  store i32 0, i32* %3, align 4
  br label %103

57:                                               ; preds = %46
  %58 = load i8*, i8** %4, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @Q_stricmp(i8* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65, %60, %57
  %70 = load i32, i32* @INADDR_ANY, align 4
  %71 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %77

73:                                               ; preds = %65
  %74 = load i8*, i8** %4, align 8
  %75 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %76 = call i32 @Sys_StringToSockaddr(i8* %74, %struct.sockaddr* %75)
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @PORT_ANY, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i64 0, i64* %82, align 8
  br label %88

83:                                               ; preds = %77
  %84 = load i32, i32* %5, align 4
  %85 = trunc i32 %84 to i16
  %86 = call i64 @htons(i16 signext %85)
  %87 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i64 %86, i64* %87, align 8
  br label %88

88:                                               ; preds = %83, %81
  %89 = load i32, i32* @AF_INET, align 4
  %90 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i32 %89, i32* %90, align 8
  %91 = load i32, i32* %6, align 4
  %92 = bitcast %struct.sockaddr_in* %7 to i8*
  %93 = call i64 @bind(i32 %91, i8* %92, i32 24)
  %94 = load i64, i64* @SOCKET_ERROR, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %88
  %97 = call i32 (...) @NET_ErrorString()
  %98 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @closesocket(i32 %99)
  store i32 0, i32* %3, align 4
  br label %103

101:                                              ; preds = %88
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %96, %54, %43, %36
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @NET_ErrorString(...) #1

declare dso_local i64 @ioctlsocket(i32, i32, i32*) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @Sys_StringToSockaddr(i8*, %struct.sockaddr*) #1

declare dso_local i64 @htons(i16 signext) #1

declare dso_local i64 @bind(i32, i8*, i32) #1

declare dso_local i32 @closesocket(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
