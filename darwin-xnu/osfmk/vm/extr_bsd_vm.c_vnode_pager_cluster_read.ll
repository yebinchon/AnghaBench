; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_bsd_vm.c_vnode_pager_cluster_read.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_bsd_vm.c_vnode_pager_cluster_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@UPL_IOSTREAMING = common dso_local global i32 0, align 4
@UPL_NO_SYNC = common dso_local global i32 0, align 4
@UPL_CLEAN_IN_PLACE = common dso_local global i32 0, align 4
@UPL_SET_INTERNAL = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_NONE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vnode_pager_cluster_read(%struct.TYPE_5__* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @PAGE_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i64, i64* %10, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %5
  %29 = load i32, i32* @UPL_IOSTREAMING, align 4
  %30 = load i32, i32* %14, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %14, align 4
  br label %32

32:                                               ; preds = %28, %5
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %8, align 8
  %43 = sub nsw i64 %41, %42
  %44 = trunc i64 %43 to i32
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @vnode_pagein(i32 %40, i32* null, i32 %44, i64 %45, i32 %46, i32 %47, i32* %12)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %82

51:                                               ; preds = %32
  store i32* null, i32** %16, align 8
  store i32 0, i32* %17, align 4
  %52 = load i32, i32* @UPL_NO_SYNC, align 4
  %53 = load i32, i32* @UPL_CLEAN_IN_PLACE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @UPL_SET_INTERNAL, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %8, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %70 = call i64 @memory_object_upl_request(i32 %65, i64 %66, i32 %67, i32** %16, i32* null, i32* %17, i32 %68, i32 %69)
  store i64 %70, i64* %18, align 8
  %71 = load i64, i64* %18, align 8
  %72 = load i64, i64* @KERN_SUCCESS, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %51
  %75 = load i32*, i32** %16, align 8
  %76 = call i32 @upl_abort(i32* %75, i32 0)
  %77 = load i32*, i32** %16, align 8
  %78 = call i32 @upl_deallocate(i32* %77)
  br label %80

79:                                               ; preds = %51
  br label %80

80:                                               ; preds = %79, %74
  %81 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %81, i64* %6, align 8
  br label %84

82:                                               ; preds = %32
  %83 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %83, i64* %6, align 8
  br label %84

84:                                               ; preds = %82, %80
  %85 = load i64, i64* %6, align 8
  ret i64 %85
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vnode_pagein(i32, i32*, i32, i64, i32, i32, i32*) #1

declare dso_local i64 @memory_object_upl_request(i32, i64, i32, i32**, i32*, i32*, i32, i32) #1

declare dso_local i32 @upl_abort(i32*, i32) #1

declare dso_local i32 @upl_deallocate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
