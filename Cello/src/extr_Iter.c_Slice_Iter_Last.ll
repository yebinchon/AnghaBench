; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Iter.c_Slice_Iter_Last.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Iter.c_Slice_Iter_Last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Slice = type { i32, %struct.Range* }
%struct.Range = type { i64, i64, i64 }

@Terminal = common dso_local global %struct.Slice* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Slice* (%struct.Slice*)* @Slice_Iter_Last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Slice* @Slice_Iter_Last(%struct.Slice* %0) #0 {
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
  br i1 %17, label %18, label %45

18:                                               ; preds = %1
  %19 = load %struct.Slice*, %struct.Slice** %4, align 8
  %20 = getelementptr inbounds %struct.Slice, %struct.Slice* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.Slice* @iter_last(i32 %21)
  store %struct.Slice* %22, %struct.Slice** %6, align 8
  store i64 0, i64* %7, align 8
  br label %23

23:                                               ; preds = %40, %18
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.Slice*, %struct.Slice** %4, align 8
  %26 = getelementptr inbounds %struct.Slice, %struct.Slice* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @len(i32 %27)
  %29 = load %struct.Range*, %struct.Range** %5, align 8
  %30 = getelementptr inbounds %struct.Range, %struct.Range* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  %33 = icmp slt i64 %24, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %23
  %35 = load %struct.Slice*, %struct.Slice** %4, align 8
  %36 = getelementptr inbounds %struct.Slice, %struct.Slice* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.Slice*, %struct.Slice** %6, align 8
  %39 = call %struct.Slice* @iter_prev(i32 %37, %struct.Slice* %38)
  store %struct.Slice* %39, %struct.Slice** %6, align 8
  br label %40

40:                                               ; preds = %34
  %41 = load i64, i64* %7, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %7, align 8
  br label %23

43:                                               ; preds = %23
  %44 = load %struct.Slice*, %struct.Slice** %6, align 8
  store %struct.Slice* %44, %struct.Slice** %2, align 8
  br label %74

45:                                               ; preds = %1
  %46 = load %struct.Range*, %struct.Range** %5, align 8
  %47 = getelementptr inbounds %struct.Range, %struct.Range* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %45
  %51 = load %struct.Slice*, %struct.Slice** %4, align 8
  %52 = getelementptr inbounds %struct.Slice, %struct.Slice* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.Slice* @iter_init(i32 %53)
  store %struct.Slice* %54, %struct.Slice** %8, align 8
  store i64 0, i64* %9, align 8
  br label %55

55:                                               ; preds = %67, %50
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.Range*, %struct.Range** %5, align 8
  %58 = getelementptr inbounds %struct.Range, %struct.Range* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load %struct.Slice*, %struct.Slice** %4, align 8
  %63 = getelementptr inbounds %struct.Slice, %struct.Slice* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.Slice*, %struct.Slice** %8, align 8
  %66 = call %struct.Slice* @iter_next(i32 %64, %struct.Slice* %65)
  store %struct.Slice* %66, %struct.Slice** %8, align 8
  br label %67

67:                                               ; preds = %61
  %68 = load i64, i64* %9, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %9, align 8
  br label %55

70:                                               ; preds = %55
  %71 = load %struct.Slice*, %struct.Slice** %8, align 8
  store %struct.Slice* %71, %struct.Slice** %2, align 8
  br label %74

72:                                               ; preds = %45
  %73 = load %struct.Slice*, %struct.Slice** @Terminal, align 8
  store %struct.Slice* %73, %struct.Slice** %2, align 8
  br label %74

74:                                               ; preds = %72, %70, %43
  %75 = load %struct.Slice*, %struct.Slice** %2, align 8
  ret %struct.Slice* %75
}

declare dso_local %struct.Slice* @iter_last(i32) #1

declare dso_local i64 @len(i32) #1

declare dso_local %struct.Slice* @iter_prev(i32, %struct.Slice*) #1

declare dso_local %struct.Slice* @iter_init(i32) #1

declare dso_local %struct.Slice* @iter_next(i32, %struct.Slice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
