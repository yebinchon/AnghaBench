; ModuleID = '/home/carl/AnghaBench/RetroArch/ps2/compat_files/extr_fileXio_cdvd.c_prepareCDVD.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ps2/compat_files/extr_fileXio_cdvd.c_prepareCDVD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCECdUNKNOWN = common dso_local global i32 0, align 4
@SCECdNODISC = common dso_local global i32 0, align 4
@SCECdPSCD = common dso_local global i32 0, align 4
@SCECdPS2DVD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @prepareCDVD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepareCDVD() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (...) @sceCdGetDiskType()
  store i32 %4, i32* %3, align 4
  %5 = call i32 (...) @sceCdGetDiskType()
  %6 = load i32, i32* @SCECdUNKNOWN, align 4
  %7 = icmp sle i32 %5, %6
  br i1 %7, label %8, label %43

8:                                                ; preds = %0
  %9 = call i64 (...) @cd_Timer()
  store i64 %9, i64* %2, align 8
  br label %10

10:                                               ; preds = %26, %8
  %11 = call i64 (...) @cd_Timer()
  %12 = load i64, i64* %2, align 8
  %13 = add nsw i64 %12, 500
  %14 = icmp slt i64 %11, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = call i32 (...) @ps2_cdDiscValid()
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi i1 [ false, %10 ], [ %18, %15 ]
  br i1 %20, label %21, label %27

21:                                               ; preds = %19
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @SCECdNODISC, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %1, align 4
  br label %44

26:                                               ; preds = %21
  br label %10

27:                                               ; preds = %19
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @SCECdNODISC, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %1, align 4
  br label %44

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @SCECdPSCD, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @SCECdPS2DVD, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %32
  %41 = call i32 (...) @ps2_cdStop()
  store i32 0, i32* %1, align 4
  br label %44

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %0
  store i32 1, i32* %1, align 4
  br label %44

44:                                               ; preds = %43, %40, %31, %25
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

declare dso_local i32 @sceCdGetDiskType(...) #1

declare dso_local i64 @cd_Timer(...) #1

declare dso_local i32 @ps2_cdDiscValid(...) #1

declare dso_local i32 @ps2_cdStop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
