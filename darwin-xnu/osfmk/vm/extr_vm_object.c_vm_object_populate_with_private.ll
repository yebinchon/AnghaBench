; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_vm_object_populate_with_private.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_vm_object_populate_with_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, i8*, i8*, i8*, i64 }
%struct.TYPE_16__ = type { i32, i64, i64, i32, i32 }

@KERN_FAILURE = common dso_local global i32 0, align 4
@VM_PAGE_NULL = common dso_local global %struct.TYPE_15__* null, align 8
@vm_page_guard_addr = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [49 x i8] c"vm_object_populate_with_private - %p not private\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_object_populate_with_private(%struct.TYPE_16__* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %18, i32* %5, align 4
  br label %158

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  store i64 %20, i64* %10, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %22 = call i32 @vm_object_lock(%struct.TYPE_16__* %21)
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %144, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @trunc_page_64(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %34 = call i32 @vm_object_unlock(%struct.TYPE_16__* %33)
  %35 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %35, i32* %5, align 4
  br label %158

36:                                               ; preds = %27
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %132, %36
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %143

47:                                               ; preds = %44
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call %struct.TYPE_15__* @vm_page_lookup(%struct.TYPE_16__* %48, i32 %49)
  store %struct.TYPE_15__* %50, %struct.TYPE_15__** %12, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** @VM_PAGE_NULL, align 8
  %53 = icmp ne %struct.TYPE_15__* %51, %52
  br i1 %53, label %54, label %105

54:                                               ; preds = %47
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %77

59:                                               ; preds = %54
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %61 = call i64 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_15__* %60)
  %62 = load i64, i64* @vm_page_guard_addr, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %59
  %65 = call i32 (...) @vm_page_lockspin_queues()
  %66 = load i8*, i8** @TRUE, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  %69 = call i32 (...) @vm_page_unlock_queues()
  %70 = load i8*, i8** @FALSE, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @VM_PAGE_SET_PHYS_PAGE(%struct.TYPE_15__* %73, i64 %74)
  br label %76

76:                                               ; preds = %64, %59
  br label %104

77:                                               ; preds = %54
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %79 = call i64 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_15__* %78)
  %80 = load i64, i64* %10, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %103

82:                                               ; preds = %77
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 3
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %89 = call i32 @panic(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %88)
  br label %90

90:                                               ; preds = %87, %82
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %97 = call i64 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_15__* %96)
  %98 = call i32 @pmap_disconnect(i64 %97)
  br label %99

99:                                               ; preds = %95, %90
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %101 = load i64, i64* %10, align 8
  %102 = call i32 @VM_PAGE_SET_PHYS_PAGE(%struct.TYPE_15__* %100, i64 %101)
  br label %103

103:                                              ; preds = %99, %77
  br label %104

104:                                              ; preds = %103, %76
  br label %132

105:                                              ; preds = %47
  br label %106

106:                                              ; preds = %110, %105
  %107 = call %struct.TYPE_15__* (...) @vm_page_grab_fictitious()
  store %struct.TYPE_15__* %107, %struct.TYPE_15__** %12, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** @VM_PAGE_NULL, align 8
  %109 = icmp eq %struct.TYPE_15__* %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = call i32 (...) @vm_page_more_fictitious()
  br label %106

112:                                              ; preds = %106
  %113 = load i8*, i8** @TRUE, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 3
  store i8* %113, i8** %115, align 8
  %116 = load i8*, i8** @FALSE, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 2
  store i8* %116, i8** %118, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %120 = load i64, i64* %10, align 8
  %121 = call i32 @VM_PAGE_SET_PHYS_PAGE(%struct.TYPE_15__* %119, i64 %120)
  %122 = load i8*, i8** @TRUE, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = load i8*, i8** @FALSE, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  store i8* %125, i8** %127, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @vm_page_insert(%struct.TYPE_15__* %128, %struct.TYPE_16__* %129, i32 %130)
  br label %132

132:                                              ; preds = %112, %104
  %133 = load i64, i64* %10, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %10, align 8
  %135 = load i64, i64* @PAGE_SIZE, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %137, %135
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %11, align 4
  %140 = load i64, i64* @PAGE_SIZE, align 8
  %141 = load i64, i64* %9, align 8
  %142 = sub nsw i64 %141, %140
  store i64 %142, i64* %9, align 8
  br label %44

143:                                              ; preds = %44
  br label %154

144:                                              ; preds = %19
  %145 = load i64, i64* %8, align 8
  %146 = trunc i64 %145 to i32
  %147 = load i32, i32* @PAGE_SHIFT, align 4
  %148 = shl i32 %146, %147
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load i64, i64* %9, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 1
  store i64 %151, i64* %153, align 8
  br label %154

154:                                              ; preds = %144, %143
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %156 = call i32 @vm_object_unlock(%struct.TYPE_16__* %155)
  %157 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %157, i32* %5, align 4
  br label %158

158:                                              ; preds = %154, %32, %17
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local i32 @vm_object_lock(%struct.TYPE_16__*) #1

declare dso_local i32 @trunc_page_64(i32) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_15__* @vm_page_lookup(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_page_lockspin_queues(...) #1

declare dso_local i32 @vm_page_unlock_queues(...) #1

declare dso_local i32 @VM_PAGE_SET_PHYS_PAGE(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @panic(i8*, %struct.TYPE_15__*) #1

declare dso_local i32 @pmap_disconnect(i64) #1

declare dso_local %struct.TYPE_15__* @vm_page_grab_fictitious(...) #1

declare dso_local i32 @vm_page_more_fictitious(...) #1

declare dso_local i32 @vm_page_insert(%struct.TYPE_15__*, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
