; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_coalition.c_coalition_for_each_task.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_coalition.c_coalition_for_each_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }

@COALITION_NULL = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [65 x i8] c"iterating tasks in coalition %p id:%llu type:%s, active_count:%u\00", align 1
@iterate_tasks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coalition_for_each_task(%struct.TYPE_11__* %0, i8* %1, void (%struct.TYPE_11__*, i8*, i32)* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca void (%struct.TYPE_11__*, i8*, i32)*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8* %1, i8** %5, align 8
  store void (%struct.TYPE_11__*, i8*, i32)* %2, void (%struct.TYPE_11__*, i8*, i32)** %6, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** @COALITION_NULL, align 8
  %9 = icmp ne %struct.TYPE_11__* %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @coal_type_str(i32 %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @coal_dbg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %12, i32 %15, i32 %19, i32 %22)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = call i32 @coalition_lock(%struct.TYPE_11__* %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = load i32, i32* @iterate_tasks, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = load void (%struct.TYPE_11__*, i8*, i32)*, void (%struct.TYPE_11__*, i8*, i32)** %6, align 8
  %30 = call i32 @coal_call(%struct.TYPE_11__* %26, i32 %27, i8* %28, void (%struct.TYPE_11__*, i8*, i32)* %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = call i32 @coalition_unlock(%struct.TYPE_11__* %31)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @coal_dbg(i8*, %struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @coal_type_str(i32) #1

declare dso_local i32 @coalition_lock(%struct.TYPE_11__*) #1

declare dso_local i32 @coal_call(%struct.TYPE_11__*, i32, i8*, void (%struct.TYPE_11__*, i8*, i32)*) #1

declare dso_local i32 @coalition_unlock(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
