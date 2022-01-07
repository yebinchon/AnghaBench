; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock.c_bintime_sub.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock.c_bintime_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bintime = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bintime*, %struct.bintime*)* @bintime_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bintime_sub(%struct.bintime* %0, %struct.bintime* %1) #0 {
  %3 = alloca %struct.bintime*, align 8
  %4 = alloca %struct.bintime*, align 8
  %5 = alloca i64, align 8
  store %struct.bintime* %0, %struct.bintime** %3, align 8
  store %struct.bintime* %1, %struct.bintime** %4, align 8
  %6 = load %struct.bintime*, %struct.bintime** %3, align 8
  %7 = getelementptr inbounds %struct.bintime, %struct.bintime* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.bintime*, %struct.bintime** %4, align 8
  %10 = getelementptr inbounds %struct.bintime, %struct.bintime* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.bintime*, %struct.bintime** %3, align 8
  %13 = getelementptr inbounds %struct.bintime, %struct.bintime* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %14, %11
  store i64 %15, i64* %13, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.bintime*, %struct.bintime** %3, align 8
  %18 = getelementptr inbounds %struct.bintime, %struct.bintime* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.bintime*, %struct.bintime** %3, align 8
  %23 = getelementptr inbounds %struct.bintime, %struct.bintime* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %23, align 8
  br label %26

26:                                               ; preds = %21, %2
  %27 = load %struct.bintime*, %struct.bintime** %4, align 8
  %28 = getelementptr inbounds %struct.bintime, %struct.bintime* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.bintime*, %struct.bintime** %3, align 8
  %31 = getelementptr inbounds %struct.bintime, %struct.bintime* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %32, %29
  store i64 %33, i64* %31, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
