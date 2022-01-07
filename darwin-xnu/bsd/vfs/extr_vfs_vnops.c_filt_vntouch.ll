; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_filt_vntouch.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_filt_vntouch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i32, i64 }
%struct.kevent_internal_s = type { i32 }
%struct.vnode = type { i32 }

@VNODE_NODEAD = common dso_local global i32 0, align 4
@VNODE_WITHID = common dso_local global i32 0, align 4
@NOTE_REVOKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.kevent_internal_s*)* @filt_vntouch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_vntouch(%struct.knote* %0, %struct.kevent_internal_s* %1) #0 {
  %3 = alloca %struct.knote*, align 8
  %4 = alloca %struct.kevent_internal_s*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %3, align 8
  store %struct.kevent_internal_s* %1, %struct.kevent_internal_s** %4, align 8
  %8 = load %struct.knote*, %struct.knote** %3, align 8
  %9 = getelementptr inbounds %struct.knote, %struct.knote* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.vnode*
  store %struct.vnode* %11, %struct.vnode** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.vnode*, %struct.vnode** %5, align 8
  %13 = call i32 @vnode_lock(%struct.vnode* %12)
  %14 = load %struct.vnode*, %struct.vnode** %5, align 8
  %15 = load %struct.knote*, %struct.knote** %3, align 8
  %16 = getelementptr inbounds %struct.knote, %struct.knote* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @VNODE_NODEAD, align 4
  %19 = load i32, i32* @VNODE_WITHID, align 4
  %20 = or i32 %18, %19
  %21 = call i64 @vnode_getiocount(%struct.vnode* %14, i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @NOTE_REVOKE, align 4
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %23, %2
  %26 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %27 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.knote*, %struct.knote** %3, align 8
  %30 = getelementptr inbounds %struct.knote, %struct.knote* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.knote*, %struct.knote** %3, align 8
  %32 = load %struct.vnode*, %struct.vnode** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @filt_vnode_common(%struct.knote* %31, %struct.vnode* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load %struct.vnode*, %struct.vnode** %5, align 8
  %39 = call i32 @vnode_put_locked(%struct.vnode* %38)
  br label %40

40:                                               ; preds = %37, %25
  %41 = load %struct.vnode*, %struct.vnode** %5, align 8
  %42 = call i32 @vnode_unlock(%struct.vnode* %41)
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @vnode_lock(%struct.vnode*) #1

declare dso_local i64 @vnode_getiocount(%struct.vnode*, i32, i32) #1

declare dso_local i32 @filt_vnode_common(%struct.knote*, %struct.vnode*, i32) #1

declare dso_local i32 @vnode_put_locked(%struct.vnode*) #1

declare dso_local i32 @vnode_unlock(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
