; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtAcct.c_mgmtRemoveConnFromAcct.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtAcct.c_mgmtRemoveConnFromAcct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_9__*, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_10__, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtRemoveConnFromAcct(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 4
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %7, %struct.TYPE_15__** %4, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %9 = icmp eq %struct.TYPE_15__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %94

11:                                               ; preds = %1
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = call i32 @pthread_mutex_lock(i32* %13)
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = icmp ne %struct.TYPE_13__* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %26, align 8
  br label %27

27:                                               ; preds = %19, %11
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = icmp ne %struct.TYPE_12__* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %39, align 8
  br label %40

40:                                               ; preds = %32, %27
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = icmp eq %struct.TYPE_13__* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 2
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %50, align 8
  br label %51

51:                                               ; preds = %45, %40
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = icmp ne %struct.TYPE_9__* %59, null
  br i1 %60, label %61, label %86

61:                                               ; preds = %51
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = sub nsw i64 %71, %66
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = sub nsw i64 %83, %78
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 4
  br label %86

86:                                               ; preds = %61, %51
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = call i32 @pthread_mutex_unlock(i32* %88)
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %91, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %93, align 8
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %86, %10
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
