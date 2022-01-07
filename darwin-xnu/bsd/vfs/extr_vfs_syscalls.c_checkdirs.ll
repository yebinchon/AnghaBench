; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_checkdirs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_checkdirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.cdirargs = type { %struct.TYPE_8__*, %struct.TYPE_8__* }

@PROC_ALLPROCLIST = common dso_local global i32 0, align 4
@PROC_NOWAITTRANS = common dso_local global i32 0, align 4
@checkdirs_callback = common dso_local global i32 0, align 4
@rootvnode = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @checkdirs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkdirs(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cdirargs, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

15:                                               ; preds = %2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @VFS_ROOT(i32 %18, %struct.TYPE_8__** %6, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %49

25:                                               ; preds = %15
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.cdirargs, %struct.cdirargs* %9, i32 0, i32 1
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.cdirargs, %struct.cdirargs* %9, i32 0, i32 0
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %29, align 8
  %30 = load i32, i32* @PROC_ALLPROCLIST, align 4
  %31 = load i32, i32* @PROC_NOWAITTRANS, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @checkdirs_callback, align 4
  %34 = bitcast %struct.cdirargs* %9 to i8*
  %35 = call i32 @proc_iterate(i32 %32, i32 %33, i8* %34, i32* null, i32* null)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rootvnode, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = icmp eq %struct.TYPE_8__* %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %25
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = call i32 @vnode_ref(%struct.TYPE_8__* %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rootvnode, align 8
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %7, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** @rootvnode, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = call i32 @vnode_rele(%struct.TYPE_8__* %44)
  br label %46

46:                                               ; preds = %39, %25
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = call i32 @vnode_put(%struct.TYPE_8__* %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %23, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @VFS_ROOT(i32, %struct.TYPE_8__**, i32) #1

declare dso_local i32 @proc_iterate(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @vnode_ref(%struct.TYPE_8__*) #1

declare dso_local i32 @vnode_rele(%struct.TYPE_8__*) #1

declare dso_local i32 @vnode_put(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
