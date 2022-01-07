; ModuleID = '/home/carl/AnghaBench/AppImageKit/src/extr_appimagetool.c_sfs_ls.c'
source_filename = "/home/carl/AnghaBench/AppImageKit/src/extr_appimagetool.c_sfs_ls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i32 }

@SQFS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"failed to read elf size\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"sqfs_open_image error\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"sqfs_traverse_open error\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"sqfs_traverse_next error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sfs_ls(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i64, i64* @SQFS_OK, align 8
  store i64 %7, i64* %3, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @appimage_get_elf_size(i8* %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  %15 = load i8*, i8** %2, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @sqfs_open_image(%struct.TYPE_10__* %5, i8* %15, i64 %16)
  store i64 %17, i64* %3, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %14
  %22 = call i32 @sqfs_inode_root(%struct.TYPE_10__* %5)
  %23 = call i64 @sqfs_traverse_open(%struct.TYPE_9__* %4, %struct.TYPE_10__* %5, i32 %22)
  store i64 %23, i64* %3, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %21
  br label %28

28:                                               ; preds = %39, %27
  %29 = call i64 @sqfs_traverse_next(%struct.TYPE_9__* %4, i64* %3)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %35, %31
  br label %28

40:                                               ; preds = %28
  %41 = load i64, i64* %3, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %40
  %46 = call i32 @sqfs_traverse_close(%struct.TYPE_9__* %4)
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @sqfs_fd_close(i32 %48)
  ret i32 0
}

declare dso_local i64 @appimage_get_elf_size(i8*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i64 @sqfs_open_image(%struct.TYPE_10__*, i8*, i64) #1

declare dso_local i64 @sqfs_traverse_open(%struct.TYPE_9__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @sqfs_inode_root(%struct.TYPE_10__*) #1

declare dso_local i64 @sqfs_traverse_next(%struct.TYPE_9__*, i64*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @sqfs_traverse_close(%struct.TYPE_9__*) #1

declare dso_local i32 @sqfs_fd_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
