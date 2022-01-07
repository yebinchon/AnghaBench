; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_chmodat.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_chmodat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode_attr = type { i32 }
%struct.nameidata = type { i32 }

@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@NOFOLLOW = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@OP_SETATTR = common dso_local global i32 0, align 4
@AUDITVNPATH1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.vnode_attr*, i32, i32, i32)* @chmodat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chmodat(i32 %0, i32 %1, %struct.vnode_attr* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vnode_attr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nameidata, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.vnode_attr* %2, %struct.vnode_attr** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @NOFOLLOW, align 4
  br label %25

23:                                               ; preds = %6
  %24 = load i32, i32* @FOLLOW, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* @LOOKUP, align 4
  %28 = load i32, i32* @OP_SETATTR, align 4
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* @AUDITVNPATH1, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @NDINIT(%struct.nameidata* %14, i32 %27, i32 %28, i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @nameiat(%struct.nameidata* %14, i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i32, i32* %16, align 4
  store i32 %40, i32* %7, align 4
  br label %52

41:                                               ; preds = %25
  %42 = load i32, i32* %8, align 4
  %43 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.vnode_attr*, %struct.vnode_attr** %10, align 8
  %46 = call i32 @chmod_vnode(i32 %42, i32 %44, %struct.vnode_attr* %45)
  store i32 %46, i32* %16, align 4
  %47 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @vnode_put(i32 %48)
  %50 = call i32 @nameidone(%struct.nameidata* %14)
  %51 = load i32, i32* %16, align 4
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %41, %39
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nameiat(%struct.nameidata*, i32) #1

declare dso_local i32 @chmod_vnode(i32, i32, %struct.vnode_attr*) #1

declare dso_local i32 @vnode_put(i32) #1

declare dso_local i32 @nameidone(%struct.nameidata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
