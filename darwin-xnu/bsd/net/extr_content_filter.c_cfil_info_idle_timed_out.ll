; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_info_idle_timed_out.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_info_idle_timed_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfil_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@LOG_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfil_info_idle_timed_out(%struct.cfil_info* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfil_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.cfil_info* %0, %struct.cfil_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %9 = icmp ne %struct.cfil_info* %8, null
  br i1 %9, label %10, label %27

10:                                               ; preds = %3
  %11 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %12 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %18 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %16, %21
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp sge i64 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %28

27:                                               ; preds = %15, %10, %3
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
