; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock.c_scale_delta.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock.c_scale_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bintime = type { i32, i64 }

@ticks_per_sec = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, i64 } (i32, i32, i32, i32)* @scale_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, i64 } @scale_delta(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bintime, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = getelementptr inbounds %struct.bintime, %struct.bintime* %5, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.bintime, %struct.bintime* %5, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @ticks_per_sec, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @ticks_per_sec, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = mul nsw i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @bintime_addns(%struct.bintime* %5, i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %18
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %49

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = load i64, i64* @NSEC_PER_SEC, align 8
  %38 = trunc i64 %37 to i32
  %39 = sdiv i32 %36, %38
  %40 = call i32 @bintime_addx(%struct.bintime* %5, i32 %39)
  br label %48

41:                                               ; preds = %32
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 0, %42
  %44 = load i64, i64* @NSEC_PER_SEC, align 8
  %45 = trunc i64 %44 to i32
  %46 = sdiv i32 %43, %45
  %47 = call i32 @bintime_subx(%struct.bintime* %5, i32 %46)
  br label %48

48:                                               ; preds = %41, %35
  br label %53

49:                                               ; preds = %29
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @bintime_addxns(%struct.bintime* %5, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %48
  br label %54

54:                                               ; preds = %53, %18
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @ticks_per_sec, align 4
  %57 = srem i32 %55, %56
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %54, %4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @multi_overflow(i32 %59, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i32, i32* %12, align 4
  %66 = getelementptr inbounds %struct.bintime, %struct.bintime* %5, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, %65
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %64, %58
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = mul nsw i32 %70, %71
  %73 = call i32 @bintime_addx(%struct.bintime* %5, i32 %72)
  %74 = bitcast %struct.bintime* %5 to { i32, i64 }*
  %75 = load { i32, i64 }, { i32, i64 }* %74, align 8
  ret { i32, i64 } %75
}

declare dso_local i32 @bintime_addns(%struct.bintime*, i32) #1

declare dso_local i32 @bintime_addx(%struct.bintime*, i32) #1

declare dso_local i32 @bintime_subx(%struct.bintime*, i32) #1

declare dso_local i32 @bintime_addxns(%struct.bintime*, i32, i32) #1

declare dso_local i32 @multi_overflow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
