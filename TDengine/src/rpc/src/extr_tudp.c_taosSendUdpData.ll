; ModuleID = '/home/carl/AnghaBench/TDengine/src/rpc/src/extr_tudp.c_taosSendUdpData.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/rpc/src/extr_tudp.c_taosSendUdpData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32*, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.sockaddr_in = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.sockaddr = type { i32 }

@RPC_MAX_UDP_SIZE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"%s msg is sent to 0x%x:%hu len:%d ret:%d localPort:%hu chandle:0x%x\00", align 1
@RPC_MAX_UDP_PKTS = common dso_local global i64 0, align 8
@taosProcessUdpBufTimer = common dso_local global i32 0, align 4
@RPC_UDP_BUF_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosSendUdpData(i32 %0, i16 signext %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.sockaddr_in, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i16 %1, i16* %8, align 2
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %12, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %19 = icmp eq %struct.TYPE_9__* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %5
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 6
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %25 = icmp ne %struct.TYPE_9__* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %5
  store i32 -1, i32* %6, align 4
  br label %153

27:                                               ; preds = %20
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @RPC_MAX_UDP_SIZE, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = load i16, i16* %8, align 2
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 @taosSendPacketViaTcp(i32 %32, i16 signext %33, i8* %34, i32 %35, i8* %36)
  store i32 %37, i32* %6, align 4
  br label %153

38:                                               ; preds = %27
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %78

43:                                               ; preds = %38
  %44 = call i32 @memset(%struct.sockaddr_in* %14, i32 0, i32 12)
  %45 = load i32, i32* @AF_INET, align 4
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %7, align 4
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i16, i16* %8, align 2
  %51 = sext i16 %50 to i32
  %52 = call i32 @htons(i32 %51)
  %53 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = bitcast %struct.sockaddr_in* %14 to %struct.sockaddr*
  %61 = call i64 @sendto(i32 %56, i8* %57, i64 %59, i32 0, %struct.sockaddr* %60, i32 12)
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %15, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i16, i16* %8, align 2
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @tTrace(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %68, i16 signext %69, i32 %70, i32 %71, i32 %74, i8* %75)
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %6, align 4
  br label %153

78:                                               ; preds = %38
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = call i32 @pthread_mutex_lock(i32* %80)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i16, i16* %8, align 2
  %87 = call i64 @taosGetIpHash(i32* %84, i32 %85, i16 signext %86)
  %88 = inttoptr i64 %87 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %88, %struct.TYPE_10__** %13, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %90 = icmp eq %struct.TYPE_10__* %89, null
  br i1 %90, label %91, label %103

91:                                               ; preds = %78
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i16, i16* %8, align 2
  %95 = call %struct.TYPE_10__* @taosCreateUdpBuf(%struct.TYPE_9__* %92, i32 %93, i16 signext %94)
  store %struct.TYPE_10__* %95, %struct.TYPE_10__** %13, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i16, i16* %8, align 2
  %102 = call i32 @taosAddIpHash(i32* %98, %struct.TYPE_10__* %99, i32 %100, i16 signext %101)
  br label %103

103:                                              ; preds = %91, %78
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32, i32* @RPC_MAX_UDP_SIZE, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %118, label %111

111:                                              ; preds = %103
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @taosMsgHdrSize(i32 %114)
  %116 = load i64, i64* @RPC_MAX_UDP_PKTS, align 8
  %117 = icmp sge i64 %115, %116
  br i1 %117, label %118, label %137

118:                                              ; preds = %111, %103
  %119 = load i32, i32* @taosProcessUdpBufTimer, align 4
  %120 = load i32, i32* @RPC_UDP_BUF_TIME, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  %127 = call i32 @taosTmrReset(i32 %119, i32 %120, %struct.TYPE_10__* %121, i32 %124, i32* %126)
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @taosSendMsgHdr(i32 %130, i32 %133)
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  store i32 0, i32* %136, align 4
  br label %137

137:                                              ; preds = %118, %111
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i8*, i8** %9, align 8
  %142 = load i32, i32* %10, align 4
  %143 = call i32 @taosSetMsgHdrData(i32 %140, i8* %141, i32 %142)
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, %144
  store i32 %148, i32* %146, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = call i32 @pthread_mutex_unlock(i32* %150)
  %152 = load i32, i32* %10, align 4
  store i32 %152, i32* %6, align 4
  br label %153

153:                                              ; preds = %137, %43, %31, %26
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

declare dso_local i32 @taosSendPacketViaTcp(i32, i16 signext, i8*, i32, i8*) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @tTrace(i8*, i32, i32, i16 signext, i32, i32, i32, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @taosGetIpHash(i32*, i32, i16 signext) #1

declare dso_local %struct.TYPE_10__* @taosCreateUdpBuf(%struct.TYPE_9__*, i32, i16 signext) #1

declare dso_local i32 @taosAddIpHash(i32*, %struct.TYPE_10__*, i32, i16 signext) #1

declare dso_local i64 @taosMsgHdrSize(i32) #1

declare dso_local i32 @taosTmrReset(i32, i32, %struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @taosSendMsgHdr(i32, i32) #1

declare dso_local i32 @taosSetMsgHdrData(i32, i8*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
