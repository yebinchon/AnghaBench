; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_buf_drop.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_buf_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@buf_mtxp = common dso_local global i32 0, align 4
@BL_WANTED = common dso_local global i32 0, align 4
@BL_BUSY = common dso_local global i32 0, align 4
@buf_busycount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buf_drop(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @buf_mtxp, align 4
  %5 = call i32 @lck_mtx_lock_spin(i32 %4)
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @BL_WANTED, align 4
  %10 = call i64 @ISSET(i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %13

13:                                               ; preds = %12, %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BL_BUSY, align 4
  %18 = load i32, i32* @BL_WANTED, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @CLR(i32 %16, i32 %19)
  %21 = load i32, i32* @buf_busycount, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* @buf_busycount, align 4
  %23 = load i32, i32* @buf_mtxp, align 4
  %24 = call i32 @lck_mtx_unlock(i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %13
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = call i32 @wakeup(%struct.TYPE_4__* %28)
  br label %30

30:                                               ; preds = %27, %13
  ret void
}

declare dso_local i32 @lck_mtx_lock_spin(i32) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @CLR(i32, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @wakeup(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
