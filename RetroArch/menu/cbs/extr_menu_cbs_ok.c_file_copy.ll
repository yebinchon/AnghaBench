; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_file_copy.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_file_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RETRO_VFS_FILE_ACCESS_READ = common dso_local global i32 0, align 4
@RETRO_VFS_FILE_ACCESS_HINT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unable to open source file\00", align 1
@RETRO_VFS_FILE_ACCESS_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"unable to open destination file\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"error reading file\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"error writing to file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i64)* @file_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_copy(i8* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [100 x i8], align 16
  %14 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32* null, i32** %9, align 8
  store i32 1, i32* %10, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @RETRO_VFS_FILE_ACCESS_READ, align 4
  %17 = load i32, i32* @RETRO_VFS_FILE_ACCESS_HINT_NONE, align 4
  %18 = call i32* @filestream_open(i8* %15, i32 %16, i32 %17)
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @strlcpy(i8* %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %23)
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %21, %4
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @RETRO_VFS_FILE_ACCESS_WRITE, align 4
  %28 = load i32, i32* @RETRO_VFS_FILE_ACCESS_HINT_NONE, align 4
  %29 = call i32* @filestream_open(i8* %26, i32 %27, i32 %28)
  store i32* %29, i32** %9, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @strlcpy(i8* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %32, %25
  br label %37

37:                                               ; preds = %66, %36
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @filestream_eof(i32* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br i1 %41, label %42, label %67

42:                                               ; preds = %37
  %43 = bitcast [100 x i8]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %43, i8 0, i64 100, i1 false)
  %44 = load i32*, i32** %11, align 8
  %45 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %46 = call i64 @filestream_read(i32* %44, i8* %45, i32 100)
  store i64 %46, i64* %14, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i64 @filestream_error(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @strlcpy(i8* %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %52)
  store i32 0, i32* %10, align 4
  br label %67

54:                                               ; preds = %42
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %57 = load i64, i64* %14, align 8
  %58 = call i64 @filestream_write(i32* %55, i8* %56, i64 %57)
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* %14, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load i8*, i8** %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @strlcpy(i8* %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %64)
  store i32 0, i32* %10, align 4
  br label %67

66:                                               ; preds = %54
  br label %37

67:                                               ; preds = %62, %50, %37
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @filestream_close(i32* %68)
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @filestream_close(i32* %70)
  %72 = load i32, i32* %10, align 4
  ret i32 %72
}

declare dso_local i32* @filestream_open(i8*, i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @filestream_eof(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @filestream_read(i32*, i8*, i32) #1

declare dso_local i64 @filestream_error(i32*) #1

declare dso_local i64 @filestream_write(i32*, i8*, i64) #1

declare dso_local i32 @filestream_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
