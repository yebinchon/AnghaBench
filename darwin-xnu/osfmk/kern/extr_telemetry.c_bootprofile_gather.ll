; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_telemetry.c_bootprofile_gather.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_telemetry.c_bootprofile_gather.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bootprofile_buffer = common dso_local global i64 0, align 8
@bootprofile_buffer_current_position = common dso_local global i64 0, align 8
@KERN_NO_SPACE = common dso_local global i32 0, align 4
@bootprofile_interval_abs = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bootprofile_gather(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 (...) @BOOTPROFILE_LOCK()
  %7 = load i64, i64* @bootprofile_buffer, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i64*, i64** %4, align 8
  store i64 0, i64* %10, align 8
  br label %30

11:                                               ; preds = %2
  %12 = load i64*, i64** %4, align 8
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @bootprofile_buffer_current_position, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @KERN_NO_SPACE, align 4
  store i32 %17, i32* %5, align 4
  br label %30

18:                                               ; preds = %11
  %19 = load i64, i64* @bootprofile_buffer, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load i32, i32* %3, align 4
  %22 = load i64, i64* @bootprofile_buffer_current_position, align 8
  %23 = call i32 @copyout(i8* %20, i32 %21, i64 %22)
  store i32 %23, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i64*, i64** %4, align 8
  store i64 0, i64* %26, align 8
  br label %30

27:                                               ; preds = %18
  %28 = load i64, i64* @bootprofile_buffer_current_position, align 8
  %29 = load i64*, i64** %4, align 8
  store i64 %28, i64* %29, align 8
  store i64 0, i64* @bootprofile_interval_abs, align 8
  br label %30

30:                                               ; preds = %27, %25, %16, %9
  %31 = call i32 (...) @BOOTPROFILE_UNLOCK()
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @BOOTPROFILE_LOCK(...) #1

declare dso_local i32 @copyout(i8*, i32, i64) #1

declare dso_local i32 @BOOTPROFILE_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
