; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_shard_pruning.c_UpperShardBoundary.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_shard_pruning.c_UpperShardBoundary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@INVALID_SHARD_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__**, i32, i32, i32)* @UpperShardBoundary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UpperShardBoundary(i32 %0, %struct.TYPE_3__** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_3__** %1, %struct.TYPE_3__*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20)
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @fcSetArg(i32 %22, i32 0, i32 %23)
  br label %25

25:                                               ; preds = %71, %55, %5
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %76

29:                                               ; preds = %25
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %12, align 4
  %33 = sub nsw i32 %31, %32
  %34 = sdiv i32 %33, 2
  %35 = add nsw i32 %30, %34
  store i32 %35, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %8, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %37, i64 %39
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @fcSetArg(i32 %36, i32 1, i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @PerformCompare(i32 %45)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %29
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49, %29
  %53 = load i32, i32* %16, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %13, align 4
  br label %25

57:                                               ; preds = %52
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %8, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %59, i64 %61
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @fcSetArg(i32 %58, i32 1, i32 %65)
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @PerformCompare(i32 %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %57
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %25

74:                                               ; preds = %57
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %6, align 4
  br label %97

76:                                               ; preds = %25
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @Assert(i32 %80)
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load i32, i32* %9, align 4
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %97

88:                                               ; preds = %76
  %89 = load i32, i32* %13, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* @INVALID_SHARD_INDEX, align 4
  store i32 %92, i32* %6, align 4
  br label %97

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %13, align 4
  %96 = sub nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %94, %91, %85, %74
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @fcSetArg(i32, i32, i32) #1

declare dso_local i32 @PerformCompare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
