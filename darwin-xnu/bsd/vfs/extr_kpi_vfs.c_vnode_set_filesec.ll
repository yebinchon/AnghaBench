; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vnode_set_filesec.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vnode_set_filesec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"    ERROR - could not allocate iov to write ACL\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@KAUTH_ENDIAN_DISK = common dso_local global i32 0, align 4
@KAUTH_FILESEC_NOACL = common dso_local global i32 0, align 4
@KAUTH_FILESEC_XATTR = common dso_local global i32 0, align 4
@XATTR_NOSECURITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"SETATTR - set ACL returning %d\00", align 1
@KAUTH_ENDIAN_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @vnode_set_filesec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnode_set_filesec(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %12 = load i32, i32* @UIO_SYSSPACE, align 4
  %13 = load i32, i32* @UIO_WRITE, align 4
  %14 = call i32* @uio_create(i32 2, i32 0, i32 %12, i32 %13)
  store i32* %14, i32** %9, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = call i32 @KAUTH_DEBUG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  store i32 %18, i32* %10, align 4
  br label %53

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @KAUTH_ACL_COPYSIZE(i32 %20)
  store i64 %21, i64* %11, align 8
  %22 = load i32, i32* @KAUTH_ENDIAN_DISK, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @kauth_filesec_acl_setendian(i32 %22, i32 %23, i32 %24)
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @CAST_USER_ADDR_T(i32 %27)
  %29 = call i64 @KAUTH_FILESEC_SIZE(i32 0)
  %30 = load i32, i32* @KAUTH_FILESEC_NOACL, align 4
  %31 = call i64 @KAUTH_ACL_SIZE(i32 %30)
  %32 = sub nsw i64 %29, %31
  %33 = call i32 @uio_addiov(i32* %26, i32 %28, i64 %32)
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @CAST_USER_ADDR_T(i32 %35)
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @uio_addiov(i32* %34, i32 %36, i64 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @KAUTH_FILESEC_XATTR, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* @XATTR_NOSECURITY, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @vn_setxattr(i32 %39, i32 %40, i32* %41, i32 %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @VFS_DEBUG(i32 %45, i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @KAUTH_ENDIAN_HOST, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @kauth_filesec_acl_setendian(i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %19, %16
  %54 = load i32*, i32** %9, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @uio_free(i32* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %10, align 4
  ret i32 %60
}

declare dso_local i32* @uio_create(i32, i32, i32, i32) #1

declare dso_local i32 @KAUTH_DEBUG(i8*) #1

declare dso_local i64 @KAUTH_ACL_COPYSIZE(i32) #1

declare dso_local i32 @kauth_filesec_acl_setendian(i32, i32, i32) #1

declare dso_local i32 @uio_addiov(i32*, i32, i64) #1

declare dso_local i32 @CAST_USER_ADDR_T(i32) #1

declare dso_local i64 @KAUTH_FILESEC_SIZE(i32) #1

declare dso_local i64 @KAUTH_ACL_SIZE(i32) #1

declare dso_local i32 @vn_setxattr(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @VFS_DEBUG(i32, i32, i8*, i32) #1

declare dso_local i32 @uio_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
