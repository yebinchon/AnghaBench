; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_xattr.c_vn_removexattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_xattr.c_vn_removexattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@XATTR_NOSECURITY = common dso_local global i32 0, align 4
@KAUTH_VNODE_WRITE_EXTATTRIBUTES = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@XATTR_NODEFAULT = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4
@MNT_MULTILABEL = common dso_local global i32 0, align 4
@VISNAMEDSTREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_removexattr(%struct.TYPE_11__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %12 = call i32 @XATTR_VNODE_SUPPORTED(%struct.TYPE_11__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @EPERM, align 4
  store i32 %15, i32* %5, align 4
  br label %59

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @xattr_validatename(i8* %17)
  store i32 %18, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %5, align 4
  br label %59

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @XATTR_NOSECURITY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = load i32, i32* @KAUTH_VNODE_WRITE_EXTATTRIBUTES, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @vnode_authorize(%struct.TYPE_11__* %28, i32* null, i32 %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %57

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %22
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @VNOP_REMOVEXATTR(%struct.TYPE_11__* %37, i8* %38, i32 %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @ENOTSUP, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %36
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @XATTR_NODEFAULT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @default_removexattr(%struct.TYPE_11__* %51, i8* %52, i32 %53, i32 %54)
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %50, %45, %36
  br label %57

57:                                               ; preds = %56, %34
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %57, %20, %14
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @XATTR_VNODE_SUPPORTED(%struct.TYPE_11__*) #1

declare dso_local i32 @xattr_validatename(i8*) #1

declare dso_local i32 @vnode_authorize(%struct.TYPE_11__*, i32*, i32, i32) #1

declare dso_local i32 @VNOP_REMOVEXATTR(%struct.TYPE_11__*, i8*, i32, i32) #1

declare dso_local i32 @default_removexattr(%struct.TYPE_11__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
