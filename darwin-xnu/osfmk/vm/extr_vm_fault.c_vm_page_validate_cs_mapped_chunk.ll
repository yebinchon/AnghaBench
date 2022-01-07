; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_fault.c_vm_page_validate_cs_mapped_chunk.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_fault.c_vm_page_validate_cs_mapped_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i32*, i32, i64, i32 }
%struct.vnode = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_page_validate_cs_mapped_chunk(%struct.TYPE_7__* %0, i8* %1, i64 %2, i32 %3, i64* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.vnode*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load i64, i64* @FALSE, align 8
  %21 = load i64*, i64** %11, align 8
  store i64 %20, i64* %21, align 8
  %22 = load i32*, i32** %12, align 8
  store i32 0, i32* %22, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = call %struct.TYPE_8__* @VM_PAGE_OBJECT(%struct.TYPE_7__* %27)
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %13, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %30 = call i32 @vm_object_lock_assert_exclusive(%struct.TYPE_8__* %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %14, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %6
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %42, %6
  br label %111

53:                                               ; preds = %47
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %16, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @assert(i32 %76)
  %78 = load i32*, i32** %16, align 8
  %79 = call %struct.vnode* @vnode_pager_lookup_vnode(i32* %78)
  store %struct.vnode* %79, %struct.vnode** %17, align 8
  %80 = load i64, i64* %9, align 8
  store i64 %80, i64* %15, align 8
  %81 = load i64, i64* %15, align 8
  %82 = load i64, i64* @PAGE_SIZE, align 8
  %83 = icmp slt i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  store i32 0, i32* %19, align 4
  %86 = load %struct.vnode*, %struct.vnode** %17, align 8
  %87 = load i32*, i32** %16, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %14, align 8
  %92 = add nsw i64 %90, %91
  %93 = load i64, i64* %15, align 8
  %94 = add nsw i64 %92, %93
  %95 = load i8*, i8** %8, align 8
  %96 = load i64, i64* %15, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = load i32, i32* %10, align 4
  %99 = call i64 @cs_validate_range(%struct.vnode* %86, i32* %87, i64 %94, i8* %97, i32 %98, i32* %19)
  store i64 %99, i64* %18, align 8
  %100 = load i64, i64* %18, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %53
  %103 = load i64, i64* @TRUE, align 8
  %104 = load i64*, i64** %11, align 8
  store i64 %103, i64* %104, align 8
  br label %105

105:                                              ; preds = %102, %53
  %106 = load i32, i32* %19, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* %19, align 4
  %110 = load i32*, i32** %12, align 8
  store i32 %109, i32* %110, align 4
  br label %111

111:                                              ; preds = %52, %108, %105
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_8__* @VM_PAGE_OBJECT(%struct.TYPE_7__*) #1

declare dso_local i32 @vm_object_lock_assert_exclusive(%struct.TYPE_8__*) #1

declare dso_local %struct.vnode* @vnode_pager_lookup_vnode(i32*) #1

declare dso_local i64 @cs_validate_range(%struct.vnode*, i32*, i64, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
