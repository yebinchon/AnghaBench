; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiAcceptTasksFromController.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiAcceptTasksFromController.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiAcceptTasksFromController(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %11 = icmp eq %struct.TYPE_15__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  br label %85

16:                                               ; preds = %12
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %9, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %8, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @SiAcceptTasksFromControllerMain(%struct.TYPE_15__* %23, i32* %24)
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @LockList(i32 %28)
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.TYPE_14__** @ToArray(i32 %32)
  store %struct.TYPE_14__** %33, %struct.TYPE_14__*** %6, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @LIST_NUM(i32 %36)
  store i64 %37, i64* %7, align 8
  store i64 0, i64* %5, align 8
  br label %38

38:                                               ; preds = %50, %16
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %43, i64 %44
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @AddRef(i32 %48)
  br label %50

50:                                               ; preds = %42
  %51 = load i64, i64* %5, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %5, align 8
  br label %38

53:                                               ; preds = %38
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @UnlockList(i32 %56)
  store i64 0, i64* %5, align 8
  br label %58

58:                                               ; preds = %79, %53
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %58
  %63 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %63, i64 %64
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = call i32 @SetHubOffline(%struct.TYPE_14__* %66)
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %69 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %70 = load i64, i64* %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %69, i64 %70
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = call i32 @DelHub(%struct.TYPE_16__* %68, %struct.TYPE_14__* %72)
  %74 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %75 = load i64, i64* %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %74, i64 %75
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = call i32 @ReleaseHub(%struct.TYPE_14__* %77)
  br label %79

79:                                               ; preds = %62
  %80 = load i64, i64* %5, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %5, align 8
  br label %58

82:                                               ; preds = %58
  %83 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %84 = call i32 @Free(%struct.TYPE_14__** %83)
  br label %85

85:                                               ; preds = %82, %15
  ret void
}

declare dso_local i32 @SiAcceptTasksFromControllerMain(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local %struct.TYPE_14__** @ToArray(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @SetHubOffline(%struct.TYPE_14__*) #1

declare dso_local i32 @DelHub(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_14__*) #1

declare dso_local i32 @Free(%struct.TYPE_14__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
