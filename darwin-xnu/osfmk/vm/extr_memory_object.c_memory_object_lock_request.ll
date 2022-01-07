; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_memory_object.c_memory_object_lock_request.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_memory_object.c_memory_object_lock_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64 }

@VM_OBJECT_NULL = common dso_local global %struct.TYPE_10__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4
@VM_PROT_NO_CHANGE = common dso_local global i32 0, align 4
@MEMORY_OBJECT_DATA_FLUSH_ALL = common dso_local global i32 0, align 4
@MEMORY_OBJECT_RETURN_NONE = common dso_local global i32 0, align 4
@MEMORY_OBJECT_DATA_FLUSH = common dso_local global i32 0, align 4
@REAP_DATA_FLUSH = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memory_object_lock_request(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call %struct.TYPE_10__* @memory_object_control_to_vm_object(i32 %19)
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %18, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** @VM_OBJECT_NULL, align 8
  %23 = icmp eq %struct.TYPE_10__* %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %8
  %25 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %25, i32* %9, align 4
  br label %102

26:                                               ; preds = %8
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* @VM_PROT_ALL, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* @VM_PROT_NO_CHANGE, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %37, i32* %9, align 4
  br label %102

38:                                               ; preds = %32, %26
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @round_page_64(i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %42 = call i32 @vm_object_lock(%struct.TYPE_10__* %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %44 = call i32 @vm_object_paging_begin(%struct.TYPE_10__* %43)
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* @MEMORY_OBJECT_DATA_FLUSH_ALL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %38
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* @MEMORY_OBJECT_RETURN_NONE, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56, %53, %49
  %62 = load i32, i32* @MEMORY_OBJECT_DATA_FLUSH_ALL, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %16, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* @MEMORY_OBJECT_DATA_FLUSH, align 4
  %67 = load i32, i32* %16, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %16, align 4
  br label %69

69:                                               ; preds = %61, %56
  br label %70

70:                                               ; preds = %69, %38
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = sub nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* @MEMORY_OBJECT_DATA_FLUSH_ALL, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %70
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %84 = load i32, i32* @REAP_DATA_FLUSH, align 4
  %85 = call i32 @vm_object_reap_pages(%struct.TYPE_10__* %83, i32 %84)
  br label %96

86:                                               ; preds = %70
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32*, i32** %13, align 8
  %91 = load i32*, i32** %14, align 8
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %17, align 4
  %95 = call i32 @vm_object_update(%struct.TYPE_10__* %87, i32 %88, i32 %89, i32* %90, i32* %91, i32 %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %86, %82
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %98 = call i32 @vm_object_paging_end(%struct.TYPE_10__* %97)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %100 = call i32 @vm_object_unlock(%struct.TYPE_10__* %99)
  %101 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %96, %36, %24
  %103 = load i32, i32* %9, align 4
  ret i32 %103
}

declare dso_local %struct.TYPE_10__* @memory_object_control_to_vm_object(i32) #1

declare dso_local i32 @round_page_64(i32) #1

declare dso_local i32 @vm_object_lock(%struct.TYPE_10__*) #1

declare dso_local i32 @vm_object_paging_begin(%struct.TYPE_10__*) #1

declare dso_local i32 @vm_object_reap_pages(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @vm_object_update(%struct.TYPE_10__*, i32, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @vm_object_paging_end(%struct.TYPE_10__*) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
