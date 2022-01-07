; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_inherit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_inherit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_6__*, i64, i32, i64 }

@VM_INHERIT_COPY = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_inherit(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @vm_map_lock(i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @VM_MAP_RANGE_CHECK(i32 %14, i64 %15, i64 %16)
  %18 = load i32, i32* %6, align 4
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @vm_map_lookup_entry(i32 %18, i64 %19, %struct.TYPE_6__** %11)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %10, align 8
  br label %29

24:                                               ; preds = %4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %11, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %10, align 8
  br label %29

29:                                               ; preds = %24, %22
  br label %30

30:                                               ; preds = %57, %29
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call %struct.TYPE_6__* @vm_map_to_entry(i32 %32)
  %34 = icmp ne %struct.TYPE_6__* %31, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp slt i64 %38, %39
  br label %41

41:                                               ; preds = %35, %30
  %42 = phi i1 [ false, %30 ], [ %40, %35 ]
  br i1 %42, label %43, label %61

43:                                               ; preds = %41
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* @VM_INHERIT_COPY, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @vm_map_unlock(i32 %53)
  %55 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %55, i32* %5, align 4
  br label %114

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %43
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %10, align 8
  br label %30

61:                                               ; preds = %41
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %10, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call %struct.TYPE_6__* @vm_map_to_entry(i32 %64)
  %66 = icmp ne %struct.TYPE_6__* %63, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @vm_map_clip_start(i32 %68, %struct.TYPE_6__* %69, i64 %70)
  br label %72

72:                                               ; preds = %67, %61
  br label %73

73:                                               ; preds = %103, %72
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call %struct.TYPE_6__* @vm_map_to_entry(i32 %75)
  %77 = icmp ne %struct.TYPE_6__* %74, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = icmp slt i64 %81, %82
  br label %84

84:                                               ; preds = %78, %73
  %85 = phi i1 [ false, %73 ], [ %83, %78 ]
  br i1 %85, label %86, label %110

86:                                               ; preds = %84
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %89 = load i64, i64* %8, align 8
  %90 = call i32 @vm_map_clip_end(i32 %87, %struct.TYPE_6__* %88, i64 %89)
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %86
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  br label %103

103:                                              ; preds = %95, %86
  %104 = load i64, i64* %9, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  store i64 %104, i64* %106, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  store %struct.TYPE_6__* %109, %struct.TYPE_6__** %10, align 8
  br label %73

110:                                              ; preds = %84
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @vm_map_unlock(i32 %111)
  %113 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %110, %52
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @vm_map_lock(i32) #1

declare dso_local i32 @VM_MAP_RANGE_CHECK(i32, i64, i64) #1

declare dso_local i64 @vm_map_lookup_entry(i32, i64, %struct.TYPE_6__**) #1

declare dso_local %struct.TYPE_6__* @vm_map_to_entry(i32) #1

declare dso_local i32 @vm_map_unlock(i32) #1

declare dso_local i32 @vm_map_clip_start(i32, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @vm_map_clip_end(i32, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
