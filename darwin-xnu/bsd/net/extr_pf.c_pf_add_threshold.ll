; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_add_threshold.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_add_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_threshold = type { i32, i32, i32 }

@PF_THRESHOLD_MULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pf_threshold*)* @pf_add_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_add_threshold(%struct.pf_threshold* %0) #0 {
  %2 = alloca %struct.pf_threshold*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pf_threshold* %0, %struct.pf_threshold** %2, align 8
  %5 = call i32 (...) @pf_time_second()
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.pf_threshold*, %struct.pf_threshold** %2, align 8
  %8 = getelementptr inbounds %struct.pf_threshold, %struct.pf_threshold* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sub nsw i32 %6, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.pf_threshold*, %struct.pf_threshold** %2, align 8
  %13 = getelementptr inbounds %struct.pf_threshold, %struct.pf_threshold* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.pf_threshold*, %struct.pf_threshold** %2, align 8
  %18 = getelementptr inbounds %struct.pf_threshold, %struct.pf_threshold* %17, i32 0, i32 2
  store i32 0, i32* %18, align 4
  br label %33

19:                                               ; preds = %1
  %20 = load %struct.pf_threshold*, %struct.pf_threshold** %2, align 8
  %21 = getelementptr inbounds %struct.pf_threshold, %struct.pf_threshold* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load %struct.pf_threshold*, %struct.pf_threshold** %2, align 8
  %26 = getelementptr inbounds %struct.pf_threshold, %struct.pf_threshold* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %24, %27
  %29 = load %struct.pf_threshold*, %struct.pf_threshold** %2, align 8
  %30 = getelementptr inbounds %struct.pf_threshold, %struct.pf_threshold* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %19, %16
  %34 = load i64, i64* @PF_THRESHOLD_MULT, align 8
  %35 = load %struct.pf_threshold*, %struct.pf_threshold** %2, align 8
  %36 = getelementptr inbounds %struct.pf_threshold, %struct.pf_threshold* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.pf_threshold*, %struct.pf_threshold** %2, align 8
  %43 = getelementptr inbounds %struct.pf_threshold, %struct.pf_threshold* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  ret void
}

declare dso_local i32 @pf_time_second(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
