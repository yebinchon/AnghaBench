; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_optimizer.c_WorkerSortClauseList.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_optimizer.c_WorkerSortClauseList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64, i32 }

@NIL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, %struct.TYPE_3__*)* @WorkerSortClauseList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @WorkerSortClauseList(i32* %0, i32* %1, i32* %2, %struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  %12 = load i32*, i32** @NIL, align 8
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load i32*, i32** @NIL, align 8
  store i32* %20, i32** %5, align 8
  br label %62

21:                                               ; preds = %15, %4
  %22 = load i32*, i32** %8, align 8
  %23 = call i32* @copyObject(i32* %22)
  store i32* %23, i32** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %21
  %32 = load i32*, i32** %8, align 8
  store i32* %32, i32** %9, align 8
  br label %60

33:                                               ; preds = %27
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** @NIL, align 8
  %36 = icmp ne i32* %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load i32*, i32** %8, align 8
  store i32* %48, i32** %9, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32* @list_concat(i32* %49, i32* %50)
  store i32* %51, i32** %9, align 8
  br label %58

52:                                               ; preds = %37
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32*, i32** %8, align 8
  store i32* %56, i32** %9, align 8
  br label %57

57:                                               ; preds = %55, %52
  br label %58

58:                                               ; preds = %57, %47
  br label %59

59:                                               ; preds = %58, %33
  br label %60

60:                                               ; preds = %59, %31
  %61 = load i32*, i32** %9, align 8
  store i32* %61, i32** %5, align 8
  br label %62

62:                                               ; preds = %60, %19
  %63 = load i32*, i32** %5, align 8
  ret i32* %63
}

declare dso_local i32* @copyObject(i32*) #1

declare dso_local i32* @list_concat(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
