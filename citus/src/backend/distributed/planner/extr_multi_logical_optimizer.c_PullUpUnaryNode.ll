; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_optimizer.c_PullUpUnaryNode.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_optimizer.c_PullUpUnaryNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @PullUpUnaryNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PullUpUnaryNode(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = bitcast %struct.TYPE_9__* %10 to i32*
  %12 = call i32* @ParentNode(i32* %11)
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @UnaryOperator(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @BinaryOperator(i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = bitcast i32* %20 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %6, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = call i32 @PushDownBelowUnaryChild(%struct.TYPE_9__* %22, %struct.TYPE_9__* %23)
  br label %61

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %25
  %29 = load i32*, i32** %3, align 8
  %30 = bitcast i32* %29 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %7, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %32 = bitcast %struct.TYPE_10__* %31 to i32*
  %33 = call i32* @ParentNode(i32* %32)
  store i32* %33, i32** %8, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %9, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = bitcast %struct.TYPE_9__* %40 to i32*
  %42 = icmp eq i32* %39, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %28
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @SetLeftChild(%struct.TYPE_10__* %44, i32* %45)
  br label %51

47:                                               ; preds = %28
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @SetRightChild(%struct.TYPE_10__* %48, i32* %49)
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %55 = bitcast %struct.TYPE_9__* %54 to i32*
  %56 = call i32 @ParentSetNewChild(i32* %52, i32* %53, i32* %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @SetChild(%struct.TYPE_9__* %57, i32* %58)
  br label %60

60:                                               ; preds = %51, %25
  br label %61

61:                                               ; preds = %60, %19
  ret void
}

declare dso_local i32* @ParentNode(i32*) #1

declare dso_local i32 @UnaryOperator(i32*) #1

declare dso_local i32 @BinaryOperator(i32*) #1

declare dso_local i32 @PushDownBelowUnaryChild(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @SetLeftChild(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @SetRightChild(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @ParentSetNewChild(i32*, i32*, i32*) #1

declare dso_local i32 @SetChild(%struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
