; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map_store_ll.c_first_free_is_valid_ll.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map_store_ll.c_first_free_is_valid_ll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_11__*, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Bad first_free for map %p: %p should be %p\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @first_free_is_valid_ll(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = call %struct.TYPE_11__* @vm_map_to_entry(%struct.TYPE_10__* %6)
  store %struct.TYPE_11__* %7, %struct.TYPE_11__** %4, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %5, align 8
  br label %11

11:                                               ; preds = %58, %1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = call i32 @VM_MAP_PAGE_MASK(%struct.TYPE_10__* %15)
  %17 = call i64 @vm_map_trunc_page(i32 %14, i32 %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = call i32 @VM_MAP_PAGE_MASK(%struct.TYPE_10__* %21)
  %23 = call i64 @vm_map_trunc_page(i32 %20, i32 %22)
  %24 = icmp eq i64 %17, %23
  br i1 %24, label %46, label %25

25:                                               ; preds = %11
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = call i32 @VM_MAP_PAGE_MASK(%struct.TYPE_10__* %29)
  %31 = call i64 @vm_map_trunc_page(i32 %28, i32 %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = call i32 @VM_MAP_PAGE_MASK(%struct.TYPE_10__* %35)
  %37 = call i64 @vm_map_trunc_page(i32 %34, i32 %36)
  %38 = icmp eq i64 %31, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %25
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = call %struct.TYPE_11__* @vm_map_to_entry(%struct.TYPE_10__* %41)
  %43 = icmp ne %struct.TYPE_11__* %40, %42
  br label %44

44:                                               ; preds = %39, %25
  %45 = phi i1 [ false, %25 ], [ %43, %39 ]
  br label %46

46:                                               ; preds = %44, %11
  %47 = phi i1 [ true, %11 ], [ %45, %44 ]
  br i1 %47, label %48, label %59

48:                                               ; preds = %46
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %4, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %5, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = call %struct.TYPE_11__* @vm_map_to_entry(%struct.TYPE_10__* %54)
  %56 = icmp eq %struct.TYPE_11__* %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %59

58:                                               ; preds = %48
  br label %11

59:                                               ; preds = %57, %46
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %64 = icmp ne %struct.TYPE_11__* %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %71 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %66, %struct.TYPE_11__* %69, %struct.TYPE_11__* %70)
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %2, align 4
  br label %75

73:                                               ; preds = %59
  %74 = load i32, i32* @TRUE, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %65
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.TYPE_11__* @vm_map_to_entry(%struct.TYPE_10__*) #1

declare dso_local i64 @vm_map_trunc_page(i32, i32) #1

declare dso_local i32 @VM_MAP_PAGE_MASK(%struct.TYPE_10__*) #1

declare dso_local i32 @printf(i8*, %struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
