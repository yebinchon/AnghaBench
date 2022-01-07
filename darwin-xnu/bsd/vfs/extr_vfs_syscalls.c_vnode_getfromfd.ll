; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_vnode_getfromfd.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_vnode_getfromfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileproc = type { i32 }

@NULLVP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnode_getfromfd(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fileproc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @vfs_context_proc(i32 %12)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @NULLVP, align 4
  %15 = load i32*, i32** %7, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @fp_getfvp(i32 %16, i32 %17, %struct.fileproc** %10, i32* %9)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %42

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @vnode_getwithref(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %32 = call i32 @fp_drop(i32 %29, i32 %30, %struct.fileproc* %31, i32 0)
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %42

34:                                               ; preds = %23
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %38 = call i32 @fp_drop(i32 %35, i32 %36, %struct.fileproc* %37, i32 0)
  %39 = load i32, i32* %9, align 4
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %34, %28, %21
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @vfs_context_proc(i32) #1

declare dso_local i32 @fp_getfvp(i32, i32, %struct.fileproc**, i32*) #1

declare dso_local i32 @vnode_getwithref(i32) #1

declare dso_local i32 @fp_drop(i32, i32, %struct.fileproc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
