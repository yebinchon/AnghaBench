; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ecc_logging.c_ecc_log_get_next_event.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ecc_logging.c_ecc_log_get_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecc_event = type { i32 }

@ecc_data_lock = common dso_local global i32 0, align 4
@ecc_data_empty = common dso_local global i64 0, align 8
@ecc_data_next_write = common dso_local global i64 0, align 8
@ecc_data_next_read = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4
@ecc_data = common dso_local global i32* null, align 8
@ECC_EVENT_BUFFER_COUNT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecc_log_get_next_event(%struct.ecc_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecc_event*, align 8
  %4 = alloca i32, align 4
  store %struct.ecc_event* %0, %struct.ecc_event** %3, align 8
  %5 = call i32 (...) @splhigh()
  store i32 %5, i32* %4, align 4
  %6 = call i32 @lck_spin_lock(i32* @ecc_data_lock)
  %7 = load i64, i64* @ecc_data_empty, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load i64, i64* @ecc_data_next_write, align 8
  %11 = load i64, i64* @ecc_data_next_read, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = call i32 @lck_spin_unlock(i32* @ecc_data_lock)
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @splx(i32 %16)
  %18 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %18, i32* %2, align 4
  br label %40

19:                                               ; preds = %1
  %20 = load i32*, i32** @ecc_data, align 8
  %21 = load i64, i64* @ecc_data_next_read, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load %struct.ecc_event*, %struct.ecc_event** %3, align 8
  %24 = call i32 @bcopy(i32* %22, %struct.ecc_event* %23, i32 4)
  %25 = load i64, i64* @ecc_data_next_read, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* @ecc_data_next_read, align 8
  %27 = load i64, i64* @ECC_EVENT_BUFFER_COUNT, align 8
  %28 = load i64, i64* @ecc_data_next_read, align 8
  %29 = urem i64 %28, %27
  store i64 %29, i64* @ecc_data_next_read, align 8
  %30 = load i64, i64* @ecc_data_next_read, align 8
  %31 = load i64, i64* @ecc_data_next_write, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = load i64, i64* @TRUE, align 8
  store i64 %34, i64* @ecc_data_empty, align 8
  br label %35

35:                                               ; preds = %33, %19
  %36 = call i32 @lck_spin_unlock(i32* @ecc_data_lock)
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @splx(i32 %37)
  %39 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %35, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @splhigh(...) #1

declare dso_local i32 @lck_spin_lock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lck_spin_unlock(i32*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @bcopy(i32*, %struct.ecc_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
