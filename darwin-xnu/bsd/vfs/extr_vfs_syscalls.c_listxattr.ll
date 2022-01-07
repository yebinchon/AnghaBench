; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_listxattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_listxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.listxattr_args = type { i32, i64, i32, i32 }
%struct.nameidata = type { i32 }

@UIO_USERSPACE64 = common dso_local global i32 0, align 4
@UIO_USERSPACE32 = common dso_local global i32 0, align 4
@XATTR_NOSECURITY = common dso_local global i32 0, align 4
@XATTR_NODEFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XATTR_NOFOLLOW = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@OP_LISTXATTR = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @listxattr(i32 %0, %struct.listxattr_args* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.listxattr_args*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nameidata, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.listxattr_args* %1, %struct.listxattr_args** %6, align 8
  store i64* %2, i64** %7, align 8
  %19 = call i32 (...) @vfs_context_current()
  store i32 %19, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @IS_64BIT_PROCESS(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @UIO_USERSPACE64, align 4
  br label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @UIO_USERSPACE32, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %29 = call i32 @UIO_SIZEOF(i32 1)
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %16, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %17, align 8
  %33 = load %struct.listxattr_args*, %struct.listxattr_args** %6, align 8
  %34 = getelementptr inbounds %struct.listxattr_args, %struct.listxattr_args* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @XATTR_NOSECURITY, align 4
  %37 = load i32, i32* @XATTR_NODEFAULT, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %120

43:                                               ; preds = %27
  %44 = load %struct.listxattr_args*, %struct.listxattr_args** %6, align 8
  %45 = getelementptr inbounds %struct.listxattr_args, %struct.listxattr_args* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @XATTR_NOFOLLOW, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @FOLLOW, align 4
  br label %53

53:                                               ; preds = %51, %50
  %54 = phi i32 [ 0, %50 ], [ %52, %51 ]
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* @LOOKUP, align 4
  %56 = load i32, i32* @OP_LISTXATTR, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.listxattr_args*, %struct.listxattr_args** %6, align 8
  %60 = getelementptr inbounds %struct.listxattr_args, %struct.listxattr_args* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @NDINIT(%struct.nameidata* %9, i32 %55, i32 %56, i32 %57, i32 %58, i32 %61, i32 %62)
  %64 = call i32 @namei(%struct.nameidata* %9)
  store i32 %64, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  %67 = load i32, i32* %15, align 4
  store i32 %67, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %120

68:                                               ; preds = %53
  %69 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %8, align 4
  %71 = call i32 @nameidone(%struct.nameidata* %9)
  %72 = load %struct.listxattr_args*, %struct.listxattr_args** %6, align 8
  %73 = getelementptr inbounds %struct.listxattr_args, %struct.listxattr_args* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %68
  %77 = load %struct.listxattr_args*, %struct.listxattr_args** %6, align 8
  %78 = getelementptr inbounds %struct.listxattr_args, %struct.listxattr_args* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %76
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @UIO_READ, align 4
  %84 = getelementptr inbounds i8, i8* %32, i64 0
  %85 = trunc i64 %30 to i32
  %86 = call i32* @uio_createwithbuffer(i32 1, i32 0, i32 %82, i32 %83, i8* %84, i32 %85)
  store i32* %86, i32** %11, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = load %struct.listxattr_args*, %struct.listxattr_args** %6, align 8
  %89 = getelementptr inbounds %struct.listxattr_args, %struct.listxattr_args* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.listxattr_args*, %struct.listxattr_args** %6, align 8
  %92 = getelementptr inbounds %struct.listxattr_args, %struct.listxattr_args* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @uio_addiov(i32* %87, i32 %90, i64 %93)
  br label %95

95:                                               ; preds = %81, %76, %68
  %96 = load i32, i32* %8, align 4
  %97 = load i32*, i32** %11, align 8
  %98 = load %struct.listxattr_args*, %struct.listxattr_args** %6, align 8
  %99 = getelementptr inbounds %struct.listxattr_args, %struct.listxattr_args* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @vn_listxattr(i32 %96, i32* %97, i64* %13, i32 %100, i32 %101)
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @vnode_put(i32 %103)
  %105 = load i32*, i32** %11, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %95
  %108 = load %struct.listxattr_args*, %struct.listxattr_args** %6, align 8
  %109 = getelementptr inbounds %struct.listxattr_args, %struct.listxattr_args* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = call i64 @uio_resid(i32* %111)
  %113 = sub nsw i64 %110, %112
  %114 = load i64*, i64** %7, align 8
  store i64 %113, i64* %114, align 8
  br label %118

115:                                              ; preds = %95
  %116 = load i64, i64* %13, align 8
  %117 = load i64*, i64** %7, align 8
  store i64 %116, i64* %117, align 8
  br label %118

118:                                              ; preds = %115, %107
  %119 = load i32, i32* %15, align 4
  store i32 %119, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %120

120:                                              ; preds = %118, %66, %41
  %121 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %121)
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i64 @IS_64BIT_PROCESS(i32) #1

declare dso_local i32 @UIO_SIZEOF(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @nameidone(%struct.nameidata*) #1

declare dso_local i32* @uio_createwithbuffer(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @uio_addiov(i32*, i32, i64) #1

declare dso_local i32 @vn_listxattr(i32, i32*, i64*, i32, i32) #1

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
