; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vnode_setattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vnode_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.vnode_attr = type { i32, i32, i32 }

@VNODE_ATTR_ALL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@va_data_size = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@MNT_IGNORE_OWNERSHIP = common dso_local global i32 0, align 4
@va_uid = common dso_local global i32 0, align 4
@va_gid = common dso_local global i32 0, align 4
@va_acl = common dso_local global i32 0, align 4
@va_uuuid = common dso_local global i32 0, align 4
@va_guuid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"SETATTR - returning ENOTSUP to request to set extended security\00", align 1
@ENOTSUP = common dso_local global i32 0, align 4
@va_flags = common dso_local global i32 0, align 4
@SF_SUPPORTED = common dso_local global i32 0, align 4
@UF_SETTABLE = common dso_local global i32 0, align 4
@FSE_ARG_DONE = common dso_local global i32 0, align 4
@FSE_ARG_VNODE = common dso_local global i32 0, align 4
@FSE_CHOWN = common dso_local global i32 0, align 4
@FSE_STAT_CHANGED = common dso_local global i32 0, align 4
@PERMISSION_BITS = common dso_local global i32 0, align 4
@VISNAMEDSTREAM = common dso_local global i32 0, align 4
@VNODE_ATTR_RDONLY = common dso_local global i32 0, align 4
@VNODE_ATTR_va_data_size = common dso_local global i32 0, align 4
@va_access_time = common dso_local global i32 0, align 4
@va_backup_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnode_setattr(%struct.TYPE_10__* %0, %struct.vnode_attr* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.vnode_attr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.vnode_attr* %1, %struct.vnode_attr** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %10 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @VNODE_ATTR_ALL, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %130

18:                                               ; preds = %3
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = call i64 @vfs_isrdonly(%struct.TYPE_11__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @EROFS, align 4
  store i32 %25, i32* %8, align 4
  br label %128

26:                                               ; preds = %18
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = call i64 @vnode_isswap(%struct.TYPE_10__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = call i64 (...) @vfs_context_kernel()
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @EPERM, align 4
  store i32 %35, i32* %8, align 4
  br label %128

36:                                               ; preds = %30, %26
  %37 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %38 = load i32, i32* @va_data_size, align 4
  %39 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %36
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %48 [
    i32 128, label %45
    i32 129, label %46
  ]

45:                                               ; preds = %41
  br label %58

46:                                               ; preds = %41
  %47 = load i32, i32* @EISDIR, align 4
  store i32 %47, i32* %8, align 4
  br label %128

48:                                               ; preds = %41
  %49 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %50 = load i32, i32* @va_data_size, align 4
  %51 = call i32 @VATTR_CLEAR_ACTIVE(%struct.vnode_attr* %49, i32 %50)
  %52 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %53 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %58

57:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %130

58:                                               ; preds = %56, %45
  br label %59

59:                                               ; preds = %58, %36
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MNT_IGNORE_OWNERSHIP, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %59
  %69 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %70 = load i32, i32* @va_uid, align 4
  %71 = call i32 @VATTR_CLEAR_ACTIVE(%struct.vnode_attr* %69, i32 %70)
  %72 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %73 = load i32, i32* @va_gid, align 4
  %74 = call i32 @VATTR_CLEAR_ACTIVE(%struct.vnode_attr* %72, i32 %73)
  br label %75

75:                                               ; preds = %68, %59
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = call i32 @vnode_mount(%struct.TYPE_10__* %76)
  %78 = call i32 @vfs_extendedsecurity(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %98, label %80

80:                                               ; preds = %75
  %81 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %82 = load i32, i32* @va_acl, align 4
  %83 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %80
  %86 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %87 = load i32, i32* @va_uuuid, align 4
  %88 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %92 = load i32, i32* @va_guuid, align 4
  %93 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90, %85, %80
  %96 = call i32 @KAUTH_DEBUG(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %97 = load i32, i32* @ENOTSUP, align 4
  store i32 %97, i32* %8, align 4
  br label %128

98:                                               ; preds = %90, %75
  %99 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %100 = load i32, i32* @va_flags, align 4
  %101 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load i32, i32* @SF_SUPPORTED, align 4
  %105 = load i32, i32* @UF_SETTABLE, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %108 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %103, %98
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %113 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %114 = load i64, i64* %7, align 8
  %115 = call i32 @VNOP_SETATTR(%struct.TYPE_10__* %112, %struct.vnode_attr* %113, i64 %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %111
  %119 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %120 = call i32 @VATTR_ALL_SUPPORTED(%struct.vnode_attr* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %124 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %125 = load i64, i64* %7, align 8
  %126 = call i32 @vnode_setattr_fallback(%struct.TYPE_10__* %123, %struct.vnode_attr* %124, i64 %125)
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %122, %118, %111
  br label %128

128:                                              ; preds = %127, %95, %46, %34, %24
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %128, %57, %16
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i64 @vfs_isrdonly(%struct.TYPE_11__*) #1

declare dso_local i64 @vnode_isswap(%struct.TYPE_10__*) #1

declare dso_local i64 @vfs_context_kernel(...) #1

declare dso_local i64 @VATTR_IS_ACTIVE(%struct.vnode_attr*, i32) #1

declare dso_local i32 @VATTR_CLEAR_ACTIVE(%struct.vnode_attr*, i32) #1

declare dso_local i32 @vfs_extendedsecurity(i32) #1

declare dso_local i32 @vnode_mount(%struct.TYPE_10__*) #1

declare dso_local i32 @KAUTH_DEBUG(i8*) #1

declare dso_local i32 @VNOP_SETATTR(%struct.TYPE_10__*, %struct.vnode_attr*, i64) #1

declare dso_local i32 @VATTR_ALL_SUPPORTED(%struct.vnode_attr*) #1

declare dso_local i32 @vnode_setattr_fallback(%struct.TYPE_10__*, %struct.vnode_attr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
