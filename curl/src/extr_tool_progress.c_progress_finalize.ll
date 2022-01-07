; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_progress.c_progress_finalize.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_progress.c_progress_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.per_transfer = type { i64, i64 }

@all_dlalready = common dso_local global i32 0, align 4
@all_ulalready = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @progress_finalize(%struct.per_transfer* %0) #0 {
  %2 = alloca %struct.per_transfer*, align 8
  store %struct.per_transfer* %0, %struct.per_transfer** %2, align 8
  %3 = load %struct.per_transfer*, %struct.per_transfer** %2, align 8
  %4 = getelementptr inbounds %struct.per_transfer, %struct.per_transfer* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = load i32, i32* @all_dlalready, align 4
  %7 = sext i32 %6 to i64
  %8 = add nsw i64 %7, %5
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* @all_dlalready, align 4
  %10 = load %struct.per_transfer*, %struct.per_transfer** %2, align 8
  %11 = getelementptr inbounds %struct.per_transfer, %struct.per_transfer* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @all_ulalready, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* @all_ulalready, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
