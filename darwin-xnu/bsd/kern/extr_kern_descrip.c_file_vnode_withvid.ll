; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_file_vnode_withvid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_file_vnode_withvid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64 }
%struct.fileproc = type { i64, i64 }

@DTYPE_VNODE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NULLVP = common dso_local global %struct.vnode* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_vnode_withvid(i32 %0, %struct.vnode** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fileproc*, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.vnode** %1, %struct.vnode*** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = call i32 (...) @current_proc()
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @proc_fdlock_spin(i32 %13)
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @fp_lookup(i32 %15, i32 %16, %struct.fileproc** %9, i32 1)
  store i32 %17, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @proc_fdunlock(i32 %20)
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %4, align 4
  br label %62

23:                                               ; preds = %3
  %24 = load %struct.fileproc*, %struct.fileproc** %9, align 8
  %25 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DTYPE_VNODE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.fileproc*, %struct.fileproc** %9, align 8
  %33 = call i32 @fp_drop(i32 %30, i32 %31, %struct.fileproc* %32, i32 1)
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @proc_fdunlock(i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %4, align 4
  br label %62

37:                                               ; preds = %23
  %38 = load %struct.fileproc*, %struct.fileproc** %9, align 8
  %39 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.vnode*
  store %struct.vnode* %41, %struct.vnode** %10, align 8
  %42 = load %struct.vnode**, %struct.vnode*** %6, align 8
  %43 = icmp ne %struct.vnode** %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.vnode*, %struct.vnode** %10, align 8
  %46 = load %struct.vnode**, %struct.vnode*** %6, align 8
  store %struct.vnode* %45, %struct.vnode** %46, align 8
  br label %47

47:                                               ; preds = %44, %37
  %48 = load i64*, i64** %7, align 8
  %49 = icmp ne i64* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load %struct.vnode*, %struct.vnode** %10, align 8
  %52 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %53 = icmp ne %struct.vnode* %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load %struct.vnode*, %struct.vnode** %10, align 8
  %56 = getelementptr inbounds %struct.vnode, %struct.vnode* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %7, align 8
  store i64 %57, i64* %58, align 8
  br label %59

59:                                               ; preds = %54, %50, %47
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @proc_fdunlock(i32 %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %59, %29, %19
  %63 = load i32, i32* %4, align 4
  ret i32 %63
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
