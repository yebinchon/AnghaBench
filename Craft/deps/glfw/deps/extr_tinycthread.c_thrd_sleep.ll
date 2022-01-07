; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/deps/extr_tinycthread.c_thrd_sleep.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/deps/extr_tinycthread.c_thrd_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thrd_sleep(%struct.timespec* %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.timespec, align 4
  %7 = alloca i64, align 8
  store %struct.timespec* %0, %struct.timespec** %4, align 8
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %8 = load i32, i32* @CLOCK_REALTIME, align 4
  %9 = call i64 @clock_gettime(i32 %8, %struct.timespec* %6)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -2, i32* %3, align 4
  br label %54

12:                                               ; preds = %2
  %13 = load %struct.timespec*, %struct.timespec** %4, align 8
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %15, %17
  %19 = sext i32 %18 to i64
  %20 = mul nsw i64 %19, 1000000
  %21 = load %struct.timespec*, %struct.timespec** %4, align 8
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %23, %25
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, 500
  %29 = sdiv i64 %28, 1000
  %30 = add nsw i64 %20, %29
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %34, %12
  %32 = load i64, i64* %7, align 8
  %33 = icmp sgt i64 %32, 999999
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = call i32 @usleep(i32 999999)
  %36 = load i64, i64* %7, align 8
  %37 = sub nsw i64 %36, 999999
  store i64 %37, i64* %7, align 8
  br label %31

38:                                               ; preds = %31
  %39 = load i64, i64* %7, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i64, i64* %7, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @usleep(i32 %43)
  br label %45

45:                                               ; preds = %41, %38
  %46 = load %struct.timespec*, %struct.timespec** %5, align 8
  %47 = icmp ne %struct.timespec* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.timespec*, %struct.timespec** %5, align 8
  %50 = getelementptr inbounds %struct.timespec, %struct.timespec* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  %51 = load %struct.timespec*, %struct.timespec** %5, align 8
  %52 = getelementptr inbounds %struct.timespec, %struct.timespec* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %45
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %11
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
