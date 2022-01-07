; ModuleID = '/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterSendPause.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterSendPause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i8*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i8*, i8* }

@LL_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Sending PAUSE for %s flags=%d, %d nodes\00", align 1
@CLUSTERMSG_TYPE_PAUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterSendPause(%struct.TYPE_14__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @sdslen(i64 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @LL_VERBOSE, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = load i32, i32* %5, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @dictSize(i32* %21)
  %23 = trunc i64 %22 to i32
  %24 = call i32 @serverLog(i32 %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20, i32 %23)
  store i32 28, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 -4, %26
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 32
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  store i32 32, i32* %9, align 4
  br label %36

36:                                               ; preds = %35, %3
  %37 = load i32, i32* %9, align 4
  %38 = call %struct.TYPE_15__* @zmalloc(i32 %37)
  store %struct.TYPE_15__* %38, %struct.TYPE_15__** %10, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %40 = load i32, i32* @CLUSTERMSG_TYPE_PAUSE, align 4
  %41 = call i32 @clusterBuildMessageHdr(%struct.TYPE_15__* %39, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = call i8* @htonl(i32 %42)
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  store i8* %43, i8** %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i8* @htonl(i32 %49)
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  store i8* %50, i8** %55, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @memcpy(i32 %61, i64 %64, i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = call i8* @htonl(i32 %67)
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @clusterBroadcastMessage(i32* %71, %struct.TYPE_15__* %72, i32 %73)
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %76 = call i32 @zfree(%struct.TYPE_15__* %75)
  ret void
}

declare dso_local i32 @sdslen(i64) #1

declare dso_local i32 @serverLog(i32, i8*, i8*, i32, i32) #1

declare dso_local i64 @dictSize(i32*) #1

declare dso_local %struct.TYPE_15__* @zmalloc(i32) #1

declare dso_local i32 @clusterBuildMessageHdr(%struct.TYPE_15__*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @clusterBroadcastMessage(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @zfree(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
