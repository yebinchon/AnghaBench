; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_zalloc_poison_element.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_zalloc_poison_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@ZP_POISON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zalloc_poison_element(i64 %0, %struct.TYPE_4__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %17, %3
  %21 = phi i1 [ false, %3 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @__improbable(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %61

25:                                               ; preds = %20
  %26 = load i64, i64* %6, align 8
  %27 = inttoptr i64 %26 to i64*
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  store i64* %28, i64** %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = inttoptr i64 %30 to i64*
  %32 = call i64* @get_backup_ptr(i64 %29, i64* %31)
  store i64* %32, i64** %9, align 8
  br label %33

33:                                               ; preds = %57, %25
  %34 = load i64*, i64** %8, align 8
  %35 = load i64*, i64** %9, align 8
  %36 = icmp ult i64* %34, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %33
  %38 = load i64*, i64** %8, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ZP_POISON, align 8
  %41 = icmp ne i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @__improbable(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %37
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64*, i64** %8, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ZP_POISON, align 8
  %51 = load i64*, i64** %8, align 8
  %52 = ptrtoint i64* %51 to i64
  %53 = load i64, i64* %6, align 8
  %54 = sub nsw i64 %52, %53
  %55 = call i32 @zone_element_was_modified_panic(%struct.TYPE_4__* %46, i64 %47, i64 %49, i64 %50, i64 %54)
  br label %56

56:                                               ; preds = %45, %37
  br label %57

57:                                               ; preds = %56
  %58 = load i64*, i64** %8, align 8
  %59 = getelementptr inbounds i64, i64* %58, i32 1
  store i64* %59, i64** %8, align 8
  br label %33

60:                                               ; preds = %33
  br label %61

61:                                               ; preds = %60, %20
  %62 = load i64, i64* %6, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load i64, i64* %6, align 8
  %66 = inttoptr i64 %65 to i64*
  store i64* %66, i64** %10, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i64*, i64** %10, align 8
  %69 = call i64* @get_backup_ptr(i64 %67, i64* %68)
  store i64* %69, i64** %11, align 8
  %70 = load i64, i64* @ZP_POISON, align 8
  %71 = load i64*, i64** %10, align 8
  store i64 %70, i64* %71, align 8
  %72 = load i64, i64* @ZP_POISON, align 8
  %73 = load i64*, i64** %11, align 8
  store i64 %72, i64* %73, align 8
  br label %74

74:                                               ; preds = %64, %61
  ret void
}

declare dso_local i64 @__improbable(i32) #1

declare dso_local i64* @get_backup_ptr(i64, i64*) #1

declare dso_local i32 @zone_element_was_modified_panic(%struct.TYPE_4__*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
