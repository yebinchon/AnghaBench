; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_file_vnode.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_file_vnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.fileproc = type { i64, i64 }

@DTYPE_VNODE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_vnode(i32 %0, %struct.vnode** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fileproc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.vnode** %1, %struct.vnode*** %5, align 8
  %9 = call i32 (...) @current_proc()
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @proc_fdlock_spin(i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @fp_lookup(i32 %12, i32 %13, %struct.fileproc** %7, i32 1)
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @proc_fdunlock(i32 %17)
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %46

20:                                               ; preds = %2
  %21 = load %struct.fileproc*, %struct.fileproc** %7, align 8
  %22 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DTYPE_VNODE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.fileproc*, %struct.fileproc** %7, align 8
  %30 = call i32 @fp_drop(i32 %27, i32 %28, %struct.fileproc* %29, i32 1)
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @proc_fdunlock(i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %3, align 4
  br label %46

34:                                               ; preds = %20
  %35 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %36 = icmp ne %struct.vnode** %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.fileproc*, %struct.fileproc** %7, align 8
  %39 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.vnode*
  %42 = load %struct.vnode**, %struct.vnode*** %5, align 8
  store %struct.vnode* %41, %struct.vnode** %42, align 8
  br label %43

43:                                               ; preds = %37, %34
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @proc_fdunlock(i32 %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %26, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @current_proc(...) #1

declare dso_local i32 @proc_fdlock_spin(i32) #1

declare dso_local i32 @fp_lookup(i32, i32, %struct.fileproc**, i32) #1

declare dso_local i32 @proc_fdunlock(i32) #1

declare dso_local i32 @fp_drop(i32, i32, %struct.fileproc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
