; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_kctl_from_ref.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_kctl_from_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.kctl = type { i64 }

@KCTLREF_INDEX_MASK = common dso_local global i64 0, align 8
@ctl_mtx = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@kctl_tbl_size = common dso_local global i64 0, align 8
@kctlstat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@kctl_table = common dso_local global %struct.kctl** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kctl* (i64)* @kctl_from_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kctl* @kctl_from_ref(i64 %0) #0 {
  %2 = alloca %struct.kctl*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kctl*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @KCTLREF_INDEX_MASK, align 8
  %8 = and i64 %6, %7
  %9 = sub i64 %8, 1
  store i64 %9, i64* %4, align 8
  store %struct.kctl* null, %struct.kctl** %5, align 8
  %10 = load i32, i32* @ctl_mtx, align 4
  %11 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %12 = call i32 @lck_mtx_assert(i32 %10, i32 %11)
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @kctl_tbl_size, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kctlstat, i32 0, i32 0), align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kctlstat, i32 0, i32 0), align 4
  store %struct.kctl* null, %struct.kctl** %2, align 8
  br label %34

19:                                               ; preds = %1
  %20 = load %struct.kctl**, %struct.kctl*** @kctl_table, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds %struct.kctl*, %struct.kctl** %20, i64 %21
  %23 = load %struct.kctl*, %struct.kctl** %22, align 8
  store %struct.kctl* %23, %struct.kctl** %5, align 8
  %24 = load %struct.kctl*, %struct.kctl** %5, align 8
  %25 = getelementptr inbounds %struct.kctl, %struct.kctl* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %3, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kctlstat, i32 0, i32 0), align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kctlstat, i32 0, i32 0), align 4
  store %struct.kctl* null, %struct.kctl** %2, align 8
  br label %34

32:                                               ; preds = %19
  %33 = load %struct.kctl*, %struct.kctl** %5, align 8
  store %struct.kctl* %33, %struct.kctl** %2, align 8
  br label %34

34:                                               ; preds = %32, %29, %16
  %35 = load %struct.kctl*, %struct.kctl** %2, align 8
  ret %struct.kctl* %35
}

declare dso_local i32 @lck_mtx_assert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
