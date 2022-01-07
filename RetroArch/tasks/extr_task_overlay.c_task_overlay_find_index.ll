; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_overlay.c_task_overlay_find_index.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_overlay.c_task_overlay_find_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.overlay = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.overlay*, i8*, i64)* @task_overlay_find_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_overlay_find_index(%struct.overlay* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.overlay*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.overlay* %0, %struct.overlay** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.overlay*, %struct.overlay** %5, align 8
  %10 = icmp ne %struct.overlay* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %34

12:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %30, %12
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load %struct.overlay*, %struct.overlay** %5, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds %struct.overlay, %struct.overlay* %18, i64 %19
  %21 = getelementptr inbounds %struct.overlay, %struct.overlay* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @string_is_equal(i32 %22, i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i64, i64* %8, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %4, align 4
  br label %34

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %8, align 8
  br label %13

33:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %26, %11
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @string_is_equal(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
