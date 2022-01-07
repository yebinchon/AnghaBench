; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_router_planner.c_ShardIntervalOpExpressions.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_router_planner.c_ShardIntervalOpExpressions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32 }

@DISTRIBUTE_BY_HASH = common dso_local global i8 0, align 1
@DISTRIBUTE_BY_RANGE = common dso_local global i8 0, align 1
@DISTRIBUTE_BY_APPEND = common dso_local global i8 0, align 1
@NIL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ShardIntervalOpExpressions(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call signext i8 @PartitionMethod(i32 %15)
  store i8 %16, i8* %7, align 1
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %17 = load i8, i8* %7, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8, i8* @DISTRIBUTE_BY_HASH, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i32* (...) @MakeInt4Column()
  store i32* %23, i32** %8, align 8
  br label %47

24:                                               ; preds = %2
  %25 = load i8, i8* %7, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8, i8* @DISTRIBUTE_BY_RANGE, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load i8, i8* %7, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* @DISTRIBUTE_BY_APPEND, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30, %24
  %37 = load i32, i32* %5, align 4
  %38 = icmp sgt i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @Assert(i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32* @PartitionColumn(i32 %41, i32 %42)
  store i32* %43, i32** %8, align 8
  br label %46

44:                                               ; preds = %30
  %45 = load i32*, i32** @NIL, align 8
  store i32* %45, i32** %3, align 8
  br label %66

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %22
  %48 = load i32*, i32** %8, align 8
  %49 = call i32* @BuildBaseConstraint(i32* %48)
  store i32* %49, i32** %9, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32*, i32** %9, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = call i32 @UpdateConstraint(i32* %60, %struct.TYPE_4__* %61)
  br label %63

63:                                               ; preds = %59, %54, %47
  %64 = load i32*, i32** %9, align 8
  %65 = call i32* @list_make1(i32* %64)
  store i32* %65, i32** %3, align 8
  br label %66

66:                                               ; preds = %63, %44
  %67 = load i32*, i32** %3, align 8
  ret i32* %67
}

declare dso_local signext i8 @PartitionMethod(i32) #1

declare dso_local i32* @MakeInt4Column(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @PartitionColumn(i32, i32) #1

declare dso_local i32* @BuildBaseConstraint(i32*) #1

declare dso_local i32 @UpdateConstraint(i32*, %struct.TYPE_4__*) #1

declare dso_local i32* @list_make1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
