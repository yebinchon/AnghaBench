; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Iter.c_Slice_Iter_Next.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Iter.c_Slice_Iter_Next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Slice = type { i32, %struct.Range* }
%struct.Range = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Slice* (%struct.Slice*, %struct.Slice*)* @Slice_Iter_Next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Slice* @Slice_Iter_Next(%struct.Slice* %0, %struct.Slice* %1) #0 {
  %3 = alloca %struct.Slice*, align 8
  %4 = alloca %struct.Slice*, align 8
  %5 = alloca %struct.Slice*, align 8
  %6 = alloca %struct.Range*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.Slice* %0, %struct.Slice** %3, align 8
  store %struct.Slice* %1, %struct.Slice** %4, align 8
  %9 = load %struct.Slice*, %struct.Slice** %3, align 8
  store %struct.Slice* %9, %struct.Slice** %5, align 8
  %10 = load %struct.Slice*, %struct.Slice** %5, align 8
  %11 = getelementptr inbounds %struct.Slice, %struct.Slice* %10, i32 0, i32 1
  %12 = load %struct.Range*, %struct.Range** %11, align 8
  store %struct.Range* %12, %struct.Range** %6, align 8
  %13 = load %struct.Range*, %struct.Range** %6, align 8
  %14 = getelementptr inbounds %struct.Range, %struct.Range* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %30, %17
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.Range*, %struct.Range** %6, align 8
  %21 = getelementptr inbounds %struct.Range, %struct.Range* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.Slice*, %struct.Slice** %5, align 8
  %26 = getelementptr inbounds %struct.Slice, %struct.Slice* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.Slice*, %struct.Slice** %4, align 8
  %29 = call %struct.Slice* @iter_next(i32 %27, %struct.Slice* %28)
  store %struct.Slice* %29, %struct.Slice** %4, align 8
  br label %30

30:                                               ; preds = %24
  %31 = load i64, i64* %7, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %7, align 8
  br label %18

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.Range*, %struct.Range** %6, align 8
  %36 = getelementptr inbounds %struct.Range, %struct.Range* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %34
  store i64 0, i64* %8, align 8
  br label %40

40:                                               ; preds = %53, %39
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.Range*, %struct.Range** %6, align 8
  %43 = getelementptr inbounds %struct.Range, %struct.Range* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 0, %44
  %46 = icmp slt i64 %41, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load %struct.Slice*, %struct.Slice** %5, align 8
  %49 = getelementptr inbounds %struct.Slice, %struct.Slice* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.Slice*, %struct.Slice** %4, align 8
  %52 = call %struct.Slice* @iter_prev(i32 %50, %struct.Slice* %51)
  store %struct.Slice* %52, %struct.Slice** %4, align 8
  br label %53

53:                                               ; preds = %47
  %54 = load i64, i64* %8, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %8, align 8
  br label %40

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56, %34
  %58 = load %struct.Slice*, %struct.Slice** %4, align 8
  ret %struct.Slice* %58
}

declare dso_local %struct.Slice* @iter_next(i32, %struct.Slice*) #1

declare dso_local %struct.Slice* @iter_prev(i32, %struct.Slice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
