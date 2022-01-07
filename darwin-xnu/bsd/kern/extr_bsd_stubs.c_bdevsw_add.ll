; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_bsd_stubs.c_bdevsw_add.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_bsd_stubs.c_bdevsw_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdevsw = type { i32 }

@devsw_lock_list_mtx = common dso_local global i32 0, align 4
@bdevsw = common dso_local global %struct.bdevsw* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bdevsw_add(i32 %0, %struct.bdevsw* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bdevsw*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.bdevsw* %1, %struct.bdevsw** %4, align 8
  %5 = call i32 @lck_mtx_lock_spin(i32* @devsw_lock_list_mtx)
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @bdevsw_isfree(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %19

11:                                               ; preds = %2
  %12 = load %struct.bdevsw*, %struct.bdevsw** @bdevsw, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.bdevsw, %struct.bdevsw* %12, i64 %14
  %16 = load %struct.bdevsw*, %struct.bdevsw** %4, align 8
  %17 = bitcast %struct.bdevsw* %15 to i8*
  %18 = bitcast %struct.bdevsw* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  br label %19

19:                                               ; preds = %11, %10
  %20 = call i32 @lck_mtx_unlock(i32* @devsw_lock_list_mtx)
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local i32 @bdevsw_isfree(i32) #1

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
