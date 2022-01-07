; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_distributed_deadlock_detection.c_CheckDeadlockForTransactionNode.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_distributed_deadlock_detection.c_CheckDeadlockForTransactionNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }

@NIL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32**)* @CheckDeadlockForTransactionNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckDeadlockForTransactionNode(%struct.TYPE_9__* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %14 = load i32*, i32** @NIL, align 8
  store i32* %14, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 8
  %18 = trunc i64 %17 to i32
  %19 = call %struct.TYPE_9__** @palloc0(i32 %18)
  store %struct.TYPE_9__** %19, %struct.TYPE_9__*** %10, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %21, i64 0
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %22, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = call i32 @PrependOutgoingNodesToQueue(%struct.TYPE_9__* %23, i32 0, i32** %8)
  br label %25

25:                                               ; preds = %54, %53, %3
  %26 = load i32*, i32** %8, align 8
  %27 = load i32*, i32** @NIL, align 8
  %28 = icmp ne i32* %26, %27
  br i1 %28, label %29, label %73

29:                                               ; preds = %25
  %30 = load i32*, i32** %8, align 8
  %31 = call i64 @linitial(i32* %30)
  %32 = inttoptr i64 %31 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %12, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %13, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i32* @list_delete_first(i32* %36)
  store i32* %37, i32** %8, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = icmp eq %struct.TYPE_9__* %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %29
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %43 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  %44 = load i32**, i32*** %7, align 8
  %45 = call i32 @BuildDeadlockPathList(%struct.TYPE_10__* %42, %struct.TYPE_9__** %43, i32** %44)
  %46 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  %47 = call i32 @pfree(%struct.TYPE_9__** %46)
  store i32 1, i32* %4, align 4
  br label %76

48:                                               ; preds = %29
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %25

54:                                               ; preds = %48
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @Assert(i32 %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %66 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %66, i64 %68
  store %struct.TYPE_9__* %65, %struct.TYPE_9__** %69, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @PrependOutgoingNodesToQueue(%struct.TYPE_9__* %70, i32 %71, i32** %8)
  br label %25

73:                                               ; preds = %25
  %74 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  %75 = call i32 @pfree(%struct.TYPE_9__** %74)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %73, %41
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.TYPE_9__** @palloc0(i32) #1

declare dso_local i32 @PrependOutgoingNodesToQueue(%struct.TYPE_9__*, i32, i32**) #1

declare dso_local i64 @linitial(i32*) #1

declare dso_local i32* @list_delete_first(i32*) #1

declare dso_local i32 @BuildDeadlockPathList(%struct.TYPE_10__*, %struct.TYPE_9__**, i32**) #1

declare dso_local i32 @pfree(%struct.TYPE_9__**) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
