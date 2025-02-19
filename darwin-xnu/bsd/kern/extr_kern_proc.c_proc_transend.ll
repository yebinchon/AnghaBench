; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_proc_transend.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_proc_transend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

@P_LINTRANSIT = common dso_local global i32 0, align 4
@P_LTRANSCOMMIT = common dso_local global i32 0, align 4
@P_LTRANSWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_transend(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = call i32 @proc_lock(%struct.TYPE_5__* %8)
  br label %10

10:                                               ; preds = %7, %2
  %11 = load i32, i32* @P_LINTRANSIT, align 4
  %12 = load i32, i32* @P_LTRANSCOMMIT, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @P_LTRANSWAIT, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @P_LTRANSWAIT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %10
  %29 = load i32, i32* @P_LTRANSWAIT, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = call i32 @wakeup(i32* %36)
  br label %38

38:                                               ; preds = %28, %10
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = call i32 @proc_unlock(%struct.TYPE_5__* %42)
  br label %44

44:                                               ; preds = %41, %38
  ret void
}

declare dso_local i32 @proc_lock(%struct.TYPE_5__*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @proc_unlock(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
