; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_copy_discard.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_copy_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, i64, i32 }
%struct.TYPE_17__ = type { i32 }

@VM_MAP_COPY_NULL = common dso_local global %struct.TYPE_18__* null, align 8
@msg_ool_size_small = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Invalid vm_map_copy_t sz:%lld, ofst:%lld\00", align 1
@cpy_kdata_hdr_sz = common dso_local global i64 0, align 8
@vm_map_copy_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_map_copy_discard(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %4 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %5 = load %struct.TYPE_18__*, %struct.TYPE_18__** @VM_MAP_COPY_NULL, align 8
  %6 = icmp eq %struct.TYPE_18__* %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %78

8:                                                ; preds = %1
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %74 [
    i32 130, label %12
    i32 128, label %42
    i32 129, label %47
  ]

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %37, %12
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %15 = call %struct.TYPE_17__* @vm_map_copy_first_entry(%struct.TYPE_18__* %14)
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %17 = call %struct.TYPE_17__* @vm_map_copy_to_entry(%struct.TYPE_18__* %16)
  %18 = icmp ne %struct.TYPE_17__* %15, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %21 = call %struct.TYPE_17__* @vm_map_copy_first_entry(%struct.TYPE_18__* %20)
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %3, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = call i32 @vm_map_copy_entry_unlink(%struct.TYPE_18__* %22, %struct.TYPE_17__* %23)
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %31 = call i32 @VME_SUBMAP(%struct.TYPE_17__* %30)
  %32 = call i32 @vm_map_deallocate(i32 %31)
  br label %37

33:                                               ; preds = %19
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %35 = call i32 @VME_OBJECT(%struct.TYPE_17__* %34)
  %36 = call i32 @vm_object_deallocate(i32 %35)
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %40 = call i32 @vm_map_copy_entry_dispose(%struct.TYPE_18__* %38, %struct.TYPE_17__* %39)
  br label %13

41:                                               ; preds = %13
  br label %74

42:                                               ; preds = %8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @vm_object_deallocate(i32 %45)
  br label %74

47:                                               ; preds = %8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @msg_ool_size_small, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53, %47
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %61, i64 %64)
  br label %66

66:                                               ; preds = %58, %53
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @cpy_kdata_hdr_sz, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @kfree(%struct.TYPE_18__* %67, i64 %72)
  br label %78

74:                                               ; preds = %8, %42, %41
  %75 = load i32, i32* @vm_map_copy_zone, align 4
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %77 = call i32 @zfree(i32 %75, %struct.TYPE_18__* %76)
  br label %78

78:                                               ; preds = %74, %66, %7
  ret void
}

declare dso_local %struct.TYPE_17__* @vm_map_copy_first_entry(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_17__* @vm_map_copy_to_entry(%struct.TYPE_18__*) #1

declare dso_local i32 @vm_map_copy_entry_unlink(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @vm_map_deallocate(i32) #1

declare dso_local i32 @VME_SUBMAP(%struct.TYPE_17__*) #1

declare dso_local i32 @vm_object_deallocate(i32) #1

declare dso_local i32 @VME_OBJECT(%struct.TYPE_17__*) #1

declare dso_local i32 @vm_map_copy_entry_dispose(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @panic(i8*, i64, i64) #1

declare dso_local i32 @kfree(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @zfree(i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
