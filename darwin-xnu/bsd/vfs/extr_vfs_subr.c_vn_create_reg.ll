; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vn_create_reg.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vn_create_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32 }
%struct.vnode_attr = type { i32 }

@VN_CREATE_DOOPEN = common dso_local global i32 0, align 4
@NULLVP = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.nameidata*, %struct.vnode_attr*, i32, i32, i32*, i32)* @vn_create_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vn_create_reg(i32 %0, i32* %1, %struct.nameidata* %2, %struct.vnode_attr* %3, i32 %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.nameidata*, align 8
  %13 = alloca %struct.vnode_attr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32* %1, i32** %11, align 8
  store %struct.nameidata* %2, %struct.nameidata** %12, align 8
  store %struct.vnode_attr* %3, %struct.vnode_attr** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i64 @vnode_compound_open_available(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %8
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* @VN_CREATE_DOOPEN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load i32, i32* @NULLVP, align 4
  %28 = load i32*, i32** %11, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32*, i32** %11, align 8
  %31 = load %struct.nameidata*, %struct.nameidata** %12, align 8
  %32 = load i32, i32* @O_CREAT, align 4
  %33 = load i32, i32* %15, align 4
  %34 = load i32*, i32** %16, align 8
  %35 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %36 = load i32, i32* %17, align 4
  %37 = call i32 @VNOP_COMPOUND_OPEN(i32 %29, i32* %30, %struct.nameidata* %31, i32 %32, i32 %33, i32* %34, %struct.vnode_attr* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  br label %46

38:                                               ; preds = %21, %8
  %39 = load i32, i32* %10, align 4
  %40 = load i32*, i32** %11, align 8
  %41 = load %struct.nameidata*, %struct.nameidata** %12, align 8
  %42 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %41, i32 0, i32 0
  %43 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %44 = load i32, i32* %17, align 4
  %45 = call i32 @VNOP_CREATE(i32 %39, i32* %40, i32* %42, %struct.vnode_attr* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %38, %26
  %47 = load i32, i32* %9, align 4
  ret i32 %47
}

declare dso_local i64 @vnode_compound_open_available(i32) #1

declare dso_local i32 @VNOP_COMPOUND_OPEN(i32, i32*, %struct.nameidata*, i32, i32, i32*, %struct.vnode_attr*, i32) #1

declare dso_local i32 @VNOP_CREATE(i32, i32*, i32*, %struct.vnode_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
