; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CtStopClient.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CtStopClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@client = common dso_local global %struct.TYPE_14__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CtStopClient() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_13__**, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** @client, align 8
  %7 = icmp eq %struct.TYPE_14__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %101

9:                                                ; preds = %0
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** @client, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** @client, align 8
  %13 = call i32 @CiStopRpcServer(%struct.TYPE_14__* %12)
  %14 = call i32 (...) @CncExit()
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** @client, align 8
  %16 = call i32 @CiFreeKeep(%struct.TYPE_14__* %15)
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** @client, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @LockList(i32 %19)
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** @client, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @LIST_NUM(i32 %23)
  store i64 %24, i64* %2, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** @client, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_13__** @ToArray(i32 %27)
  store %struct.TYPE_13__** %28, %struct.TYPE_13__*** %3, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** @client, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @UnlockList(i32 %31)
  store i64 0, i64* %1, align 8
  br label %33

33:                                               ; preds = %91, %9
  %34 = load i64, i64* %1, align 8
  %35 = load i64, i64* %2, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %94

37:                                               ; preds = %33
  %38 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %3, align 8
  %39 = load i64, i64* %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %38, i64 %39
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @Lock(i32 %44)
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = icmp ne %struct.TYPE_12__* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %37
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %5, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @AddRef(i32 %56)
  br label %58

58:                                               ; preds = %50, %37
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @Unlock(i32 %61)
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = icmp ne %struct.TYPE_12__* %63, null
  br i1 %64, label %65, label %90

65:                                               ; preds = %58
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %67 = call i32 @StopSession(%struct.TYPE_12__* %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %69 = call i32 @ReleaseSession(%struct.TYPE_12__* %68)
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @Lock(i32 %72)
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = icmp ne %struct.TYPE_12__* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %65
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = call i32 @ReleaseSession(%struct.TYPE_12__* %81)
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %84, align 8
  br label %85

85:                                               ; preds = %78, %65
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @Unlock(i32 %88)
  br label %90

90:                                               ; preds = %85, %58
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %1, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %1, align 8
  br label %33

94:                                               ; preds = %33
  %95 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %3, align 8
  %96 = call i32 @Free(%struct.TYPE_13__** %95)
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** @client, align 8
  %98 = call i32 @CiFreeSaver(%struct.TYPE_14__* %97)
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** @client, align 8
  %100 = call i32 @CtReleaseClient(%struct.TYPE_14__* %99)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** @client, align 8
  br label %101

101:                                              ; preds = %94, %8
  ret void
}

declare dso_local i32 @CiStopRpcServer(%struct.TYPE_14__*) #1

declare dso_local i32 @CncExit(...) #1

declare dso_local i32 @CiFreeKeep(%struct.TYPE_14__*) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_13__** @ToArray(i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @StopSession(%struct.TYPE_12__*) #1

declare dso_local i32 @ReleaseSession(%struct.TYPE_12__*) #1

declare dso_local i32 @Free(%struct.TYPE_13__**) #1

declare dso_local i32 @CiFreeSaver(%struct.TYPE_14__*) #1

declare dso_local i32 @CtReleaseClient(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
