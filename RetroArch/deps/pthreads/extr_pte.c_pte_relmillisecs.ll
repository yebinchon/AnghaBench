; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pte.c_pte_relmillisecs.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pte.c_pte_relmillisecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.timeb = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pte_relmillisecs(%struct.timespec* %0) #0 {
  %2 = alloca %struct.timespec*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.timeb, align 8
  %8 = alloca i64, align 8
  store %struct.timespec* %0, %struct.timespec** %2, align 8
  store i64 1000000, i64* %3, align 8
  store i64 1000, i64* %4, align 8
  %9 = load %struct.timespec*, %struct.timespec** %2, align 8
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = mul nsw i64 %11, 1000
  store i64 %12, i64* %8, align 8
  %13 = load %struct.timespec*, %struct.timespec** %2, align 8
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 500000
  %17 = sdiv i64 %16, 1000000
  %18 = load i64, i64* %8, align 8
  %19 = add nsw i64 %18, %17
  store i64 %19, i64* %8, align 8
  %20 = call i32 @_ftime(%struct.timeb* %7)
  %21 = getelementptr inbounds %struct.timeb, %struct.timeb* %7, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = mul nsw i64 %22, 1000
  store i64 %23, i64* %6, align 8
  %24 = getelementptr inbounds %struct.timeb, %struct.timeb* %7, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = add nsw i64 %26, %25
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %1
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %6, align 8
  %34 = sub nsw i64 %32, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = add i32 %39, -1
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %31
  br label %43

42:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @_ftime(%struct.timeb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
