; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_fdesc_support.c_fdesc_setattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_fdesc_support.c_fdesc_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_setattr_args = type { i32, i32, i32 }
%struct.fileproc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.proc = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.vnode = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Invalid type for an fdesc node!\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdesc_setattr(%struct.vnop_setattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_setattr_args*, align 8
  %4 = alloca %struct.fileproc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.proc*, align 8
  store %struct.vnop_setattr_args* %0, %struct.vnop_setattr_args** %3, align 8
  %8 = load %struct.vnop_setattr_args*, %struct.vnop_setattr_args** %3, align 8
  %9 = getelementptr inbounds %struct.vnop_setattr_args, %struct.vnop_setattr_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.proc* @vfs_context_proc(i32 %10)
  store %struct.proc* %11, %struct.proc** %7, align 8
  %12 = load %struct.vnop_setattr_args*, %struct.vnop_setattr_args** %3, align 8
  %13 = getelementptr inbounds %struct.vnop_setattr_args, %struct.vnop_setattr_args* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_3__* @VTOFDESC(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %19 [
    i32 128, label %18
  ]

18:                                               ; preds = %1
  br label %22

19:                                               ; preds = %1
  %20 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EACCES, align 4
  store i32 %21, i32* %2, align 4
  br label %83

22:                                               ; preds = %18
  %23 = load %struct.vnop_setattr_args*, %struct.vnop_setattr_args** %3, align 8
  %24 = getelementptr inbounds %struct.vnop_setattr_args, %struct.vnop_setattr_args* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_3__* @VTOFDESC(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  %29 = load %struct.vnop_setattr_args*, %struct.vnop_setattr_args** %3, align 8
  %30 = getelementptr inbounds %struct.vnop_setattr_args, %struct.vnop_setattr_args* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.proc* @vfs_context_proc(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @fp_lookup(%struct.proc* %32, i32 %33, %struct.fileproc** %4, i32 0)
  store i32 %34, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %83

38:                                               ; preds = %22
  %39 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %40 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call i32 @FILEGLOB_DTYPE(%struct.TYPE_4__* %41)
  switch i32 %42, label %75 [
    i32 129, label %43
    i32 130, label %74
    i32 131, label %74
  ]

43:                                               ; preds = %38
  %44 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %45 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.vnode*
  %50 = call i32 @vnode_getwithref(%struct.vnode* %49)
  store i32 %50, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %77

53:                                               ; preds = %43
  %54 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %55 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.vnode*
  %60 = load %struct.vnop_setattr_args*, %struct.vnop_setattr_args** %3, align 8
  %61 = getelementptr inbounds %struct.vnop_setattr_args, %struct.vnop_setattr_args* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.vnop_setattr_args*, %struct.vnop_setattr_args** %3, align 8
  %64 = getelementptr inbounds %struct.vnop_setattr_args, %struct.vnop_setattr_args* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @vnode_setattr(%struct.vnode* %59, i32 %62, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %68 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.vnode*
  %73 = call i32 @vnode_put(%struct.vnode* %72)
  br label %77

74:                                               ; preds = %38, %38
  store i32 0, i32* %6, align 4
  br label %77

75:                                               ; preds = %38
  %76 = load i32, i32* @EBADF, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %75, %74, %53, %52
  %78 = load %struct.proc*, %struct.proc** %7, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %81 = call i32 @fp_drop(%struct.proc* %78, i32 %79, %struct.fileproc* %80, i32 0)
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %77, %36, %19
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.proc* @vfs_context_proc(i32) #1

declare dso_local %struct.TYPE_3__* @VTOFDESC(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @fp_lookup(%struct.proc*, i32, %struct.fileproc**, i32) #1

declare dso_local i32 @FILEGLOB_DTYPE(%struct.TYPE_4__*) #1

declare dso_local i32 @vnode_getwithref(%struct.vnode*) #1

declare dso_local i32 @vnode_setattr(%struct.vnode*, i32, i32) #1

declare dso_local i32 @vnode_put(%struct.vnode*) #1

declare dso_local i32 @fp_drop(%struct.proc*, i32, %struct.fileproc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
