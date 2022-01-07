; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_vm_map_get_phys_page.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_vm_map_get_phys_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_12__*, i64 }
%struct.TYPE_13__ = type { i32, i64 }

@PAGE_MASK = common dso_local global i32 0, align 4
@VM_OBJECT_NULL = common dso_local global %struct.TYPE_12__* null, align 8
@VM_PROT_NONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_NONE = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@VM_PAGE_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vm_map_get_phys_page(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %10, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @PAGE_MASK, align 4
  %16 = call i32 @vm_map_trunc_page(i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @vm_map_lock(i32 %17)
  br label %19

19:                                               ; preds = %66, %37, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @vm_map_lookup_entry(i32 %20, i32 %21, %struct.TYPE_13__** %9)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %151

24:                                               ; preds = %19
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %26 = call %struct.TYPE_12__* @VME_OBJECT(%struct.TYPE_13__* %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** @VM_OBJECT_NULL, align 8
  %28 = icmp eq %struct.TYPE_12__* %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @vm_map_unlock(i32 %30)
  store i64 0, i64* %3, align 8
  br label %155

32:                                               ; preds = %24
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %32
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %39 = call i32 @VME_SUBMAP(%struct.TYPE_13__* %38)
  %40 = call i32 @vm_map_lock(i32 %39)
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %11, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %43 = call i32 @VME_SUBMAP(%struct.TYPE_13__* %42)
  store i32 %43, i32* %4, align 4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %45 = call i32 @VME_OFFSET(%struct.TYPE_13__* %44)
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %46, %49
  %51 = add nsw i32 %45, %50
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @vm_map_unlock(i32 %52)
  br label %19

54:                                               ; preds = %32
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %56 = call %struct.TYPE_12__* @VME_OBJECT(%struct.TYPE_13__* %55)
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %96

60:                                               ; preds = %54
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %62 = call %struct.TYPE_12__* @VME_OBJECT(%struct.TYPE_13__* %61)
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @vm_map_unlock(i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @VM_PROT_NONE, align 4
  %72 = load i32, i32* @FALSE, align 4
  %73 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %74 = load i32, i32* @THREAD_UNINT, align 4
  %75 = call i32 @vm_fault(i32 %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32* null, i32 0)
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @vm_map_lock(i32 %76)
  br label %19

78:                                               ; preds = %60
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %80 = call i32 @VME_OFFSET(%struct.TYPE_13__* %79)
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %81, %84
  %86 = add nsw i32 %80, %85
  store i32 %86, i32* %6, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %88 = call %struct.TYPE_12__* @VME_OBJECT(%struct.TYPE_13__* %87)
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %90, %91
  %93 = load i32, i32* @PAGE_SHIFT, align 4
  %94 = ashr i32 %92, %93
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %10, align 8
  br label %151

96:                                               ; preds = %54
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %98 = call i32 @VME_OFFSET(%struct.TYPE_13__* %97)
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %99, %102
  %104 = add nsw i32 %98, %103
  store i32 %104, i32* %6, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %106 = call %struct.TYPE_12__* @VME_OBJECT(%struct.TYPE_13__* %105)
  store %struct.TYPE_12__* %106, %struct.TYPE_12__** %7, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %108 = call i32 @vm_object_lock(%struct.TYPE_12__* %107)
  br label %109

109:                                              ; preds = %149, %96
  %110 = load i64, i64* @TRUE, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %150

112:                                              ; preds = %109
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i64 @vm_page_lookup(%struct.TYPE_12__* %113, i32 %114)
  store i64 %115, i64* %12, align 8
  %116 = load i64, i64* %12, align 8
  %117 = load i64, i64* @VM_PAGE_NULL, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %144

119:                                              ; preds = %112
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = icmp ne %struct.TYPE_12__* %122, null
  br i1 %123, label %124, label %140

124:                                              ; preds = %119
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = call i32 @vm_object_lock(%struct.TYPE_12__* %127)
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %129, %struct.TYPE_12__** %13, align 8
  %130 = load i32, i32* %6, align 4
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %130, %133
  store i32 %134, i32* %6, align 4
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  store %struct.TYPE_12__* %137, %struct.TYPE_12__** %7, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %139 = call i32 @vm_object_unlock(%struct.TYPE_12__* %138)
  br label %143

140:                                              ; preds = %119
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %142 = call i32 @vm_object_unlock(%struct.TYPE_12__* %141)
  br label %150

143:                                              ; preds = %124
  br label %149

144:                                              ; preds = %112
  %145 = load i64, i64* %12, align 8
  %146 = call i64 @VM_PAGE_GET_PHYS_PAGE(i64 %145)
  store i64 %146, i64* %10, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %148 = call i32 @vm_object_unlock(%struct.TYPE_12__* %147)
  br label %150

149:                                              ; preds = %143
  br label %109

150:                                              ; preds = %144, %140, %109
  br label %151

151:                                              ; preds = %150, %78, %19
  %152 = load i32, i32* %4, align 4
  %153 = call i32 @vm_map_unlock(i32 %152)
  %154 = load i64, i64* %10, align 8
  store i64 %154, i64* %3, align 8
  br label %155

155:                                              ; preds = %151, %29
  %156 = load i64, i64* %3, align 8
  ret i64 %156
}

declare dso_local i32 @vm_map_trunc_page(i32, i32) #1

declare dso_local i32 @vm_map_lock(i32) #1

declare dso_local i64 @vm_map_lookup_entry(i32, i32, %struct.TYPE_13__**) #1

declare dso_local %struct.TYPE_12__* @VME_OBJECT(%struct.TYPE_13__*) #1

declare dso_local i32 @vm_map_unlock(i32) #1

declare dso_local i32 @VME_SUBMAP(%struct.TYPE_13__*) #1

declare dso_local i32 @VME_OFFSET(%struct.TYPE_13__*) #1

declare dso_local i32 @vm_fault(i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @vm_object_lock(%struct.TYPE_12__*) #1

declare dso_local i64 @vm_page_lookup(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_12__*) #1

declare dso_local i64 @VM_PAGE_GET_PHYS_PAGE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
