; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_safedounmount.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_safedounmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@MNT_LNOTRESP = common dso_local global i32 0, align 4
@MNT_NOBLOCK = common dso_local global i32 0, align 4
@MNT_FORCE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MNTK_PERMIT_UNMOUNT = common dso_local global i32 0, align 4
@MNT_ROOTFS = common dso_local global i32 0, align 4
@MNTK_BACKS_ROOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @safedounmount(%struct.mount* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mount*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  store %struct.mount* %0, %struct.mount** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call %struct.TYPE_5__* @vfs_context_proc(i32 %10)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %9, align 8
  %12 = load %struct.mount*, %struct.mount** %5, align 8
  %13 = getelementptr inbounds %struct.mount, %struct.mount* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @MNT_LNOTRESP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MNT_NOBLOCK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MNT_FORCE, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @EBUSY, align 4
  store i32 %29, i32* %8, align 4
  br label %72

30:                                               ; preds = %23, %18, %3
  %31 = load %struct.mount*, %struct.mount** %5, align 8
  %32 = getelementptr inbounds %struct.mount, %struct.mount* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MNTK_PERMIT_UNMOUNT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @MNT_FORCE, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %37, %30
  %43 = load %struct.mount*, %struct.mount** %5, align 8
  %44 = getelementptr inbounds %struct.mount, %struct.mount* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (...) @kauth_cred_get()
  %48 = call i64 @kauth_cred_getuid(i32 %47)
  %49 = icmp ne i64 %46, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = call i32 (...) @kauth_cred_get()
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = call i32 @suser(i32 %51, i32* %53)
  store i32 %54, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %72

57:                                               ; preds = %50, %42
  br label %58

58:                                               ; preds = %57, %37
  %59 = load %struct.mount*, %struct.mount** %5, align 8
  %60 = getelementptr inbounds %struct.mount, %struct.mount* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MNT_ROOTFS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @EBUSY, align 4
  store i32 %66, i32* %8, align 4
  br label %72

67:                                               ; preds = %58
  %68 = load %struct.mount*, %struct.mount** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @dounmount(%struct.mount* %68, i32 %69, i32 1, i32 %70)
  store i32 %71, i32* %4, align 4
  br label %76

72:                                               ; preds = %65, %56, %28
  %73 = load %struct.mount*, %struct.mount** %5, align 8
  %74 = call i32 @mount_drop(%struct.mount* %73, i32 0)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %72, %67
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.TYPE_5__* @vfs_context_proc(i32) #1

declare dso_local i64 @kauth_cred_getuid(i32) #1

declare dso_local i32 @kauth_cred_get(...) #1

declare dso_local i32 @suser(i32, i32*) #1

declare dso_local i32 @dounmount(%struct.mount*, i32, i32, i32) #1

declare dso_local i32 @mount_drop(%struct.mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
