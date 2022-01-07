; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_bsd_vm.c_fill_vnodeinfoforaddr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_bsd_vm.c_fill_vnodeinfoforaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_13__*, i32, i64, i32, i64, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i64 }

@VM_OBJECT_NULL = common dso_local global %struct.TYPE_11__* null, align 8
@vnode_pager_ops = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i64*, i32*)* @fill_vnodeinfoforaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_vnodeinfoforaddr(%struct.TYPE_12__* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %113

19:                                               ; preds = %3
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = call %struct.TYPE_11__* @VME_OBJECT(%struct.TYPE_12__* %20)
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %8, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VM_OBJECT_NULL, align 8
  %24 = icmp eq %struct.TYPE_11__* %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VM_OBJECT_NULL, align 8
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %9, align 8
  store i32 0, i32* %13, align 4
  br label %51

27:                                               ; preds = %19
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %29 = call i32 @vm_object_lock(%struct.TYPE_11__* %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %9, align 8
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %44, %27
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VM_OBJECT_NULL, align 8
  %36 = icmp ne %struct.TYPE_11__* %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 5
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = call i32 @vm_object_lock(%struct.TYPE_11__* %40)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %43 = call i32 @vm_object_unlock(%struct.TYPE_11__* %42)
  br label %44

44:                                               ; preds = %37
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 5
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %9, align 8
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %13, align 4
  br label %31

50:                                               ; preds = %31
  br label %51

51:                                               ; preds = %50, %25
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VM_OBJECT_NULL, align 8
  %55 = icmp eq %struct.TYPE_11__* %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %113

57:                                               ; preds = %52
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %64 = call i32 @vm_object_unlock(%struct.TYPE_11__* %63)
  store i32 0, i32* %4, align 4
  br label %113

65:                                               ; preds = %57
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75, %70, %65
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %82 = call i32 @vm_object_unlock(%struct.TYPE_11__* %81)
  store i32 0, i32* %4, align 4
  br label %113

83:                                               ; preds = %75
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  store %struct.TYPE_13__* %86, %struct.TYPE_13__** %10, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** %11, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = icmp eq i32* %90, @vnode_pager_ops
  br i1 %91, label %92, label %104

92:                                               ; preds = %83
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %94 = load i64*, i64** %6, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = call i64 @vnode_pager_get_object_vnode(%struct.TYPE_13__* %93, i64* %94, i32* %95)
  store i64 %96, i64* %12, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* @KERN_SUCCESS, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %102 = call i32 @vm_object_unlock(%struct.TYPE_11__* %101)
  store i32 0, i32* %4, align 4
  br label %113

103:                                              ; preds = %92
  br label %107

104:                                              ; preds = %83
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %106 = call i32 @vm_object_unlock(%struct.TYPE_11__* %105)
  store i32 0, i32* %4, align 4
  br label %113

107:                                              ; preds = %103
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %109
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %112 = call i32 @vm_object_unlock(%struct.TYPE_11__* %111)
  store i32 1, i32* %4, align 4
  br label %113

113:                                              ; preds = %110, %104, %100, %80, %62, %56, %18
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.TYPE_11__* @VME_OBJECT(%struct.TYPE_12__*) #1

declare dso_local i32 @vm_object_lock(%struct.TYPE_11__*) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_11__*) #1

declare dso_local i64 @vnode_pager_get_object_vnode(%struct.TYPE_13__*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
