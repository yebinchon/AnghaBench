; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_release_storage_unit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_release_storage_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kd_bufinfo = type { %union.kds_ptr }
%union.kds_ptr = type { i64 }
%struct.TYPE_2__ = type { i32, %union.kds_ptr }
%struct.kd_storage = type { %union.kds_ptr }

@FALSE = common dso_local global i32 0, align 4
@kds_spin_lock = common dso_local global i32 0, align 4
@kdbip = common dso_local global %struct.kd_bufinfo* null, align 8
@kd_ctrl_page = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @release_storage_unit(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kd_storage*, align 8
  %7 = alloca %struct.kd_bufinfo*, align 8
  %8 = alloca %union.kds_ptr, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i64, i64* %4, align 8
  %10 = bitcast %union.kds_ptr* %8 to i64*
  store i64 %9, i64* %10, align 8
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i32 @ml_set_interrupts_enabled(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @kds_spin_lock, align 4
  %14 = call i32 @lck_spin_lock(i32 %13)
  %15 = load %struct.kd_bufinfo*, %struct.kd_bufinfo** @kdbip, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.kd_bufinfo, %struct.kd_bufinfo* %15, i64 %17
  store %struct.kd_bufinfo* %18, %struct.kd_bufinfo** %7, align 8
  %19 = bitcast %union.kds_ptr* %8 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.kd_bufinfo*, %struct.kd_bufinfo** %7, align 8
  %22 = getelementptr inbounds %struct.kd_bufinfo, %struct.kd_bufinfo* %21, i32 0, i32 0
  %23 = bitcast %union.kds_ptr* %22 to i64*
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %20, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %2
  %27 = getelementptr inbounds %union.kds_ptr, %union.kds_ptr* %8, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call %struct.kd_storage* @POINTER_FROM_KDS_PTR(i64 %28)
  store %struct.kd_storage* %29, %struct.kd_storage** %6, align 8
  %30 = load %struct.kd_bufinfo*, %struct.kd_bufinfo** %7, align 8
  %31 = getelementptr inbounds %struct.kd_bufinfo, %struct.kd_bufinfo* %30, i32 0, i32 0
  %32 = load %struct.kd_storage*, %struct.kd_storage** %6, align 8
  %33 = getelementptr inbounds %struct.kd_storage, %struct.kd_storage* %32, i32 0, i32 0
  %34 = bitcast %union.kds_ptr* %31 to i8*
  %35 = bitcast %union.kds_ptr* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 8, i1 false)
  %36 = load %struct.kd_storage*, %struct.kd_storage** %6, align 8
  %37 = getelementptr inbounds %struct.kd_storage, %struct.kd_storage* %36, i32 0, i32 0
  %38 = bitcast %union.kds_ptr* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 bitcast (%union.kds_ptr* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 1) to i8*), i64 8, i1 false)
  %39 = bitcast %union.kds_ptr* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%union.kds_ptr* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 1) to i8*), i8* align 8 %39, i64 8, i1 false)
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 0), align 8
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 0), align 8
  br label %42

42:                                               ; preds = %26, %2
  %43 = load i32, i32* @kds_spin_lock, align 4
  %44 = call i32 @lck_spin_unlock(i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @ml_set_interrupts_enabled(i32 %45)
  ret void
}

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32 @lck_spin_lock(i32) #1

declare dso_local %struct.kd_storage* @POINTER_FROM_KDS_PTR(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @lck_spin_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
