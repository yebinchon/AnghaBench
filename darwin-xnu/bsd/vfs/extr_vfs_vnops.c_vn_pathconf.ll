; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_vn_pathconf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_vn_pathconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfs_attr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@f_capabilities = common dso_local global i32 0, align 4
@VOL_CAPABILITIES_INTERFACES = common dso_local global i64 0, align 8
@VOL_CAP_INT_EXTENDED_ATTR = common dso_local global i32 0, align 4
@AD_XATTR_SIZE_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_pathconf(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vfs_attr, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %89 [
    i32 136, label %12
    i32 137, label %20
    i32 140, label %25
    i32 139, label %27
    i32 138, label %29
    i32 135, label %31
    i32 134, label %33
    i32 132, label %35
    i32 133, label %37
    i32 131, label %39
    i32 130, label %41
    i32 129, label %43
    i32 128, label %45
  ]

12:                                               ; preds = %4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @vnode_mount(i32 %13)
  %15 = call i32 @vfs_extendedsecurity(i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  br label %95

20:                                               ; preds = %4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @vnode_mount(i32 %21)
  %23 = call i32 @vfs_authopaque(i32 %22)
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  br label %95

25:                                               ; preds = %4
  %26 = load i32*, i32** %7, align 8
  store i32 1, i32* %26, align 4
  br label %95

27:                                               ; preds = %4
  %28 = load i32*, i32** %7, align 8
  store i32 1, i32* %28, align 4
  br label %95

29:                                               ; preds = %4
  %30 = load i32*, i32** %7, align 8
  store i32 1, i32* %30, align 4
  br label %95

31:                                               ; preds = %4
  %32 = load i32*, i32** %7, align 8
  store i32 0, i32* %32, align 4
  br label %95

33:                                               ; preds = %4
  %34 = load i32*, i32** %7, align 8
  store i32 4096, i32* %34, align 4
  br label %95

35:                                               ; preds = %4
  %36 = load i32*, i32** %7, align 8
  store i32 4096, i32* %36, align 4
  br label %95

37:                                               ; preds = %4
  %38 = load i32*, i32** %7, align 8
  store i32 65536, i32* %38, align 4
  br label %95

39:                                               ; preds = %4
  %40 = load i32*, i32** %7, align 8
  store i32 4096, i32* %40, align 4
  br label %95

41:                                               ; preds = %4
  %42 = load i32*, i32** %7, align 8
  store i32 255, i32* %42, align 4
  br label %95

43:                                               ; preds = %4
  %44 = load i32*, i32** %7, align 8
  store i32 0, i32* %44, align 4
  br label %95

45:                                               ; preds = %4
  %46 = call i32 @memset(%struct.vfs_attr* %10, i32 0, i32 16)
  %47 = call i32 @VFSATTR_INIT(%struct.vfs_attr* %10)
  %48 = load i32, i32* @f_capabilities, align 4
  %49 = call i32 @VFSATTR_WANTED(%struct.vfs_attr* %10, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @vnode_mount(i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @vfs_getattr(i32 %51, %struct.vfs_attr* %10, i32 %52)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %85

55:                                               ; preds = %45
  %56 = load i32, i32* @f_capabilities, align 4
  %57 = call i32 @VFSATTR_IS_SUPPORTED(%struct.vfs_attr* %10, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.vfs_attr, %struct.vfs_attr* %10, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @VOL_CAPABILITIES_INTERFACES, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @VOL_CAP_INT_EXTENDED_ATTR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.vfs_attr, %struct.vfs_attr* %10, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @VOL_CAPABILITIES_INTERFACES, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @VOL_CAP_INT_EXTENDED_ATTR, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %69
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @VNOP_PATHCONF(i32 %80, i32 %81, i32* %82, i32 %83)
  store i32 %84, i32* %9, align 4
  br label %88

85:                                               ; preds = %69, %59, %55, %45
  %86 = load i32, i32* @AD_XATTR_SIZE_BITS, align 4
  %87 = load i32*, i32** %7, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %79
  br label %95

89:                                               ; preds = %4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @VNOP_PATHCONF(i32 %90, i32 %91, i32* %92, i32 %93)
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %89, %88, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %20, %12
  %96 = load i32, i32* %9, align 4
  ret i32 %96
}

declare dso_local i32 @vfs_extendedsecurity(i32) #1

declare dso_local i32 @vnode_mount(i32) #1

declare dso_local i32 @vfs_authopaque(i32) #1

declare dso_local i32 @memset(%struct.vfs_attr*, i32, i32) #1

declare dso_local i32 @VFSATTR_INIT(%struct.vfs_attr*) #1

declare dso_local i32 @VFSATTR_WANTED(%struct.vfs_attr*, i32) #1

declare dso_local i32 @vfs_getattr(i32, %struct.vfs_attr*, i32) #1

declare dso_local i32 @VFSATTR_IS_SUPPORTED(%struct.vfs_attr*, i32) #1

declare dso_local i32 @VNOP_PATHCONF(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
