; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/perf_index/extr_perf_index.c_print_timer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/perf_index/extr_perf_index.c_print_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"%ld.%06d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_timer(%struct.timeval* %0) #0 {
  %2 = alloca %struct.timeval*, align 8
  store %struct.timeval* %0, %struct.timeval** %2, align 8
  %3 = load %struct.timeval*, %struct.timeval** %2, align 8
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.timeval*, %struct.timeval** %2, align 8
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %8)
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
