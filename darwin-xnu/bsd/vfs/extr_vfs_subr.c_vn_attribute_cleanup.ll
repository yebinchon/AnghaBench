; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vn_attribute_cleanup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vn_attribute_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode_attr = type { i32*, i32* }

@va_acl = common dso_local global i32 0, align 4
@VATTR_PREPARE_DEFAULTED_MODE = common dso_local global i32 0, align 4
@va_mode = common dso_local global i32 0, align 4
@VATTR_PREPARE_DEFAULTED_GID = common dso_local global i32 0, align 4
@va_gid = common dso_local global i32 0, align 4
@VATTR_PREPARE_DEFAULTED_UID = common dso_local global i32 0, align 4
@va_uid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vn_attribute_cleanup(%struct.vnode_attr* %0, i32 %1) #0 {
  %3 = alloca %struct.vnode_attr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.vnode_attr* %0, %struct.vnode_attr** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vnode_attr*, %struct.vnode_attr** %3, align 8
  %8 = load i32, i32* @va_acl, align 4
  %9 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %2
  %12 = load %struct.vnode_attr*, %struct.vnode_attr** %3, align 8
  %13 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = load %struct.vnode_attr*, %struct.vnode_attr** %3, align 8
  %16 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %11
  %21 = load %struct.vnode_attr*, %struct.vnode_attr** %3, align 8
  %22 = load i32, i32* @va_acl, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @VATTR_SET(%struct.vnode_attr* %21, i32 %22, i32* %23)
  %25 = load %struct.vnode_attr*, %struct.vnode_attr** %3, align 8
  %26 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %31

27:                                               ; preds = %11
  %28 = load %struct.vnode_attr*, %struct.vnode_attr** %3, align 8
  %29 = load i32, i32* @va_acl, align 4
  %30 = call i32 @VATTR_CLEAR_ACTIVE(%struct.vnode_attr* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %20
  %32 = load i32*, i32** %5, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @kauth_acl_free(i32* %35)
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %37, %2
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @VATTR_PREPARE_DEFAULTED_MODE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.vnode_attr*, %struct.vnode_attr** %3, align 8
  %45 = load i32, i32* @va_mode, align 4
  %46 = call i32 @VATTR_CLEAR_ACTIVE(%struct.vnode_attr* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @VATTR_PREPARE_DEFAULTED_GID, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.vnode_attr*, %struct.vnode_attr** %3, align 8
  %54 = load i32, i32* @va_gid, align 4
  %55 = call i32 @VATTR_CLEAR_ACTIVE(%struct.vnode_attr* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @VATTR_PREPARE_DEFAULTED_UID, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.vnode_attr*, %struct.vnode_attr** %3, align 8
  %63 = load i32, i32* @va_uid, align 4
  %64 = call i32 @VATTR_CLEAR_ACTIVE(%struct.vnode_attr* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %56
  ret void
}

declare dso_local i64 @VATTR_IS_ACTIVE(%struct.vnode_attr*, i32) #1

declare dso_local i32 @VATTR_SET(%struct.vnode_attr*, i32, i32*) #1

declare dso_local i32 @VATTR_CLEAR_ACTIVE(%struct.vnode_attr*, i32) #1

declare dso_local i32 @kauth_acl_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
