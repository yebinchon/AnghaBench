; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_kctl_delete_ref.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_kctl_delete_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kctl = type { i64 }
%struct.TYPE_2__ = type { i32 }

@KCTLREF_INDEX_MASK = common dso_local global i64 0, align 8
@ctl_mtx = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@kctl_tbl_size = common dso_local global i64 0, align 8
@kctl_table = common dso_local global %struct.kctl** null, align 8
@kctl_tbl_count = common dso_local global i32 0, align 4
@kctlstat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @kctl_delete_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kctl_delete_ref(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.kctl*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @KCTLREF_INDEX_MASK, align 8
  %7 = and i64 %5, %6
  %8 = sub i64 %7, 1
  store i64 %8, i64* %3, align 8
  %9 = load i32, i32* @ctl_mtx, align 4
  %10 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %11 = call i32 @lck_mtx_assert(i32 %9, i32 %10)
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @kctl_tbl_size, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = load %struct.kctl**, %struct.kctl*** @kctl_table, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %struct.kctl*, %struct.kctl** %16, i64 %17
  %19 = load %struct.kctl*, %struct.kctl** %18, align 8
  store %struct.kctl* %19, %struct.kctl** %4, align 8
  %20 = load %struct.kctl*, %struct.kctl** %4, align 8
  %21 = getelementptr inbounds %struct.kctl, %struct.kctl* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %2, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %15
  %26 = load %struct.kctl**, %struct.kctl*** @kctl_table, align 8
  %27 = load i64, i64* %3, align 8
  %28 = getelementptr inbounds %struct.kctl*, %struct.kctl** %26, i64 %27
  store %struct.kctl* null, %struct.kctl** %28, align 8
  %29 = load i32, i32* @kctl_tbl_count, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* @kctl_tbl_count, align 4
  br label %34

31:                                               ; preds = %15
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kctlstat, i32 0, i32 0), align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kctlstat, i32 0, i32 0), align 4
  br label %34

34:                                               ; preds = %31, %25
  br label %38

35:                                               ; preds = %1
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kctlstat, i32 0, i32 0), align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kctlstat, i32 0, i32 0), align 4
  br label %38

38:                                               ; preds = %35, %34
  ret void
}

declare dso_local i32 @lck_mtx_assert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
