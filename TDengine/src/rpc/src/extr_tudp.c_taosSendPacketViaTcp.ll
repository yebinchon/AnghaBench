; ModuleID = '/home/carl/AnghaBench/TDengine/src/rpc/src/extr_tudp.c_taosSendPacketViaTcp.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/rpc/src/extr_tudp.c_taosSendPacketViaTcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { i32, i8*, i32, i64 }
%struct.TYPE_9__ = type { i64, i8*, i64 }

@.str = private unnamed_addr constant [80 x i8] c"%s data from server will be sent via TCP:%d, msgType:%d, length:%d, handle:0x%x\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%s data will be sent via TCP from client\00", align 1
@tsLocalIp = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"%s failed to open TCP socket to:%s:%u to send packet\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"%s failed to send handle to server, retLen:%d\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"%s failed to send data via TCP, dataLen:%d, retLen:%d, error:%s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"%s data is sent via TCP successfully\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosSendPacketViaTcp(i32 %0, i16 signext %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [64 x i8], align 16
  %17 = alloca [128 x i8], align 16
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca %struct.TYPE_9__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i16 %1, i16* %7, align 2
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %11, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %12, align 8
  store i32 -1, i32* %13, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %92

32:                                               ; preds = %5
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %34 = bitcast i8* %33 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %18, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @memcpy(%struct.TYPE_8__* %35, i8* %36, i32 32)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %19, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  store i32 56, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = call i64 @htonl(i32 %58)
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i16, i16* %7, align 2
  %65 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %66 = load i32, i32* %15, align 4
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @taosSendUdpData(i32 %63, i16 signext %64, i8* %65, i32 %66, i8* %67)
  store i32 %68, i32* %13, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = ptrtoint i8* %80 to i32
  %82 = call i64 @htonl(i32 %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (i8*, i32, ...) @tTrace(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %71, i64 %74, i32 %77, i64 %82, i64 %85)
  %87 = load i32, i32* %13, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %32
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %89, %32
  br label %182

92:                                               ; preds = %5
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i8*, i32, ...) @tTrace(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %98 = bitcast i8* %97 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %98, %struct.TYPE_8__** %18, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @memcpy(%struct.TYPE_8__* %99, i8* %100, i32 32)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  store i32 2, i32* %103, align 8
  store i32 32, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = call i64 @htonl(i32 %104)
  %106 = inttoptr i64 %105 to i8*
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load i16, i16* %7, align 2
  %111 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %112 = load i32, i32* %15, align 4
  %113 = load i8*, i8** %10, align 8
  %114 = call i32 @taosSendUdpData(i32 %109, i16 signext %110, i8* %111, i32 %112, i8* %113)
  store i32 %114, i32* %13, align 4
  %115 = load i8*, i8** %8, align 8
  %116 = bitcast i8* %115 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %116, %struct.TYPE_8__** %18, align 8
  %117 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @tinet_ntoa(i8* %117, i32 %118)
  %120 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @tsLocalIp, align 4
  %125 = call i32 @taosOpenTcpClientSocket(i8* %120, i32 %123, i32 %124)
  store i32 %125, i32* %20, align 4
  %126 = load i32, i32* %20, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %92
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (i8*, i32, ...) @tError(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %131, i8* %132, i32 %135)
  br label %181

137:                                              ; preds = %92
  %138 = call i32 @taosInitHandleViaTcp(i32* %21, i32 0)
  %139 = load i32, i32* %20, align 4
  %140 = bitcast i32* %21 to i8*
  %141 = call i64 @taosWriteSocket(i32 %139, i8* %140, i32 4)
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %14, align 4
  %144 = icmp ne i32 %143, 4
  br i1 %144, label %145, label %151

145:                                              ; preds = %137
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %14, align 4
  %150 = call i32 (i8*, i32, ...) @tError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %148, i32 %149)
  br label %175

151:                                              ; preds = %137
  %152 = load i32, i32* %20, align 4
  %153 = load i8*, i8** %8, align 8
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @taosWriteMsg(i32 %152, i8* %153, i32 %154)
  store i32 %155, i32* %14, align 4
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %151
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* @errno, align 4
  %166 = call i32 @strerror(i32 %165)
  %167 = call i32 (i8*, i32, ...) @tError(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i32 %162, i32 %163, i32 %164, i32 %166)
  br label %174

168:                                              ; preds = %151
  %169 = load i32, i32* %9, align 4
  store i32 %169, i32* %13, align 4
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (i8*, i32, ...) @tTrace(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %168, %159
  br label %175

175:                                              ; preds = %174, %145
  %176 = load i32, i32* %20, align 4
  %177 = bitcast i32* %21 to i8*
  %178 = call i32 @taosReadMsg(i32 %176, i8* %177, i32 4)
  %179 = load i32, i32* %20, align 4
  %180 = call i32 @taosCloseTcpSocket(i32 %179)
  br label %181

181:                                              ; preds = %175, %128
  br label %182

182:                                              ; preds = %181, %91
  %183 = load i32, i32* %13, align 4
  ret i32 %183
}

declare dso_local i32 @memcpy(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @taosSendUdpData(i32, i16 signext, i8*, i32, i8*) #1

declare dso_local i32 @tTrace(i8*, i32, ...) #1

declare dso_local i32 @tinet_ntoa(i8*, i32) #1

declare dso_local i32 @taosOpenTcpClientSocket(i8*, i32, i32) #1

declare dso_local i32 @tError(i8*, i32, ...) #1

declare dso_local i32 @taosInitHandleViaTcp(i32*, i32) #1

declare dso_local i64 @taosWriteSocket(i32, i8*, i32) #1

declare dso_local i32 @taosWriteMsg(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @taosReadMsg(i32, i8*, i32) #1

declare dso_local i32 @taosCloseTcpSocket(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
