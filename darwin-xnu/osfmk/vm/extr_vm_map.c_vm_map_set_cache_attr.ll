; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_set_cache_attr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_set_cache_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@VM_OBJECT_NULL = common dso_local global %struct.TYPE_9__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@vm_map_set_cache_attr_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_set_cache_attr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @vm_map_lock_read(i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @vm_map_lookup_entry(i32 %11, i32 %12, %struct.TYPE_10__** %5)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %2
  %21 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %21, i32* %7, align 4
  br label %40

22:                                               ; preds = %15
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = call %struct.TYPE_9__* @VME_OBJECT(%struct.TYPE_10__* %23)
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %6, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** @VM_OBJECT_NULL, align 8
  %27 = icmp eq %struct.TYPE_9__* %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %29, i32* %7, align 4
  br label %40

30:                                               ; preds = %22
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = call i32 @vm_object_lock(%struct.TYPE_9__* %31)
  %33 = load i32, i32* @TRUE, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = call i32 @vm_object_unlock(%struct.TYPE_9__* %36)
  %38 = load i32, i32* @vm_map_set_cache_attr_count, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @vm_map_set_cache_attr_count, align 4
  br label %40

40:                                               ; preds = %30, %28, %20
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @vm_map_unlock_read(i32 %41)
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @vm_map_lock_read(i32) #1

declare dso_local i32 @vm_map_lookup_entry(i32, i32, %struct.TYPE_10__**) #1

declare dso_local %struct.TYPE_9__* @VME_OBJECT(%struct.TYPE_10__*) #1

declare dso_local i32 @vm_object_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_9__*) #1

declare dso_local i32 @vm_map_unlock_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
