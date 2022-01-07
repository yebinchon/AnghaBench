; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_open.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32* }

@O_NOFOLLOW = common dso_local global i32 0, align 4
@VNODE_LOOKUP_NOFOLLOW = common dso_local global i32 0, align 4
@NOFOLLOW = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@VNODE_LOOKUP_NOCROSSMOUNT = common dso_local global i32 0, align 4
@NOCROSSMOUNT = common dso_local global i32 0, align 4
@VNODE_LOOKUP_CROSSMOUNTNOWAIT = common dso_local global i32 0, align 4
@CN_NBMOUNTLOOK = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@OP_OPEN = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnode_open(i8* %0, i32 %1, i32 %2, i32 %3, i32** %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.nameidata, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %15, align 4
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %16, align 4
  %18 = load i32*, i32** %12, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = call i32* (...) @vfs_context_current()
  store i32* %21, i32** %12, align 8
  br label %22

22:                                               ; preds = %20, %6
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @O_NOFOLLOW, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @VNODE_LOOKUP_NOFOLLOW, align 4
  %29 = load i32, i32* %16, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %16, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* @VNODE_LOOKUP_NOFOLLOW, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @NOFOLLOW, align 4
  store i32 %37, i32* %15, align 4
  br label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @FOLLOW, align 4
  store i32 %39, i32* %15, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* @VNODE_LOOKUP_NOCROSSMOUNT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @NOCROSSMOUNT, align 4
  %47 = load i32, i32* %15, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %15, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* @VNODE_LOOKUP_CROSSMOUNTNOWAIT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @CN_NBMOUNTLOOK, align 4
  %56 = load i32, i32* %15, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %15, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, i32* @LOOKUP, align 4
  %60 = load i32, i32* @OP_OPEN, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* @UIO_SYSSPACE, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @CAST_USER_ADDR_T(i8* %63)
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @NDINIT(%struct.nameidata* %13, i32 %59, i32 %60, i32 %61, i32 %62, i32 %64, i32* %65)
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @vn_open(%struct.nameidata* %13, i32 %67, i32 %68)
  store i32 %69, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %58
  %72 = load i32**, i32*** %11, align 8
  store i32* null, i32** %72, align 8
  br label %77

73:                                               ; preds = %58
  %74 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32**, i32*** %11, align 8
  store i32* %75, i32** %76, align 8
  br label %77

77:                                               ; preds = %73, %71
  %78 = load i32, i32* %14, align 4
  ret i32 %78
}

declare dso_local i32* @vfs_context_current(...) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @CAST_USER_ADDR_T(i8*) #1

declare dso_local i32 @vn_open(%struct.nameidata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
