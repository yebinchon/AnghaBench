; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_mkfifo1.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_mkfifo1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode_attr = type { i32 }
%struct.nameidata = type { i32, i32*, i32* }

@CREATE = common dso_local global i32 0, align 4
@OP_MKFIFO = common dso_local global i32 0, align 4
@LOCKPARENT = common dso_local global i32 0, align 4
@AUDITVNPATH1 = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@va_type = common dso_local global i32 0, align 4
@VFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.vnode_attr*)* @mkfifo1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkfifo1(i32 %0, i32 %1, %struct.vnode_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode_attr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nameidata, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.vnode_attr* %2, %struct.vnode_attr** %7, align 8
  %12 = load i32, i32* @CREATE, align 4
  %13 = load i32, i32* @OP_MKFIFO, align 4
  %14 = load i32, i32* @LOCKPARENT, align 4
  %15 = load i32, i32* @AUDITVNPATH1, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @UIO_USERSPACE, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @NDINIT(%struct.nameidata* %11, i32 %12, i32 %13, i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = call i32 @namei(%struct.nameidata* %11)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %63

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %11, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %9, align 8
  %29 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %11, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @EEXIST, align 4
  store i32 %34, i32* %10, align 4
  br label %52

35:                                               ; preds = %26
  %36 = load %struct.vnode_attr*, %struct.vnode_attr** %7, align 8
  %37 = load i32, i32* @va_type, align 4
  %38 = load i32, i32* @VFIFO, align 4
  %39 = call i32 @VATTR_SET(%struct.vnode_attr* %36, i32 %37, i32 %38)
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %11, i32 0, i32 0
  %42 = load %struct.vnode_attr*, %struct.vnode_attr** %7, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @vn_authorize_create(i32* %40, i32* %41, %struct.vnode_attr* %42, i32 %43, i32* null)
  store i32 %44, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %52

47:                                               ; preds = %35
  %48 = load i32*, i32** %9, align 8
  %49 = load %struct.vnode_attr*, %struct.vnode_attr** %7, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @vn_create(i32* %48, i32** %8, %struct.nameidata* %11, %struct.vnode_attr* %49, i32 0, i32 0, i32* null, i32 %50)
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %47, %46, %33
  %53 = call i32 @nameidone(%struct.nameidata* %11)
  %54 = load i32*, i32** %8, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @vnode_put(i32* %57)
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @vnode_put(i32* %60)
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %24
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @VATTR_SET(%struct.vnode_attr*, i32, i32) #1

declare dso_local i32 @vn_authorize_create(i32*, i32*, %struct.vnode_attr*, i32, i32*) #1

declare dso_local i32 @vn_create(i32*, i32**, %struct.nameidata*, %struct.vnode_attr*, i32, i32, i32*, i32) #1

declare dso_local i32 @nameidone(%struct.nameidata*) #1

declare dso_local i32 @vnode_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
