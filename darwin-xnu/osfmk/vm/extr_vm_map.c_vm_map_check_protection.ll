; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_check_protection.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_check_protection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64, %struct.TYPE_4__* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_check_protection(i32 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @vm_map_lock(i32 %12)
  %14 = load i64, i64* %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @vm_map_min(i32 %15)
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %27, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @vm_map_max(i32 %20)
  %22 = icmp sgt i64 %19, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23, %18, %4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @vm_map_unlock(i32 %28)
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %5, align 4
  br label %88

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @vm_map_lookup_entry(i32 %32, i64 %33, %struct.TYPE_4__** %11)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @vm_map_unlock(i32 %37)
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %5, align 4
  br label %88

40:                                               ; preds = %31
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %10, align 8
  br label %42

42:                                               ; preds = %77, %40
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %84

46:                                               ; preds = %42
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call %struct.TYPE_4__* @vm_map_to_entry(i32 %48)
  %50 = icmp eq %struct.TYPE_4__* %47, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @vm_map_unlock(i32 %52)
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %5, align 4
  br label %88

55:                                               ; preds = %46
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @vm_map_unlock(i32 %62)
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %5, align 4
  br label %88

65:                                               ; preds = %55
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @vm_map_unlock(i32 %74)
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %5, align 4
  br label %88

77:                                               ; preds = %65
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %7, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  store %struct.TYPE_4__* %83, %struct.TYPE_4__** %10, align 8
  br label %42

84:                                               ; preds = %42
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @vm_map_unlock(i32 %85)
  %87 = load i32, i32* @TRUE, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %84, %73, %61, %51, %36, %27
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @vm_map_lock(i32) #1

declare dso_local i64 @vm_map_min(i32) #1

declare dso_local i64 @vm_map_max(i32) #1

declare dso_local i32 @vm_map_unlock(i32) #1

declare dso_local i32 @vm_map_lookup_entry(i32, i64, %struct.TYPE_4__**) #1

declare dso_local %struct.TYPE_4__* @vm_map_to_entry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
