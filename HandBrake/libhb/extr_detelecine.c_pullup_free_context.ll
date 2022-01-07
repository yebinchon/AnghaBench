; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_free_context.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_free_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pullup_context = type { %struct.pullup_context*, %struct.pullup_context*, %struct.pullup_context*, %struct.pullup_context*, %struct.pullup_context*, %struct.pullup_context*, %struct.pullup_context* }
%struct.pullup_field = type { %struct.pullup_field*, %struct.pullup_field*, %struct.pullup_field*, %struct.pullup_field*, %struct.pullup_field*, %struct.pullup_field*, %struct.pullup_field* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pullup_free_context(%struct.pullup_context* %0) #0 {
  %2 = alloca %struct.pullup_context*, align 8
  %3 = alloca %struct.pullup_field*, align 8
  store %struct.pullup_context* %0, %struct.pullup_context** %2, align 8
  %4 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %5 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %4, i32 0, i32 6
  %6 = load %struct.pullup_context*, %struct.pullup_context** %5, align 8
  %7 = bitcast %struct.pullup_context* %6 to %struct.pullup_field*
  %8 = call i32 @free(%struct.pullup_field* %7)
  %9 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %10 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %9, i32 0, i32 5
  %11 = load %struct.pullup_context*, %struct.pullup_context** %10, align 8
  %12 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %11, i32 0, i32 4
  %13 = load %struct.pullup_context*, %struct.pullup_context** %12, align 8
  %14 = bitcast %struct.pullup_context* %13 to %struct.pullup_field*
  store %struct.pullup_field* %14, %struct.pullup_field** %3, align 8
  br label %15

15:                                               ; preds = %22, %1
  %16 = load %struct.pullup_field*, %struct.pullup_field** %3, align 8
  %17 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %18 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %17, i32 0, i32 5
  %19 = load %struct.pullup_context*, %struct.pullup_context** %18, align 8
  %20 = bitcast %struct.pullup_context* %19 to %struct.pullup_field*
  %21 = icmp ne %struct.pullup_field* %16, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %15
  %23 = load %struct.pullup_field*, %struct.pullup_field** %3, align 8
  %24 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %23, i32 0, i32 2
  %25 = load %struct.pullup_field*, %struct.pullup_field** %24, align 8
  %26 = call i32 @free(%struct.pullup_field* %25)
  %27 = load %struct.pullup_field*, %struct.pullup_field** %3, align 8
  %28 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %27, i32 0, i32 1
  %29 = load %struct.pullup_field*, %struct.pullup_field** %28, align 8
  %30 = call i32 @free(%struct.pullup_field* %29)
  %31 = load %struct.pullup_field*, %struct.pullup_field** %3, align 8
  %32 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %31, i32 0, i32 4
  %33 = load %struct.pullup_field*, %struct.pullup_field** %32, align 8
  store %struct.pullup_field* %33, %struct.pullup_field** %3, align 8
  %34 = load %struct.pullup_field*, %struct.pullup_field** %3, align 8
  %35 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %34, i32 0, i32 3
  %36 = load %struct.pullup_field*, %struct.pullup_field** %35, align 8
  %37 = call i32 @free(%struct.pullup_field* %36)
  br label %15

38:                                               ; preds = %15
  %39 = load %struct.pullup_field*, %struct.pullup_field** %3, align 8
  %40 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %39, i32 0, i32 2
  %41 = load %struct.pullup_field*, %struct.pullup_field** %40, align 8
  %42 = call i32 @free(%struct.pullup_field* %41)
  %43 = load %struct.pullup_field*, %struct.pullup_field** %3, align 8
  %44 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %43, i32 0, i32 1
  %45 = load %struct.pullup_field*, %struct.pullup_field** %44, align 8
  %46 = call i32 @free(%struct.pullup_field* %45)
  %47 = load %struct.pullup_field*, %struct.pullup_field** %3, align 8
  %48 = call i32 @free(%struct.pullup_field* %47)
  %49 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %50 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %49, i32 0, i32 0
  %51 = load %struct.pullup_context*, %struct.pullup_context** %50, align 8
  %52 = bitcast %struct.pullup_context* %51 to %struct.pullup_field*
  %53 = call i32 @free(%struct.pullup_field* %52)
  %54 = load %struct.pullup_context*, %struct.pullup_context** %2, align 8
  %55 = bitcast %struct.pullup_context* %54 to %struct.pullup_field*
  %56 = call i32 @free(%struct.pullup_field* %55)
  ret void
}

declare dso_local i32 @free(%struct.pullup_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
