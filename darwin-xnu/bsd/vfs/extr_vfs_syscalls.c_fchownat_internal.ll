; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_fchownat_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_fchownat_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode_attr = type { i32 }
%struct.nameidata = type { i32 }

@owner = common dso_local global i32 0, align 4
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@NOFOLLOW = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@OP_SETATTR = common dso_local global i32 0, align 4
@AUDITVNPATH1 = common dso_local global i32 0, align 4
@VNOVAL = common dso_local global i64 0, align 8
@va_uid = common dso_local global i32 0, align 4
@va_gid = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i32)* @fchownat_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fchownat_internal(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.vnode_attr, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.nameidata, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load i32, i32* @owner, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @AUDIT_ARG(i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %7
  %31 = load i32, i32* @NOFOLLOW, align 4
  br label %34

32:                                               ; preds = %7
  %33 = load i32, i32* @FOLLOW, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %20, align 4
  %36 = load i32, i32* @LOOKUP, align 4
  %37 = load i32, i32* @OP_SETATTR, align 4
  %38 = load i32, i32* %20, align 4
  %39 = load i32, i32* @AUDITVNPATH1, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @NDINIT(%struct.nameidata* %19, i32 %36, i32 %37, i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @nameiat(%struct.nameidata* %19, i32 %45)
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %18, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = load i32, i32* %18, align 4
  store i32 %50, i32* %8, align 4
  br label %103

51:                                               ; preds = %34
  %52 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %16, align 4
  %54 = call i32 @nameidone(%struct.nameidata* %19)
  %55 = call i32 @VATTR_INIT(%struct.vnode_attr* %17)
  %56 = load i32, i32* %12, align 4
  %57 = load i64, i64* @VNOVAL, align 8
  %58 = trunc i64 %57 to i32
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load i32, i32* @va_uid, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @VATTR_SET(%struct.vnode_attr* %17, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %51
  %65 = load i32, i32* %13, align 4
  %66 = load i64, i64* @VNOVAL, align 8
  %67 = trunc i64 %66 to i32
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @va_gid, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @VATTR_SET(%struct.vnode_attr* %17, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %64
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @vnode_authattr(i32 %74, %struct.vnode_attr* %17, i64* %21, i32 %75)
  store i32 %76, i32* %18, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %93

79:                                               ; preds = %73
  %80 = load i64, i64* %21, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i32, i32* %16, align 4
  %84 = load i64, i64* %21, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @vnode_authorize(i32 %83, i32* null, i64 %84, i32 %85)
  store i32 %86, i32* %18, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %93

89:                                               ; preds = %82, %79
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @vnode_setattr(i32 %90, %struct.vnode_attr* %17, i32 %91)
  store i32 %92, i32* %18, align 4
  br label %93

93:                                               ; preds = %89, %88, %78
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* @EACCES, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* @EPERM, align 4
  store i32 %98, i32* %18, align 4
  br label %99

99:                                               ; preds = %97, %93
  %100 = load i32, i32* %16, align 4
  %101 = call i32 @vnode_put(i32 %100)
  %102 = load i32, i32* %18, align 4
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %99, %49
  %104 = load i32, i32* %8, align 4
  ret i32 %104
}

declare dso_local i32 @AUDIT_ARG(i32, i32, i32) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nameiat(%struct.nameidata*, i32) #1

declare dso_local i32 @nameidone(%struct.nameidata*) #1

declare dso_local i32 @VATTR_INIT(%struct.vnode_attr*) #1

declare dso_local i32 @VATTR_SET(%struct.vnode_attr*, i32, i32) #1

declare dso_local i32 @vnode_authattr(i32, %struct.vnode_attr*, i64*, i32) #1

declare dso_local i32 @vnode_authorize(i32, i32*, i64, i32) #1

declare dso_local i32 @vnode_setattr(i32, %struct.vnode_attr*, i32) #1

declare dso_local i32 @vnode_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
