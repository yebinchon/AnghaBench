; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_preparefileread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_preparefileread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.fileproc = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.vnode = type { i32 }

@FREAD = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@DTYPE_VNODE = common dso_local global i64 0, align 8
@ESPIPE = common dso_local global i32 0, align 4
@VISTTY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @preparefileread(%struct.proc* %0, %struct.fileproc** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.fileproc**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fileproc*, align 8
  store %struct.proc* %0, %struct.proc** %6, align 8
  store %struct.fileproc** %1, %struct.fileproc*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @AUDIT_ARG(i32 %13, i32 %14)
  %16 = load %struct.proc*, %struct.proc** %6, align 8
  %17 = call i32 @proc_fdlock_spin(%struct.proc* %16)
  %18 = load %struct.proc*, %struct.proc** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @fp_lookup(%struct.proc* %18, i32 %19, %struct.fileproc** %12, i32 1)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load %struct.proc*, %struct.proc** %6, align 8
  %25 = call i32 @proc_fdunlock(%struct.proc* %24)
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %5, align 4
  br label %94

27:                                               ; preds = %4
  %28 = load %struct.fileproc*, %struct.fileproc** %12, align 8
  %29 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @FREAD, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @EBADF, align 4
  store i32 %35, i32* %11, align 4
  br label %86

36:                                               ; preds = %27
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load %struct.fileproc*, %struct.fileproc** %12, align 8
  %41 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DTYPE_VNODE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @ESPIPE, align 4
  store i32 %46, i32* %11, align 4
  br label %86

47:                                               ; preds = %39, %36
  %48 = load %struct.fileproc*, %struct.fileproc** %12, align 8
  %49 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @DTYPE_VNODE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %81

53:                                               ; preds = %47
  %54 = load %struct.fileproc*, %struct.fileproc** %12, align 8
  %55 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.vnode*
  store %struct.vnode* %59, %struct.vnode** %10, align 8
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = load %struct.vnode*, %struct.vnode** %10, align 8
  %64 = call i64 @vnode_isfifo(%struct.vnode* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @ESPIPE, align 4
  store i32 %67, i32* %11, align 4
  br label %86

68:                                               ; preds = %62, %53
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load %struct.vnode*, %struct.vnode** %10, align 8
  %73 = getelementptr inbounds %struct.vnode, %struct.vnode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @VISTTY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i32, i32* @ENXIO, align 4
  store i32 %79, i32* %11, align 4
  br label %86

80:                                               ; preds = %71, %68
  br label %81

81:                                               ; preds = %80, %47
  %82 = load %struct.fileproc*, %struct.fileproc** %12, align 8
  %83 = load %struct.fileproc**, %struct.fileproc*** %7, align 8
  store %struct.fileproc* %82, %struct.fileproc** %83, align 8
  %84 = load %struct.proc*, %struct.proc** %6, align 8
  %85 = call i32 @proc_fdunlock(%struct.proc* %84)
  store i32 0, i32* %5, align 4
  br label %94

86:                                               ; preds = %78, %66, %45, %34
  %87 = load %struct.proc*, %struct.proc** %6, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.fileproc*, %struct.fileproc** %12, align 8
  %90 = call i32 @fp_drop(%struct.proc* %87, i32 %88, %struct.fileproc* %89, i32 1)
  %91 = load %struct.proc*, %struct.proc** %6, align 8
  %92 = call i32 @proc_fdunlock(%struct.proc* %91)
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %86, %81, %23
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @AUDIT_ARG(i32, i32) #1

declare dso_local i32 @proc_fdlock_spin(%struct.proc*) #1

declare dso_local i32 @fp_lookup(%struct.proc*, i32, %struct.fileproc**, i32) #1

declare dso_local i32 @proc_fdunlock(%struct.proc*) #1

declare dso_local i64 @vnode_isfifo(%struct.vnode*) #1

declare dso_local i32 @fp_drop(%struct.proc*, i32, %struct.fileproc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
