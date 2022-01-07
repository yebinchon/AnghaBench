; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_lock_buffer.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_lock_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pullup_buffer = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pullup_buffer* @pullup_lock_buffer(%struct.pullup_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.pullup_buffer*, align 8
  %4 = alloca %struct.pullup_buffer*, align 8
  %5 = alloca i32, align 4
  store %struct.pullup_buffer* %0, %struct.pullup_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.pullup_buffer*, %struct.pullup_buffer** %4, align 8
  %7 = icmp ne %struct.pullup_buffer* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store %struct.pullup_buffer* null, %struct.pullup_buffer** %3, align 8
  br label %35

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %10, 1
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load %struct.pullup_buffer*, %struct.pullup_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.pullup_buffer, %struct.pullup_buffer* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %14, %9
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  %24 = and i32 %23, 2
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.pullup_buffer*, %struct.pullup_buffer** %4, align 8
  %28 = getelementptr inbounds %struct.pullup_buffer, %struct.pullup_buffer* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %26, %21
  %34 = load %struct.pullup_buffer*, %struct.pullup_buffer** %4, align 8
  store %struct.pullup_buffer* %34, %struct.pullup_buffer** %3, align 8
  br label %35

35:                                               ; preds = %33, %8
  %36 = load %struct.pullup_buffer*, %struct.pullup_buffer** %3, align 8
  ret %struct.pullup_buffer* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
