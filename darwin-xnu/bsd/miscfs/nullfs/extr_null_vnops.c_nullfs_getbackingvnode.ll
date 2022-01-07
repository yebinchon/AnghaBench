; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/nullfs/extr_null_vnops.c_nullfs_getbackingvnode.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/nullfs/extr_null_vnops.c_nullfs_getbackingvnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsstatfs = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"nullfs\00", align 1
@NULLVP = common dso_local global i32* null, align 8
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nullfs_getbackingvnode(i32* %0, i32** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vfsstatfs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32** %1, i32*** %4, align 8
  %9 = load i32, i32* @EINVAL, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32**, i32*** %4, align 8
  %11 = icmp eq i32** %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  br label %46

16:                                               ; preds = %12
  store %struct.vfsstatfs* null, %struct.vfsstatfs** %6, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @vnode_mount(i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.vfsstatfs* @vfs_statfs(i32 %19)
  store %struct.vfsstatfs* %20, %struct.vfsstatfs** %6, align 8
  %21 = load %struct.vfsstatfs*, %struct.vfsstatfs** %6, align 8
  %22 = getelementptr inbounds %struct.vfsstatfs, %struct.vfsstatfs* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @strcmp(i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %16
  %27 = load i32*, i32** %3, align 8
  %28 = call i64 @nullfs_checkspecialvp(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26, %16
  %31 = load i32*, i32** @NULLVP, align 8
  %32 = load i32**, i32*** %4, align 8
  store i32* %31, i32** %32, align 8
  %33 = load i32, i32* @ENOENT, align 4
  store i32 %33, i32* %5, align 4
  br label %46

34:                                               ; preds = %26
  %35 = load i32*, i32** %3, align 8
  %36 = call i32* @NULLVPTOLOWERVP(i32* %35)
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @NULLVPTOLOWERVID(i32* %38)
  %40 = call i32 @vnode_getwithvid(i32* %37, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %46

43:                                               ; preds = %34
  %44 = load i32*, i32** %8, align 8
  %45 = load i32**, i32*** %4, align 8
  store i32* %44, i32** %45, align 8
  br label %46

46:                                               ; preds = %43, %42, %30, %15
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @vnode_mount(i32*) #1

declare dso_local %struct.vfsstatfs* @vfs_statfs(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @nullfs_checkspecialvp(i32*) #1

declare dso_local i32* @NULLVPTOLOWERVP(i32*) #1

declare dso_local i32 @vnode_getwithvid(i32*, i32) #1

declare dso_local i32 @NULLVPTOLOWERVID(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
