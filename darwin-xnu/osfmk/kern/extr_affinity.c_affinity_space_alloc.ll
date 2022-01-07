; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_affinity.c_affinity_space_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_affinity.c_affinity_space_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@task_lck_grp = common dso_local global i32 0, align 4
@task_lck_attr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"affinity_space_create() returns %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* ()* @affinity_space_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @affinity_space_alloc() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = call i64 @kalloc(i32 4)
  %4 = inttoptr i64 %3 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = icmp eq %struct.TYPE_4__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %1, align 8
  br label %20

8:                                                ; preds = %0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = call i32 @lck_mtx_init(i32* %10, i32* @task_lck_grp, i32* @task_lck_attr)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = call i32 @queue_init(i32* %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = call i32 @DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %1, align 8
  br label %20

20:                                               ; preds = %8, %7
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  ret %struct.TYPE_4__* %21
}

declare dso_local i64 @kalloc(i32) #1

declare dso_local i32 @lck_mtx_init(i32*, i32*, i32*) #1

declare dso_local i32 @queue_init(i32*) #1

declare dso_local i32 @DBG(i8*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
