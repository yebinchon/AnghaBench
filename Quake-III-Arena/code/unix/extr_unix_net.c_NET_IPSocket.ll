; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_unix_net.c_NET_IPSocket.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_unix_net.c_NET_IPSocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@qtrue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Opening IP socket: %s:%i\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Opening IP socket: localhost:%i\0A\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"ERROR: UDP_OpenSocket: socket: %s\00", align 1
@FIONBIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"ERROR: UDP_OpenSocket: ioctl FIONBIO:%s\0A\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_BROADCAST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"ERROR: UDP_OpenSocket: setsockopt SO_BROADCAST:%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@INADDR_ANY = common dso_local global i32 0, align 4
@PORT_ANY = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"ERROR: UDP_OpenSocket: bind: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NET_IPSocket(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @qtrue, align 4
  store i32 %10, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %15)
  br label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %17, %13
  %21 = load i32, i32* @PF_INET, align 4
  %22 = load i32, i32* @SOCK_DGRAM, align 4
  %23 = load i32, i32* @IPPROTO_UDP, align 4
  %24 = call i32 @socket(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = call i32 (...) @NET_ErrorString()
  %28 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  store i32 0, i32* %3, align 4
  br label %92

29:                                               ; preds = %20
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @FIONBIO, align 4
  %32 = call i32 @ioctl(i32 %30, i32 %31, i32* %8)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = call i32 (...) @NET_ErrorString()
  %36 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  store i32 0, i32* %3, align 4
  br label %92

37:                                               ; preds = %29
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @SOL_SOCKET, align 4
  %40 = load i32, i32* @SO_BROADCAST, align 4
  %41 = bitcast i32* %9 to i8*
  %42 = call i32 @setsockopt(i32 %38, i32 %39, i32 %40, i8* %41, i32 4)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = call i32 (...) @NET_ErrorString()
  %46 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  store i32 0, i32* %3, align 4
  br label %92

47:                                               ; preds = %37
  %48 = load i8*, i8** %4, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @Q_stricmp(i8* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55, %50, %47
  %60 = load i32, i32* @INADDR_ANY, align 4
  %61 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %67

63:                                               ; preds = %55
  %64 = load i8*, i8** %4, align 8
  %65 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %66 = call i32 @Sys_StringToSockaddr(i8* %64, %struct.sockaddr* %65)
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @PORT_ANY, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i64 0, i64* %72, align 8
  br label %78

73:                                               ; preds = %67
  %74 = load i32, i32* %5, align 4
  %75 = trunc i32 %74 to i16
  %76 = call i64 @htons(i16 signext %75)
  %77 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i64 %76, i64* %77, align 8
  br label %78

78:                                               ; preds = %73, %71
  %79 = load i32, i32* @AF_INET, align 4
  %80 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i32 %79, i32* %80, align 8
  %81 = load i32, i32* %6, align 4
  %82 = bitcast %struct.sockaddr_in* %7 to i8*
  %83 = call i32 @bind(i32 %81, i8* %82, i32 24)
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = call i32 (...) @NET_ErrorString()
  %87 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @close(i32 %88)
  store i32 0, i32* %3, align 4
  br label %92

90:                                               ; preds = %78
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %85, %44, %34, %26
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @NET_ErrorString(...) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @Sys_StringToSockaddr(i8*, %struct.sockaddr*) #1

declare dso_local i64 @htons(i16 signext) #1

declare dso_local i32 @bind(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
