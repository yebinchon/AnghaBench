; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_flistxattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_flistxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flistxattr_args = type { i32, i64, i32, i32 }

@UIO_USERSPACE64 = common dso_local global i32 0, align 4
@UIO_USERSPACE32 = common dso_local global i32 0, align 4
@XATTR_NOFOLLOW = common dso_local global i32 0, align 4
@XATTR_NOSECURITY = common dso_local global i32 0, align 4
@XATTR_NODEFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flistxattr(i32 %0, %struct.flistxattr_args* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.flistxattr_args*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.flistxattr_args* %1, %struct.flistxattr_args** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* null, i32** %9, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @proc_is64bit(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @UIO_USERSPACE64, align 4
  br label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @UIO_USERSPACE32, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %25 = call i32 @UIO_SIZEOF(i32 1)
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %13, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %14, align 8
  %29 = load %struct.flistxattr_args*, %struct.flistxattr_args** %6, align 8
  %30 = getelementptr inbounds %struct.flistxattr_args, %struct.flistxattr_args* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @XATTR_NOFOLLOW, align 4
  %33 = load i32, i32* @XATTR_NOSECURITY, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @XATTR_NODEFAULT, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %31, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %23
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %112

41:                                               ; preds = %23
  %42 = load %struct.flistxattr_args*, %struct.flistxattr_args** %6, align 8
  %43 = getelementptr inbounds %struct.flistxattr_args, %struct.flistxattr_args* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @file_vnode(i32 %44, i32* %8)
  store i32 %45, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %112

49:                                               ; preds = %41
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @vnode_getwithref(i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load %struct.flistxattr_args*, %struct.flistxattr_args** %6, align 8
  %55 = getelementptr inbounds %struct.flistxattr_args, %struct.flistxattr_args* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @file_drop(i32 %56)
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %112

59:                                               ; preds = %49
  %60 = load %struct.flistxattr_args*, %struct.flistxattr_args** %6, align 8
  %61 = getelementptr inbounds %struct.flistxattr_args, %struct.flistxattr_args* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %59
  %65 = load %struct.flistxattr_args*, %struct.flistxattr_args** %6, align 8
  %66 = getelementptr inbounds %struct.flistxattr_args, %struct.flistxattr_args* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %64
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @UIO_READ, align 4
  %72 = getelementptr inbounds i8, i8* %28, i64 0
  %73 = trunc i64 %26 to i32
  %74 = call i32* @uio_createwithbuffer(i32 1, i32 0, i32 %70, i32 %71, i8* %72, i32 %73)
  store i32* %74, i32** %9, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load %struct.flistxattr_args*, %struct.flistxattr_args** %6, align 8
  %77 = getelementptr inbounds %struct.flistxattr_args, %struct.flistxattr_args* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.flistxattr_args*, %struct.flistxattr_args** %6, align 8
  %80 = getelementptr inbounds %struct.flistxattr_args, %struct.flistxattr_args* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @uio_addiov(i32* %75, i32 %78, i64 %81)
  br label %83

83:                                               ; preds = %69, %64, %59
  %84 = load i32, i32* %8, align 4
  %85 = load i32*, i32** %9, align 8
  %86 = load %struct.flistxattr_args*, %struct.flistxattr_args** %6, align 8
  %87 = getelementptr inbounds %struct.flistxattr_args, %struct.flistxattr_args* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (...) @vfs_context_current()
  %90 = call i32 @vn_listxattr(i32 %84, i32* %85, i64* %11, i32 %88, i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @vnode_put(i32 %91)
  %93 = load %struct.flistxattr_args*, %struct.flistxattr_args** %6, align 8
  %94 = getelementptr inbounds %struct.flistxattr_args, %struct.flistxattr_args* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @file_drop(i32 %95)
  %97 = load i32*, i32** %9, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %83
  %100 = load %struct.flistxattr_args*, %struct.flistxattr_args** %6, align 8
  %101 = getelementptr inbounds %struct.flistxattr_args, %struct.flistxattr_args* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = call i64 @uio_resid(i32* %103)
  %105 = sub nsw i64 %102, %104
  %106 = load i64*, i64** %7, align 8
  store i64 %105, i64* %106, align 8
  br label %110

107:                                              ; preds = %83
  %108 = load i64, i64* %11, align 8
  %109 = load i64*, i64** %7, align 8
  store i64 %108, i64* %109, align 8
  br label %110

110:                                              ; preds = %107, %99
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %112

112:                                              ; preds = %110, %53, %47, %39
  %113 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i64 @proc_is64bit(i32) #1

declare dso_local i32 @UIO_SIZEOF(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @file_vnode(i32, i32*) #1

declare dso_local i32 @vnode_getwithref(i32) #1

declare dso_local i32 @file_drop(i32) #1

declare dso_local i32* @uio_createwithbuffer(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @uio_addiov(i32*, i32, i64) #1

declare dso_local i32 @vn_listxattr(i32, i32*, i64*, i32, i32) #1

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i32 @vnode_put(i32) #1

declare dso_local i64 @uio_resid(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
