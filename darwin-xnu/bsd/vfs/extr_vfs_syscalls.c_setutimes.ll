; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_setutimes.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_setutimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.timespec = type { i32 }
%struct.vnode_attr = type { i32 }

@vnpath = common dso_local global i32 0, align 4
@ARG_VNODE1 = common dso_local global i32 0, align 4
@va_access_time = common dso_local global i32 0, align 4
@va_modify_time = common dso_local global i32 0, align 4
@VA_UTIMES_NULL = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@VISNAMEDSTREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_9__*, %struct.timespec*, i32)* @setutimes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setutimes(i32 %0, %struct.TYPE_9__* %1, %struct.timespec* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.timespec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vnode_attr, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.timespec* %2, %struct.timespec** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @vnpath, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = load i32, i32* @ARG_VNODE1, align 4
  %15 = call i32 @AUDIT_ARG(i32 %12, %struct.TYPE_9__* %13, i32 %14)
  %16 = call i32 @VATTR_INIT(%struct.vnode_attr* %10)
  %17 = load i32, i32* @va_access_time, align 4
  %18 = load %struct.timespec*, %struct.timespec** %7, align 8
  %19 = getelementptr inbounds %struct.timespec, %struct.timespec* %18, i64 0
  %20 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @VATTR_SET(%struct.vnode_attr* %10, i32 %17, i32 %21)
  %23 = load i32, i32* @va_modify_time, align 4
  %24 = load %struct.timespec*, %struct.timespec** %7, align 8
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %24, i64 1
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @VATTR_SET(%struct.vnode_attr* %10, i32 %23, i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load i32, i32* @VA_UTIMES_NULL, align 4
  %33 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %10, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %32
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %31, %4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @vnode_authattr(%struct.TYPE_9__* %37, %struct.vnode_attr* %10, i64* %11, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @EACCES, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @EPERM, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %48, %44, %41
  br label %74

51:                                               ; preds = %36
  %52 = load i64, i64* %11, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @vnode_authorize(%struct.TYPE_9__* %55, i32* null, i64 %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @EACCES, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @EPERM, align 4
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %67, %63, %60
  br label %74

70:                                               ; preds = %54, %51
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @vnode_setattr(%struct.TYPE_9__* %71, %struct.vnode_attr* %10, i32 %72)
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %70, %69, %50
  %75 = load i32, i32* %9, align 4
  ret i32 %75
}

declare dso_local i32 @AUDIT_ARG(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @VATTR_INIT(%struct.vnode_attr*) #1

declare dso_local i32 @VATTR_SET(%struct.vnode_attr*, i32, i32) #1

declare dso_local i32 @vnode_authattr(%struct.TYPE_9__*, %struct.vnode_attr*, i64*, i32) #1

declare dso_local i32 @vnode_authorize(%struct.TYPE_9__*, i32*, i64, i32) #1

declare dso_local i32 @vnode_setattr(%struct.TYPE_9__*, %struct.vnode_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
