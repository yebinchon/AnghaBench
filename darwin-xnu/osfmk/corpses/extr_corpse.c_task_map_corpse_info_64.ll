; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/corpses/extr_corpse.c_task_map_corpse_info_64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/corpses/extr_corpse.c_task_map_corpse_info_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@CORPSEINFO_ALLOCATION_SIZE = common dso_local global i32 0, align 4
@TASK_NULL = common dso_local global %struct.TYPE_7__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@VM_MEMORY_CORPSEINFO = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @task_map_corpse_info_64(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* @CORPSEINFO_ALLOCATION_SIZE, align 4
  store i32 %14, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TASK_NULL, align 8
  %17 = icmp eq %struct.TYPE_7__* %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = call i64 @task_is_a_corpse_fork(%struct.TYPE_7__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %4
  %23 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %23, i64* %5, align 8
  br label %68

24:                                               ; preds = %18
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TASK_NULL, align 8
  %27 = icmp eq %struct.TYPE_7__* %25, %26
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = call i32 @task_is_a_corpse(%struct.TYPE_7__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @kcdata_memory_get_begin_addr(i32 %35)
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %32, %28, %24
  %39 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %39, i64* %5, align 8
  br label %68

40:                                               ; preds = %32
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32* @kcdata_memory_get_begin_addr(i32 %43)
  %45 = bitcast i32* %44 to i8*
  store i8* %45, i8** %13, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %51 = load i32, i32* @VM_MEMORY_CORPSEINFO, align 4
  %52 = call i64 @mach_vm_allocate_kernel(i32 %48, i32* %11, i32 %49, i32 %50, i32 %51)
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @KERN_SUCCESS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %40
  %57 = load i64, i64* %10, align 8
  store i64 %57, i64* %5, align 8
  br label %68

58:                                               ; preds = %40
  %59 = load i8*, i8** %13, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @copyout(i8* %59, i32 %60, i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = load i32*, i32** %8, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %67, i64* %5, align 8
  br label %68

68:                                               ; preds = %58, %56, %38, %22
  %69 = load i64, i64* %5, align 8
  ret i64 %69
}

declare dso_local i64 @task_is_a_corpse_fork(%struct.TYPE_7__*) #1

declare dso_local i32 @task_is_a_corpse(%struct.TYPE_7__*) #1

declare dso_local i32* @kcdata_memory_get_begin_addr(i32) #1

declare dso_local i64 @mach_vm_allocate_kernel(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @copyout(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
