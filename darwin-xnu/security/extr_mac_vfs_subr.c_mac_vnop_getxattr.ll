; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs_subr.c_mac_vnop_getxattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs_subr.c_mac_vnop_getxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }

@XATTR_NOSECURITY = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_vnop_getxattr(%struct.vnode* %0, i8* %1, i8* %2, i64 %3, i64* %4) #0 {
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  %17 = call i32 (...) @vfs_context_current()
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @XATTR_NOSECURITY, align 4
  store i32 %18, i32* %12, align 4
  %19 = call i32 @UIO_SIZEOF(i32 1)
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load i32, i32* @UIO_SYSSPACE, align 4
  %24 = load i32, i32* @UIO_READ, align 4
  %25 = getelementptr inbounds i8, i8* %22, i64 0
  %26 = trunc i64 %20 to i32
  %27 = call i32 @uio_createwithbuffer(i32 1, i32 0, i32 %23, i32 %24, i8* %25, i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @CAST_USER_ADDR_T(i8* %29)
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @uio_addiov(i32 %28, i32 %30, i64 %31)
  %33 = load %struct.vnode*, %struct.vnode** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %15, align 4
  %36 = load i64*, i64** %10, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @vn_getxattr(%struct.vnode* %33, i8* %34, i32 %35, i64* %36, i32 %37, i32 %38)
  store i32 %39, i32* %16, align 4
  %40 = load i64, i64* %9, align 8
  %41 = load i32, i32* %15, align 4
  %42 = call i64 @uio_resid(i32 %41)
  %43 = sub i64 %40, %42
  %44 = load i64*, i64** %10, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i32, i32* %16, align 4
  %46 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %46)
  ret i32 %45
}

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i32 @UIO_SIZEOF(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @uio_createwithbuffer(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @uio_addiov(i32, i32, i64) #1

declare dso_local i32 @CAST_USER_ADDR_T(i8*) #1

declare dso_local i32 @vn_getxattr(%struct.vnode*, i8*, i32, i64*, i32, i32) #1

declare dso_local i64 @uio_resid(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
