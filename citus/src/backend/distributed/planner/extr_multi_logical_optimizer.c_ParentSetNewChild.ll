; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_optimizer.c_ParentSetNewChild.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_optimizer.c_ParentSetNewChild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @ParentSetNewChild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ParentSetNewChild(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @UnaryOperator(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @BinaryOperator(i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i32*, i32** %4, align 8
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @SetChild(i32* %19, i32* %20)
  br label %43

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load i32*, i32** %4, align 8
  %27 = bitcast i32* %26 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %10, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = icmp eq i32* %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @SetLeftChild(%struct.TYPE_4__* %34, i32* %35)
  br label %41

37:                                               ; preds = %25
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @SetRightChild(%struct.TYPE_4__* %38, i32* %39)
  br label %41

41:                                               ; preds = %37, %33
  br label %42

42:                                               ; preds = %41, %22
  br label %43

43:                                               ; preds = %42, %17
  ret void
}

declare dso_local i32 @UnaryOperator(i32*) #1

declare dso_local i32 @BinaryOperator(i32*) #1

declare dso_local i32 @SetChild(i32*, i32*) #1

declare dso_local i32 @SetLeftChild(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @SetRightChild(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
