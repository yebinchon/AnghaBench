; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vfs_rootmountalloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vfs_rootmountalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfstable = type { i32, %struct.vfstable* }

@vfsconf = common dso_local global %struct.vfstable* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_rootmountalloc(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vfstable*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.vfstable*, %struct.vfstable** @vfsconf, align 8
  store %struct.vfstable* %9, %struct.vfstable** %8, align 8
  br label %10

10:                                               ; preds = %22, %3
  %11 = load %struct.vfstable*, %struct.vfstable** %8, align 8
  %12 = icmp ne %struct.vfstable* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load %struct.vfstable*, %struct.vfstable** %8, align 8
  %15 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strncmp(i32 %16, i8* %17, i32 4)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %26

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.vfstable*, %struct.vfstable** %8, align 8
  %24 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %23, i32 0, i32 1
  %25 = load %struct.vfstable*, %struct.vfstable** %24, align 8
  store %struct.vfstable* %25, %struct.vfstable** %8, align 8
  br label %10

26:                                               ; preds = %20, %10
  %27 = load %struct.vfstable*, %struct.vfstable** %8, align 8
  %28 = icmp eq %struct.vfstable* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @ENODEV, align 4
  store i32 %30, i32* %4, align 4
  br label %42

31:                                               ; preds = %26
  %32 = load %struct.vfstable*, %struct.vfstable** %8, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @vfs_rootmountalloc_internal(%struct.vfstable* %32, i8* %33)
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @ENOMEM, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %39, %29
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @vfs_rootmountalloc_internal(%struct.vfstable*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
