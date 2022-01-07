; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_vm_object_do_bypass.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_vm_object_do_bypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, i32, %struct.TYPE_14__*, i64, %struct.TYPE_14__*, i32 }

@VM_OBJECT_NULL = common dso_local global %struct.TYPE_14__* null, align 8
@object_bypasses = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_14__*)* @vm_object_do_bypass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_object_do_bypass(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %6 = call i32 @vm_object_lock_assert_exclusive(%struct.TYPE_14__* %5)
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %8 = call i32 @vm_object_lock_assert_exclusive(%struct.TYPE_14__* %7)
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 5
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %12 = call i32 @vm_object_reference(%struct.TYPE_14__* %11)
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 5
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %31, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = icmp ne %struct.TYPE_14__* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %2
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, %39
  store i64 %43, i64* %41, align 8
  br label %47

44:                                               ; preds = %2
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %44, %36
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = icmp eq %struct.TYPE_14__* %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** @VM_OBJECT_NULL, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 3
  store %struct.TYPE_14__* %54, %struct.TYPE_14__** %56, align 8
  br label %57

57:                                               ; preds = %53, %47
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %60, 2
  br i1 %61, label %72, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %81, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %70, 1
  br i1 %71, label %72, label %81

72:                                               ; preds = %67, %57
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %74 = call i32 @vm_object_lock_assert_exclusive(%struct.TYPE_14__* %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %76, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %80 = call i32 @vm_object_unlock(%struct.TYPE_14__* %79)
  br label %94

81:                                               ; preds = %67, %62
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %83 = call i32 @vm_object_activity_begin(%struct.TYPE_14__* %82)
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %85 = call i32 @vm_object_unlock(%struct.TYPE_14__* %84)
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %87 = call i32 @vm_object_unlock(%struct.TYPE_14__* %86)
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %89 = call i32 @vm_object_deallocate(%struct.TYPE_14__* %88)
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %91 = call i32 @vm_object_lock(%struct.TYPE_14__* %90)
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %93 = call i32 @vm_object_activity_end(%struct.TYPE_14__* %92)
  br label %94

94:                                               ; preds = %81, %72
  %95 = load i32, i32* @object_bypasses, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* @object_bypasses, align 4
  ret void
}

declare dso_local i32 @vm_object_lock_assert_exclusive(%struct.TYPE_14__*) #1

declare dso_local i32 @vm_object_reference(%struct.TYPE_14__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_14__*) #1

declare dso_local i32 @vm_object_activity_begin(%struct.TYPE_14__*) #1

declare dso_local i32 @vm_object_deallocate(%struct.TYPE_14__*) #1

declare dso_local i32 @vm_object_lock(%struct.TYPE_14__*) #1

declare dso_local i32 @vm_object_activity_end(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
