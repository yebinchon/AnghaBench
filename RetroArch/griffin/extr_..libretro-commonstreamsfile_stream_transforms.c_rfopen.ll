; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonstreamsfile_stream_transforms.c_rfopen.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonstreamsfile_stream_transforms.c_rfopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RETRO_VFS_FILE_ACCESS_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@RETRO_VFS_FILE_ACCESS_READ_WRITE = common dso_local global i32 0, align 4
@RETRO_VFS_FILE_ACCESS_UPDATE_EXISTING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@RETRO_VFS_FILE_ACCESS_WRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@RETRO_VFS_FILE_ACCESS_HINT_NONE = common dso_local global i32 0, align 4
@RETRO_VFS_SEEK_POSITION_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @rfopen(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %5, align 8
  %8 = load i32, i32* @RETRO_VFS_FILE_ACCESS_READ, align 4
  store i32 %8, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @strstr(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load i32, i32* @RETRO_VFS_FILE_ACCESS_READ, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strstr(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @RETRO_VFS_FILE_ACCESS_READ_WRITE, align 4
  %19 = load i32, i32* @RETRO_VFS_FILE_ACCESS_UPDATE_EXISTING, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %17, %12
  br label %52

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @strstr(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i32, i32* @RETRO_VFS_FILE_ACCESS_WRITE, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @strstr(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @RETRO_VFS_FILE_ACCESS_READ_WRITE, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %31, %26
  br label %51

34:                                               ; preds = %22
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @strstr(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load i32, i32* @RETRO_VFS_FILE_ACCESS_WRITE, align 4
  %40 = load i32, i32* @RETRO_VFS_FILE_ACCESS_UPDATE_EXISTING, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = call i64 @strstr(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @RETRO_VFS_FILE_ACCESS_READ_WRITE, align 4
  %47 = load i32, i32* @RETRO_VFS_FILE_ACCESS_UPDATE_EXISTING, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %45, %38
  br label %50

50:                                               ; preds = %49, %34
  br label %51

51:                                               ; preds = %50, %33
  br label %52

52:                                               ; preds = %51, %21
  %53 = load i8*, i8** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @RETRO_VFS_FILE_ACCESS_HINT_NONE, align 4
  %56 = call i32* @filestream_open(i8* %53, i32 %54, i32 %55)
  store i32* %56, i32** %5, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* @RETRO_VFS_SEEK_POSITION_END, align 4
  %65 = call i32 @filestream_seek(i32* %63, i32 0, i32 %64)
  br label %66

66:                                               ; preds = %62, %59, %52
  %67 = load i32*, i32** %5, align 8
  ret i32* %67
}

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32* @filestream_open(i8*, i32, i32) #1

declare dso_local i32 @filestream_seek(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
