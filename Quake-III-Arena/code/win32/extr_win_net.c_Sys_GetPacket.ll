; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_net.c_Sys_GetPacket.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_net.c_Sys_GetPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i16, i32 }
%struct.TYPE_8__ = type { i32*, i32, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }

@ip_socket = common dso_local global i32 0, align 4
@ipx_socket = common dso_local global i32 0, align 4
@recvfromCount = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i32 0, align 4
@WSAEWOULDBLOCK = common dso_local global i32 0, align 4
@WSAECONNRESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"NET_GetPacket: %s\0A\00", align 1
@usingSocks = common dso_local global i64 0, align 8
@socksRelayAddr = common dso_local global i32 0, align 4
@NA_IP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Oversize packet from %s\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Sys_GetPacket(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %180, %2
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %183

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
  br label %180

26:                                               ; preds = %22
  store i32 4, i32* %8, align 4
  %27 = load i32, i32* @recvfromCount, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @recvfromCount, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @recvfrom(i32 %29, i32* %32, i32 %35, i32 0, %struct.sockaddr* %7, i32* %8)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @SOCKET_ERROR, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %26
  %41 = call i32 (...) @WSAGetLastError()
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @WSAEWOULDBLOCK, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @WSAECONNRESET, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %40
  br label %180

50:                                               ; preds = %45
  %51 = call i32 (...) @NET_ErrorString()
  %52 = call i32 @Com_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %180

53:                                               ; preds = %26
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @ip_socket, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = bitcast %struct.sockaddr* %7 to %struct.sockaddr_in*
  %59 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @memset(i32 %60, i32 0, i32 8)
  br label %62

62:                                               ; preds = %57, %53
  %63 = load i64, i64* @usingSocks, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %155

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @ip_socket, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %155

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = call i64 @memcmp(%struct.sockaddr* %7, i32* @socksRelayAddr, i32 %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %155

73:                                               ; preds = %69
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 10
  br i1 %75, label %104, label %76

76:                                               ; preds = %73
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %104, label %83

83:                                               ; preds = %76
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %104, label %90

90:                                               ; preds = %83
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %90
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 1
  br i1 %103, label %104, label %105

104:                                              ; preds = %97, %90, %83, %76, %73
  br label %180

105:                                              ; preds = %97
  %106 = load i32, i32* @NA_IP, align 4
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 4
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  store i32 %113, i32* %117, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 5
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  store i32 %122, i32* %126, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 6
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  store i32 %131, i32* %135, align 4
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 7
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 3
  store i32 %140, i32* %144, align 4
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 8
  %149 = bitcast i32* %148 to i16*
  %150 = load i16, i16* %149, align 2
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  store i16 %150, i16* %152, align 8
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 2
  store i32 10, i32* %154, align 4
  br label %160

155:                                              ; preds = %69, %65, %62
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %157 = call i32 @SockadrToNetadr(%struct.sockaddr* %7, %struct.TYPE_7__* %156)
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 2
  store i32 0, i32* %159, align 4
  br label %160

160:                                              ; preds = %155, %105
  %161 = load i32, i32* %6, align 4
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = icmp eq i32 %161, %164
  br i1 %165, label %166, label %175

166:                                              ; preds = %160
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %168 = bitcast %struct.TYPE_7__* %167 to { i32*, i64 }*
  %169 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %168, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @NET_AdrToString(i32* %170, i64 %172)
  %174 = call i32 @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %173)
  br label %180

175:                                              ; preds = %160
  %176 = load i32, i32* %6, align 4
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* @qtrue, align 4
  store i32 %179, i32* %3, align 4
  br label %185

180:                                              ; preds = %166, %104, %50, %49, %25
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %10, align 4
  br label %12

183:                                              ; preds = %12
  %184 = load i32, i32* @qfalse, align 4
  store i32 %184, i32* %3, align 4
  br label %185

185:                                              ; preds = %183, %175
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i32 @recvfrom(i32, i32*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @Com_Printf(i8*, i32) #1

declare dso_local i32 @NET_ErrorString(...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @memcmp(%struct.sockaddr*, i32*, i32) #1

declare dso_local i32 @SockadrToNetadr(%struct.sockaddr*, %struct.TYPE_7__*) #1

declare dso_local i32 @NET_AdrToString(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
