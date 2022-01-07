; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_ctl_sofreelastref.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_ctl_sofreelastref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.socket = type { i64 }
%struct.ctl_cb = type { %struct.kctl* }
%struct.kctl = type { i32 }

@ctl_mtx = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@kctlstat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @ctl_sofreelastref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_sofreelastref(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.ctl_cb*, align 8
  %4 = alloca %struct.kctl*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %5 = load %struct.socket*, %struct.socket** %2, align 8
  %6 = getelementptr inbounds %struct.socket, %struct.socket* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.ctl_cb*
  store %struct.ctl_cb* %8, %struct.ctl_cb** %3, align 8
  %9 = load %struct.socket*, %struct.socket** %2, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.ctl_cb*, %struct.ctl_cb** %3, align 8
  %12 = icmp ne %struct.ctl_cb* %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  %14 = load %struct.ctl_cb*, %struct.ctl_cb** %3, align 8
  %15 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %14, i32 0, i32 0
  %16 = load %struct.kctl*, %struct.kctl** %15, align 8
  store %struct.kctl* %16, %struct.kctl** %4, align 8
  %17 = icmp ne %struct.kctl* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load i32, i32* @ctl_mtx, align 4
  %20 = call i32 @lck_mtx_lock(i32 %19)
  %21 = load %struct.kctl*, %struct.kctl** %4, align 8
  %22 = getelementptr inbounds %struct.kctl, %struct.kctl* %21, i32 0, i32 0
  %23 = load %struct.ctl_cb*, %struct.ctl_cb** %3, align 8
  %24 = load i32, i32* @next, align 4
  %25 = call i32 @TAILQ_REMOVE(i32* %22, %struct.ctl_cb* %23, i32 %24)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kctlstat, i32 0, i32 1), align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kctlstat, i32 0, i32 1), align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kctlstat, i32 0, i32 0), align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kctlstat, i32 0, i32 0), align 4
  %30 = load i32, i32* @ctl_mtx, align 4
  %31 = call i32 @lck_mtx_unlock(i32 %30)
  br label %32

32:                                               ; preds = %18, %13
  %33 = load %struct.ctl_cb*, %struct.ctl_cb** %3, align 8
  %34 = call i32 @kcb_delete(%struct.ctl_cb* %33)
  br label %35

35:                                               ; preds = %32, %1
  %36 = load %struct.socket*, %struct.socket** %2, align 8
  %37 = call i32 @sofreelastref(%struct.socket* %36, i32 1)
  ret i32 0
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ctl_cb*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @kcb_delete(%struct.ctl_cb*) #1

declare dso_local i32 @sofreelastref(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
