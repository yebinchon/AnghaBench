; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_chapter_range_get_duration.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_chapter_range_get_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ghb_chapter_range_get_duration(%struct.TYPE_5__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = icmp eq %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %66

15:                                               ; preds = %3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %11, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @hb_list_count(i32 %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i64, i64* %9, align 8
  store i64 %27, i64* %6, align 8
  br label %28

28:                                               ; preds = %26, %15
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* %9, align 8
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i64, i64* %6, align 8
  %36 = icmp eq i64 %35, 1
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i64, i64* %11, align 8
  store i64 %42, i64* %4, align 8
  br label %66

43:                                               ; preds = %37, %34
  store i64 0, i64* %11, align 8
  %44 = load i64, i64* %6, align 8
  store i64 %44, i64* %10, align 8
  br label %45

45:                                               ; preds = %61, %43
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp sle i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = sub nsw i64 %53, 1
  %55 = call %struct.TYPE_6__* @hb_list_item(i32 %52, i64 %54)
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %8, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %11, align 8
  %60 = add nsw i64 %59, %58
  store i64 %60, i64* %11, align 8
  br label %61

61:                                               ; preds = %49
  %62 = load i64, i64* %10, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %10, align 8
  br label %45

64:                                               ; preds = %45
  %65 = load i64, i64* %11, align 8
  store i64 %65, i64* %4, align 8
  br label %66

66:                                               ; preds = %64, %41, %14
  %67 = load i64, i64* %4, align 8
  ret i64 %67
}

declare dso_local i64 @hb_list_count(i32) #1

declare dso_local %struct.TYPE_6__* @hb_list_item(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
