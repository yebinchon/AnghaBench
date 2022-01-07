; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_open_extended.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_open_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.filedesc* }
%struct.filedesc = type { i32 }
%struct.open_extended_args = type { i64, i32, i32, i32, i32*, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.vnode_attr = type { i32 }
%struct.nameidata = type { i32 }

@owner = common dso_local global i32 0, align 4
@USER_ADDR_NULL = common dso_local global i64 0, align 8
@ALLPERMS = common dso_local global i32 0, align 4
@S_ISTXT = common dso_local global i32 0, align 4
@va_mode = common dso_local global i32 0, align 4
@KAUTH_UID_NONE = common dso_local global i32* null, align 8
@va_uid = common dso_local global i32 0, align 4
@KAUTH_GID_NONE = common dso_local global i32* null, align 8
@va_gid = common dso_local global i32 0, align 4
@va_acl = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@OP_OPEN = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@AUDITVNPATH1 = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@fileproc_alloc_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @open_extended(%struct.TYPE_6__* %0, %struct.open_extended_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.open_extended_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.filedesc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.vnode_attr, align 4
  %12 = alloca %struct.nameidata, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.open_extended_args* %1, %struct.open_extended_args** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.filedesc*, %struct.filedesc** %15, align 8
  store %struct.filedesc* %16, %struct.filedesc** %8, align 8
  %17 = load i32, i32* @owner, align 4
  %18 = load %struct.open_extended_args*, %struct.open_extended_args** %6, align 8
  %19 = getelementptr inbounds %struct.open_extended_args, %struct.open_extended_args* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.open_extended_args*, %struct.open_extended_args** %6, align 8
  %22 = getelementptr inbounds %struct.open_extended_args, %struct.open_extended_args* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @AUDIT_ARG(i32 %17, i32* %20, i32* %23)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  %25 = load %struct.open_extended_args*, %struct.open_extended_args** %6, align 8
  %26 = getelementptr inbounds %struct.open_extended_args, %struct.open_extended_args* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @USER_ADDR_NULL, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %3
  %31 = load %struct.open_extended_args*, %struct.open_extended_args** %6, align 8
  %32 = getelementptr inbounds %struct.open_extended_args, %struct.open_extended_args* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @kauth_copyinfilesec(i64 %33, %struct.TYPE_7__** %10)
  store i32 %34, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %116

38:                                               ; preds = %30, %3
  %39 = call i32 @VATTR_INIT(%struct.vnode_attr* %11)
  %40 = load %struct.open_extended_args*, %struct.open_extended_args** %6, align 8
  %41 = getelementptr inbounds %struct.open_extended_args, %struct.open_extended_args* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %44 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %42, %46
  %48 = load i32, i32* @ALLPERMS, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @S_ISTXT, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* @va_mode, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @VATTR_SET(%struct.vnode_attr* %11, i32 %53, i32 %54)
  %56 = load %struct.open_extended_args*, %struct.open_extended_args** %6, align 8
  %57 = getelementptr inbounds %struct.open_extended_args, %struct.open_extended_args* %56, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = load i32*, i32** @KAUTH_UID_NONE, align 8
  %60 = icmp ne i32* %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %38
  %62 = load i32, i32* @va_uid, align 4
  %63 = load %struct.open_extended_args*, %struct.open_extended_args** %6, align 8
  %64 = getelementptr inbounds %struct.open_extended_args, %struct.open_extended_args* %63, i32 0, i32 5
  %65 = load i32*, i32** %64, align 8
  %66 = ptrtoint i32* %65 to i32
  %67 = call i32 @VATTR_SET(%struct.vnode_attr* %11, i32 %62, i32 %66)
  br label %68

68:                                               ; preds = %61, %38
  %69 = load %struct.open_extended_args*, %struct.open_extended_args** %6, align 8
  %70 = getelementptr inbounds %struct.open_extended_args, %struct.open_extended_args* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = load i32*, i32** @KAUTH_GID_NONE, align 8
  %73 = icmp ne i32* %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load i32, i32* @va_gid, align 4
  %76 = load %struct.open_extended_args*, %struct.open_extended_args** %6, align 8
  %77 = getelementptr inbounds %struct.open_extended_args, %struct.open_extended_args* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = ptrtoint i32* %78 to i32
  %80 = call i32 @VATTR_SET(%struct.vnode_attr* %11, i32 %75, i32 %79)
  br label %81

81:                                               ; preds = %74, %68
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %83 = icmp ne %struct.TYPE_7__* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32, i32* @va_acl, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = ptrtoint i32* %87 to i32
  %89 = call i32 @VATTR_SET(%struct.vnode_attr* %11, i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %84, %81
  %91 = load i32, i32* @LOOKUP, align 4
  %92 = load i32, i32* @OP_OPEN, align 4
  %93 = load i32, i32* @FOLLOW, align 4
  %94 = load i32, i32* @AUDITVNPATH1, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @UIO_USERSPACE, align 4
  %97 = load %struct.open_extended_args*, %struct.open_extended_args** %6, align 8
  %98 = getelementptr inbounds %struct.open_extended_args, %struct.open_extended_args* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (...) @vfs_context_current()
  %101 = call i32 @NDINIT(%struct.nameidata* %12, i32 %91, i32 %92, i32 %95, i32 %96, i32 %99, i32 %100)
  %102 = call i32 (...) @vfs_context_current()
  %103 = load %struct.open_extended_args*, %struct.open_extended_args** %6, align 8
  %104 = getelementptr inbounds %struct.open_extended_args, %struct.open_extended_args* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @fileproc_alloc_init, align 4
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @open1(i32 %102, %struct.nameidata* %12, i32 %105, %struct.vnode_attr* %11, i32 %106, i32* null, i32* %107)
  store i32 %108, i32* %9, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %110 = icmp ne %struct.TYPE_7__* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %90
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %113 = call i32 @kauth_filesec_free(%struct.TYPE_7__* %112)
  br label %114

114:                                              ; preds = %111, %90
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %114, %36
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @AUDIT_ARG(i32, i32*, i32*) #1

declare dso_local i32 @kauth_copyinfilesec(i64, %struct.TYPE_7__**) #1

declare dso_local i32 @VATTR_INIT(%struct.vnode_attr*) #1

declare dso_local i32 @VATTR_SET(%struct.vnode_attr*, i32, i32) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i32 @open1(i32, %struct.nameidata*, i32, %struct.vnode_attr*, i32, i32*, i32*) #1

declare dso_local i32 @kauth_filesec_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
