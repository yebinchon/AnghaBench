; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fpathconf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fpathconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpathconf_args = type { i32, i32 }
%struct.fileproc = type { i32, i64 }
%struct.vnode = type { i32 }

@_PC_PIPE_BUF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PIPE_BUF = common dso_local global i32 0, align 4
@vnpath = common dso_local global i32 0, align 4
@ARG_VNODE1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpathconf(i32 %0, %struct.fpathconf_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fpathconf_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fileproc*, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.fpathconf_args* %1, %struct.fpathconf_args** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.fpathconf_args*, %struct.fpathconf_args** %6, align 8
  %15 = getelementptr inbounds %struct.fpathconf_args, %struct.fpathconf_args* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.fpathconf_args*, %struct.fpathconf_args** %6, align 8
  %19 = getelementptr inbounds %struct.fpathconf_args, %struct.fpathconf_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i32, i32, ...) @AUDIT_ARG(i32 %17, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @fp_lookup(i32 %22, i32 %23, %struct.fileproc** %9, i32 0)
  store i32 %24, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %4, align 4
  br label %88

28:                                               ; preds = %3
  %29 = load %struct.fileproc*, %struct.fileproc** %9, align 8
  %30 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %12, align 4
  %32 = load %struct.fileproc*, %struct.fileproc** %9, align 8
  %33 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %13, align 8
  %35 = load i32, i32* %12, align 4
  switch i32 %35, label %80 [
    i32 129, label %36
    i32 130, label %47
    i32 128, label %58
  ]

36:                                               ; preds = %28
  %37 = load %struct.fpathconf_args*, %struct.fpathconf_args** %6, align 8
  %38 = getelementptr inbounds %struct.fpathconf_args, %struct.fpathconf_args* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @_PC_PIPE_BUF, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %11, align 4
  br label %82

44:                                               ; preds = %36
  %45 = load i32, i32* @PIPE_BUF, align 4
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  store i32 0, i32* %11, align 4
  br label %82

47:                                               ; preds = %28
  %48 = load %struct.fpathconf_args*, %struct.fpathconf_args** %6, align 8
  %49 = getelementptr inbounds %struct.fpathconf_args, %struct.fpathconf_args* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @_PC_PIPE_BUF, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %11, align 4
  br label %82

55:                                               ; preds = %47
  %56 = load i32, i32* @PIPE_BUF, align 4
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  store i32 0, i32* %11, align 4
  br label %82

58:                                               ; preds = %28
  %59 = load i64, i64* %13, align 8
  %60 = inttoptr i64 %59 to %struct.vnode*
  store %struct.vnode* %60, %struct.vnode** %10, align 8
  %61 = load %struct.vnode*, %struct.vnode** %10, align 8
  %62 = call i32 @vnode_getwithref(%struct.vnode* %61)
  store i32 %62, i32* %11, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %58
  %65 = load i32, i32* @vnpath, align 4
  %66 = load %struct.vnode*, %struct.vnode** %10, align 8
  %67 = ptrtoint %struct.vnode* %66 to i32
  %68 = load i32, i32* @ARG_VNODE1, align 4
  %69 = call i32 (i32, i32, ...) @AUDIT_ARG(i32 %65, i32 %67, i32 %68)
  %70 = load %struct.vnode*, %struct.vnode** %10, align 8
  %71 = load %struct.fpathconf_args*, %struct.fpathconf_args** %6, align 8
  %72 = getelementptr inbounds %struct.fpathconf_args, %struct.fpathconf_args* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 (...) @vfs_context_current()
  %76 = call i32 @vn_pathconf(%struct.vnode* %70, i32 %73, i32* %74, i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = load %struct.vnode*, %struct.vnode** %10, align 8
  %78 = call i32 @vnode_put(%struct.vnode* %77)
  br label %79

79:                                               ; preds = %64, %58
  br label %82

80:                                               ; preds = %28
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %80, %79, %55, %53, %44, %42
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.fileproc*, %struct.fileproc** %9, align 8
  %86 = call i32 @fp_drop(i32 %83, i32 %84, %struct.fileproc* %85, i32 0)
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %82, %26
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @AUDIT_ARG(i32, i32, ...) #1

declare dso_local i32 @fp_lookup(i32, i32, %struct.fileproc**, i32) #1

declare dso_local i32 @vnode_getwithref(%struct.vnode*) #1

declare dso_local i32 @vn_pathconf(%struct.vnode*, i32, i32*, i32) #1

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i32 @vnode_put(%struct.vnode*) #1

declare dso_local i32 @fp_drop(i32, i32, %struct.fileproc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
