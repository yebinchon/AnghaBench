; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_fs_utils.c_MountFS.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_fs_utils.c_MountFS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FS_MOUNT_SOURCE_SIZE = common dso_local global i64 0, align 8
@FS_MAX_MOUNTPATH_SIZE = common dso_local global i64 0, align 8
@FS_SOURCETYPE_EXTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MountFS(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 -1, i32* %9, align 4
  %11 = load i64, i64* @FS_MOUNT_SOURCE_SIZE, align 8
  %12 = call i8* @malloc(i64 %11)
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 -3, i32* %4, align 4
  br label %71

16:                                               ; preds = %3
  %17 = load i64, i64* @FS_MAX_MOUNTPATH_SIZE, align 8
  %18 = call i8* @malloc(i64 %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %10, align 8
  %23 = call i32 @free(i8* %22)
  store i32 -4, i32* %4, align 4
  br label %71

24:                                               ; preds = %16
  %25 = load i8*, i8** %10, align 8
  %26 = load i64, i64* @FS_MOUNT_SOURCE_SIZE, align 8
  %27 = call i32 @memset(i8* %25, i32 0, i64 %26)
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* @FS_MAX_MOUNTPATH_SIZE, align 8
  %30 = call i32 @memset(i8* %28, i32 0, i64 %29)
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @FS_SOURCETYPE_EXTERNAL, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = call i64 @FSGetMountSource(i8* %31, i8* %32, i32 %33, i8* %34, i32 -1)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %24
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* @FS_MAX_MOUNTPATH_SIZE, align 8
  %43 = call i32 @FSMount(i8* %38, i8* %39, i8* %40, i8* %41, i64 %42, i32 -1)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %37
  %47 = load i8**, i8*** %7, align 8
  %48 = icmp ne i8** %47, null
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  %50 = load i8*, i8** %8, align 8
  %51 = call i64 @strlen(i8* %50)
  %52 = add nsw i64 %51, 1
  %53 = call i8* @malloc(i64 %52)
  %54 = load i8**, i8*** %7, align 8
  store i8* %53, i8** %54, align 8
  %55 = load i8**, i8*** %7, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %49
  %59 = load i8**, i8*** %7, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @strcpy(i8* %60, i8* %61)
  br label %63

63:                                               ; preds = %58, %49
  br label %64

64:                                               ; preds = %63, %46, %37
  br label %65

65:                                               ; preds = %64, %24
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @free(i8* %68)
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %65, %21, %15
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @FSGetMountSource(i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @FSMount(i8*, i8*, i8*, i8*, i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
