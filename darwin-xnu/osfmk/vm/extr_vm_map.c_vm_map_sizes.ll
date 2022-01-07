; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_sizes.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_11__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_map_sizes(%struct.TYPE_10__* %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = icmp ne %struct.TYPE_10__* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i64*, i64** %8, align 8
  store i64 0, i64* %18, align 8
  %19 = load i64*, i64** %7, align 8
  store i64 0, i64* %19, align 8
  %20 = load i64*, i64** %6, align 8
  store i64 0, i64* %20, align 8
  br label %96

21:                                               ; preds = %4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %12, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = call i32 @vm_map_lock_read(%struct.TYPE_10__* %22)
  %24 = load i64*, i64** %6, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  %34 = load i64*, i64** %6, align 8
  store i64 %33, i64* %34, align 8
  br label %35

35:                                               ; preds = %26, %21
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %10, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = call %struct.TYPE_11__* @vm_map_first_entry(%struct.TYPE_10__* %39)
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %9, align 8
  br label %41

41:                                               ; preds = %78, %35
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = call %struct.TYPE_11__* @vm_map_to_entry(%struct.TYPE_10__* %43)
  %45 = icmp eq %struct.TYPE_11__* %42, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = sub nsw i64 %52, %53
  store i64 %54, i64* %11, align 8
  br label %61

55:                                               ; preds = %41
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = sub nsw i64 %58, %59
  store i64 %60, i64* %11, align 8
  br label %61

61:                                               ; preds = %55, %49
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %12, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %13, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i64, i64* %11, align 8
  store i64 %69, i64* %13, align 8
  br label %70

70:                                               ; preds = %68, %61
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %82

74:                                               ; preds = %70
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %10, align 8
  br label %78

78:                                               ; preds = %74
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  store %struct.TYPE_11__* %81, %struct.TYPE_11__** %9, align 8
  br label %41

82:                                               ; preds = %73
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %84 = call i32 @vm_map_unlock_read(%struct.TYPE_10__* %83)
  %85 = load i64*, i64** %7, align 8
  %86 = icmp ne i64* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i64, i64* %12, align 8
  %89 = load i64*, i64** %7, align 8
  store i64 %88, i64* %89, align 8
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i64*, i64** %8, align 8
  %92 = icmp ne i64* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i64, i64* %13, align 8
  %95 = load i64*, i64** %8, align 8
  store i64 %94, i64* %95, align 8
  br label %96

96:                                               ; preds = %17, %93, %90
  ret void
}

declare dso_local i32 @vm_map_lock_read(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @vm_map_first_entry(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @vm_map_to_entry(%struct.TYPE_10__*) #1

declare dso_local i32 @vm_map_unlock_read(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
