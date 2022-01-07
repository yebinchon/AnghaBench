; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/extr_work_interval.c_work_interval_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/extr_work_interval.c_work_interval_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.work_interval_create_params = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@WORK_INTERVAL_OPERATION_CREATE2 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @work_interval_create(%struct.TYPE_4__** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.work_interval_create_params, align 4
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %10 = icmp eq %struct.TYPE_4__** %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %48

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.work_interval_create_params, %struct.work_interval_create_params* %8, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.work_interval_create_params, %struct.work_interval_create_params* %8, i32 0, i32 1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.work_interval_create_params, %struct.work_interval_create_params* %8, i32 0, i32 2
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* @WORK_INTERVAL_OPERATION_CREATE2, align 4
  %19 = call i32 @__work_interval_ctl(i32 %18, i32 0, %struct.work_interval_create_params* %8, i32 12)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %48

24:                                               ; preds = %13
  %25 = call %struct.TYPE_4__* @malloc(i32 16)
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %7, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = icmp eq %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @ENOMEM, align 4
  store i32 %29, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %48

30:                                               ; preds = %24
  %31 = call i32 (...) @__thread_selfid()
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds %struct.work_interval_create_params, %struct.work_interval_create_params* %8, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds %struct.work_interval_create_params, %struct.work_interval_create_params* %8, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = getelementptr inbounds %struct.work_interval_create_params, %struct.work_interval_create_params* %8, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %47, align 8
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %30, %28, %22, %11
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @__work_interval_ctl(i32, i32, %struct.work_interval_create_params*, i32) #1

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

declare dso_local i32 @__thread_selfid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
