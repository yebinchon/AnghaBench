; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_physical_planner.c_LeftMostNode.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_physical_planner.c_LeftMostNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @LeftMostNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @LeftMostNode(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32* @ChildNode(i32* %7)
  store i32* %8, i32** %4, align 8
  br label %9

9:                                                ; preds = %31, %1
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %9
  %13 = load i32*, i32** %4, align 8
  store i32* %13, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @UnaryOperator(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32*, i32** %3, align 8
  %19 = call i32* @ChildNode(i32* %18)
  store i32* %19, i32** %4, align 8
  br label %31

20:                                               ; preds = %12
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @BinaryOperator(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32*, i32** %3, align 8
  %26 = bitcast i32* %25 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %5, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %4, align 8
  br label %30

30:                                               ; preds = %24, %20
  br label %31

31:                                               ; preds = %30, %17
  br label %9

32:                                               ; preds = %9
  %33 = load i32*, i32** %3, align 8
  ret i32* %33
}

declare dso_local i32* @ChildNode(i32*) #1

declare dso_local i64 @UnaryOperator(i32*) #1

declare dso_local i64 @BinaryOperator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
