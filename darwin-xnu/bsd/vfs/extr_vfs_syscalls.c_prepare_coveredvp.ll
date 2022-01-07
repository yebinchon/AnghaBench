; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_prepare_coveredvp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_prepare_coveredvp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32* }
%struct.componentname = type { i32 }
%struct.vnode_attr = type { i64 }

@va_uid = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4
@BUF_WRITE_DATA = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@VMOUNT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepare_coveredvp(%struct.TYPE_9__* %0, i32 %1, %struct.componentname* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.componentname*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vnode_attr, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.componentname* %2, %struct.componentname** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %5
  %16 = call i32 @VATTR_INIT(%struct.vnode_attr* %11)
  %17 = load i32, i32* @va_uid, align 4
  %18 = call i32 @VATTR_WANTED(%struct.vnode_attr* %11, i32 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @vnode_getattr(%struct.TYPE_9__* %19, %struct.vnode_attr* %11, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %11, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @vfs_context_ucred(i32 %26)
  %28 = call i64 @kauth_cred_getuid(i32 %27)
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @vfs_context_issuser(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30, %15
  %35 = load i32, i32* @EPERM, align 4
  store i32 %35, i32* %12, align 4
  br label %82

36:                                               ; preds = %30, %23
  br label %37

37:                                               ; preds = %36, %5
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = load i32, i32* @MNT_WAIT, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @VNOP_FSYNC(%struct.TYPE_9__* %38, i32 %39, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %82

44:                                               ; preds = %37
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = load i32, i32* @BUF_WRITE_DATA, align 4
  %47 = call i32 @buf_invalidateblks(%struct.TYPE_9__* %45, i32 %46, i32 0, i32 0)
  store i32 %47, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %82

50:                                               ; preds = %44
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @VDIR, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @ENOTDIR, align 4
  store i32 %57, i32* %12, align 4
  br label %82

58:                                               ; preds = %50
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @VMOUNT, align 4
  %63 = call i64 @ISSET(i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @EBUSY, align 4
  store i32 %71, i32* %12, align 4
  br label %82

72:                                               ; preds = %65, %58
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = call i32 @vnode_lock_spin(%struct.TYPE_9__* %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @VMOUNT, align 4
  %79 = call i32 @SET(i32 %77, i32 %78)
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = call i32 @vnode_unlock(%struct.TYPE_9__* %80)
  br label %82

82:                                               ; preds = %72, %70, %56, %49, %43, %34
  %83 = load i32, i32* %12, align 4
  ret i32 %83
}

declare dso_local i32 @VATTR_INIT(%struct.vnode_attr*) #1

declare dso_local i32 @VATTR_WANTED(%struct.vnode_attr*, i32) #1

declare dso_local i32 @vnode_getattr(%struct.TYPE_9__*, %struct.vnode_attr*, i32) #1

declare dso_local i64 @kauth_cred_getuid(i32) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @vfs_context_issuser(i32) #1

declare dso_local i32 @VNOP_FSYNC(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @buf_invalidateblks(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @vnode_lock_spin(%struct.TYPE_9__*) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i32 @vnode_unlock(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
