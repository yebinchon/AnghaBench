; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_proc_transwait.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_proc_transwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@P_LINTRANSIT = common dso_local global i32 0, align 4
@P_LTRANSCOMMIT = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@P_LTRANSWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"proc_signstart\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_transwait(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = call i32 @proc_lock(%struct.TYPE_6__* %9)
  br label %11

11:                                               ; preds = %8, %2
  br label %12

12:                                               ; preds = %40, %11
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @P_LINTRANSIT, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @P_LINTRANSIT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %12
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @P_LTRANSCOMMIT, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @P_LTRANSCOMMIT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %20
  %29 = call %struct.TYPE_6__* (...) @current_proc()
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = icmp eq %struct.TYPE_6__* %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = call i32 @proc_unlock(%struct.TYPE_6__* %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* @EDEADLK, align 4
  store i32 %39, i32* %3, align 4
  br label %58

40:                                               ; preds = %28, %20
  %41 = load i32, i32* @P_LTRANSWAIT, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = call i32 @msleep(i32* %47, i32* %49, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %12

51:                                               ; preds = %12
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = call i32 @proc_unlock(%struct.TYPE_6__* %55)
  br label %57

57:                                               ; preds = %54, %51
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %38
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @proc_lock(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @current_proc(...) #1

declare dso_local i32 @proc_unlock(%struct.TYPE_6__*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
