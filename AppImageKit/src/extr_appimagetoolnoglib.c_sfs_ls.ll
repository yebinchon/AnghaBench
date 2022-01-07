; ModuleID = '/home/carl/AnghaBench/AppImageKit/src/extr_appimagetoolnoglib.c_sfs_ls.c'
source_filename = "/home/carl/AnghaBench/AppImageKit/src/extr_appimagetoolnoglib.c_sfs_ls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i32 }

@SQFS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"sqfs_open_image error\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"sqfs_traverse_open error\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"sqfs_traverse_next error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sfs_ls(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca %struct.TYPE_10__, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i64, i64* @SQFS_OK, align 8
  store i64 %6, i64* %3, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i64 @sqfs_open_image(%struct.TYPE_10__* %5, i8* %7, i32 0)
  store i64 %8, i64* %3, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  %13 = call i32 @sqfs_inode_root(%struct.TYPE_10__* %5)
  %14 = call i64 @sqfs_traverse_open(%struct.TYPE_9__* %4, %struct.TYPE_10__* %5, i32 %13)
  store i64 %14, i64* %3, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %12
  br label %19

19:                                               ; preds = %30, %18
  %20 = call i64 @sqfs_traverse_next(%struct.TYPE_9__* %4, i64* %3)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %26, %22
  br label %19

31:                                               ; preds = %19
  %32 = load i64, i64* %3, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %31
  %37 = call i32 @sqfs_traverse_close(%struct.TYPE_9__* %4)
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sqfs_fd_close(i32 %39)
  ret i32 0
}

declare dso_local i64 @sqfs_open_image(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @die(i8*) #1

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
