; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_database.c_task_database_gdi_get_crc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_database.c_task_database_gdi_get_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@MSG_COULD_NOT_FIND_VALID_DATA_TRACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"GDI '%s' primary track: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MSG_READING_FIRST_DATA_TRACK = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"GDI '%s' crc: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @task_database_gdi_get_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_database_gdi_get_crc(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %9 = call i64 @malloc(i32 %8)
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 0, i8* %12, align 1
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %16 = call i32 @gdi_find_track(i8* %13, i32 1, i8* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load i32, i32* @MSG_COULD_NOT_FIND_VALID_DATA_TRACK, align 4
  %21 = call i8* @msg_hash_to_str(i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 0, %22
  %24 = call i8* @strerror(i32 %23)
  %25 = call i32 (i8*, i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %24)
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @free(i8* %26)
  store i32 0, i32* %3, align 4
  br label %50

28:                                               ; preds = %2
  %29 = load i8*, i8** %4, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 (i8*, i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %29, i8* %30)
  %32 = load i32, i32* @MSG_READING_FIRST_DATA_TRACK, align 4
  %33 = call i8* @msg_hash_to_str(i32 %32)
  %34 = call i32 (i8*, i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @SIZE_MAX, align 4
  %37 = load i8**, i8*** %5, align 8
  %38 = call i32 @intfstream_file_get_crc(i8* %35, i32 0, i32 %36, i8** %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %46

41:                                               ; preds = %28
  %42 = load i8*, i8** %4, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i8*, i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %42, i8* %44)
  br label %46

46:                                               ; preds = %41, %28
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %19
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @gdi_find_track(i8*, i32, i8*, i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*, ...) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @intfstream_file_get_crc(i8*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
