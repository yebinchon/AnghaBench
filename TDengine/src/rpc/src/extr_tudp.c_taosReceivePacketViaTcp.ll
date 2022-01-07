; ModuleID = '/home/carl/AnghaBench/TDengine/src/rpc/src/extr_tudp.c_taosReceivePacketViaTcp.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/rpc/src/extr_tudp.c_taosReceivePacketViaTcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_10__*, i32, %struct.TYPE_11__*, i32, i32, i32 }

@.str = private unnamed_addr constant [76 x i8] c"%s receive packet via TCP, handle:0x%x, source:0x%08x dest:0x%08x tranId:%d\00", align 1
@taosProcessMonitorTimer = common dso_local global i32 0, align 4
@PTHREAD_CREATE_DETACHED = common dso_local global i32 0, align 4
@taosReadTcpData = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"%s failed to create thread to read tcp data, reason:%s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosReceivePacketViaTcp(i32 %0, %struct.TYPE_12__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %7, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i8*, i32, i32, ...) @tTrace(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 %28, i32 %31, i32 %34)
  %36 = call i64 @calloc(i32 1, i32 48)
  %37 = inttoptr i64 %36 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %12, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  store i32 32, i32* %39, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = call i32 @memcpy(i32 %42, %struct.TYPE_12__* %43, i64 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %51, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 3
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %62, align 8
  %63 = load i32, i32* @taosProcessMonitorTimer, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 2
  %70 = call i32 @taosTmrReset(i32 %63, i32 0, %struct.TYPE_14__* %64, i32 %67, i32* %69)
  %71 = call i32 @pthread_attr_init(i32* %10)
  %72 = load i32, i32* @PTHREAD_CREATE_DETACHED, align 4
  %73 = call i32 @pthread_attr_setdetachstate(i32* %10, i32 %72)
  %74 = load i32, i32* @taosReadTcpData, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %76 = bitcast %struct.TYPE_14__* %75 to i8*
  %77 = call i32 @pthread_create(i32* %11, i32* %10, i32 %74, i8* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %3
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @errno, align 4
  %85 = call i32 @strerror(i32 %84)
  %86 = call i32 (i8*, i32, i32, ...) @tTrace(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %85)
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %88, align 8
  br label %89

89:                                               ; preds = %80, %3
  %90 = call i32 @pthread_attr_destroy(i32* %10)
  %91 = load i32, i32* %9, align 4
  ret i32 %91
}

declare dso_local i32 @tTrace(i8*, i32, i32, ...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_12__*, i64) #1

declare dso_local i32 @taosTmrReset(i32, i32, %struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @pthread_attr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
