; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_attr_authorize_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_attr_authorize_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode_attr = type { i32 }

@va_type = common dso_local global i32 0, align 4
@va_mode = common dso_local global i32 0, align 4
@va_flags = common dso_local global i32 0, align 4
@KAUTH_VNODE_DELETE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@va_uid = common dso_local global i32 0, align 4
@va_gid = common dso_local global i32 0, align 4
@va_acl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnode_attr_authorize_init(%struct.vnode_attr* %0, %struct.vnode_attr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode_attr*, align 8
  %7 = alloca %struct.vnode_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vnode_attr* %0, %struct.vnode_attr** %6, align 8
  store %struct.vnode_attr* %1, %struct.vnode_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %11 = call i32 @VATTR_INIT(%struct.vnode_attr* %10)
  %12 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %13 = load i32, i32* @va_type, align 4
  %14 = call i32 @VATTR_WANTED(%struct.vnode_attr* %12, i32 %13)
  %15 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %16 = load i32, i32* @va_mode, align 4
  %17 = call i32 @VATTR_WANTED(%struct.vnode_attr* %15, i32 %16)
  %18 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %19 = load i32, i32* @va_flags, align 4
  %20 = call i32 @VATTR_WANTED(%struct.vnode_attr* %18, i32 %19)
  %21 = load %struct.vnode_attr*, %struct.vnode_attr** %7, align 8
  %22 = icmp ne %struct.vnode_attr* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %4
  %24 = load %struct.vnode_attr*, %struct.vnode_attr** %7, align 8
  %25 = call i32 @VATTR_INIT(%struct.vnode_attr* %24)
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @KAUTH_VNODE_DELETE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load %struct.vnode_attr*, %struct.vnode_attr** %7, align 8
  %32 = load i32, i32* @va_type, align 4
  %33 = call i32 @VATTR_WANTED(%struct.vnode_attr* %31, i32 %32)
  %34 = load %struct.vnode_attr*, %struct.vnode_attr** %7, align 8
  %35 = load i32, i32* @va_mode, align 4
  %36 = call i32 @VATTR_WANTED(%struct.vnode_attr* %34, i32 %35)
  %37 = load %struct.vnode_attr*, %struct.vnode_attr** %7, align 8
  %38 = load i32, i32* @va_flags, align 4
  %39 = call i32 @VATTR_WANTED(%struct.vnode_attr* %37, i32 %38)
  br label %40

40:                                               ; preds = %30, %23
  br label %49

41:                                               ; preds = %4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @KAUTH_VNODE_DELETE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %5, align 4
  br label %82

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %40
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @vfs_context_issuser(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %81, label %53

53:                                               ; preds = %49
  %54 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %55 = load i32, i32* @va_uid, align 4
  %56 = call i32 @VATTR_WANTED(%struct.vnode_attr* %54, i32 %55)
  %57 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %58 = load i32, i32* @va_gid, align 4
  %59 = call i32 @VATTR_WANTED(%struct.vnode_attr* %57, i32 %58)
  %60 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %61 = load i32, i32* @va_acl, align 4
  %62 = call i32 @VATTR_WANTED(%struct.vnode_attr* %60, i32 %61)
  %63 = load %struct.vnode_attr*, %struct.vnode_attr** %7, align 8
  %64 = icmp ne %struct.vnode_attr* %63, null
  br i1 %64, label %65, label %80

65:                                               ; preds = %53
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @KAUTH_VNODE_DELETE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load %struct.vnode_attr*, %struct.vnode_attr** %7, align 8
  %72 = load i32, i32* @va_uid, align 4
  %73 = call i32 @VATTR_WANTED(%struct.vnode_attr* %71, i32 %72)
  %74 = load %struct.vnode_attr*, %struct.vnode_attr** %7, align 8
  %75 = load i32, i32* @va_gid, align 4
  %76 = call i32 @VATTR_WANTED(%struct.vnode_attr* %74, i32 %75)
  %77 = load %struct.vnode_attr*, %struct.vnode_attr** %7, align 8
  %78 = load i32, i32* @va_acl, align 4
  %79 = call i32 @VATTR_WANTED(%struct.vnode_attr* %77, i32 %78)
  br label %80

80:                                               ; preds = %70, %65, %53
  br label %81

81:                                               ; preds = %80, %49
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %81, %46
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @VATTR_INIT(%struct.vnode_attr*) #1

declare dso_local i32 @VATTR_WANTED(%struct.vnode_attr*, i32) #1

declare dso_local i32 @vfs_context_issuser(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
