; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pfclose.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pfclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }

@PFDEV_MAX = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@PFDEV_PFM = common dso_local global i64 0, align 8
@pf_lock = common dso_local global i32 0, align 4
@pfdevcnt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.proc*)* @pfclose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfclose(i32 %0, i32 %1, i32 %2, %struct.proc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.proc*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.proc* %3, %struct.proc** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @minor(i32 %10)
  %12 = load i64, i64* @PFDEV_MAX, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %5, align 4
  br label %33

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @minor(i32 %17)
  %19 = load i64, i64* @PFDEV_PFM, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load i32, i32* @pf_lock, align 4
  %23 = call i32 @lck_mtx_lock(i32 %22)
  %24 = load i64, i64* @pfdevcnt, align 8
  %25 = icmp sgt i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @VERIFY(i32 %26)
  %28 = load i64, i64* @pfdevcnt, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* @pfdevcnt, align 8
  %30 = load i32, i32* @pf_lock, align 4
  %31 = call i32 @lck_mtx_unlock(i32 %30)
  br label %32

32:                                               ; preds = %21, %16
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %14
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i64 @minor(i32) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
