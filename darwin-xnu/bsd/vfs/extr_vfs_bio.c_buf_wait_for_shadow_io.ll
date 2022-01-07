; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_buf_wait_for_shadow_io.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_buf_wait_for_shadow_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.bufhashhdr = type { i32 }

@buf_mtxp = common dso_local global i32 0, align 4
@BL_WANTED_REF = common dso_local global i32 0, align 4
@PSPIN = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"buf_wait_for_shadow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buf_wait_for_shadow_io(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.bufhashhdr*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.bufhashhdr* @BUFHASH(i32 %7, i32 %8)
  store %struct.bufhashhdr* %9, %struct.bufhashhdr** %6, align 8
  %10 = load i32, i32* @buf_mtxp, align 4
  %11 = call i32 @lck_mtx_lock_spin(i32 %10)
  br label %12

12:                                               ; preds = %25, %2
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.bufhashhdr*, %struct.bufhashhdr** %6, align 8
  %16 = call %struct.TYPE_4__* @incore_locked(i32 %13, i32 %14, %struct.bufhashhdr* %15)
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %5, align 8
  %17 = icmp eq %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %38

19:                                               ; preds = %12
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %38

25:                                               ; preds = %19
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BL_WANTED_REF, align 4
  %30 = call i32 @SET(i32 %28, i32 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = load i32, i32* @buf_mtxp, align 4
  %33 = load i32, i32* @PSPIN, align 4
  %34 = load i32, i32* @PRIBIO, align 4
  %35 = add nsw i32 %34, 1
  %36 = or i32 %33, %35
  %37 = call i32 @msleep(%struct.TYPE_4__* %31, i32 %32, i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %12

38:                                               ; preds = %24, %18
  %39 = load i32, i32* @buf_mtxp, align 4
  %40 = call i32 @lck_mtx_unlock(i32 %39)
  ret void
}

declare dso_local %struct.bufhashhdr* @BUFHASH(i32, i32) #1

declare dso_local i32 @lck_mtx_lock_spin(i32) #1

declare dso_local %struct.TYPE_4__* @incore_locked(i32, i32, %struct.bufhashhdr*) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i32 @msleep(%struct.TYPE_4__*, i32, i32, i8*, i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
