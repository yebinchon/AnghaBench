; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_make_field_queue.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_make_field_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pullup_field = type { %struct.pullup_field*, %struct.pullup_field* }
%struct.pullup_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pullup_field* (%struct.pullup_context*, i32)* @pullup_make_field_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pullup_field* @pullup_make_field_queue(%struct.pullup_context* %0, i32 %1) #0 {
  %3 = alloca %struct.pullup_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pullup_field*, align 8
  %6 = alloca %struct.pullup_field*, align 8
  store %struct.pullup_context* %0, %struct.pullup_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i8* @calloc(i32 1, i32 16)
  %8 = bitcast i8* %7 to %struct.pullup_field*
  store %struct.pullup_field* %8, %struct.pullup_field** %5, align 8
  store %struct.pullup_field* %8, %struct.pullup_field** %6, align 8
  %9 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %10 = load %struct.pullup_field*, %struct.pullup_field** %6, align 8
  %11 = call i32 @pullup_alloc_metrics(%struct.pullup_context* %9, %struct.pullup_field* %10)
  br label %12

12:                                               ; preds = %31, %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = call i8* @calloc(i32 1, i32 16)
  %17 = bitcast i8* %16 to %struct.pullup_field*
  %18 = load %struct.pullup_field*, %struct.pullup_field** %6, align 8
  %19 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %18, i32 0, i32 1
  store %struct.pullup_field* %17, %struct.pullup_field** %19, align 8
  %20 = load %struct.pullup_field*, %struct.pullup_field** %6, align 8
  %21 = load %struct.pullup_field*, %struct.pullup_field** %6, align 8
  %22 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %21, i32 0, i32 1
  %23 = load %struct.pullup_field*, %struct.pullup_field** %22, align 8
  %24 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %23, i32 0, i32 0
  store %struct.pullup_field* %20, %struct.pullup_field** %24, align 8
  %25 = load %struct.pullup_field*, %struct.pullup_field** %6, align 8
  %26 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %25, i32 0, i32 1
  %27 = load %struct.pullup_field*, %struct.pullup_field** %26, align 8
  store %struct.pullup_field* %27, %struct.pullup_field** %6, align 8
  %28 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %29 = load %struct.pullup_field*, %struct.pullup_field** %6, align 8
  %30 = call i32 @pullup_alloc_metrics(%struct.pullup_context* %28, %struct.pullup_field* %29)
  br label %31

31:                                               ; preds = %15
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %4, align 4
  br label %12

34:                                               ; preds = %12
  %35 = load %struct.pullup_field*, %struct.pullup_field** %5, align 8
  %36 = load %struct.pullup_field*, %struct.pullup_field** %6, align 8
  %37 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %36, i32 0, i32 1
  store %struct.pullup_field* %35, %struct.pullup_field** %37, align 8
  %38 = load %struct.pullup_field*, %struct.pullup_field** %6, align 8
  %39 = load %struct.pullup_field*, %struct.pullup_field** %5, align 8
  %40 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %39, i32 0, i32 0
  store %struct.pullup_field* %38, %struct.pullup_field** %40, align 8
  %41 = load %struct.pullup_field*, %struct.pullup_field** %5, align 8
  ret %struct.pullup_field* %41
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @pullup_alloc_metrics(%struct.pullup_context*, %struct.pullup_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
