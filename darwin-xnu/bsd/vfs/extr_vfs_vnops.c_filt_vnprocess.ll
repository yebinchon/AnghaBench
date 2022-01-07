; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_filt_vnprocess.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_filt_vnprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i64, i64, %struct.kevent_internal_s, i32, i64 }
%struct.kevent_internal_s = type { i32 }
%struct.filt_process_s = type { i32 }
%struct.vnode = type { i32 }

@VNODE_NODEAD = common dso_local global i32 0, align 4
@VNODE_WITHID = common dso_local global i32 0, align 4
@NOTE_REVOKE = common dso_local global i32 0, align 4
@EV_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.filt_process_s*, %struct.kevent_internal_s*)* @filt_vnprocess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_vnprocess(%struct.knote* %0, %struct.filt_process_s* %1, %struct.kevent_internal_s* %2) #0 {
  %4 = alloca %struct.knote*, align 8
  %5 = alloca %struct.filt_process_s*, align 8
  %6 = alloca %struct.kevent_internal_s*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %4, align 8
  store %struct.filt_process_s* %1, %struct.filt_process_s** %5, align 8
  store %struct.kevent_internal_s* %2, %struct.kevent_internal_s** %6, align 8
  %10 = load %struct.knote*, %struct.knote** %4, align 8
  %11 = getelementptr inbounds %struct.knote, %struct.knote* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.vnode*
  store %struct.vnode* %13, %struct.vnode** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.vnode*, %struct.vnode** %7, align 8
  %15 = call i32 @vnode_lock(%struct.vnode* %14)
  %16 = load %struct.vnode*, %struct.vnode** %7, align 8
  %17 = load %struct.knote*, %struct.knote** %4, align 8
  %18 = getelementptr inbounds %struct.knote, %struct.knote* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @VNODE_NODEAD, align 4
  %21 = load i32, i32* @VNODE_WITHID, align 4
  %22 = or i32 %20, %21
  %23 = call i64 @vnode_getiocount(%struct.vnode* %16, i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @NOTE_REVOKE, align 4
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %25, %3
  %28 = load %struct.knote*, %struct.knote** %4, align 8
  %29 = load %struct.vnode*, %struct.vnode** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @filt_vnode_common(%struct.knote* %28, %struct.vnode* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %27
  %35 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %6, align 8
  %36 = load %struct.knote*, %struct.knote** %4, align 8
  %37 = getelementptr inbounds %struct.knote, %struct.knote* %36, i32 0, i32 3
  %38 = bitcast %struct.kevent_internal_s* %35 to i8*
  %39 = bitcast %struct.kevent_internal_s* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 8 %39, i64 4, i1 false)
  %40 = load %struct.knote*, %struct.knote** %4, align 8
  %41 = getelementptr inbounds %struct.knote, %struct.knote* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @EV_CLEAR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %34
  %47 = load %struct.knote*, %struct.knote** %4, align 8
  %48 = getelementptr inbounds %struct.knote, %struct.knote* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.knote*, %struct.knote** %4, align 8
  %50 = getelementptr inbounds %struct.knote, %struct.knote* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %46, %34
  br label %52

52:                                               ; preds = %51, %27
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.vnode*, %struct.vnode** %7, align 8
  %57 = call i32 @vnode_put_locked(%struct.vnode* %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct.vnode*, %struct.vnode** %7, align 8
  %60 = call i32 @vnode_unlock(%struct.vnode* %59)
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @vnode_lock(%struct.vnode*) #1

declare dso_local i64 @vnode_getiocount(%struct.vnode*, i32, i32) #1

declare dso_local i32 @filt_vnode_common(%struct.knote*, %struct.vnode*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vnode_put_locked(%struct.vnode*) #1

declare dso_local i32 @vnode_unlock(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
