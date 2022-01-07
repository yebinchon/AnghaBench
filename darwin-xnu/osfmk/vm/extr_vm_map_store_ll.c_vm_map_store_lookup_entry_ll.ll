; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map_store_ll.c_vm_map_store_lookup_entry_ll.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map_store_ll.c_vm_map_store_lookup_entry_ll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_12__*, %struct.TYPE_12__* }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_store_lookup_entry_ll(%struct.TYPE_11__* %0, i64 %1, %struct.TYPE_12__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__**, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_12__** %2, %struct.TYPE_12__*** %7, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %8, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = call %struct.TYPE_12__* @vm_map_to_entry(%struct.TYPE_11__* %14)
  %16 = icmp eq %struct.TYPE_12__* %13, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %8, align 8
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = call %struct.TYPE_12__* @vm_map_to_entry(%struct.TYPE_11__* %28)
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %9, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %32 = icmp ne %struct.TYPE_12__* %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %41 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %41, align 8
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* %4, align 4
  br label %89

43:                                               ; preds = %33, %27
  br label %50

44:                                               ; preds = %21
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %9, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = call %struct.TYPE_12__* @vm_map_first_entry(%struct.TYPE_11__* %48)
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %8, align 8
  br label %50

50:                                               ; preds = %44, %43
  br label %51

51:                                               ; preds = %75, %50
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %54 = icmp ne %struct.TYPE_12__* %52, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %51
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %62, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %69 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__* %68, %struct.TYPE_12__** %69, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %72 = call i32 @SAVE_HINT_MAP_READ(%struct.TYPE_11__* %70, %struct.TYPE_12__* %71)
  %73 = load i32, i32* @TRUE, align 4
  store i32 %73, i32* %4, align 4
  br label %89

74:                                               ; preds = %61
  br label %79

75:                                               ; preds = %55
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %8, align 8
  br label %51

79:                                               ; preds = %74, %51
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__* %82, %struct.TYPE_12__** %83, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %85 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = call i32 @SAVE_HINT_MAP_READ(%struct.TYPE_11__* %84, %struct.TYPE_12__* %86)
  %88 = load i32, i32* @FALSE, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %79, %67, %39
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.TYPE_12__* @vm_map_to_entry(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_12__* @vm_map_first_entry(%struct.TYPE_11__*) #1

declare dso_local i32 @SAVE_HINT_MAP_READ(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
