; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_removexattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_removexattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.removexattr_args = type { i32, i32, i32 }
%struct.nameidata = type { i32 }

@XATTR_MAXNAMELEN = common dso_local global i32 0, align 4
@UIO_USERSPACE64 = common dso_local global i32 0, align 4
@UIO_USERSPACE32 = common dso_local global i32 0, align 4
@XATTR_NOSECURITY = common dso_local global i32 0, align 4
@XATTR_NODEFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@XATTR_NOFOLLOW = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@OP_REMOVEXATTR = common dso_local global i32 0, align 4
@FSE_ARG_DONE = common dso_local global i32 0, align 4
@FSE_ARG_VNODE = common dso_local global i32 0, align 4
@FSE_XATTR_REMOVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @removexattr(i32 %0, %struct.removexattr_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.removexattr_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nameidata, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.removexattr_args* %1, %struct.removexattr_args** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load i32, i32* @XATTR_MAXNAMELEN, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @IS_64BIT_PROCESS(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @UIO_USERSPACE64, align 4
  br label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @UIO_USERSPACE32, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %12, align 4
  %32 = call i32 (...) @vfs_context_current()
  store i32 %32, i32* %13, align 4
  %33 = load %struct.removexattr_args*, %struct.removexattr_args** %6, align 8
  %34 = getelementptr inbounds %struct.removexattr_args, %struct.removexattr_args* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @XATTR_NOSECURITY, align 4
  %37 = load i32, i32* @XATTR_NODEFAULT, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %97

43:                                               ; preds = %30
  %44 = load %struct.removexattr_args*, %struct.removexattr_args** %6, align 8
  %45 = getelementptr inbounds %struct.removexattr_args, %struct.removexattr_args* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = trunc i64 %20 to i32
  %48 = call i32 @copyinstr(i32 %46, i8* %22, i32 %47, i64* %14)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %16, align 4
  store i32 %52, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %97

53:                                               ; preds = %43
  %54 = call i64 @xattr_protected(i8* %22)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @EPERM, align 4
  store i32 %57, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %97

58:                                               ; preds = %53
  %59 = load %struct.removexattr_args*, %struct.removexattr_args** %6, align 8
  %60 = getelementptr inbounds %struct.removexattr_args, %struct.removexattr_args* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @XATTR_NOFOLLOW, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %68

66:                                               ; preds = %58
  %67 = load i32, i32* @FOLLOW, align 4
  br label %68

68:                                               ; preds = %66, %65
  %69 = phi i32 [ 0, %65 ], [ %67, %66 ]
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* @LOOKUP, align 4
  %71 = load i32, i32* @OP_REMOVEXATTR, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.removexattr_args*, %struct.removexattr_args** %6, align 8
  %75 = getelementptr inbounds %struct.removexattr_args, %struct.removexattr_args* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @NDINIT(%struct.nameidata* %9, i32 %70, i32 %71, i32 %72, i32 %73, i32 %76, i32 %77)
  %79 = call i32 @namei(%struct.nameidata* %9)
  store i32 %79, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %68
  %82 = load i32, i32* %16, align 4
  store i32 %82, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %97

83:                                               ; preds = %68
  %84 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %8, align 4
  %86 = call i32 @nameidone(%struct.nameidata* %9)
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.removexattr_args*, %struct.removexattr_args** %6, align 8
  %89 = getelementptr inbounds %struct.removexattr_args, %struct.removexattr_args* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @vn_removexattr(i32 %87, i8* %22, i32 %90, i32 %91)
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @vnode_put(i32 %93)
  %95 = load i32*, i32** %7, align 8
  store i32 0, i32* %95, align 4
  %96 = load i32, i32* %16, align 4
  store i32 %96, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %97

97:                                               ; preds = %83, %81, %56, %51, %41
  %98 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IS_64BIT_PROCESS(i32) #2

declare dso_local i32 @vfs_context_current(...) #2

declare dso_local i32 @copyinstr(i32, i8*, i32, i64*) #2

declare dso_local i64 @xattr_protected(i8*) #2

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @namei(%struct.nameidata*) #2

declare dso_local i32 @nameidone(%struct.nameidata*) #2

declare dso_local i32 @vn_removexattr(i32, i8*, i32, i32) #2

declare dso_local i32 @vnode_put(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
