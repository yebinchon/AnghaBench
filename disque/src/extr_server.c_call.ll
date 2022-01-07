; ModuleID = '/home/carl/AnghaBench/disque/src/extr_server.c_call.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_server.c_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i32, i32 (%struct.TYPE_8__*)* }

@server = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@CMD_SKIP_MONITOR = common dso_local global i32 0, align 4
@CMD_CALL_SLOWLOG = common dso_local global i32 0, align 4
@CMD_FAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"fast-command\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@CMD_CALL_STATS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @call(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 1), align 4
  %9 = call i64 @listLength(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %2
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 2), align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %11
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CMD_SKIP_MONITOR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %14
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 1), align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @replicationFeedMonitors(%struct.TYPE_8__* %24, i32 %25, i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %23, %14, %11, %2
  %34 = call i64 (...) @ustime()
  store i64 %34, i64* %5, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %38, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = call i32 %39(%struct.TYPE_8__* %40)
  %42 = call i64 (...) @ustime()
  %43 = load i64, i64* %5, align 8
  %44 = sub nsw i64 %42, %43
  store i64 %44, i64* %6, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @CMD_CALL_SLOWLOG, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %33
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @CMD_FAST, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  store i8* %59, i8** %7, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i64, i64* %6, align 8
  %62 = sdiv i64 %61, 1000
  %63 = call i32 @latencyAddSampleIfNeeded(i8* %60, i64 %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @slowlogPushEntryIfNeeded(i32 %66, i32 %69, i64 %70)
  br label %72

72:                                               ; preds = %49, %33
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @CMD_CALL_STATS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %72
  %78 = load i64, i64* %6, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %78
  store i64 %84, i64* %82, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %77, %72
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 4
  ret void
}

declare dso_local i64 @listLength(i32) #1

declare dso_local i32 @replicationFeedMonitors(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i64 @ustime(...) #1

declare dso_local i32 @latencyAddSampleIfNeeded(i8*, i64) #1

declare dso_local i32 @slowlogPushEntryIfNeeded(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
