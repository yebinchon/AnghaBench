; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_openat_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_openat_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filedesc = type { i32 }
%struct.vnode_attr = type { i32 }
%struct.nameidata = type { i32 }
%struct.TYPE_2__ = type { %struct.filedesc* }

@ALLPERMS = common dso_local global i32 0, align 4
@S_ISTXT = common dso_local global i32 0, align 4
@va_mode = common dso_local global i32 0, align 4
@ACCESSPERMS = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@OP_OPEN = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@AUDITVNPATH1 = common dso_local global i32 0, align 4
@fileproc_alloc_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i32*)* @openat_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @openat_internal(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.filedesc*, align 8
  %16 = alloca %struct.vnode_attr, align 4
  %17 = alloca %struct.nameidata, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.TYPE_2__* @vfs_context_proc(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.filedesc*, %struct.filedesc** %21, align 8
  store %struct.filedesc* %22, %struct.filedesc** %15, align 8
  %23 = call i32 @VATTR_INIT(%struct.vnode_attr* %16)
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.filedesc*, %struct.filedesc** %15, align 8
  %26 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %24, %28
  %30 = load i32, i32* @ALLPERMS, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @S_ISTXT, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* @va_mode, align 4
  %36 = load i32, i32* %18, align 4
  %37 = load i32, i32* @ACCESSPERMS, align 4
  %38 = and i32 %36, %37
  %39 = call i32 @VATTR_SET(%struct.vnode_attr* %16, i32 %35, i32 %38)
  %40 = load i32, i32* @LOOKUP, align 4
  %41 = load i32, i32* @OP_OPEN, align 4
  %42 = load i32, i32* @FOLLOW, align 4
  %43 = load i32, i32* @AUDITVNPATH1, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @NDINIT(%struct.nameidata* %17, i32 %40, i32 %41, i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @fileproc_alloc_init, align 4
  %52 = load i32*, i32** %14, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @open1at(i32 %49, %struct.nameidata* %17, i32 %50, %struct.vnode_attr* %16, i32 %51, i32* null, i32* %52, i32 %53)
  ret i32 %54
}

declare dso_local %struct.TYPE_2__* @vfs_context_proc(i32) #1

declare dso_local i32 @VATTR_INIT(%struct.vnode_attr*) #1

declare dso_local i32 @VATTR_SET(%struct.vnode_attr*, i32, i32) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @open1at(i32, %struct.nameidata*, i32, %struct.vnode_attr*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
