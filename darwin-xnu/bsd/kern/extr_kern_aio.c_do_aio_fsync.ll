; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_aio.c_do_aio_fsync.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_aio.c_do_aio_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.vfs_context = type { i32, i32 }
%struct.vnode = type { i32 }
%struct.fileproc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@AIO_FSYNC = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4
@MNT_DWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @do_aio_fsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_aio_fsync(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.vfs_context, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.fileproc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AIO_FSYNC, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @MNT_WAIT, align 4
  store i32 %16, i32* %7, align 4
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @MNT_DWAIT, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @fp_getfvp(i32 %22, i32 %26, %struct.fileproc** %6, %struct.vnode** %5)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %70

30:                                               ; preds = %19
  %31 = load %struct.vnode*, %struct.vnode** %5, align 8
  %32 = call i32 @vnode_getwithref(%struct.vnode* %31)
  store i32 %32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %43 = call i32 @fp_drop(i32 %37, i32 %41, %struct.fileproc* %42, i32 0)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  store i32 -1, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %2, align 4
  br label %78

47:                                               ; preds = %30
  %48 = call i32 (...) @current_thread()
  %49 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %4, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %51 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %4, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load %struct.vnode*, %struct.vnode** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @VNOP_FSYNC(%struct.vnode* %56, i32 %57, %struct.vfs_context* %4)
  store i32 %58, i32* %8, align 4
  %59 = load %struct.vnode*, %struct.vnode** %5, align 8
  %60 = call i32 @vnode_put(%struct.vnode* %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %69 = call i32 @fp_drop(i32 %63, i32 %67, %struct.fileproc* %68, i32 0)
  br label %70

70:                                               ; preds = %47, %19
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  store i32 -1, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %34
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @fp_getfvp(i32, i32, %struct.fileproc**, %struct.vnode**) #1

declare dso_local i32 @vnode_getwithref(%struct.vnode*) #1

declare dso_local i32 @fp_drop(i32, i32, %struct.fileproc*, i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @VNOP_FSYNC(%struct.vnode*, i32, %struct.vfs_context*) #1

declare dso_local i32 @vnode_put(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
