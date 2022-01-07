; ModuleID = '/home/carl/AnghaBench/disque/src/extr_networking.c_freeClient.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_networking.c_freeClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32*, %struct.TYPE_11__*, i64, i32, %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { i32 }

@CLIENT_BLOCKED = common dso_local global i32 0, align 4
@CLIENT_MONITOR = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@CLIENT_CLOSE_ASAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freeClient(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 6
  %6 = load i32*, i32** %5, align 8
  %7 = call i32 @sdsfree(i32* %6)
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 6
  store i32* null, i32** %9, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CLIENT_BLOCKED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %18 = call i32 @unblockClient(%struct.TYPE_11__* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dictRelease(i32 %23)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @listRelease(i32 %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %30 = call i32 @freeClientArgv(%struct.TYPE_11__* %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = call i32 @unlinkClient(%struct.TYPE_11__* %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CLIENT_MONITOR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %19
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 1), align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %42 = call i32* @listSearchKey(i32 %40, %struct.TYPE_11__* %41)
  store i32* %42, i32** %3, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = icmp ne i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @serverAssert(i32 %45)
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 1), align 4
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @listDelNode(i32 %47, i32* %48)
  br label %50

50:                                               ; preds = %39, %19
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @CLIENT_CLOSE_ASAP, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %50
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 0), align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %60 = call i32* @listSearchKey(i32 %58, %struct.TYPE_11__* %59)
  store i32* %60, i32** %3, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = icmp ne i32* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i32 @serverAssert(i32 %63)
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 0), align 4
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @listDelNode(i32 %65, i32* %66)
  br label %68

68:                                               ; preds = %57, %50
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @decrRefCount(i64 %76)
  br label %78

78:                                               ; preds = %73, %68
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = call i32 @zfree(%struct.TYPE_11__* %81)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @sdsfree(i32* %85)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %88 = call i32 @zfree(%struct.TYPE_11__* %87)
  ret void
}

declare dso_local i32 @sdsfree(i32*) #1

declare dso_local i32 @unblockClient(%struct.TYPE_11__*) #1

declare dso_local i32 @dictRelease(i32) #1

declare dso_local i32 @listRelease(i32) #1

declare dso_local i32 @freeClientArgv(%struct.TYPE_11__*) #1

declare dso_local i32 @unlinkClient(%struct.TYPE_11__*) #1

declare dso_local i32* @listSearchKey(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @listDelNode(i32, i32*) #1

declare dso_local i32 @decrRefCount(i64) #1

declare dso_local i32 @zfree(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
