; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_lookup.c_lookup_validate_creation_path.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_lookup.c_lookup_validate_creation_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, %struct.componentname }
%struct.componentname = type { i32 }

@RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@ISLASTCN = common dso_local global i32 0, align 4
@NAMEI_TRAILINGSLASH = common dso_local global i32 0, align 4
@WILLBEDIR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lookup_validate_creation_path(%struct.nameidata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nameidata*, align 8
  %4 = alloca %struct.componentname*, align 8
  store %struct.nameidata* %0, %struct.nameidata** %3, align 8
  %5 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %6 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %5, i32 0, i32 1
  store %struct.componentname* %6, %struct.componentname** %4, align 8
  %7 = load %struct.componentname*, %struct.componentname** %4, align 8
  %8 = getelementptr inbounds %struct.componentname, %struct.componentname* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @RDONLY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @EROFS, align 4
  store i32 %14, i32* %2, align 4
  br label %39

15:                                               ; preds = %1
  %16 = load %struct.componentname*, %struct.componentname** %4, align 8
  %17 = getelementptr inbounds %struct.componentname, %struct.componentname* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ISLASTCN, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %15
  %23 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %24 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NAMEI_TRAILINGSLASH, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load %struct.componentname*, %struct.componentname** %4, align 8
  %31 = getelementptr inbounds %struct.componentname, %struct.componentname* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @WILLBEDIR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOENT, align 4
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %29, %22, %15
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %36, %13
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
