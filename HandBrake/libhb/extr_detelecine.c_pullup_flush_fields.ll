; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_flush_fields.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_flush_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pullup_context = type { %struct.pullup_field*, %struct.pullup_field*, %struct.pullup_field* }
%struct.pullup_field = type { i64, i32, %struct.pullup_field* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pullup_flush_fields(%struct.pullup_context* %0) #0 {
  %2 = alloca %struct.pullup_context*, align 8
  %3 = alloca %struct.pullup_field*, align 8
  store %struct.pullup_context* %0, %struct.pullup_context** %2, align 8
  %4 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %5 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %4, i32 0, i32 1
  %6 = load %struct.pullup_field*, %struct.pullup_field** %5, align 8
  store %struct.pullup_field* %6, %struct.pullup_field** %3, align 8
  br label %7

7:                                                ; preds = %28, %1
  %8 = load %struct.pullup_field*, %struct.pullup_field** %3, align 8
  %9 = icmp ne %struct.pullup_field* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load %struct.pullup_field*, %struct.pullup_field** %3, align 8
  %12 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %13 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %12, i32 0, i32 2
  %14 = load %struct.pullup_field*, %struct.pullup_field** %13, align 8
  %15 = icmp ne %struct.pullup_field* %11, %14
  br label %16

16:                                               ; preds = %10, %7
  %17 = phi i1 [ false, %7 ], [ %15, %10 ]
  br i1 %17, label %18, label %32

18:                                               ; preds = %16
  %19 = load %struct.pullup_field*, %struct.pullup_field** %3, align 8
  %20 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.pullup_field*, %struct.pullup_field** %3, align 8
  %23 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @pullup_release_buffer(i64 %21, i32 %24)
  %26 = load %struct.pullup_field*, %struct.pullup_field** %3, align 8
  %27 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %18
  %29 = load %struct.pullup_field*, %struct.pullup_field** %3, align 8
  %30 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %29, i32 0, i32 2
  %31 = load %struct.pullup_field*, %struct.pullup_field** %30, align 8
  store %struct.pullup_field* %31, %struct.pullup_field** %3, align 8
  br label %7

32:                                               ; preds = %16
  %33 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %34 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %33, i32 0, i32 0
  store %struct.pullup_field* null, %struct.pullup_field** %34, align 8
  %35 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %36 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %35, i32 0, i32 1
  store %struct.pullup_field* null, %struct.pullup_field** %36, align 8
  ret void
}

declare dso_local i32 @pullup_release_buffer(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
