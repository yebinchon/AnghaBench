; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Iter.c_Slice_Iter_Init.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Iter.c_Slice_Iter_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Slice = type { i32, %struct.Range* }
%struct.Range = type { i64, i64, i64 }

@Terminal = common dso_local global %struct.Slice* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Slice* (%struct.Slice*)* @Slice_Iter_Init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Slice* @Slice_Iter_Init(%struct.Slice* %0) #0 {
  %2 = alloca %struct.Slice*, align 8
  %3 = alloca %struct.Slice*, align 8
  %4 = alloca %struct.Slice*, align 8
  %5 = alloca %struct.Range*, align 8
  %6 = alloca %struct.Slice*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.Slice*, align 8
  %9 = alloca i64, align 8
  store %struct.Slice* %0, %struct.Slice** %3, align 8
  %10 = load %struct.Slice*, %struct.Slice** %3, align 8
  store %struct.Slice* %10, %struct.Slice** %4, align 8
  %11 = load %struct.Slice*, %struct.Slice** %4, align 8
  %12 = getelementptr inbounds %struct.Slice, %struct.Slice* %11, i32 0, i32 1
  %13 = load %struct.Range*, %struct.Range** %12, align 8
  store %struct.Range* %13, %struct.Range** %5, align 8
  %14 = load %struct.Range*, %struct.Range** %5, align 8
  %15 = getelementptr inbounds %struct.Range, %struct.Range* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %1
  %19 = load %struct.Slice*, %struct.Slice** %4, align 8
  %20 = getelementptr inbounds %struct.Slice, %struct.Slice* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.Slice* @iter_init(i32 %21)
  store %struct.Slice* %22, %struct.Slice** %6, align 8
  store i64 0, i64* %7, align 8
  br label %23

23:                                               ; preds = %35, %18
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.Range*, %struct.Range** %5, align 8
  %26 = getelementptr inbounds %struct.Range, %struct.Range* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.Slice*, %struct.Slice** %4, align 8
  %31 = getelementptr inbounds %struct.Slice, %struct.Slice* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.Slice*, %struct.Slice** %6, align 8
  %34 = call %struct.Slice* @iter_next(i32 %32, %struct.Slice* %33)
  store %struct.Slice* %34, %struct.Slice** %6, align 8
  br label %35

35:                                               ; preds = %29
  %36 = load i64, i64* %7, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %7, align 8
  br label %23

38:                                               ; preds = %23
  %39 = load %struct.Slice*, %struct.Slice** %6, align 8
  store %struct.Slice* %39, %struct.Slice** %2, align 8
  br label %74

40:                                               ; preds = %1
  %41 = load %struct.Range*, %struct.Range** %5, align 8
  %42 = getelementptr inbounds %struct.Range, %struct.Range* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %40
  %46 = load %struct.Slice*, %struct.Slice** %4, align 8
  %47 = getelementptr inbounds %struct.Slice, %struct.Slice* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.Slice* @iter_last(i32 %48)
  store %struct.Slice* %49, %struct.Slice** %8, align 8
  store i64 0, i64* %9, align 8
  br label %50

50:                                               ; preds = %67, %45
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.Slice*, %struct.Slice** %4, align 8
  %53 = getelementptr inbounds %struct.Slice, %struct.Slice* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @len(i32 %54)
  %56 = load %struct.Range*, %struct.Range** %5, align 8
  %57 = getelementptr inbounds %struct.Range, %struct.Range* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %55, %58
  %60 = icmp slt i64 %51, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %50
  %62 = load %struct.Slice*, %struct.Slice** %4, align 8
  %63 = getelementptr inbounds %struct.Slice, %struct.Slice* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.Slice*, %struct.Slice** %8, align 8
  %66 = call %struct.Slice* @iter_prev(i32 %64, %struct.Slice* %65)
  store %struct.Slice* %66, %struct.Slice** %8, align 8
  br label %67

67:                                               ; preds = %61
  %68 = load i64, i64* %9, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %9, align 8
  br label %50

70:                                               ; preds = %50
  %71 = load %struct.Slice*, %struct.Slice** %8, align 8
  store %struct.Slice* %71, %struct.Slice** %2, align 8
  br label %74

72:                                               ; preds = %40
  %73 = load %struct.Slice*, %struct.Slice** @Terminal, align 8
  store %struct.Slice* %73, %struct.Slice** %2, align 8
  br label %74

74:                                               ; preds = %72, %70, %38
  %75 = load %struct.Slice*, %struct.Slice** %2, align 8
  ret %struct.Slice* %75
}

declare dso_local %struct.Slice* @iter_init(i32) #1

declare dso_local %struct.Slice* @iter_next(i32, %struct.Slice*) #1

declare dso_local %struct.Slice* @iter_last(i32) #1

declare dso_local i64 @len(i32) #1

declare dso_local %struct.Slice* @iter_prev(i32, %struct.Slice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
