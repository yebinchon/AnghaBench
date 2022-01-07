; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_chmod_vnode.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_chmod_vnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.vnode_attr = type { i32, i32, i32, i64 }

@mode = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@VISNAMEDSTREAM = common dso_local global i32 0, align 4
@va_acl = common dso_local global i32 0, align 4
@va_gid = common dso_local global i32 0, align 4
@va_mode = common dso_local global i32 0, align 4
@va_uid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_12__*, %struct.vnode_attr*)* @chmod_vnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chmod_vnode(i32 %0, %struct.TYPE_12__* %1, %struct.vnode_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.vnode_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.vnode_attr* %2, %struct.vnode_attr** %7, align 8
  %10 = load i32, i32* @mode, align 4
  %11 = load %struct.vnode_attr*, %struct.vnode_attr** %7, align 8
  %12 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @AUDIT_ARG(i32 %10, i64 %13)
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = load %struct.vnode_attr*, %struct.vnode_attr** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @vnode_authattr(%struct.TYPE_12__* %15, %struct.vnode_attr* %16, i32* %8, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @vnode_authorize(%struct.TYPE_12__* %21, i32* null, i32 %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %20, %3
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @EACCES, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @EPERM, align 4
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %44

34:                                               ; preds = %20
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = load %struct.vnode_attr*, %struct.vnode_attr** %7, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @vnode_setattr(%struct.TYPE_12__* %35, %struct.vnode_attr* %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %40, %32
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @AUDIT_ARG(i32, i64) #1

declare dso_local i32 @vnode_authattr(%struct.TYPE_12__*, %struct.vnode_attr*, i32*, i32) #1

declare dso_local i32 @vnode_authorize(%struct.TYPE_12__*, i32*, i32, i32) #1

declare dso_local i32 @vnode_setattr(%struct.TYPE_12__*, %struct.vnode_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
