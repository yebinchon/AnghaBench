; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_add_wire_counts.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_add_wire_counts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }

@vm_page_wire_count = common dso_local global i32 0, align 4
@vm_lopage_free_count = common dso_local global i32 0, align 4
@vm_user_wire_limit = common dso_local global i32 0, align 4
@vm_global_user_wire_limit = common dso_local global i64 0, align 8
@max_mem = common dso_local global i64 0, align 8
@vm_global_no_user_wire_amount = common dso_local global i64 0, align 8
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@MAX_WIRE_COUNT = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"vm_map_wire: too many wirings\00", align 1
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_6__*, i64)* @add_wire_counts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_wire_counts(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %88

12:                                               ; preds = %3
  %13 = load i32, i32* @vm_page_wire_count, align 4
  %14 = load i32, i32* @vm_lopage_free_count, align 4
  %15 = add i32 %13, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %75

20:                                               ; preds = %12
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @vm_user_wire_limit, align 4
  %37 = call i64 @MIN(i32 %35, i32 %36)
  %38 = icmp sgt i64 %32, %37
  br i1 %38, label %55, label %39

39:                                               ; preds = %20
  %40 = load i64, i64* %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @ptoa_64(i32 %41)
  %43 = add nsw i64 %40, %42
  %44 = load i64, i64* @vm_global_user_wire_limit, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %55, label %46

46:                                               ; preds = %39
  %47 = load i64, i64* %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @ptoa_64(i32 %48)
  %50 = add nsw i64 %47, %49
  %51 = load i64, i64* @max_mem, align 8
  %52 = load i64, i64* @vm_global_no_user_wire_amount, align 8
  %53 = sub nsw i64 %51, %52
  %54 = icmp sgt i64 %50, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %46, %39, %20
  %56 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %56, i32* %4, align 4
  br label %103

57:                                               ; preds = %46
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MAX_WIRE_COUNT, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %64, i32* %4, align 4
  br label %103

65:                                               ; preds = %57
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %67, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, %70
  store i64 %74, i64* %72, align 8
  br label %75

75:                                               ; preds = %65, %12
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @MAX_WIRE_COUNT, align 8
  %80 = icmp sge i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %82, i32* %4, align 4
  br label %103

83:                                               ; preds = %75
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %85, align 8
  br label %101

88:                                               ; preds = %3
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @MAX_WIRE_COUNT, align 8
  %93 = icmp sge i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %88
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %98, align 8
  br label %101

101:                                              ; preds = %96, %83
  %102 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %81, %63, %55
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i64 @ptoa_64(i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
