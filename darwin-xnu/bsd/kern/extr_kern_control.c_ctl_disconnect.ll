; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_ctl_disconnect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_ctl_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.socket = type { i64 }
%struct.ctl_cb = type { i64, %struct.TYPE_3__, %struct.kctl*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.kctl = type { i32, i32, i32 (i32, i32, i32)* }

@ctl_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"kcb->usecount\00", align 1
@next = common dso_local global i32 0, align 4
@kctlstat = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @ctl_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_disconnect(%struct.socket* %0) #0 {
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
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ctl_cb*
  store %struct.ctl_cb* %12, %struct.ctl_cb** %3, align 8
  %13 = icmp ne %struct.ctl_cb* %12, null
  br i1 %13, label %14, label %80

14:                                               ; preds = %1
  %15 = load %struct.ctl_cb*, %struct.ctl_cb** %3, align 8
  %16 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %15, i32 0, i32 2
  %17 = load %struct.kctl*, %struct.kctl** %16, align 8
  store %struct.kctl* %17, %struct.kctl** %4, align 8
  %18 = load %struct.kctl*, %struct.kctl** %4, align 8
  %19 = icmp ne %struct.kctl* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %14
  %21 = load %struct.kctl*, %struct.kctl** %4, align 8
  %22 = getelementptr inbounds %struct.kctl, %struct.kctl* %21, i32 0, i32 2
  %23 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %22, align 8
  %24 = icmp ne i32 (i32, i32, i32)* %23, null
  br i1 %24, label %25, label %44

25:                                               ; preds = %20
  %26 = load %struct.socket*, %struct.socket** %2, align 8
  %27 = call i32 @socket_unlock(%struct.socket* %26, i32 0)
  %28 = load %struct.kctl*, %struct.kctl** %4, align 8
  %29 = getelementptr inbounds %struct.kctl, %struct.kctl* %28, i32 0, i32 2
  %30 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %29, align 8
  %31 = load %struct.kctl*, %struct.kctl** %4, align 8
  %32 = getelementptr inbounds %struct.kctl, %struct.kctl* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ctl_cb*, %struct.ctl_cb** %3, align 8
  %35 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ctl_cb*, %struct.ctl_cb** %3, align 8
  %39 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 %30(i32 %33, i32 %37, i32 %40)
  %42 = load %struct.socket*, %struct.socket** %2, align 8
  %43 = call i32 @socket_lock(%struct.socket* %42, i32 0)
  br label %44

44:                                               ; preds = %25, %20, %14
  %45 = load %struct.socket*, %struct.socket** %2, align 8
  %46 = call i32 @soisdisconnected(%struct.socket* %45)
  %47 = load %struct.socket*, %struct.socket** %2, align 8
  %48 = call i32 @socket_unlock(%struct.socket* %47, i32 0)
  %49 = load i32, i32* @ctl_mtx, align 4
  %50 = call i32 @lck_mtx_lock(i32 %49)
  %51 = load %struct.ctl_cb*, %struct.ctl_cb** %3, align 8
  %52 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %51, i32 0, i32 2
  store %struct.kctl* null, %struct.kctl** %52, align 8
  %53 = load %struct.ctl_cb*, %struct.ctl_cb** %3, align 8
  %54 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  br label %56

56:                                               ; preds = %61, %44
  %57 = load %struct.ctl_cb*, %struct.ctl_cb** %3, align 8
  %58 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.ctl_cb*, %struct.ctl_cb** %3, align 8
  %63 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %62, i32 0, i32 0
  %64 = load i32, i32* @ctl_mtx, align 4
  %65 = call i32 @msleep(i64* %63, i32 %64, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %56

66:                                               ; preds = %56
  %67 = load %struct.kctl*, %struct.kctl** %4, align 8
  %68 = getelementptr inbounds %struct.kctl, %struct.kctl* %67, i32 0, i32 0
  %69 = load %struct.ctl_cb*, %struct.ctl_cb** %3, align 8
  %70 = load i32, i32* @next, align 4
  %71 = call i32 @TAILQ_REMOVE(i32* %68, %struct.ctl_cb* %69, i32 %70)
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kctlstat, i32 0, i32 1), align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kctlstat, i32 0, i32 1), align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kctlstat, i32 0, i32 0), align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kctlstat, i32 0, i32 0), align 4
  %76 = load i32, i32* @ctl_mtx, align 4
  %77 = call i32 @lck_mtx_unlock(i32 %76)
  %78 = load %struct.socket*, %struct.socket** %2, align 8
  %79 = call i32 @socket_lock(%struct.socket* %78, i32 0)
  br label %80

80:                                               ; preds = %66, %1
  ret i32 0
}

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @soisdisconnected(%struct.socket*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @msleep(i64*, i32, i32, i8*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ctl_cb*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
