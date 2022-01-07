; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_database.c_task_database_chd_get_crc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_database.c_task_database_chd_get_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RETRO_VFS_FILE_ACCESS_READ = common dso_local global i32 0, align 4
@RETRO_VFS_FILE_ACCESS_HINT_NONE = common dso_local global i32 0, align 4
@CHDSTREAM_TRACK_PRIMARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"CHD '%s' crc: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @task_database_chd_get_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_database_chd_get_crc(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* @RETRO_VFS_FILE_ACCESS_READ, align 4
  %10 = load i32, i32* @RETRO_VFS_FILE_ACCESS_HINT_NONE, align 4
  %11 = load i32, i32* @CHDSTREAM_TRACK_PRIMARY, align 4
  %12 = call i32* @intfstream_open_chd_track(i8* %8, i32 %9, i32 %10, i32 %11)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

16:                                               ; preds = %2
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @intfstream_get_crc(i32* %17, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load i8*, i8** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %25)
  br label %27

27:                                               ; preds = %22, %16
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @intfstream_close(i32* %31)
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @free(i32* %33)
  br label %35

35:                                               ; preds = %30, %27
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %15
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32* @intfstream_open_chd_track(i8*, i32, i32, i32) #1

declare dso_local i32 @intfstream_get_crc(i32*, i32*) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*, i32) #1

declare dso_local i32 @intfstream_close(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
