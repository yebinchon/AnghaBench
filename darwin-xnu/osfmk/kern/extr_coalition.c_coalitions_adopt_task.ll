; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_coalition.c_coalitions_adopt_task.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_coalition.c_coalitions_adopt_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64* }

@COALITION_TYPE_RESOURCE = common dso_local global i64 0, align 8
@COALITION_NULL = common dso_local global %struct.TYPE_10__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@COALITION_NUM_TYPES = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @coalitions_adopt_task(%struct.TYPE_10__** %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__**, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %8 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %9 = icmp ne %struct.TYPE_10__** %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %12 = load i64, i64* @COALITION_TYPE_RESOURCE, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %11, i64 %12
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** @COALITION_NULL, align 8
  %16 = icmp eq %struct.TYPE_10__* %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %10, %2
  %18 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %18, i64* %3, align 8
  br label %99

19:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %45, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @COALITION_NUM_TYPES, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %20
  %25 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %25, i64 %27
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = icmp ne %struct.TYPE_10__* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %24
  %32 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %32, i64 %34
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %43, i64* %3, align 8
  br label %99

44:                                               ; preds = %31, %24
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %20

48:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %94, %48
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @COALITION_NUM_TYPES, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %97

53:                                               ; preds = %49
  %54 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %54, i64* %7, align 8
  %55 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %55, i64 %57
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = icmp ne %struct.TYPE_10__* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %53
  %62 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %62, i64 %64
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = call i64 @coalition_adopt_task_internal(%struct.TYPE_10__* %66, %struct.TYPE_9__* %67)
  store i64 %68, i64* %7, align 8
  br label %69

69:                                               ; preds = %61, %53
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* @KERN_SUCCESS, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %69
  br label %74

74:                                               ; preds = %91, %73
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %6, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %78
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @coalition_remove_task_internal(%struct.TYPE_9__* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %78
  br label %74

92:                                               ; preds = %74
  br label %97

93:                                               ; preds = %69
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %49

97:                                               ; preds = %92, %49
  %98 = load i64, i64* %7, align 8
  store i64 %98, i64* %3, align 8
  br label %99

99:                                               ; preds = %97, %42, %17
  %100 = load i64, i64* %3, align 8
  ret i64 %100
}

declare dso_local i64 @coalition_adopt_task_internal(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i32 @coalition_remove_task_internal(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
