; ModuleID = '/home/carl/AnghaBench/TDengine/src/rpc/src/extr_tudp.c_taosCreateUdpBuf.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/rpc/src/extr_tudp.c_taosCreateUdpBuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i16, i32, %struct.TYPE_11__*, %struct.TYPE_12__, i32, %struct.TYPE_10__*, i8* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_10__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@RPC_MAX_UDP_PKTS = common dso_local global i32 0, align 4
@taosProcessUdpBufTimer = common dso_local global i32 0, align 4
@RPC_UDP_BUF_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @taosCreateUdpBuf(%struct.TYPE_10__* %0, i8* %1, i16 signext %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i16 %2, i16* %6, align 2
  %8 = call i64 @malloc(i32 64)
  %9 = inttoptr i64 %8 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %7, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %11 = call i32 @memset(%struct.TYPE_11__* %10, i32 0, i32 64)
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 6
  store i8* %12, i8** %14, align 8
  %15 = load i16, i16* %6, align 2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i16 %15, i16* %17, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 5
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %20, align 8
  %21 = load i32, i32* @AF_INET, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i8* %25, i8** %29, align 8
  %30 = load i16, i16* %6, align 2
  %31 = sext i16 %30 to i64
  %32 = call i64 @htons(i64 %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 3
  %40 = load i32, i32* @RPC_MAX_UDP_PKTS, align 4
  %41 = call i32 @taosInitMsgHdr(i32* %37, %struct.TYPE_12__* %39, i32 %40)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %44, align 8
  %45 = load i32, i32* @taosProcessUdpBufTimer, align 4
  %46 = load i32, i32* @RPC_UDP_BUF_TIME, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = call i32 @taosTmrReset(i32 %45, i32 %46, %struct.TYPE_11__* %47, i32 %50, i32* %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  ret %struct.TYPE_11__* %54
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @htons(i64) #1

declare dso_local i32 @taosInitMsgHdr(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @taosTmrReset(i32, i32, %struct.TYPE_11__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
