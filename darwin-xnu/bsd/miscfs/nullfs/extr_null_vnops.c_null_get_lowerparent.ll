; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/nullfs/extr_null_vnops.c_null_get_lowerparent.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/nullfs/extr_null_vnops.c_null_get_lowerparent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode_attr = type { i64 }
%struct.TYPE_4__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@MNTK_PATH_FROM_ID = common dso_local global i32 0, align 4
@va_parentid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64*, i32)* @null_get_lowerparent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_get_lowerparent(i64 %0, i64* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vnode_attr, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i64, i64* %4, align 8
  %12 = call %struct.TYPE_4__* @vnode_mount(i64 %11)
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %9, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @vnode_parent(i64 %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @vnode_get(i64 %18)
  store i32 %19, i32* %7, align 4
  br label %50

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOENT, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MNTK_PATH_FROM_ID, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %50

29:                                               ; preds = %20
  %30 = call i32 @VATTR_INIT(%struct.vnode_attr* %8)
  %31 = load i32, i32* @va_parentid, align 4
  %32 = call i32 @VATTR_WANTED(%struct.vnode_attr* %8, i32 %31)
  %33 = load i64, i64* %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @vnode_getattr(i64 %33, %struct.vnode_attr* %8, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @va_parentid, align 4
  %40 = call i32 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %8, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38, %29
  br label %50

43:                                               ; preds = %38
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %45 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %8, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @VFS_VGET(%struct.TYPE_4__* %44, i32 %47, i64* %10, i32 %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %43, %42, %28, %17
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i64, i64* %10, align 8
  %55 = load i64*, i64** %5, align 8
  store i64 %54, i64* %55, align 8
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local %struct.TYPE_4__* @vnode_mount(i64) #1

declare dso_local i64 @vnode_parent(i64) #1

declare dso_local i32 @vnode_get(i64) #1

declare dso_local i32 @VATTR_INIT(%struct.vnode_attr*) #1

declare dso_local i32 @VATTR_WANTED(%struct.vnode_attr*, i32) #1

declare dso_local i32 @vnode_getattr(i64, %struct.vnode_attr*, i32) #1

declare dso_local i32 @VATTR_IS_SUPPORTED(%struct.vnode_attr*, i32) #1

declare dso_local i32 @VFS_VGET(%struct.TYPE_4__*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
