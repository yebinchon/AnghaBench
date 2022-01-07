; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/time/extr_nanosleep.c_nanosleep.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/time/extr_nanosleep.c_nanosleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }

@SYS_sleep_thread = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nanosleep(%struct.timespec* %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.timespec* %0, %struct.timespec** %4, align 8
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %9 = load %struct.timespec*, %struct.timespec** %4, align 8
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %11, 1000000
  %13 = load %struct.timespec*, %struct.timespec** %4, align 8
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %15, 1000
  %17 = add nsw i32 %12, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %2
  %22 = load i32, i32* @SYS_sleep_thread, align 4
  %23 = ptrtoint i32* %7 to i32
  %24 = ptrtoint i32* %8 to i32
  %25 = call i32 @syscall2(i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* @errno, align 4
  %31 = load %struct.timespec*, %struct.timespec** %5, align 8
  %32 = icmp ne %struct.timespec* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  %35 = sdiv i32 %34, 1000000
  %36 = load %struct.timespec*, %struct.timespec** %5, align 8
  %37 = getelementptr inbounds %struct.timespec, %struct.timespec* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = srem i32 %38, 1000000
  %40 = mul nsw i32 %39, 1000
  %41 = load %struct.timespec*, %struct.timespec** %5, align 8
  %42 = getelementptr inbounds %struct.timespec, %struct.timespec* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %33, %28
  store i32 -1, i32* %3, align 4
  br label %45

44:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @syscall2(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
