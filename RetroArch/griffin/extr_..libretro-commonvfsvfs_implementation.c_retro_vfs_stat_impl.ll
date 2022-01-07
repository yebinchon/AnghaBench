; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonvfsvfs_implementation.c_retro_vfs_stat_impl.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonvfsvfs_implementation.c_retro_vfs_stat_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64 }

@RETRO_VFS_STAT_IS_VALID = common dso_local global i32 0, align 4
@RETRO_VFS_STAT_IS_DIRECTORY = common dso_local global i32 0, align 4
@RETRO_VFS_STAT_IS_CHARACTER_SPECIAL = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@INVALID_FILE_ATTRIBUTES = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @retro_vfs_stat_impl(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %52

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @stat(i8* %17, %struct.stat* %8)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %52

21:                                               ; preds = %16
  %22 = load i64*, i64** %5, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %5, align 8
  store i64 %26, i64* %27, align 8
  br label %28

28:                                               ; preds = %24, %21
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @S_ISDIR(i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @S_ISCHR(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @RETRO_VFS_STAT_IS_VALID, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @RETRO_VFS_STAT_IS_DIRECTORY, align 4
  br label %41

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ %39, %38 ], [ 0, %40 ]
  %43 = or i32 %35, %42
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @RETRO_VFS_STAT_IS_CHARACTER_SPECIAL, align 4
  br label %49

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ 0, %48 ]
  %51 = or i32 %43, %50
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %20, %15
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @S_ISCHR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
