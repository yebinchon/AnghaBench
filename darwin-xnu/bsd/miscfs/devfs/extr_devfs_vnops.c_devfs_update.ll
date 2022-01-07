; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vnops.c_devfs_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vnops.c_devfs_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.timeval = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i64 }

@MNT_RDONLY = common dso_local global i32 0, align 4
@DEVFS_UPDATE_ACCESS = common dso_local global i32 0, align 4
@DEVFS_UPDATE_MOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.timeval*, %struct.timeval*)* @devfs_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_update(%struct.vnode* %0, %struct.timeval* %1, %struct.timeval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.timeval*, align 8
  %7 = alloca %struct.timeval*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.timeval, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.timeval* %1, %struct.timeval** %6, align 8
  store %struct.timeval* %2, %struct.timeval** %7, align 8
  %10 = load %struct.vnode*, %struct.vnode** %5, align 8
  %11 = call %struct.TYPE_6__* @VTODN(%struct.vnode* %10)
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %8, align 8
  %12 = load %struct.vnode*, %struct.vnode** %5, align 8
  %13 = getelementptr inbounds %struct.vnode, %struct.vnode* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MNT_RDONLY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  store i32 0, i32* %4, align 4
  br label %38

27:                                               ; preds = %3
  %28 = call i32 (...) @DEVFS_ATTR_LOCK_SPIN()
  %29 = call i32 @microtime(%struct.timeval* %9)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = load %struct.timeval*, %struct.timeval** %6, align 8
  %32 = load %struct.timeval*, %struct.timeval** %7, align 8
  %33 = load i32, i32* @DEVFS_UPDATE_ACCESS, align 4
  %34 = load i32, i32* @DEVFS_UPDATE_MOD, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @dn_times_locked(%struct.TYPE_6__* %30, %struct.timeval* %31, %struct.timeval* %32, %struct.timeval* %9, i32 %35)
  %37 = call i32 (...) @DEVFS_ATTR_UNLOCK()
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %27, %20
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.TYPE_6__* @VTODN(%struct.vnode*) #1

declare dso_local i32 @DEVFS_ATTR_LOCK_SPIN(...) #1

declare dso_local i32 @microtime(%struct.timeval*) #1

declare dso_local i32 @dn_times_locked(%struct.TYPE_6__*, %struct.timeval*, %struct.timeval*, %struct.timeval*, i32) #1

declare dso_local i32 @DEVFS_ATTR_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
