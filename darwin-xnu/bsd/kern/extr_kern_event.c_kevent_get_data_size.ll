; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_get_data_size.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_get_data_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }

@USER_ADDR_NULL = common dso_local global i64 0, align 8
@KEVENT_FLAG_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*, i64, i32, i64*)* @kevent_get_data_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kevent_get_data_size(%struct.proc* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.proc* %0, %struct.proc** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @USER_ADDR_NULL, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @KEVENT_FLAG_KERNEL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i64, i64* %7, align 8
  %24 = inttoptr i64 %23 to i64*
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  br label %41

26:                                               ; preds = %17
  %27 = load %struct.proc*, %struct.proc** %6, align 8
  %28 = call i64 @IS_64BIT_PROCESS(%struct.proc* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @copyin(i32 %32, i64* %12, i32 8)
  store i32 %33, i32* %11, align 4
  %34 = load i64, i64* %12, align 8
  store i64 %34, i64* %10, align 8
  br label %40

35:                                               ; preds = %26
  %36 = load i64, i64* %7, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @copyin(i32 %37, i64* %13, i32 8)
  store i32 %38, i32* %11, align 4
  %39 = load i64, i64* %13, align 8
  store i64 %39, i64* %10, align 8
  br label %40

40:                                               ; preds = %35, %30
  br label %41

41:                                               ; preds = %40, %22
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %5, align 4
  br label %51

46:                                               ; preds = %41
  br label %48

47:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  br label %48

48:                                               ; preds = %47, %46
  %49 = load i64, i64* %10, align 8
  %50 = load i64*, i64** %9, align 8
  store i64 %49, i64* %50, align 8
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i64 @IS_64BIT_PROCESS(%struct.proc*) #1

declare dso_local i32 @copyin(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
