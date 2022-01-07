; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_connect_timeout.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_connect_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@INVALID_SOCKET = common dso_local global i64 0, align 8
@TIMEOUT_TCP_PORT_CHECK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FD_CONNECT = common dso_local global i32 0, align 4
@WSAEALREADY = common dso_local global i32 0, align 4
@WSAEWOULDBLOCK = common dso_local global i32 0, align 4
@WSAEISCONN = common dso_local global i32 0, align 4
@WSAEINVAL = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@FIONBIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @connect_timeout(i64 %0, %struct.sockaddr* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @INVALID_SOCKET, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %27 = icmp eq %struct.sockaddr* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %5
  store i32 -1, i32* %6, align 4
  br label %134

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @TIMEOUT_TCP_PORT_CHECK, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %32, %29
  %35 = call %struct.TYPE_2__* (...) @GetOsInfo()
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @OS_IS_WINDOWS_NT(i32 %37)
  store i32 %38, i32* %19, align 4
  %39 = load i32, i32* @FALSE, align 4
  %40 = load i32, i32* @FALSE, align 4
  %41 = call i32 @CreateEvent(i32* null, i32 %39, i32 %40, i32* null)
  store i32 %41, i32* %15, align 4
  %42 = load i64, i64* %7, align 8
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* @FD_CONNECT, align 4
  %45 = call i32 @WSAEventSelect(i64 %42, i32 %43, i32 %44)
  %46 = call i64 (...) @Tick64()
  store i64 %46, i64* %12, align 8
  br label %47

47:                                               ; preds = %34, %120
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @connect(i64 %48, %struct.sockaddr* %49, i32 %50)
  store i32 %51, i32* %20, align 4
  %52 = load i32, i32* %20, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 1, i32* %13, align 4
  br label %121

55:                                               ; preds = %47
  %56 = call i32 (...) @WSAGetLastError()
  store i32 %56, i32* %21, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i32, i32* %21, align 4
  %61 = load i32, i32* @WSAEALREADY, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %21, align 4
  %65 = load i32, i32* @WSAEWOULDBLOCK, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* %19, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67, %59
  store i32 0, i32* %13, align 4
  br label %121

71:                                               ; preds = %67, %63, %55
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 0, i32* %13, align 4
  br label %121

76:                                               ; preds = %71
  %77 = load i32, i32* %21, align 4
  %78 = load i32, i32* @WSAEISCONN, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %87, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %21, align 4
  %82 = load i32, i32* @WSAEINVAL, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* %19, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84, %76
  store i32 1, i32* %13, align 4
  br label %121

88:                                               ; preds = %84, %80
  %89 = load i64, i64* %12, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %89, %91
  %93 = call i64 (...) @Tick64()
  %94 = icmp sle i64 %92, %93
  br i1 %94, label %110, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %21, align 4
  %97 = load i32, i32* @WSAEWOULDBLOCK, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %95
  %100 = load i32, i32* %21, align 4
  %101 = load i32, i32* @WSAEALREADY, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load i32, i32* %19, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %21, align 4
  %108 = load i32, i32* @WSAEINVAL, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106, %103, %88
  br label %121

111:                                              ; preds = %106, %99, %95
  %112 = call i32 @SleepThread(i32 10)
  %113 = load i32, i32* %15, align 4
  %114 = call i64 @WaitForSingleObject(i32 %113, i32 100)
  %115 = load i64, i64* @WAIT_OBJECT_0, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  store i32 1, i32* %14, align 4
  br label %118

118:                                              ; preds = %117, %111
  br label %119

119:                                              ; preds = %118
  br label %120

120:                                              ; preds = %119
  br label %47

121:                                              ; preds = %110, %87, %75, %70, %54
  %122 = load i64, i64* %7, align 8
  %123 = load i32, i32* %15, align 4
  %124 = call i32 @WSAEventSelect(i64 %122, i32 %123, i32 0)
  %125 = load i64, i64* %7, align 8
  %126 = load i32, i32* @FIONBIO, align 4
  %127 = call i32 @WSAIoctl(i64 %125, i32 %126, i32* %16, i32 4, i32* %17, i32 4, i32* %18, i32* null, i32* null)
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @CloseHandle(i32 %128)
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %121
  store i32 0, i32* %6, align 4
  br label %134

133:                                              ; preds = %121
  store i32 -1, i32* %6, align 4
  br label %134

134:                                              ; preds = %133, %132, %28
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i32 @OS_IS_WINDOWS_NT(i32) #1

declare dso_local %struct.TYPE_2__* @GetOsInfo(...) #1

declare dso_local i32 @CreateEvent(i32*, i32, i32, i32*) #1

declare dso_local i32 @WSAEventSelect(i64, i32, i32) #1

declare dso_local i64 @Tick64(...) #1

declare dso_local i32 @connect(i64, %struct.sockaddr*, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @SleepThread(i32) #1

declare dso_local i64 @WaitForSingleObject(i32, i32) #1

declare dso_local i32 @WSAIoctl(i64, i32, i32*, i32, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
