; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_database.c_intfstream_file_get_serial.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_database.c_intfstream_file_get_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RETRO_VFS_FILE_ACCESS_READ = common dso_local global i32 0, align 4
@RETRO_VFS_FILE_ACCESS_HINT_NONE = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, i8*)* @intfstream_file_get_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intfstream_file_get_serial(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* null, i32** %11, align 8
  store i64 -1, i64* %12, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* @RETRO_VFS_FILE_ACCESS_READ, align 4
  %16 = load i32, i32* @RETRO_VFS_FILE_ACCESS_HINT_NONE, align 4
  %17 = call i32* @intfstream_open_file(i8* %14, i32 %15, i32 %16)
  store i32* %17, i32** %13, align 8
  %18 = load i32*, i32** %13, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %98

21:                                               ; preds = %4
  %22 = load i32*, i32** %13, align 8
  %23 = load i32, i32* @SEEK_END, align 4
  %24 = call i32 @intfstream_seek(i32* %22, i64 0, i32 %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %93

27:                                               ; preds = %21
  %28 = load i32*, i32** %13, align 8
  %29 = call i64 @intfstream_tell(i32* %28)
  store i64 %29, i64* %12, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = load i32, i32* @SEEK_SET, align 4
  %32 = call i32 @intfstream_seek(i32* %30, i64 0, i32 %31)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %93

35:                                               ; preds = %27
  %36 = load i64, i64* %12, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %93

39:                                               ; preds = %35
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %82

46:                                               ; preds = %42, %39
  %47 = load i32*, i32** %13, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* @SEEK_SET, align 4
  %50 = call i32 @intfstream_seek(i32* %47, i64 %48, i32 %49)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %93

53:                                               ; preds = %46
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @malloc(i64 %54)
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %11, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i64 @intfstream_read(i32* %57, i32* %58, i64 %59)
  %61 = load i64, i64* %8, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @free(i32* %64)
  br label %93

66:                                               ; preds = %53
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @intfstream_close(i32* %67)
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @free(i32* %69)
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* @RETRO_VFS_FILE_ACCESS_READ, align 4
  %73 = load i32, i32* @RETRO_VFS_FILE_ACCESS_HINT_NONE, align 4
  %74 = load i64, i64* %8, align 8
  %75 = call i32* @intfstream_open_memory(i32* %71, i32 %72, i32 %73, i64 %74)
  store i32* %75, i32** %13, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %66
  %79 = load i32*, i32** %11, align 8
  %80 = call i32 @free(i32* %79)
  store i32 0, i32* %5, align 4
  br label %98

81:                                               ; preds = %66
  br label %82

82:                                               ; preds = %81, %42
  %83 = load i32*, i32** %13, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @intfstream_get_serial(i32* %83, i8* %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32*, i32** %13, align 8
  %87 = call i32 @intfstream_close(i32* %86)
  %88 = load i32*, i32** %13, align 8
  %89 = call i32 @free(i32* %88)
  %90 = load i32*, i32** %11, align 8
  %91 = call i32 @free(i32* %90)
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %5, align 4
  br label %98

93:                                               ; preds = %63, %52, %38, %34, %26
  %94 = load i32*, i32** %13, align 8
  %95 = call i32 @intfstream_close(i32* %94)
  %96 = load i32*, i32** %13, align 8
  %97 = call i32 @free(i32* %96)
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %93, %82, %78, %20
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32* @intfstream_open_file(i8*, i32, i32) #1

declare dso_local i32 @intfstream_seek(i32*, i64, i32) #1

declare dso_local i64 @intfstream_tell(i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @intfstream_read(i32*, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @intfstream_close(i32*) #1

declare dso_local i32* @intfstream_open_memory(i32*, i32, i32, i64) #1

declare dso_local i32 @intfstream_get_serial(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
