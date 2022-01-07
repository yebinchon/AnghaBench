; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_vm_toggle_entry_reuse.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_vm_toggle_entry_reuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@VM_TOGGLE_GETVALUE = common dso_local global i32 0, align 4
@VM_TOGGLE_SET = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@VM_TOGGLE_CLEAR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_toggle_entry_reuse(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = call %struct.TYPE_11__* (...) @current_map()
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %6, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @VM_TOGGLE_GETVALUE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  br label %79

27:                                               ; preds = %19, %2
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @VM_TOGGLE_SET, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %63

31:                                               ; preds = %27
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = call i32 @vm_map_lock(%struct.TYPE_11__* %32)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = call i32 @vm_map_disable_hole_optimization(%struct.TYPE_11__* %34)
  %36 = load i32, i32* @TRUE, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %40 = call %struct.TYPE_12__* @vm_map_to_entry(%struct.TYPE_11__* %39)
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %7, align 8
  %41 = call i32 @__IGNORE_WCASTALIGN(%struct.TYPE_12__* %40)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %46 = icmp eq %struct.TYPE_12__* %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %31
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = call i32 @vm_map_min(%struct.TYPE_11__* %48)
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  br label %60

52:                                               ; preds = %31
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %52, %47
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = call i32 @vm_map_unlock(%struct.TYPE_11__* %61)
  br label %78

63:                                               ; preds = %27
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @VM_TOGGLE_CLEAR, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %69 = call i32 @vm_map_lock(%struct.TYPE_11__* %68)
  %70 = load i32, i32* @FALSE, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %74 = call i32 @vm_map_unlock(%struct.TYPE_11__* %73)
  br label %77

75:                                               ; preds = %63
  %76 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %76, i32* %3, align 4
  br label %81

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %60
  br label %79

79:                                               ; preds = %78, %22
  %80 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %75
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_11__* @current_map(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_map_lock(%struct.TYPE_11__*) #1

declare dso_local i32 @vm_map_disable_hole_optimization(%struct.TYPE_11__*) #1

declare dso_local i32 @__IGNORE_WCASTALIGN(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @vm_map_to_entry(%struct.TYPE_11__*) #1

declare dso_local i32 @vm_map_min(%struct.TYPE_11__*) #1

declare dso_local i32 @vm_map_unlock(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
