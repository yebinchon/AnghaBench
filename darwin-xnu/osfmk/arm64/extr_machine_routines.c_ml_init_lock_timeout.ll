; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_machine_routines.c_ml_init_lock_timeout.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_machine_routines.c_ml_init_lock_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"slto_us\00", align 1
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@LockTimeOutUsec = common dso_local global i32 0, align 4
@LockTimeOut = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"mtxspin\00", align 1
@USEC_PER_SEC = common dso_local global i32 0, align 4
@MutexSpin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ml_init_lock_timeout() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @NSEC_PER_SEC, align 4
  %6 = ashr i32 %5, 2
  store i32 %6, i32* %3, align 4
  %7 = call i64 @PE_parse_boot_argn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %4, i32 4)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @NSEC_PER_USEC, align 4
  %12 = mul nsw i32 %10, %11
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %9, %0
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @nanoseconds_to_absolutetime(i32 %14, i32* %1)
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @NSEC_PER_USEC, align 4
  %18 = sdiv i32 %16, %17
  store i32 %18, i32* @LockTimeOutUsec, align 4
  %19 = load i32, i32* %1, align 4
  store i32 %19, i32* @LockTimeOut, align 4
  %20 = call i64 @PE_parse_boot_argn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %2, i32 4)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %13
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @USEC_PER_SEC, align 4
  %25 = ashr i32 %24, 4
  %26 = icmp sgt i32 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @USEC_PER_SEC, align 4
  %29 = ashr i32 %28, 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @NSEC_PER_USEC, align 4
  %33 = mul nsw i32 %31, %32
  %34 = call i32 @nanoseconds_to_absolutetime(i32 %33, i32* %1)
  br label %39

35:                                               ; preds = %13
  %36 = load i32, i32* @NSEC_PER_USEC, align 4
  %37 = mul nsw i32 10, %36
  %38 = call i32 @nanoseconds_to_absolutetime(i32 %37, i32* %1)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %1, align 4
  store i32 %40, i32* @MutexSpin, align 4
  ret void
}

declare dso_local i64 @PE_parse_boot_argn(i8*, i32*, i32) #1

declare dso_local i32 @nanoseconds_to_absolutetime(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
