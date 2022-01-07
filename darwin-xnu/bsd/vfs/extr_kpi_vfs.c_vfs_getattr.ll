; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vfs_getattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vfs_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfs_attr = type { i32 }

@f_create_time = common dso_local global i32 0, align 4
@f_modify_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_getattr(i32 %0, %struct.vfs_attr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vfs_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.vfs_attr* %1, %struct.vfs_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.vfs_attr*, %struct.vfs_attr** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @VFS_GETATTR(i32 %9, %struct.vfs_attr* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %40

16:                                               ; preds = %3
  %17 = load %struct.vfs_attr*, %struct.vfs_attr** %6, align 8
  %18 = load i32, i32* @f_create_time, align 4
  %19 = call i64 @VFSATTR_IS_SUPPORTED(%struct.vfs_attr* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = load %struct.vfs_attr*, %struct.vfs_attr** %6, align 8
  %23 = load i32, i32* @f_modify_time, align 4
  %24 = call i64 @VFSATTR_IS_ACTIVE(%struct.vfs_attr* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load %struct.vfs_attr*, %struct.vfs_attr** %6, align 8
  %28 = load i32, i32* @f_modify_time, align 4
  %29 = call i64 @VFSATTR_IS_SUPPORTED(%struct.vfs_attr* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = load %struct.vfs_attr*, %struct.vfs_attr** %6, align 8
  %33 = load i32, i32* @f_modify_time, align 4
  %34 = load %struct.vfs_attr*, %struct.vfs_attr** %6, align 8
  %35 = getelementptr inbounds %struct.vfs_attr, %struct.vfs_attr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @VFSATTR_RETURN(%struct.vfs_attr* %32, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %31, %26, %21
  br label %39

39:                                               ; preds = %38, %16
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %14
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @VFS_GETATTR(i32, %struct.vfs_attr*, i32) #1

declare dso_local i64 @VFSATTR_IS_SUPPORTED(%struct.vfs_attr*, i32) #1

declare dso_local i64 @VFSATTR_IS_ACTIVE(%struct.vfs_attr*, i32) #1

declare dso_local i32 @VFSATTR_RETURN(%struct.vfs_attr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
