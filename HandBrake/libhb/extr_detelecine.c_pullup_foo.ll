; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_foo.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_foo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pullup_context = type { i32, %struct.pullup_field* }
%struct.pullup_field = type { %struct.pullup_field* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pullup_context*)* @pullup_foo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pullup_foo(%struct.pullup_context* %0) #0 {
  %2 = alloca %struct.pullup_context*, align 8
  %3 = alloca %struct.pullup_field*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pullup_context* %0, %struct.pullup_context** %2, align 8
  %6 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %7 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %6, i32 0, i32 1
  %8 = load %struct.pullup_field*, %struct.pullup_field** %7, align 8
  store %struct.pullup_field* %8, %struct.pullup_field** %3, align 8
  %9 = load %struct.pullup_field*, %struct.pullup_field** %3, align 8
  %10 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %11 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @pullup_queue_length(%struct.pullup_field* %9, i32 %12)
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %35, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %16, 1
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 %21, 3
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %26 = load %struct.pullup_field*, %struct.pullup_field** %3, align 8
  %27 = call i32 @pullup_compute_breaks(%struct.pullup_context* %25, %struct.pullup_field* %26)
  br label %28

28:                                               ; preds = %24, %19
  %29 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %30 = load %struct.pullup_field*, %struct.pullup_field** %3, align 8
  %31 = call i32 @pullup_compute_affinity(%struct.pullup_context* %29, %struct.pullup_field* %30)
  %32 = load %struct.pullup_field*, %struct.pullup_field** %3, align 8
  %33 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %32, i32 0, i32 0
  %34 = load %struct.pullup_field*, %struct.pullup_field** %33, align 8
  store %struct.pullup_field* %34, %struct.pullup_field** %3, align 8
  br label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %14

38:                                               ; preds = %14
  ret void
}

declare dso_local i32 @pullup_queue_length(%struct.pullup_field*, i32) #1

declare dso_local i32 @pullup_compute_breaks(%struct.pullup_context*, %struct.pullup_field*) #1

declare dso_local i32 @pullup_compute_affinity(%struct.pullup_context*, %struct.pullup_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
