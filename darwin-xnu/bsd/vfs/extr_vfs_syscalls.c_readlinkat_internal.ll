; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_readlinkat_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_readlinkat_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.nameidata = type { %struct.TYPE_6__* }

@LOOKUP = common dso_local global i32 0, align 4
@OP_READLINK = common dso_local global i32 0, align 4
@NOFOLLOW = common dso_local global i32 0, align 4
@AUDITVNPATH1 = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@VLNK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@KAUTH_VNODE_READ_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i64, i32, i32*)* @readlinkat_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readlinkat_internal(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.nameidata, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %25 = call i32 @UIO_SIZEOF(i32 1)
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %22, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %23, align 8
  %29 = load i32, i32* @LOOKUP, align 4
  %30 = load i32, i32* @OP_READLINK, align 4
  %31 = load i32, i32* @NOFOLLOW, align 4
  %32 = load i32, i32* @AUDITVNPATH1, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @NDINIT(%struct.nameidata* %21, i32 %29, i32 %30, i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @nameiat(%struct.nameidata* %21, i32 %38)
  store i32 %39, i32* %20, align 4
  %40 = load i32, i32* %20, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %8
  %43 = load i32, i32* %20, align 4
  store i32 %43, i32* %9, align 4
  store i32 1, i32* %24, align 4
  br label %93

44:                                               ; preds = %8
  %45 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %21, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %18, align 8
  %47 = call i32 @nameidone(%struct.nameidata* %21)
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* @UIO_READ, align 4
  %50 = getelementptr inbounds i8, i8* %28, i64 0
  %51 = trunc i64 %26 to i32
  %52 = call i32 @uio_createwithbuffer(i32 1, i32 0, i32 %48, i32 %49, i8* %50, i32 %51)
  store i32 %52, i32* %19, align 4
  %53 = load i32, i32* %19, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i64, i64* %15, align 8
  %56 = call i32 @uio_addiov(i32 %53, i32 %54, i64 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @VLNK, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %44
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %20, align 4
  br label %81

64:                                               ; preds = %44
  %65 = load i32, i32* %20, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %69 = load i32, i32* @KAUTH_VNODE_READ_DATA, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @vnode_authorize(%struct.TYPE_6__* %68, i32* null, i32 %69, i32 %70)
  store i32 %71, i32* %20, align 4
  br label %72

72:                                               ; preds = %67, %64
  %73 = load i32, i32* %20, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @VNOP_READLINK(%struct.TYPE_6__* %76, i32 %77, i32 %78)
  store i32 %79, i32* %20, align 4
  br label %80

80:                                               ; preds = %75, %72
  br label %81

81:                                               ; preds = %80, %62
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %83 = call i32 @vnode_put(%struct.TYPE_6__* %82)
  %84 = load i64, i64* %15, align 8
  %85 = load i32, i32* %19, align 4
  %86 = call i64 @uio_resid(i32 %85)
  %87 = trunc i64 %86 to i32
  %88 = sext i32 %87 to i64
  %89 = sub i64 %84, %88
  %90 = trunc i64 %89 to i32
  %91 = load i32*, i32** %17, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %20, align 4
  store i32 %92, i32* %9, align 4
  store i32 1, i32* %24, align 4
  br label %93

93:                                               ; preds = %81, %42
  %94 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %9, align 4
  ret i32 %95
}

declare dso_local i32 @UIO_SIZEOF(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nameiat(%struct.nameidata*, i32) #1

declare dso_local i32 @nameidone(%struct.nameidata*) #1

declare dso_local i32 @uio_createwithbuffer(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @uio_addiov(i32, i32, i64) #1

declare dso_local i32 @vnode_authorize(%struct.TYPE_6__*, i32*, i32, i32) #1

declare dso_local i32 @VNOP_READLINK(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @vnode_put(%struct.TYPE_6__*) #1

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
