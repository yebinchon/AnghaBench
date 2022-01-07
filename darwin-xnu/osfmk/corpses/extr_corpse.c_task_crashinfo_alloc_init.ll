; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/corpses/extr_corpse.c_task_crashinfo_alloc_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/corpses/extr_corpse.c_task_crashinfo_alloc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@CORPSE_CRASHINFO_HAS_REF = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@TASK_CRASHINFO_BEGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @task_crashinfo_alloc_init(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @CORPSE_CRASHINFO_HAS_REF, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load i64, i64* @KERN_SUCCESS, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @task_crashinfo_get_ref(i32 %17)
  %19 = icmp ne i64 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %45

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @TASK_CRASHINFO_BEGIN, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call %struct.TYPE_4__* @kcdata_memory_alloc_init(i32 %23, i32 %24, i32 %25, i32 %26)
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %10, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %43

34:                                               ; preds = %22
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @CORPSE_CRASHINFO_HAS_REF, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @task_crashinfo_release_ref(i32 %40)
  br label %42

42:                                               ; preds = %39, %34
  br label %43

43:                                               ; preds = %42, %30
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %5, align 8
  br label %45

45:                                               ; preds = %43, %20
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %46
}

declare dso_local i64 @task_crashinfo_get_ref(i32) #1

declare dso_local %struct.TYPE_4__* @kcdata_memory_alloc_init(i32, i32, i32, i32) #1

declare dso_local i32 @task_crashinfo_release_ref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
