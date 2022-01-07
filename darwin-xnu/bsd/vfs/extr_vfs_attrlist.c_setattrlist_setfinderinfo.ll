; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_setattrlist_setfinderinfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_setattrlist_setfinderinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfs_context = type { i32 }

@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XATTR_FINDERINFO_NAME = common dso_local global i32 0, align 4
@XATTR_NOSECURITY = common dso_local global i32 0, align 4
@FSE_ARG_DONE = common dso_local global i32 0, align 4
@FSE_ARG_VNODE = common dso_local global i32 0, align 4
@FSE_FINDER_INFO_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.vfs_context*)* @setattrlist_setfinderinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setattrlist_setfinderinfo(i32 %0, i8* %1, %struct.vfs_context* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vfs_context*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.vfs_context* %2, %struct.vfs_context** %6, align 8
  %11 = call i32 @UIO_SIZEOF(i32 1)
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* @UIO_SYSSPACE, align 4
  %16 = load i32, i32* @UIO_WRITE, align 4
  %17 = trunc i64 %12 to i32
  %18 = call i32* @uio_createwithbuffer(i32 1, i32 0, i32 %15, i32 %16, i8* %14, i32 %17)
  store i32* %18, i32** %7, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  store i32 %21, i32* %10, align 4
  br label %35

22:                                               ; preds = %3
  %23 = load i32*, i32** %7, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @CAST_USER_ADDR_T(i8* %24)
  %26 = call i32 @uio_addiov(i32* %23, i32 %25, i32 32)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @XATTR_FINDERINFO_NAME, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* @XATTR_NOSECURITY, align 4
  %31 = load %struct.vfs_context*, %struct.vfs_context** %6, align 8
  %32 = call i32 @vn_setxattr(i32 %27, i32 %28, i32* %29, i32 %30, %struct.vfs_context* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @uio_free(i32* %33)
  br label %35

35:                                               ; preds = %22, %20
  %36 = load i32, i32* %10, align 4
  %37 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %37)
  ret i32 %36
}

declare dso_local i32 @UIO_SIZEOF(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @uio_createwithbuffer(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @uio_addiov(i32*, i32, i32) #1

declare dso_local i32 @CAST_USER_ADDR_T(i8*) #1

declare dso_local i32 @vn_setxattr(i32, i32, i32*, i32, %struct.vfs_context*) #1

declare dso_local i32 @uio_free(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
