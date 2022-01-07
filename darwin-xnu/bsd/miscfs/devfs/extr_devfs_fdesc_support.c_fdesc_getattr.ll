; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_fdesc_support.c_fdesc_getattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_fdesc_support.c_fdesc_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_getattr_args = type { i32, %struct.vnode_attr*, %struct.vnode* }
%struct.vnode_attr = type { i32 }
%struct.vnode = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Invalid type for an fdesc node!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdesc_getattr(%struct.vnop_getattr_args* %0) #0 {
  %2 = alloca %struct.vnop_getattr_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vnode_attr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vnop_getattr_args* %0, %struct.vnop_getattr_args** %2, align 8
  %7 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %2, align 8
  %8 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %7, i32 0, i32 2
  %9 = load %struct.vnode*, %struct.vnode** %8, align 8
  store %struct.vnode* %9, %struct.vnode** %3, align 8
  %10 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %2, align 8
  %11 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %10, i32 0, i32 1
  %12 = load %struct.vnode_attr*, %struct.vnode_attr** %11, align 8
  store %struct.vnode_attr* %12, %struct.vnode_attr** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.vnode*, %struct.vnode** %3, align 8
  %14 = call %struct.TYPE_2__* @VTOFDESC(%struct.vnode* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %28 [
    i32 128, label %17
  ]

17:                                               ; preds = %1
  %18 = load %struct.vnode*, %struct.vnode** %3, align 8
  %19 = call %struct.TYPE_2__* @VTOFDESC(%struct.vnode* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %24 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %2, align 8
  %25 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @fdesc_attr(i32 %22, %struct.vnode_attr* %23, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %30

28:                                               ; preds = %1
  %29 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %17
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %35 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vnode*, %struct.vnode** %3, align 8
  %38 = getelementptr inbounds %struct.vnode, %struct.vnode* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.vnode*, %struct.vnode** %3, align 8
  %40 = call i32 @vnode_setneedinactive(%struct.vnode* %39)
  br label %41

41:                                               ; preds = %33, %30
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local %struct.TYPE_2__* @VTOFDESC(%struct.vnode*) #1

declare dso_local i32 @fdesc_attr(i32, %struct.vnode_attr*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @vnode_setneedinactive(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
