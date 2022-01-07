; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock.c_bintime_addxns.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock.c_bintime_addxns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bintime = type { i32 }

@NSEC_PER_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bintime*, i32, i64)* @bintime_addxns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bintime_addxns(%struct.bintime* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.bintime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bintime* %0, %struct.bintime** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = trunc i64 %12 to i32
  br label %18

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = sub nsw i64 0, %15
  %17 = trunc i64 %16 to i32
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i32 [ %13, %11 ], [ %17, %14 ]
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @multi_overflow(i32 %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i64, i64* %6, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %18
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.bintime*, %struct.bintime** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @bintime_addns(%struct.bintime* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i64, i64* @NSEC_PER_SEC, align 8
  %37 = trunc i64 %36 to i32
  %38 = sdiv i32 %35, %37
  store i32 %38, i32* %8, align 4
  %39 = load %struct.bintime*, %struct.bintime** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @bintime_addx(%struct.bintime* %39, i32 %40)
  br label %59

42:                                               ; preds = %18
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.bintime*, %struct.bintime** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @bintime_subns(%struct.bintime* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %7, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i64, i64* @NSEC_PER_SEC, align 8
  %54 = trunc i64 %53 to i32
  %55 = sdiv i32 %52, %54
  store i32 %55, i32* %8, align 4
  %56 = load %struct.bintime*, %struct.bintime** %4, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @bintime_subx(%struct.bintime* %56, i32 %57)
  br label %59

59:                                               ; preds = %49, %32
  ret void
}

declare dso_local i32 @multi_overflow(i32, i32) #1

declare dso_local i32 @bintime_addns(%struct.bintime*, i32) #1

declare dso_local i32 @bintime_addx(%struct.bintime*, i32) #1

declare dso_local i32 @bintime_subns(%struct.bintime*, i32) #1

declare dso_local i32 @bintime_subx(%struct.bintime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
