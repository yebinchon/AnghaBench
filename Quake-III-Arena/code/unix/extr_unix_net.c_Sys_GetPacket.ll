; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_unix_net.c_Sys_GetPacket.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_unix_net.c_Sys_GetPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@ip_socket = common dso_local global i32 0, align 4
@ipx_socket = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"NET_GetPacket: %s from %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Oversize packet from %s\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Sys_GetPacket(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %74, %2
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %77

15:                                               ; preds = %12
  %16 = load i32, i32* %10, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @ip_socket, align 4
  store i32 %19, i32* %9, align 4
  br label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @ipx_socket, align 4
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  br label %74

26:                                               ; preds = %22
  store i32 4, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %35 = call i32 @recvfrom(i32 %27, i32 %30, i32 %33, i32 0, %struct.sockaddr* %34, i32* %8)
  store i32 %35, i32* %6, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @SockadrToNetadr(%struct.sockaddr_in* %7, i32* %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %58

42:                                               ; preds = %26
  %43 = load i32, i32* @errno, align 4
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @EWOULDBLOCK, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @ECONNREFUSED, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %42
  br label %74

52:                                               ; preds = %47
  %53 = call i32 (...) @NET_ErrorString()
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @NET_AdrToString(i32 %55)
  %57 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56)
  br label %74

58:                                               ; preds = %26
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @NET_AdrToString(i32 %66)
  %68 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %74

69:                                               ; preds = %58
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @qtrue, align 4
  store i32 %73, i32* %3, align 4
  br label %79

74:                                               ; preds = %64, %52, %51, %25
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %12

77:                                               ; preds = %12
  %78 = load i32, i32* @qfalse, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %69
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @recvfrom(i32, i32, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @SockadrToNetadr(%struct.sockaddr_in*, i32*) #1

declare dso_local i32 @Com_Printf(i8*, i32, ...) #1

declare dso_local i32 @NET_ErrorString(...) #1

declare dso_local i32 @NET_AdrToString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
