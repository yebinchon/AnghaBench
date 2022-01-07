; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_setxattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_setxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.setxattr_args = type { i32, i32, i32, i32, i32, i32 }
%struct.nameidata = type { i32 }

@XATTR_MAXNAMELEN = common dso_local global i32 0, align 4
@UIO_USERSPACE64 = common dso_local global i32 0, align 4
@UIO_USERSPACE32 = common dso_local global i32 0, align 4
@XATTR_NOSECURITY = common dso_local global i32 0, align 4
@XATTR_NODEFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@XATTR_NOFOLLOW = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@OP_SETXATTR = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@FSE_ARG_DONE = common dso_local global i32 0, align 4
@FSE_ARG_VNODE = common dso_local global i32 0, align 4
@FSE_XATTR_MODIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setxattr(i32 %0, %struct.setxattr_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.setxattr_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nameidata, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.setxattr_args* %1, %struct.setxattr_args** %6, align 8
  store i32* %2, i32** %7, align 8
  %20 = load i32, i32* @XATTR_MAXNAMELEN, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = call i32 (...) @vfs_context_current()
  store i32 %25, i32* %12, align 4
  store i32* null, i32** %13, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @IS_64BIT_PROCESS(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @UIO_USERSPACE64, align 4
  br label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @UIO_USERSPACE32, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %14, align 4
  %35 = call i32 @UIO_SIZEOF(i32 1)
  %36 = zext i32 %35 to i64
  %37 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %18, align 8
  %38 = load %struct.setxattr_args*, %struct.setxattr_args** %6, align 8
  %39 = getelementptr inbounds %struct.setxattr_args, %struct.setxattr_args* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @XATTR_NOSECURITY, align 4
  %42 = load i32, i32* @XATTR_NODEFAULT, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %137

48:                                               ; preds = %33
  %49 = load %struct.setxattr_args*, %struct.setxattr_args** %6, align 8
  %50 = getelementptr inbounds %struct.setxattr_args, %struct.setxattr_args* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = trunc i64 %22 to i32
  %53 = call i32 @copyinstr(i32 %51, i8* %24, i32 %52, i64* %15)
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* @EPERM, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %61, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %137

62:                                               ; preds = %56
  %63 = load i32, i32* %17, align 4
  store i32 %63, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %137

64:                                               ; preds = %48
  %65 = call i64 @xattr_protected(i8* %24)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @EPERM, align 4
  store i32 %68, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %137

69:                                               ; preds = %64
  %70 = load %struct.setxattr_args*, %struct.setxattr_args** %6, align 8
  %71 = getelementptr inbounds %struct.setxattr_args, %struct.setxattr_args* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.setxattr_args*, %struct.setxattr_args** %6, align 8
  %76 = getelementptr inbounds %struct.setxattr_args, %struct.setxattr_args* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @EINVAL, align 4
  store i32 %80, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %137

81:                                               ; preds = %74, %69
  %82 = load %struct.setxattr_args*, %struct.setxattr_args** %6, align 8
  %83 = getelementptr inbounds %struct.setxattr_args, %struct.setxattr_args* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @XATTR_NOFOLLOW, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %91

89:                                               ; preds = %81
  %90 = load i32, i32* @FOLLOW, align 4
  br label %91

91:                                               ; preds = %89, %88
  %92 = phi i32 [ 0, %88 ], [ %90, %89 ]
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* @LOOKUP, align 4
  %94 = load i32, i32* @OP_SETXATTR, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load %struct.setxattr_args*, %struct.setxattr_args** %6, align 8
  %98 = getelementptr inbounds %struct.setxattr_args, %struct.setxattr_args* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @NDINIT(%struct.nameidata* %9, i32 %93, i32 %94, i32 %95, i32 %96, i32 %99, i32 %100)
  %102 = call i32 @namei(%struct.nameidata* %9)
  store i32 %102, i32* %17, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %91
  %105 = load i32, i32* %17, align 4
  store i32 %105, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %137

106:                                              ; preds = %91
  %107 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %8, align 4
  %109 = call i32 @nameidone(%struct.nameidata* %9)
  %110 = load %struct.setxattr_args*, %struct.setxattr_args** %6, align 8
  %111 = getelementptr inbounds %struct.setxattr_args, %struct.setxattr_args* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* @UIO_WRITE, align 4
  %115 = getelementptr inbounds i8, i8* %37, i64 0
  %116 = trunc i64 %36 to i32
  %117 = call i32* @uio_createwithbuffer(i32 1, i32 %112, i32 %113, i32 %114, i8* %115, i32 %116)
  store i32* %117, i32** %13, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = load %struct.setxattr_args*, %struct.setxattr_args** %6, align 8
  %120 = getelementptr inbounds %struct.setxattr_args, %struct.setxattr_args* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.setxattr_args*, %struct.setxattr_args** %6, align 8
  %123 = getelementptr inbounds %struct.setxattr_args, %struct.setxattr_args* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @uio_addiov(i32* %118, i32 %121, i32 %124)
  %126 = load i32, i32* %8, align 4
  %127 = load i32*, i32** %13, align 8
  %128 = load %struct.setxattr_args*, %struct.setxattr_args** %6, align 8
  %129 = getelementptr inbounds %struct.setxattr_args, %struct.setxattr_args* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @vn_setxattr(i32 %126, i8* %24, i32* %127, i32 %130, i32 %131)
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @vnode_put(i32 %133)
  %135 = load i32*, i32** %7, align 8
  store i32 0, i32* %135, align 4
  %136 = load i32, i32* %17, align 4
  store i32 %136, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %137

137:                                              ; preds = %106, %104, %79, %67, %62, %60, %46
  %138 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vfs_context_current(...) #2

declare dso_local i64 @IS_64BIT_PROCESS(i32) #2

declare dso_local i32 @UIO_SIZEOF(i32) #2

declare dso_local i32 @copyinstr(i32, i8*, i32, i64*) #2

declare dso_local i64 @xattr_protected(i8*) #2

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @namei(%struct.nameidata*) #2

declare dso_local i32 @nameidone(%struct.nameidata*) #2

declare dso_local i32* @uio_createwithbuffer(i32, i32, i32, i32, i8*, i32) #2

declare dso_local i32 @uio_addiov(i32*, i32, i32) #2

declare dso_local i32 @vn_setxattr(i32, i8*, i32*, i32, i32) #2

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
