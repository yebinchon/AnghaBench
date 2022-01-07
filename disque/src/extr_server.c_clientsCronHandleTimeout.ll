; ModuleID = '/home/carl/AnghaBench/disque/src/extr_server.c_clientsCronHandleTimeout.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_server.c_clientsCronHandleTimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@server = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@CLIENT_BLOCKED = common dso_local global i32 0, align 4
@LL_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Closing idle client\00", align 1
@shared = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clientsCronHandleTimeout(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = sdiv i32 %7, 1000
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 0), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CLIENT_BLOCKED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %12
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 0), align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load i32, i32* @LL_VERBOSE, align 4
  %29 = call i32 @serverLog(i32 %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = call i32 @freeClient(%struct.TYPE_11__* %30)
  store i32 1, i32* %3, align 4
  br label %70

32:                                               ; preds = %19, %12, %2
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CLIENT_BLOCKED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %32
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %54 = call i32 @replyToBlockedClientTimedOut(%struct.TYPE_11__* %53)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = call i32 @unblockClient(%struct.TYPE_11__* %55)
  br label %67

57:                                               ; preds = %45, %39
  %58 = call i64 (...) @myselfLeaving()
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @shared, i32 0, i32 0), align 4
  %63 = call i32 @addReply(%struct.TYPE_11__* %61, i32 %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = call i32 @unblockClient(%struct.TYPE_11__* %64)
  br label %66

66:                                               ; preds = %60, %57
  br label %67

67:                                               ; preds = %66, %52
  br label %68

68:                                               ; preds = %67, %32
  br label %69

69:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %27
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @serverLog(i32, i8*) #1

declare dso_local i32 @freeClient(%struct.TYPE_11__*) #1

declare dso_local i32 @replyToBlockedClientTimedOut(%struct.TYPE_11__*) #1

declare dso_local i32 @unblockClient(%struct.TYPE_11__*) #1

declare dso_local i64 @myselfLeaving(...) #1

declare dso_local i32 @addReply(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
