; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_fdesc_support.c_fdesc_open.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_fdesc_support.c_fdesc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_open_args = type { i32, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid type for fdesc node!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdesc_open(%struct.vnop_open_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_open_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  store %struct.vnop_open_args* %0, %struct.vnop_open_args** %3, align 8
  %8 = load %struct.vnop_open_args*, %struct.vnop_open_args** %3, align 8
  %9 = getelementptr inbounds %struct.vnop_open_args, %struct.vnop_open_args* %8, i32 0, i32 1
  %10 = load %struct.vnode*, %struct.vnode** %9, align 8
  store %struct.vnode* %10, %struct.vnode** %4, align 8
  %11 = load %struct.vnop_open_args*, %struct.vnop_open_args** %3, align 8
  %12 = getelementptr inbounds %struct.vnop_open_args, %struct.vnop_open_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32* @vfs_context_thread(i32 %13)
  store i32* %14, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %2, align 4
  br label %38

19:                                               ; preds = %1
  %20 = load i32*, i32** %5, align 8
  %21 = call %struct.TYPE_4__* @get_bsdthread_info(i32* %20)
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %6, align 8
  %22 = load %struct.vnode*, %struct.vnode** %4, align 8
  %23 = call %struct.TYPE_5__* @VTOFDESC(%struct.vnode* %22)
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %34 [
    i32 128, label %26
  ]

26:                                               ; preds = %19
  %27 = load %struct.vnode*, %struct.vnode** %4, align 8
  %28 = call %struct.TYPE_5__* @VTOFDESC(%struct.vnode* %27)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @ENODEV, align 4
  store i32 %33, i32* %7, align 4
  br label %36

34:                                               ; preds = %19
  %35 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %26
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %17
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32* @vfs_context_thread(i32) #1

declare dso_local %struct.TYPE_4__* @get_bsdthread_info(i32*) #1

declare dso_local %struct.TYPE_5__* @VTOFDESC(%struct.vnode*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
