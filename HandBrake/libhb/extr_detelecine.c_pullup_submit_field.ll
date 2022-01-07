; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_submit_field.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_submit_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pullup_context = type { %struct.pullup_field*, %struct.pullup_field*, %struct.pullup_field*, i32, i32, i32 }
%struct.pullup_field = type { i32, %struct.pullup_field*, i32, i32, %struct.pullup_field*, i32, i64, i64, i64, i32 }
%struct.pullup_buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pullup_submit_field(%struct.pullup_context* %0, %struct.pullup_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.pullup_context*, align 8
  %5 = alloca %struct.pullup_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pullup_field*, align 8
  store %struct.pullup_context* %0, %struct.pullup_context** %4, align 8
  store %struct.pullup_buffer* %1, %struct.pullup_buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %9 = call i32 @pullup_check_field_queue(%struct.pullup_context* %8)
  %10 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %11 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %10, i32 0, i32 1
  %12 = load %struct.pullup_field*, %struct.pullup_field** %11, align 8
  %13 = icmp ne %struct.pullup_field* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %16 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %15, i32 0, i32 1
  %17 = load %struct.pullup_field*, %struct.pullup_field** %16, align 8
  %18 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %119

23:                                               ; preds = %14, %3
  %24 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %25 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %24, i32 0, i32 0
  %26 = load %struct.pullup_field*, %struct.pullup_field** %25, align 8
  store %struct.pullup_field* %26, %struct.pullup_field** %7, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.pullup_field*, %struct.pullup_field** %7, align 8
  %29 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.pullup_buffer*, %struct.pullup_buffer** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @pullup_lock_buffer(%struct.pullup_buffer* %30, i32 %31)
  %33 = load %struct.pullup_field*, %struct.pullup_field** %7, align 8
  %34 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %33, i32 0, i32 9
  store i32 %32, i32* %34, align 8
  %35 = load %struct.pullup_field*, %struct.pullup_field** %7, align 8
  %36 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %35, i32 0, i32 8
  store i64 0, i64* %36, align 8
  %37 = load %struct.pullup_field*, %struct.pullup_field** %7, align 8
  %38 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %37, i32 0, i32 7
  store i64 0, i64* %38, align 8
  %39 = load %struct.pullup_field*, %struct.pullup_field** %7, align 8
  %40 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %39, i32 0, i32 6
  store i64 0, i64* %40, align 8
  %41 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %42 = load %struct.pullup_field*, %struct.pullup_field** %7, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.pullup_field*, %struct.pullup_field** %7, align 8
  %45 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %44, i32 0, i32 4
  %46 = load %struct.pullup_field*, %struct.pullup_field** %45, align 8
  %47 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %46, i32 0, i32 4
  %48 = load %struct.pullup_field*, %struct.pullup_field** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %51 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.pullup_field*, %struct.pullup_field** %7, align 8
  %54 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @pullup_compute_metric(%struct.pullup_context* %41, %struct.pullup_field* %42, i32 %43, %struct.pullup_field* %48, i32 %49, i32 %52, i32 %55)
  %57 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %23
  %61 = load %struct.pullup_field*, %struct.pullup_field** %7, align 8
  %62 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %61, i32 0, i32 4
  %63 = load %struct.pullup_field*, %struct.pullup_field** %62, align 8
  br label %66

64:                                               ; preds = %23
  %65 = load %struct.pullup_field*, %struct.pullup_field** %7, align 8
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi %struct.pullup_field* [ %63, %60 ], [ %65, %64 ]
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load %struct.pullup_field*, %struct.pullup_field** %7, align 8
  br label %76

72:                                               ; preds = %66
  %73 = load %struct.pullup_field*, %struct.pullup_field** %7, align 8
  %74 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %73, i32 0, i32 4
  %75 = load %struct.pullup_field*, %struct.pullup_field** %74, align 8
  br label %76

76:                                               ; preds = %72, %70
  %77 = phi %struct.pullup_field* [ %71, %70 ], [ %75, %72 ]
  %78 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %79 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.pullup_field*, %struct.pullup_field** %7, align 8
  %82 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @pullup_compute_metric(%struct.pullup_context* %57, %struct.pullup_field* %67, i32 0, %struct.pullup_field* %77, i32 1, i32 %80, i32 %83)
  %85 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %86 = load %struct.pullup_field*, %struct.pullup_field** %7, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.pullup_field*, %struct.pullup_field** %7, align 8
  %89 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %90 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.pullup_field*, %struct.pullup_field** %7, align 8
  %93 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @pullup_compute_metric(%struct.pullup_context* %85, %struct.pullup_field* %86, i32 %87, %struct.pullup_field* %88, i32 -1, i32 %91, i32 %94)
  %96 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %97 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %96, i32 0, i32 2
  %98 = load %struct.pullup_field*, %struct.pullup_field** %97, align 8
  %99 = icmp ne %struct.pullup_field* %98, null
  br i1 %99, label %106, label %100

100:                                              ; preds = %76
  %101 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %102 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %101, i32 0, i32 0
  %103 = load %struct.pullup_field*, %struct.pullup_field** %102, align 8
  %104 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %105 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %104, i32 0, i32 2
  store %struct.pullup_field* %103, %struct.pullup_field** %105, align 8
  br label %106

106:                                              ; preds = %100, %76
  %107 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %108 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %107, i32 0, i32 0
  %109 = load %struct.pullup_field*, %struct.pullup_field** %108, align 8
  %110 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %111 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %110, i32 0, i32 1
  store %struct.pullup_field* %109, %struct.pullup_field** %111, align 8
  %112 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %113 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %112, i32 0, i32 0
  %114 = load %struct.pullup_field*, %struct.pullup_field** %113, align 8
  %115 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %114, i32 0, i32 1
  %116 = load %struct.pullup_field*, %struct.pullup_field** %115, align 8
  %117 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %118 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %117, i32 0, i32 0
  store %struct.pullup_field* %116, %struct.pullup_field** %118, align 8
  br label %119

119:                                              ; preds = %106, %22
  ret void
}

declare dso_local i32 @pullup_check_field_queue(%struct.pullup_context*) #1

declare dso_local i32 @pullup_lock_buffer(%struct.pullup_buffer*, i32) #1

declare dso_local i32 @pullup_compute_metric(%struct.pullup_context*, %struct.pullup_field*, i32, %struct.pullup_field*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
