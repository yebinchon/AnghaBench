; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_faccessat_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_faccessat_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.nameidata = type { %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.vfs_context = type { i32, i32 }

@AT_EACCESS = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@AUDITVNPATH1 = common dso_local global i32 0, align 4
@_DELETE_OK = common dso_local global i32 0, align 4
@WANTPARENT = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@OP_ACCESS = common dso_local global i32 0, align 4
@CN_ALLOWRSRCFORK = common dso_local global i32 0, align 4
@F_OK = common dso_local global i32 0, align 4
@NULLVP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32, i32, i32, i32)* @faccessat_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @faccessat_internal(%struct.TYPE_12__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nameidata, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.vfs_context, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @AT_EACCESS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = call i32 (...) @kauth_cred_get()
  %23 = call i32 @kauth_cred_copy_real(i32 %22)
  %24 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %16, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  br label %30

25:                                               ; preds = %6
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %16, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %16, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @FOLLOW, align 4
  %36 = load i32, i32* @AUDITVNPATH1, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @_DELETE_OK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load i32, i32* @WANTPARENT, align 4
  %44 = load i32, i32* %15, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %15, align 4
  br label %46

46:                                               ; preds = %42, %30
  %47 = load i32, i32* @LOOKUP, align 4
  %48 = load i32, i32* @OP_ACCESS, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @NDINIT(%struct.nameidata* %14, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, %struct.vfs_context* %16)
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @nameiat(%struct.nameidata* %14, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %78

58:                                               ; preds = %46
  %59 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 1
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 0
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @access1(%struct.TYPE_13__* %60, %struct.TYPE_13__* %62, i32 %63, %struct.vfs_context* %16)
  store i32 %64, i32* %13, align 4
  %65 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 1
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = call i32 @vnode_put(%struct.TYPE_13__* %66)
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @_DELETE_OK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %58
  %73 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 0
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = call i32 @vnode_put(%struct.TYPE_13__* %74)
  br label %76

76:                                               ; preds = %72, %58
  %77 = call i32 @nameidone(%struct.nameidata* %14)
  br label %78

78:                                               ; preds = %76, %57
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @AT_EACCESS, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %16, i32 0, i32 0
  %85 = call i32 @kauth_cred_unref(i32* %84)
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i32, i32* %13, align 4
  ret i32 %87
}

declare dso_local i32 @kauth_cred_copy_real(i32) #1

declare dso_local i32 @kauth_cred_get(...) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, i32, %struct.vfs_context*) #1

declare dso_local i32 @nameiat(%struct.nameidata*, i32) #1

declare dso_local i32 @access1(%struct.TYPE_13__*, %struct.TYPE_13__*, i32, %struct.vfs_context*) #1

declare dso_local i32 @vnode_put(%struct.TYPE_13__*) #1

declare dso_local i32 @nameidone(%struct.nameidata*) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
