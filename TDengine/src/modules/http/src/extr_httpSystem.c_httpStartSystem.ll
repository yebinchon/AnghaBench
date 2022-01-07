; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpSystem.c_httpStartSystem.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpSystem.c_httpStartSystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [40 x i8] c"starting to initialize http service ...\00", align 1
@httpServer = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"http server is null\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"http init context pool failed\00", align 1
@tsHttpCacheSessions = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"http init timer failed\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"http init session failed\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"http init server failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpStartSystem() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @httpPrint(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @httpServer, align 8
  %4 = icmp eq %struct.TYPE_4__* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = call i32 @httpError(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 (...) @httpInitSystem()
  br label %8

8:                                                ; preds = %5, %0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @httpServer, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @httpServer, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32* @taosMemPoolInit(i32 %16, i32 4)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @httpServer, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  br label %20

20:                                               ; preds = %13, %8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @httpServer, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 @httpError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %59

27:                                               ; preds = %20
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @httpServer, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, i32* @tsHttpCacheSessions, align 4
  %34 = mul nsw i32 %33, 20
  %35 = add nsw i32 %34, 100
  %36 = call i32* @taosTmrInit(i32 %35, i32 1000, i32 60000, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @httpServer, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  br label %39

39:                                               ; preds = %32, %27
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @httpServer, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 @httpError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %59

46:                                               ; preds = %39
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @httpServer, align 8
  %48 = call i32 @httpInitAllSessions(%struct.TYPE_4__* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = call i32 @httpError(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %59

52:                                               ; preds = %46
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @httpServer, align 8
  %54 = call i32 @httpInitConnect(%struct.TYPE_4__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = call i32 @httpError(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %59

58:                                               ; preds = %52
  store i32 0, i32* %1, align 4
  br label %59

59:                                               ; preds = %58, %56, %50, %44, %25
  %60 = load i32, i32* %1, align 4
  ret i32 %60
}

declare dso_local i32 @httpPrint(i8*) #1

declare dso_local i32 @httpError(i8*) #1

declare dso_local i32 @httpInitSystem(...) #1

declare dso_local i32* @taosMemPoolInit(i32, i32) #1

declare dso_local i32* @taosTmrInit(i32, i32, i32, i8*) #1

declare dso_local i32 @httpInitAllSessions(%struct.TYPE_4__*) #1

declare dso_local i32 @httpInitConnect(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
