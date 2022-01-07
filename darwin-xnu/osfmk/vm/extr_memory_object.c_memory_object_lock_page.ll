; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_memory_object.c_memory_object_lock_page.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_memory_object.c_memory_object_lock_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i64, i64, i64, i64, i64 }

@XPR_MEMORY_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"m_o_lock_page, page 0x%X rtn %d flush %d prot %d\0A\00", align 1
@MEMORY_OBJECT_LOCK_RESULT_MUST_BLOCK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MEMORY_OBJECT_LOCK_RESULT_MUST_FREE = common dso_local global i32 0, align 4
@MEMORY_OBJECT_LOCK_RESULT_DONE = common dso_local global i32 0, align 4
@MEMORY_OBJECT_LOCK_RESULT_MUST_RETURN = common dso_local global i32 0, align 4
@VM_MEM_MODIFIED = common dso_local global i32 0, align 4
@VM_PROT_NO_CHANGE = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memory_object_lock_page(%struct.TYPE_9__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* @XPR_MEMORY_OBJECT, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i64, i64* %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @XPR(i32 %10, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %11, i32 %12, i64 %13, i32 %14, i32 0)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %4
  %26 = load i32, i32* @MEMORY_OBJECT_LOCK_RESULT_MUST_BLOCK, align 4
  store i32 %26, i32* %5, align 4
  br label %129

27:                                               ; preds = %20
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = load i32, i32* @FALSE, align 4
  %35 = call i32 @vm_pageout_steal_laundry(%struct.TYPE_9__* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %46, %41, %36
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = call i64 @VM_PAGE_WIRED(%struct.TYPE_9__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @MEMORY_OBJECT_LOCK_RESULT_MUST_FREE, align 4
  store i32 %64, i32* %5, align 4
  br label %129

65:                                               ; preds = %59, %56, %51
  %66 = load i32, i32* @MEMORY_OBJECT_LOCK_RESULT_DONE, align 4
  store i32 %66, i32* %5, align 4
  br label %129

67:                                               ; preds = %46
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = call i64 @VM_PAGE_WIRED(%struct.TYPE_9__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %67
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i64 @memory_object_should_return_page(%struct.TYPE_9__* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @MEMORY_OBJECT_LOCK_RESULT_MUST_RETURN, align 4
  store i32 %84, i32* %5, align 4
  br label %129

85:                                               ; preds = %78
  %86 = load i32, i32* @MEMORY_OBJECT_LOCK_RESULT_DONE, align 4
  store i32 %86, i32* %5, align 4
  br label %129

87:                                               ; preds = %67
  %88 = load i64, i64* %8, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %92 = call i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_9__* %91)
  %93 = call i32 @pmap_disconnect(i32 %92)
  %94 = load i32, i32* @VM_MEM_MODIFIED, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %99 = load i32, i32* @FALSE, align 4
  %100 = call i32 @SET_PAGE_DIRTY(%struct.TYPE_9__* %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %90
  br label %115

102:                                              ; preds = %87
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @VM_PROT_NO_CHANGE, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %108 = call i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_9__* %107)
  %109 = load i32, i32* @VM_PROT_ALL, align 4
  %110 = load i32, i32* %9, align 4
  %111 = xor i32 %110, -1
  %112 = and i32 %109, %111
  %113 = call i32 @pmap_page_protect(i32 %108, i32 %112)
  br label %114

114:                                              ; preds = %106, %102
  br label %115

115:                                              ; preds = %114, %101
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i64 @memory_object_should_return_page(%struct.TYPE_9__* %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i32, i32* @MEMORY_OBJECT_LOCK_RESULT_MUST_RETURN, align 4
  store i32 %121, i32* %5, align 4
  br label %129

122:                                              ; preds = %115
  %123 = load i64, i64* %8, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i32, i32* @MEMORY_OBJECT_LOCK_RESULT_MUST_FREE, align 4
  store i32 %126, i32* %5, align 4
  br label %129

127:                                              ; preds = %122
  %128 = load i32, i32* @MEMORY_OBJECT_LOCK_RESULT_DONE, align 4
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %127, %125, %120, %85, %83, %65, %63, %25
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @XPR(i32, i8*, %struct.TYPE_9__*, i32, i64, i32, i32) #1

declare dso_local i32 @vm_pageout_steal_laundry(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @VM_PAGE_WIRED(%struct.TYPE_9__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @memory_object_should_return_page(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @pmap_disconnect(i32) #1

declare dso_local i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_9__*) #1

declare dso_local i32 @SET_PAGE_DIRTY(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @pmap_page_protect(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
