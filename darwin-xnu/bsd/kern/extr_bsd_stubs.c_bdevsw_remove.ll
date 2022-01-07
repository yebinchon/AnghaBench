; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_bsd_stubs.c_bdevsw_remove.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_bsd_stubs.c_bdevsw_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdevsw = type { i32 }

@nblkdev = common dso_local global i32 0, align 4
@bdevsw = common dso_local global %struct.bdevsw* null, align 8
@devsw_lock_list_mtx = common dso_local global i32 0, align 4
@nobdev = common dso_local global %struct.bdevsw zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bdevsw_remove(i32 %0, %struct.bdevsw* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bdevsw*, align 8
  %6 = alloca %struct.bdevsw*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.bdevsw* %1, %struct.bdevsw** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @nblkdev, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  store i32 -1, i32* %3, align 4
  br label %36

14:                                               ; preds = %9
  %15 = load %struct.bdevsw*, %struct.bdevsw** @bdevsw, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.bdevsw, %struct.bdevsw* %15, i64 %17
  store %struct.bdevsw* %18, %struct.bdevsw** %6, align 8
  %19 = call i32 @lck_mtx_lock_spin(i32* @devsw_lock_list_mtx)
  %20 = load %struct.bdevsw*, %struct.bdevsw** %6, align 8
  %21 = bitcast %struct.bdevsw* %20 to i8*
  %22 = load %struct.bdevsw*, %struct.bdevsw** %5, align 8
  %23 = bitcast %struct.bdevsw* %22 to i8*
  %24 = call i64 @memcmp(i8* %21, i8* %23, i32 4)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %33

27:                                               ; preds = %14
  %28 = load %struct.bdevsw*, %struct.bdevsw** @bdevsw, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.bdevsw, %struct.bdevsw* %28, i64 %30
  %32 = bitcast %struct.bdevsw* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 bitcast (%struct.bdevsw* @nobdev to i8*), i64 4, i1 false)
  br label %33

33:                                               ; preds = %27, %26
  %34 = call i32 @lck_mtx_unlock(i32* @devsw_lock_list_mtx)
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
