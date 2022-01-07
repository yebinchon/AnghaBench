; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_fsetxattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_fsetxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsetxattr_args = type { i32, i32, i32, i32, i32, i32 }

@XATTR_MAXNAMELEN = common dso_local global i32 0, align 4
@UIO_USERSPACE64 = common dso_local global i32 0, align 4
@UIO_USERSPACE32 = common dso_local global i32 0, align 4
@XATTR_NOFOLLOW = common dso_local global i32 0, align 4
@XATTR_NOSECURITY = common dso_local global i32 0, align 4
@XATTR_NODEFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@FSE_ARG_DONE = common dso_local global i32 0, align 4
@FSE_ARG_VNODE = common dso_local global i32 0, align 4
@FSE_XATTR_MODIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsetxattr(i32 %0, %struct.fsetxattr_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsetxattr_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.fsetxattr_args* %1, %struct.fsetxattr_args** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i32, i32* @XATTR_MAXNAMELEN, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  store i32* null, i32** %11, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @IS_64BIT_PROCESS(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @UIO_USERSPACE64, align 4
  br label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @UIO_USERSPACE32, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %12, align 4
  %31 = call i32 @UIO_SIZEOF(i32 1)
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %15, align 8
  %34 = load %struct.fsetxattr_args*, %struct.fsetxattr_args** %6, align 8
  %35 = getelementptr inbounds %struct.fsetxattr_args, %struct.fsetxattr_args* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @XATTR_NOFOLLOW, align 4
  %38 = load i32, i32* @XATTR_NOSECURITY, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @XATTR_NODEFAULT, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %36, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %129

46:                                               ; preds = %29
  %47 = load %struct.fsetxattr_args*, %struct.fsetxattr_args** %6, align 8
  %48 = getelementptr inbounds %struct.fsetxattr_args, %struct.fsetxattr_args* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = trunc i64 %19 to i32
  %51 = call i32 @copyinstr(i32 %49, i8* %21, i32 %50, i64* %13)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @EPERM, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %59, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %129

60:                                               ; preds = %54
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %129

62:                                               ; preds = %46
  %63 = call i64 @xattr_protected(i8* %21)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @EPERM, align 4
  store i32 %66, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %129

67:                                               ; preds = %62
  %68 = load %struct.fsetxattr_args*, %struct.fsetxattr_args** %6, align 8
  %69 = getelementptr inbounds %struct.fsetxattr_args, %struct.fsetxattr_args* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load %struct.fsetxattr_args*, %struct.fsetxattr_args** %6, align 8
  %74 = getelementptr inbounds %struct.fsetxattr_args, %struct.fsetxattr_args* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* @EINVAL, align 4
  store i32 %78, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %129

79:                                               ; preds = %72, %67
  %80 = load %struct.fsetxattr_args*, %struct.fsetxattr_args** %6, align 8
  %81 = getelementptr inbounds %struct.fsetxattr_args, %struct.fsetxattr_args* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @file_vnode(i32 %82, i32* %8)
  store i32 %83, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %14, align 4
  store i32 %86, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %129

87:                                               ; preds = %79
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @vnode_getwithref(i32 %88)
  store i32 %89, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load %struct.fsetxattr_args*, %struct.fsetxattr_args** %6, align 8
  %93 = getelementptr inbounds %struct.fsetxattr_args, %struct.fsetxattr_args* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @file_drop(i32 %94)
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %129

97:                                               ; preds = %87
  %98 = load %struct.fsetxattr_args*, %struct.fsetxattr_args** %6, align 8
  %99 = getelementptr inbounds %struct.fsetxattr_args, %struct.fsetxattr_args* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @UIO_WRITE, align 4
  %103 = getelementptr inbounds i8, i8* %33, i64 0
  %104 = trunc i64 %32 to i32
  %105 = call i32* @uio_createwithbuffer(i32 1, i32 %100, i32 %101, i32 %102, i8* %103, i32 %104)
  store i32* %105, i32** %11, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = load %struct.fsetxattr_args*, %struct.fsetxattr_args** %6, align 8
  %108 = getelementptr inbounds %struct.fsetxattr_args, %struct.fsetxattr_args* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.fsetxattr_args*, %struct.fsetxattr_args** %6, align 8
  %111 = getelementptr inbounds %struct.fsetxattr_args, %struct.fsetxattr_args* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @uio_addiov(i32* %106, i32 %109, i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = load i32*, i32** %11, align 8
  %116 = load %struct.fsetxattr_args*, %struct.fsetxattr_args** %6, align 8
  %117 = getelementptr inbounds %struct.fsetxattr_args, %struct.fsetxattr_args* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (...) @vfs_context_current()
  %120 = call i32 @vn_setxattr(i32 %114, i8* %21, i32* %115, i32 %118, i32 %119)
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @vnode_put(i32 %121)
  %123 = load %struct.fsetxattr_args*, %struct.fsetxattr_args** %6, align 8
  %124 = getelementptr inbounds %struct.fsetxattr_args, %struct.fsetxattr_args* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @file_drop(i32 %125)
  %127 = load i32*, i32** %7, align 8
  store i32 0, i32* %127, align 4
  %128 = load i32, i32* %14, align 4
  store i32 %128, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %129

129:                                              ; preds = %97, %91, %85, %77, %65, %60, %58, %44
  %130 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IS_64BIT_PROCESS(i32) #2

declare dso_local i32 @UIO_SIZEOF(i32) #2

declare dso_local i32 @copyinstr(i32, i8*, i32, i64*) #2

declare dso_local i64 @xattr_protected(i8*) #2

declare dso_local i32 @file_vnode(i32, i32*) #2

declare dso_local i32 @vnode_getwithref(i32) #2

declare dso_local i32 @file_drop(i32) #2

declare dso_local i32* @uio_createwithbuffer(i32, i32, i32, i32, i8*, i32) #2

declare dso_local i32 @uio_addiov(i32*, i32, i32) #2

declare dso_local i32 @vn_setxattr(i32, i8*, i32*, i32, i32) #2

declare dso_local i32 @vfs_context_current(...) #2

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
