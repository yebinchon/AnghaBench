; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_database.c_intfstream_file_get_crc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_database.c_intfstream_file_get_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RETRO_VFS_FILE_ACCESS_READ = common dso_local global i32 0, align 4
@RETRO_VFS_FILE_ACCESS_HINT_NONE = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, i32*)* @intfstream_file_get_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intfstream_file_get_crc(i8* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* @RETRO_VFS_FILE_ACCESS_READ, align 4
  %16 = load i32, i32* @RETRO_VFS_FILE_ACCESS_HINT_NONE, align 4
  %17 = call i32* @intfstream_open_file(i8* %14, i32 %15, i32 %16)
  store i32* %17, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i64 -1, i64* %13, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %104

21:                                               ; preds = %4
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* @SEEK_END, align 4
  %24 = call i32 @intfstream_seek(i32* %22, i64 0, i32 %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %89

27:                                               ; preds = %21
  %28 = load i32*, i32** %11, align 8
  %29 = call i64 @intfstream_tell(i32* %28)
  store i64 %29, i64* %13, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* @SEEK_SET, align 4
  %32 = call i32 @intfstream_seek(i32* %30, i64 0, i32 %31)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %89

35:                                               ; preds = %27
  %36 = load i64, i64* %13, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %89

39:                                               ; preds = %35
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %13, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %42, %39
  %47 = load i32*, i32** %11, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* @SEEK_SET, align 4
  %50 = call i32 @intfstream_seek(i32* %47, i64 %48, i32 %49)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %89

53:                                               ; preds = %46
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @malloc(i64 %54)
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %12, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i64 @intfstream_read(i32* %57, i32* %58, i64 %59)
  %61 = load i64, i64* %8, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %89

64:                                               ; preds = %53
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @intfstream_close(i32* %65)
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @free(i32* %67)
  %69 = load i32*, i32** %12, align 8
  %70 = load i32, i32* @RETRO_VFS_FILE_ACCESS_READ, align 4
  %71 = load i32, i32* @RETRO_VFS_FILE_ACCESS_HINT_NONE, align 4
  %72 = load i64, i64* %8, align 8
  %73 = call i32* @intfstream_open_memory(i32* %69, i32 %70, i32 %71, i64 %72)
  store i32* %73, i32** %11, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %64
  br label %89

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %42
  %79 = load i32*, i32** %11, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @intfstream_get_crc(i32* %79, i32* %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 @intfstream_close(i32* %82)
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @free(i32* %84)
  %86 = load i32*, i32** %12, align 8
  %87 = call i32 @free(i32* %86)
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %5, align 4
  br label %104

89:                                               ; preds = %76, %63, %52, %38, %34, %26
  %90 = load i32*, i32** %11, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @intfstream_close(i32* %93)
  %95 = load i32*, i32** %11, align 8
  %96 = call i32 @free(i32* %95)
  br label %97

97:                                               ; preds = %92, %89
  %98 = load i32*, i32** %12, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32*, i32** %12, align 8
  %102 = call i32 @free(i32* %101)
  br label %103

103:                                              ; preds = %100, %97
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %103, %78, %20
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32* @intfstream_open_file(i8*, i32, i32) #1

declare dso_local i32 @intfstream_seek(i32*, i64, i32) #1

declare dso_local i64 @intfstream_tell(i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @intfstream_read(i32*, i32*, i64) #1

declare dso_local i32 @intfstream_close(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @intfstream_open_memory(i32*, i32, i32, i64) #1

declare dso_local i32 @intfstream_get_crc(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
