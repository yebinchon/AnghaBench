; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_authorize_checkimmutable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_authorize_checkimmutable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode_attr = type { i32 }

@KAUTH_VNODE_WRITE_DATA = common dso_local global i32 0, align 4
@KAUTH_VNODE_WRITE_RIGHTS = common dso_local global i32 0, align 4
@KAUTH_VNODE_WRITE_EXTATTRIBUTES = common dso_local global i32 0, align 4
@MNT_NOUSERXATTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"%p    DENIED - filesystem disallowed extended attributes\00", align 1
@vp = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@VDIR = common dso_local global i32 0, align 4
@KAUTH_VNODE_ADD_FILE = common dso_local global i32 0, align 4
@KAUTH_VNODE_ADD_SUBDIRECTORY = common dso_local global i32 0, align 4
@KAUTH_VNODE_APPEND_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%p    DENIED - file is immutable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.vnode_attr*, i32, i32)* @vnode_authorize_checkimmutable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnode_authorize_checkimmutable(i32* %0, %struct.vnode_attr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vnode_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.vnode_attr* %1, %struct.vnode_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %12 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %19 [
    i32 128, label %14
    i32 129, label %14
    i32 131, label %14
    i32 130, label %14
  ]

14:                                               ; preds = %4, %4, %4, %4
  %15 = load i32, i32* @KAUTH_VNODE_WRITE_DATA, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %7, align 4
  br label %20

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %19, %14
  store i32 0, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @KAUTH_VNODE_WRITE_RIGHTS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %82

25:                                               ; preds = %20
  %26 = load i32*, i32** %5, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @KAUTH_VNODE_WRITE_EXTATTRIBUTES, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @vfs_flags(i32* %34)
  %36 = load i32, i32* @MNT_NOUSERXATTR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* @vp, align 4
  %41 = call i32 @KAUTH_DEBUG(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EACCES, align 4
  store i32 %42, i32* %9, align 4
  br label %83

43:                                               ; preds = %33, %28
  br label %44

44:                                               ; preds = %43, %25
  store i32 0, i32* %10, align 4
  %45 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %46 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @VDIR, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @KAUTH_VNODE_ADD_FILE, align 4
  %53 = load i32, i32* @KAUTH_VNODE_ADD_SUBDIRECTORY, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @KAUTH_VNODE_WRITE_EXTATTRIBUTES, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %51, %56
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  store i32 1, i32* %10, align 4
  br label %61

61:                                               ; preds = %60, %50
  br label %72

62:                                               ; preds = %44
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @KAUTH_VNODE_APPEND_DATA, align 4
  %65 = load i32, i32* @KAUTH_VNODE_WRITE_EXTATTRIBUTES, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 1, i32* %10, align 4
  br label %71

71:                                               ; preds = %70, %62
  br label %72

72:                                               ; preds = %71, %61
  %73 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @vnode_immutable(%struct.vnode_attr* %73, i32 %74, i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* @vp, align 4
  %80 = call i32 @KAUTH_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  br label %83

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %20
  br label %83

83:                                               ; preds = %82, %78, %39
  %84 = load i32, i32* %9, align 4
  ret i32 %84
}

declare dso_local i32 @vfs_flags(i32*) #1

declare dso_local i32 @KAUTH_DEBUG(i8*, i32) #1

declare dso_local i32 @vnode_immutable(%struct.vnode_attr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
