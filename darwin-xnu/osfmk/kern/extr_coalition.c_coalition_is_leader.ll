; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_coalition.c_coalition_is_leader.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_coalition.c_coalition_is_leader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__** }

@COALITION_NULL = common dso_local global %struct.TYPE_11__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@COALITION_TYPE_MAX = common dso_local global i32 0, align 4
@COALITION_TYPE_JETSAM = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coalition_is_leader(%struct.TYPE_10__* %0, i32 %1, %struct.TYPE_11__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__**, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_11__** %2, %struct.TYPE_11__*** %7, align 8
  %10 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %11 = icmp ne %struct.TYPE_11__** %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** @COALITION_NULL, align 8
  %14 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %14, align 8
  br label %15

15:                                               ; preds = %12, %3
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %4, align 4
  br label %74

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @COALITION_TYPE_MAX, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %4, align 4
  br label %74

26:                                               ; preds = %20
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %29, i64 %31
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %8, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %35 = icmp ne %struct.TYPE_11__* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %4, align 4
  br label %74

38:                                               ; preds = %26
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %48 = call i32 @coalition_lock(%struct.TYPE_11__* %47)
  %49 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %50 = icmp ne %struct.TYPE_11__** %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %53 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %53, align 8
  br label %54

54:                                               ; preds = %51, %38
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %9, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @COALITION_TYPE_JETSAM, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = icmp eq %struct.TYPE_10__* %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @TRUE, align 4
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %68, %61, %54
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %72 = call i32 @coalition_unlock(%struct.TYPE_11__* %71)
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %70, %36, %24, %18
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @coalition_lock(%struct.TYPE_11__*) #1

declare dso_local i32 @coalition_unlock(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
