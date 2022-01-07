; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_vm_object_copy_call.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_vm_object_copy_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@copy_call_count = common dso_local global i32 0, align 4
@VM_OBJECT_EVENT_COPY_CALL = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@copy_call_restart_count = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@copy_call_sleep_count = common dso_local global i32 0, align 4
@VM_OBJECT_NULL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@VM_OBJECT_EVENT_PAGER_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i64, i64, %struct.TYPE_10__**)* @vm_object_copy_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vm_object_copy_call(%struct.TYPE_10__* %0, i64 %1, i64 %2, %struct.TYPE_10__** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_10__** %3, %struct.TYPE_10__*** %9, align 8
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* @copy_call_count, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @copy_call_count, align 4
  br label %17

17:                                               ; preds = %22, %4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = load i32, i32* @VM_OBJECT_EVENT_COPY_CALL, align 4
  %20 = call i64 @vm_object_wanted(%struct.TYPE_10__* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = load i32, i32* @VM_OBJECT_EVENT_COPY_CALL, align 4
  %25 = load i32, i32* @THREAD_UNINT, align 4
  %26 = call i32 @vm_object_sleep(%struct.TYPE_10__* %23, i32 %24, i32 %25)
  %27 = load i32, i32* @copy_call_restart_count, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @copy_call_restart_count, align 4
  br label %17

29:                                               ; preds = %17
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = load i32, i32* @VM_OBJECT_EVENT_COPY_CALL, align 4
  %32 = call i32 @vm_object_set_wanted(%struct.TYPE_10__* %30, i32 %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = call i32 @vm_object_unlock(%struct.TYPE_10__* %33)
  %35 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* @KERN_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i64, i64* %10, align 8
  store i64 %40, i64* %5, align 8
  br label %131

41:                                               ; preds = %29
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = call i32 @vm_object_lock(%struct.TYPE_10__* %42)
  br label %44

44:                                               ; preds = %49, %41
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = load i32, i32* @VM_OBJECT_EVENT_COPY_CALL, align 4
  %47 = call i64 @vm_object_wanted(%struct.TYPE_10__* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = load i32, i32* @VM_OBJECT_EVENT_COPY_CALL, align 4
  %52 = load i32, i32* @THREAD_UNINT, align 4
  %53 = call i32 @vm_object_sleep(%struct.TYPE_10__* %50, i32 %51, i32 %52)
  %54 = load i32, i32* @copy_call_sleep_count, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @copy_call_sleep_count, align 4
  br label %44

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %72, %56
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @VM_OBJECT_NULL, align 8
  %62 = icmp ne i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %68, %struct.TYPE_10__** %11, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %70 = call i32 @vm_object_lock_try(%struct.TYPE_10__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %57
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %74 = call i32 @vm_object_unlock(%struct.TYPE_10__* %73)
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @mutex_pause(i32 %77)
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = call i32 @vm_object_lock(%struct.TYPE_10__* %79)
  br label %57

81:                                               ; preds = %57
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* %8, align 8
  %87 = add nsw i64 %85, %86
  %88 = icmp slt i64 %84, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* %8, align 8
  %92 = add nsw i64 %90, %91
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %89, %81
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %95
  %101 = load i64, i64* @TRUE, align 8
  store i64 %101, i64* %12, align 8
  br label %102

102:                                              ; preds = %100, %95
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %104 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  store %struct.TYPE_10__* %103, %struct.TYPE_10__** %104, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %106 = call i32 @vm_object_unlock(%struct.TYPE_10__* %105)
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %108 = call i32 @vm_object_unlock(%struct.TYPE_10__* %107)
  %109 = load i64, i64* %12, align 8
  %110 = load i64, i64* @TRUE, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %129

112:                                              ; preds = %102
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %114 = call i32 @vm_object_lock(%struct.TYPE_10__* %113)
  br label %115

115:                                              ; preds = %121, %112
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %123 = load i32, i32* @VM_OBJECT_EVENT_PAGER_READY, align 4
  %124 = load i32, i32* @THREAD_UNINT, align 4
  %125 = call i32 @vm_object_sleep(%struct.TYPE_10__* %122, i32 %123, i32 %124)
  br label %115

126:                                              ; preds = %115
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %128 = call i32 @vm_object_unlock(%struct.TYPE_10__* %127)
  br label %129

129:                                              ; preds = %126, %102
  %130 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %130, i64* %5, align 8
  br label %131

131:                                              ; preds = %129, %39
  %132 = load i64, i64* %5, align 8
  ret i64 %132
}

declare dso_local i64 @vm_object_wanted(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @vm_object_sleep(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @vm_object_set_wanted(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_10__*) #1

declare dso_local i32 @vm_object_lock(%struct.TYPE_10__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_object_lock_try(%struct.TYPE_10__*) #1

declare dso_local i32 @mutex_pause(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
