; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fp_getfvpandvid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fp_getfvpandvid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.filedesc* }
%struct.filedesc = type { i32, i32*, %struct.fileproc** }
%struct.fileproc = type { i64, i64, i32 }
%struct.vnode = type { i32 }

@UF_RESERVED = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@DTYPE_VNODE = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fp_getfvpandvid(%struct.TYPE_5__* %0, i32 %1, %struct.fileproc** %2, %struct.vnode** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fileproc**, align 8
  %10 = alloca %struct.vnode**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.filedesc*, align 8
  %13 = alloca %struct.fileproc*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.fileproc** %2, %struct.fileproc*** %9, align 8
  store %struct.vnode** %3, %struct.vnode*** %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.filedesc*, %struct.filedesc** %15, align 8
  store %struct.filedesc* %16, %struct.filedesc** %12, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = call i32 @proc_fdlock_spin(%struct.TYPE_5__* %17)
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %47, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.filedesc*, %struct.filedesc** %12, align 8
  %24 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %22, %25
  br i1 %26, label %47, label %27

27:                                               ; preds = %21
  %28 = load %struct.filedesc*, %struct.filedesc** %12, align 8
  %29 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %28, i32 0, i32 2
  %30 = load %struct.fileproc**, %struct.fileproc*** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.fileproc*, %struct.fileproc** %30, i64 %32
  %34 = load %struct.fileproc*, %struct.fileproc** %33, align 8
  store %struct.fileproc* %34, %struct.fileproc** %13, align 8
  %35 = icmp eq %struct.fileproc* %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %27
  %37 = load %struct.filedesc*, %struct.filedesc** %12, align 8
  %38 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @UF_RESERVED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %36, %27, %21, %5
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = call i32 @proc_fdunlock(%struct.TYPE_5__* %48)
  %50 = load i32, i32* @EBADF, align 4
  store i32 %50, i32* %6, align 4
  br label %93

51:                                               ; preds = %36
  %52 = load %struct.fileproc*, %struct.fileproc** %13, align 8
  %53 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DTYPE_VNODE, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %59 = call i32 @proc_fdunlock(%struct.TYPE_5__* %58)
  %60 = load i32, i32* @ENOTSUP, align 4
  store i32 %60, i32* %6, align 4
  br label %93

61:                                               ; preds = %51
  %62 = load %struct.fileproc*, %struct.fileproc** %13, align 8
  %63 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = load %struct.fileproc**, %struct.fileproc*** %9, align 8
  %67 = icmp ne %struct.fileproc** %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.fileproc*, %struct.fileproc** %13, align 8
  %70 = load %struct.fileproc**, %struct.fileproc*** %9, align 8
  store %struct.fileproc* %69, %struct.fileproc** %70, align 8
  br label %71

71:                                               ; preds = %68, %61
  %72 = load %struct.vnode**, %struct.vnode*** %10, align 8
  %73 = icmp ne %struct.vnode** %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.fileproc*, %struct.fileproc** %13, align 8
  %76 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.vnode*
  %79 = load %struct.vnode**, %struct.vnode*** %10, align 8
  store %struct.vnode* %78, %struct.vnode** %79, align 8
  br label %80

80:                                               ; preds = %74, %71
  %81 = load i64*, i64** %11, align 8
  %82 = icmp ne i64* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load %struct.fileproc*, %struct.fileproc** %13, align 8
  %85 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to %struct.vnode*
  %88 = call i64 @vnode_vid(%struct.vnode* %87)
  %89 = load i64*, i64** %11, align 8
  store i64 %88, i64* %89, align 8
  br label %90

90:                                               ; preds = %83, %80
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %92 = call i32 @proc_fdunlock(%struct.TYPE_5__* %91)
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %90, %57, %47
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @proc_fdlock_spin(%struct.TYPE_5__*) #1

declare dso_local i32 @proc_fdunlock(%struct.TYPE_5__*) #1

declare dso_local i64 @vnode_vid(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
