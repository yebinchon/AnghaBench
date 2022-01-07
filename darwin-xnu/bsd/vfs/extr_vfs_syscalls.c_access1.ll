; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_access1.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_access1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_ACCESS_EXTENDED_MASK = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@KAUTH_VNODE_READ_DATA = common dso_local global i32 0, align 4
@W_OK = common dso_local global i32 0, align 4
@KAUTH_VNODE_ADD_FILE = common dso_local global i32 0, align 4
@KAUTH_VNODE_ADD_SUBDIRECTORY = common dso_local global i32 0, align 4
@KAUTH_VNODE_WRITE_DATA = common dso_local global i32 0, align 4
@X_OK = common dso_local global i32 0, align 4
@KAUTH_VNODE_SEARCH = common dso_local global i32 0, align 4
@KAUTH_VNODE_EXECUTE = common dso_local global i32 0, align 4
@KAUTH_VNODE_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @access1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access1(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @_ACCESS_EXTENDED_MASK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %63, label %15

15:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @R_OK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @KAUTH_VNODE_READ_DATA, align 4
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @W_OK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @vnode_isdir(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* @KAUTH_VNODE_ADD_FILE, align 4
  %35 = load i32, i32* @KAUTH_VNODE_ADD_SUBDIRECTORY, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %43

39:                                               ; preds = %29
  %40 = load i32, i32* @KAUTH_VNODE_WRITE_DATA, align 4
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %39, %33
  br label %44

44:                                               ; preds = %43, %24
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @X_OK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @vnode_isdir(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @KAUTH_VNODE_SEARCH, align 4
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %61

57:                                               ; preds = %49
  %58 = load i32, i32* @KAUTH_VNODE_EXECUTE, align 4
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %57, %53
  br label %62

62:                                               ; preds = %61, %44
  br label %66

63:                                               ; preds = %4
  %64 = load i32, i32* %7, align 4
  %65 = ashr i32 %64, 8
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %63, %62
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @KAUTH_VNODE_ACCESS, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @vnode_authorize(i32 %70, i32 %71, i32 %74, i32 %75)
  store i32 %76, i32* %10, align 4
  br label %78

77:                                               ; preds = %66
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %77, %69
  %79 = load i32, i32* %10, align 4
  ret i32 %79
}

declare dso_local i64 @vnode_isdir(i32) #1

declare dso_local i32 @vnode_authorize(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
