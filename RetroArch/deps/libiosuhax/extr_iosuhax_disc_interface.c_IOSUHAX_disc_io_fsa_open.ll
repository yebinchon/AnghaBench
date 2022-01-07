; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_disc_interface.c_IOSUHAX_disc_io_fsa_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_disc_interface.c_IOSUHAX_disc_io_fsa_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSA_REF_SD = common dso_local global i32 0, align 4
@fsaFdSd = common dso_local global i64 0, align 8
@FSA_REF_USB = common dso_local global i32 0, align 4
@fsaFdUsb = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @IOSUHAX_disc_io_fsa_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IOSUHAX_disc_io_fsa_open(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call i32 (...) @IOSUHAX_disc_io_initialize()
  %5 = call i64 @IOSUHAX_Open(i32* null)
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @FSA_REF_SD, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load i64, i64* @fsaFdSd, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i64 (...) @IOSUHAX_FSA_Open()
  store i64 %16, i64* @fsaFdSd, align 8
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i64, i64* @fsaFdSd, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %38

21:                                               ; preds = %17
  br label %37

22:                                               ; preds = %8
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @FSA_REF_USB, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i64, i64* @fsaFdUsb, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i64 (...) @IOSUHAX_FSA_Open()
  store i64 %30, i64* @fsaFdUsb, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i64, i64* @fsaFdUsb, align 8
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %38

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35, %22
  br label %37

37:                                               ; preds = %36, %21
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %34, %20, %7
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @IOSUHAX_disc_io_initialize(...) #1

declare dso_local i64 @IOSUHAX_Open(i32*) #1

declare dso_local i64 @IOSUHAX_FSA_Open(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
