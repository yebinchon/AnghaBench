; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_memory_entry_purgeable_control_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_memory_entry_purgeable_control_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_14__, i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }

@IKOT_NAMED_ENTRY = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@VM_PURGABLE_SET_STATE = common dso_local global i32 0, align 4
@VM_PURGABLE_GET_STATE = common dso_local global i32 0, align 4
@VM_PURGABLE_SET_STATE_FROM_KERNEL = common dso_local global i32 0, align 4
@VM_PURGABLE_ALL_MASKS = common dso_local global i32 0, align 4
@VM_PURGABLE_STATE_MASK = common dso_local global i32 0, align 4
@VM_OBJECT_NULL = common dso_local global %struct.TYPE_15__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memory_entry_purgeable_control_internal(%struct.TYPE_17__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %12 = call i32 @IP_VALID(%struct.TYPE_17__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %16 = call i64 @ip_kotype(%struct.TYPE_17__* %15)
  %17 = load i64, i64* @IKOT_NAMED_ENTRY, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %3
  %20 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %20, i32* %4, align 4
  br label %122

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @VM_PURGABLE_SET_STATE, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @VM_PURGABLE_GET_STATE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @VM_PURGABLE_SET_STATE_FROM_KERNEL, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %34, i32* %4, align 4
  br label %122

35:                                               ; preds = %29, %25, %21
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @VM_PURGABLE_SET_STATE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @VM_PURGABLE_SET_STATE_FROM_KERNEL, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %39, %35
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @VM_PURGABLE_ALL_MASKS, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @VM_PURGABLE_STATE_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @VM_PURGABLE_STATE_MASK, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50, %43
  %58 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %58, i32* %4, align 4
  br label %122

59:                                               ; preds = %50, %39
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %63, %struct.TYPE_16__** %9, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %65 = call i32 @named_entry_lock(%struct.TYPE_16__* %64)
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %59
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70, %59
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %77 = call i32 @named_entry_unlock(%struct.TYPE_16__* %76)
  %78 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %78, i32* %4, align 4
  br label %122

79:                                               ; preds = %70
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  store %struct.TYPE_15__* %83, %struct.TYPE_15__** %10, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** @VM_OBJECT_NULL, align 8
  %86 = icmp eq %struct.TYPE_15__* %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %79
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %89 = call i32 @named_entry_unlock(%struct.TYPE_16__* %88)
  %90 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %90, i32* %4, align 4
  br label %122

91:                                               ; preds = %79
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %93 = call i32 @vm_object_lock(%struct.TYPE_15__* %92)
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %91
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %101, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %98, %91
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %108 = call i32 @vm_object_unlock(%struct.TYPE_15__* %107)
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %110 = call i32 @named_entry_unlock(%struct.TYPE_16__* %109)
  %111 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %111, i32* %4, align 4
  br label %122

112:                                              ; preds = %98
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %114 = call i32 @named_entry_unlock(%struct.TYPE_16__* %113)
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %116 = load i32, i32* %6, align 4
  %117 = load i32*, i32** %7, align 8
  %118 = call i32 @vm_object_purgable_control(%struct.TYPE_15__* %115, i32 %116, i32* %117)
  store i32 %118, i32* %8, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %120 = call i32 @vm_object_unlock(%struct.TYPE_15__* %119)
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %112, %106, %87, %75, %57, %33, %19
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @IP_VALID(%struct.TYPE_17__*) #1

declare dso_local i64 @ip_kotype(%struct.TYPE_17__*) #1

declare dso_local i32 @named_entry_lock(%struct.TYPE_16__*) #1

declare dso_local i32 @named_entry_unlock(%struct.TYPE_16__*) #1

declare dso_local i32 @vm_object_lock(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_object_purgable_control(%struct.TYPE_15__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
