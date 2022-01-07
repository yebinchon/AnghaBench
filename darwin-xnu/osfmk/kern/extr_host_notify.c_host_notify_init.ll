; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_host_notify.c_host_notify_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_host_notify.c_host_notify_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HOST_NOTIFY_TYPE_MAX = common dso_local global i32 0, align 4
@host_notify_queue = common dso_local global i32* null, align 8
@host_notify_lock_grp_attr = common dso_local global i32 0, align 4
@host_notify_lock_grp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"host_notify\00", align 1
@host_notify_lock_attr = common dso_local global i32 0, align 4
@host_notify_lock = common dso_local global i32 0, align 4
@host_notify_lock_ext = common dso_local global i32 0, align 4
@host_notify_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @host_notify_init() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %12, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @HOST_NOTIFY_TYPE_MAX, align 4
  %5 = icmp sle i32 %3, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = load i32*, i32** @host_notify_queue, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = call i32 @queue_init(i32* %10)
  br label %12

12:                                               ; preds = %6
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %1, align 4
  br label %2

15:                                               ; preds = %2
  %16 = call i32 @lck_grp_attr_setdefault(i32* @host_notify_lock_grp_attr)
  %17 = call i32 @lck_grp_init(i32* @host_notify_lock_grp, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* @host_notify_lock_grp_attr)
  %18 = call i32 @lck_attr_setdefault(i32* @host_notify_lock_attr)
  %19 = call i32 @lck_mtx_init_ext(i32* @host_notify_lock, i32* @host_notify_lock_ext, i32* @host_notify_lock_grp, i32* @host_notify_lock_attr)
  store i32 4, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = mul nsw i32 4096, %21
  %23 = load i32, i32* %1, align 4
  %24 = mul nsw i32 16, %23
  %25 = call i32 @zinit(i32 %20, i32 %22, i32 %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* @host_notify_zone, align 4
  ret void
}

declare dso_local i32 @queue_init(i32*) #1

declare dso_local i32 @lck_grp_attr_setdefault(i32*) #1

declare dso_local i32 @lck_grp_init(i32*, i8*, i32*) #1

declare dso_local i32 @lck_attr_setdefault(i32*) #1

declare dso_local i32 @lck_mtx_init_ext(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @zinit(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
