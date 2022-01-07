; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_unix_net.c_Sys_SendPacket.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_unix_net.c_Sys_SendPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@NA_BROADCAST = common dso_local global i64 0, align 8
@ip_socket = common dso_local global i32 0, align 4
@NA_IP = common dso_local global i64 0, align 8
@NA_IPX = common dso_local global i64 0, align 8
@ipx_socket = common dso_local global i32 0, align 4
@NA_BROADCAST_IPX = common dso_local global i64 0, align 8
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"NET_SendPacket: bad address type\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"NET_SendPacket ERROR: %s to %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Sys_SendPacket(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i64 %2, i64* %10, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NA_BROADCAST, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @ip_socket, align 4
  store i32 %16, i32* %9, align 4
  br label %44

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NA_IP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @ip_socket, align 4
  store i32 %23, i32* %9, align 4
  br label %43

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NA_IPX, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @ipx_socket, align 4
  store i32 %30, i32* %9, align 4
  br label %42

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NA_BROADCAST_IPX, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @ipx_socket, align 4
  store i32 %37, i32* %9, align 4
  br label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @ERR_FATAL, align 4
  %40 = call i32 @Com_Error(i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %63

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %29
  br label %43

43:                                               ; preds = %42, %22
  br label %44

44:                                               ; preds = %43, %15
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  br label %63

48:                                               ; preds = %44
  %49 = call i32 @NetadrToSockadr(%struct.TYPE_5__* %4, %struct.sockaddr_in* %8)
  %50 = load i32, i32* %9, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %5, align 4
  %53 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %54 = call i32 @sendto(i32 %50, i8* %51, i32 %52, i32 0, %struct.sockaddr* %53, i32 4)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %63

57:                                               ; preds = %48
  %58 = call i32 (...) @NET_ErrorString()
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @NET_AdrToString(i64 %60)
  %62 = call i32 @Com_Printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %38, %47, %57, %48
  ret void
}

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @NetadrToSockadr(%struct.TYPE_5__*, %struct.sockaddr_in*) #1

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @Com_Printf(i8*, i32, i32) #1

declare dso_local i32 @NET_ErrorString(...) #1

declare dso_local i32 @NET_AdrToString(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
