; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_deactivate_a_chunk.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_deactivate_a_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_8__* }
%struct.pmap = type { i32 }

@CHUNK_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32, i32, i32, i32, i32*, %struct.pmap*, i32)* @deactivate_a_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deactivate_a_chunk(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, %struct.pmap* %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.pmap*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca %struct.TYPE_8__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store %struct.pmap* %7, %struct.pmap** %17, align 8
  store i32 %8, i32* %18, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @CHUNK_SIZE, align 4
  %25 = call i32 @MIN(i32 %23, i32 %24)
  store i32 %25, i32* %21, align 4
  %26 = load i32, i32* %22, align 4
  %27 = load i32, i32* %21, align 4
  %28 = call i32 @CHUNK_INIT(i32 %26, i32 %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %19, align 8
  br label %30

30:                                               ; preds = %79, %9
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %32 = icmp ne %struct.TYPE_8__* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* %22, align 4
  %35 = call i64 @CHUNK_NOT_COMPLETE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %33, %30
  %38 = phi i1 [ false, %30 ], [ %36, %33 ]
  br i1 %38, label %39, label %81

39:                                               ; preds = %37
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %41 = call i32 @vm_object_paging_begin(%struct.TYPE_8__* %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %21, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load i32*, i32** %16, align 8
  %49 = load %struct.pmap*, %struct.pmap** %17, align 8
  %50 = load i32, i32* %18, align 4
  %51 = call i32 @deactivate_pages_in_object(%struct.TYPE_8__* %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32* %22, i32* %48, %struct.pmap* %49, i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %53 = call i32 @vm_object_paging_end(%struct.TYPE_8__* %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %20, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %58 = icmp ne %struct.TYPE_8__* %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %39
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %15, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %11, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %71 = call i32 @vm_object_lock(%struct.TYPE_8__* %70)
  br label %72

72:                                               ; preds = %59, %39
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %75 = icmp ne %struct.TYPE_8__* %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %78 = call i32 @vm_object_unlock(%struct.TYPE_8__* %77)
  br label %79

79:                                               ; preds = %76, %72
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  store %struct.TYPE_8__* %80, %struct.TYPE_8__** %19, align 8
  br label %30

81:                                               ; preds = %37
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %83 = icmp ne %struct.TYPE_8__* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %87 = icmp ne %struct.TYPE_8__* %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %90 = call i32 @vm_object_unlock(%struct.TYPE_8__* %89)
  br label %91

91:                                               ; preds = %88, %84, %81
  %92 = load i32, i32* %21, align 4
  ret i32 %92
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @CHUNK_INIT(i32, i32) #1

declare dso_local i64 @CHUNK_NOT_COMPLETE(i32) #1

declare dso_local i32 @vm_object_paging_begin(%struct.TYPE_8__*) #1

declare dso_local i32 @deactivate_pages_in_object(%struct.TYPE_8__*, i32, i32, i32, i32, i32, i32*, i32*, %struct.pmap*, i32) #1

declare dso_local i32 @vm_object_paging_end(%struct.TYPE_8__*) #1

declare dso_local i32 @vm_object_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
