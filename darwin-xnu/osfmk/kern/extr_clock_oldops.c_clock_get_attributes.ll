; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock_oldops.c_clock_get_attributes.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock_oldops.c_clock_get_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, i32, i32*)* }

@CLOCK_NULL = common dso_local global %struct.TYPE_6__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clock_get_attributes(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CLOCK_NULL, align 8
  %12 = icmp eq %struct.TYPE_6__* %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %14, i32* %5, align 4
  br label %34

15:                                               ; preds = %4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %19, align 8
  %21 = icmp ne i32 (i32, i32, i32*)* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %15
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 %27(i32 %28, i32 %29, i32* %30)
  store i32 %31, i32* %5, align 4
  br label %34

32:                                               ; preds = %15
  %33 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %22, %13
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
