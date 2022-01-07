; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_ebur128.c_get_histogram.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_ebur128.c_get_histogram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { i64, i32 }

@HIST_SIZE = common dso_local global i32 0, align 4
@HIST_GRAIN = common dso_local global i64 0, align 8
@ABS_THRES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hist_entry* ()* @get_histogram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hist_entry* @get_histogram() #0 {
  %1 = alloca %struct.hist_entry*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.hist_entry*, align 8
  %4 = load i32, i32* @HIST_SIZE, align 4
  %5 = call %struct.hist_entry* @av_calloc(i32 %4, i32 16)
  store %struct.hist_entry* %5, %struct.hist_entry** %3, align 8
  %6 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %7 = icmp ne %struct.hist_entry* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.hist_entry* null, %struct.hist_entry** %1, align 8
  br label %46

9:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %41, %9
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @HIST_SIZE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = sitofp i32 %15 to double
  %17 = load i64, i64* @HIST_GRAIN, align 8
  %18 = sitofp i64 %17 to double
  %19 = fdiv double %16, %18
  %20 = load i64, i64* @ABS_THRES, align 8
  %21 = sitofp i64 %20 to double
  %22 = fadd double %19, %21
  %23 = fptosi double %22 to i64
  %24 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %24, i64 %26
  %28 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %27, i32 0, i32 0
  store i64 %23, i64* %28, align 8
  %29 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %29, i64 %31
  %33 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @ENERGY(i64 %34)
  %36 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %36, i64 %38
  %40 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %39, i32 0, i32 1
  store i32 %35, i32* %40, align 8
  br label %41

41:                                               ; preds = %14
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %2, align 4
  br label %10

44:                                               ; preds = %10
  %45 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  store %struct.hist_entry* %45, %struct.hist_entry** %1, align 8
  br label %46

46:                                               ; preds = %44, %8
  %47 = load %struct.hist_entry*, %struct.hist_entry** %1, align 8
  ret %struct.hist_entry* %47
}

declare dso_local %struct.hist_entry* @av_calloc(i32, i32) #1

declare dso_local i32 @ENERGY(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
