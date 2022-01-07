; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_trace_data.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_trace_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kdbg_trace_data(%struct.proc* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.proc*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  store %struct.proc* %0, %struct.proc** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load %struct.proc*, %struct.proc** %4, align 8
  %8 = icmp ne %struct.proc* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load i64*, i64** %5, align 8
  store i64 0, i64* %10, align 8
  %11 = load i64*, i64** %6, align 8
  store i64 0, i64* %11, align 8
  br label %30

12:                                               ; preds = %3
  %13 = load %struct.proc*, %struct.proc** %4, align 8
  %14 = getelementptr inbounds %struct.proc, %struct.proc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64*, i64** %5, align 8
  store i64 %15, i64* %16, align 8
  %17 = load %struct.proc*, %struct.proc** %4, align 8
  %18 = getelementptr inbounds %struct.proc, %struct.proc* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64*, i64** %6, align 8
  store i64 %19, i64* %20, align 8
  %21 = load i64*, i64** %6, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.proc*, %struct.proc** %4, align 8
  %24 = getelementptr inbounds %struct.proc, %struct.proc* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %12
  %28 = load i64*, i64** %6, align 8
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %27, %12
  br label %30

30:                                               ; preds = %29, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
