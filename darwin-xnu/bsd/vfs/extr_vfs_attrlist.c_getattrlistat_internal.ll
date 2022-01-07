; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_getattrlistat_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_getattrlistat_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attrlist = type { i32 }
%struct.nameidata = type { i32 }

@FSOPT_NOFOLLOW = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@AUDITVNPATH1 = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@OP_GETATTR = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.attrlist*, i32, i64, i32, i32, i32, i32)* @getattrlistat_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getattrlistat_internal(i32 %0, i32 %1, %struct.attrlist* %2, i32 %3, i64 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.attrlist*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.nameidata, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store %struct.attrlist* %2, %struct.attrlist** %13, align 8
  store i32 %3, i32* %14, align 4
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 0, i32* %22, align 4
  %24 = load i32, i32* %16, align 4
  %25 = load i32, i32* @FSOPT_NOFOLLOW, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %9
  %29 = load i32, i32* @FOLLOW, align 4
  %30 = load i32, i32* %22, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %22, align 4
  br label %32

32:                                               ; preds = %28, %9
  %33 = load i32, i32* @AUDITVNPATH1, align 4
  %34 = load i32, i32* %22, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %22, align 4
  %36 = load i32, i32* @LOOKUP, align 4
  %37 = load i32, i32* @OP_GETATTR, align 4
  %38 = load i32, i32* %22, align 4
  %39 = load i32, i32* %18, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @NDINIT(%struct.nameidata* %20, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %19, align 4
  %44 = call i32 @nameiat(%struct.nameidata* %20, i32 %43)
  store i32 %44, i32* %23, align 4
  %45 = load i32, i32* %23, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %32
  %48 = load i32, i32* %23, align 4
  store i32 %48, i32* %10, align 4
  br label %65

49:                                               ; preds = %32
  %50 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %20, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %21, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %21, align 4
  %54 = load %struct.attrlist*, %struct.attrlist** %13, align 8
  %55 = load i32, i32* %14, align 4
  %56 = load i64, i64* %15, align 8
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* @NOCRED, align 4
  %60 = call i32 @getattrlist_internal(i32 %52, i32 %53, %struct.attrlist* %54, i32 %55, i64 %56, i32 %57, i32 %58, i32* null, i32 %59)
  store i32 %60, i32* %23, align 4
  %61 = call i32 @nameidone(%struct.nameidata* %20)
  %62 = load i32, i32* %21, align 4
  %63 = call i32 @vnode_put(i32 %62)
  %64 = load i32, i32* %23, align 4
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %49, %47
  %66 = load i32, i32* %10, align 4
  ret i32 %66
}

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nameiat(%struct.nameidata*, i32) #1

declare dso_local i32 @getattrlist_internal(i32, i32, %struct.attrlist*, i32, i64, i32, i32, i32*, i32) #1

declare dso_local i32 @nameidone(%struct.nameidata*) #1

declare dso_local i32 @vnode_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
