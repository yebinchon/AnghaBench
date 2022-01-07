; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_database.c_task_database_gdi_get_serial.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_database.c_task_database_gdi_get_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@MSG_COULD_NOT_FIND_VALID_DATA_TRACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MSG_READING_FIRST_DATA_TRACK = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @task_database_gdi_get_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_database_gdi_get_serial(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 1
  %12 = trunc i64 %11 to i32
  %13 = call i64 @malloc(i32 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 0, i8* %16, align 1
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %20 = call i32 @gdi_find_track(i8* %17, i32 1, i8* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load i32, i32* @MSG_COULD_NOT_FIND_VALID_DATA_TRACK, align 4
  %25 = call i32 @msg_hash_to_str(i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 0, %26
  %28 = call i32 @strerror(i32 %27)
  %29 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @free(i8* %30)
  store i32 0, i32* %3, align 4
  br label %43

32:                                               ; preds = %2
  %33 = load i32, i32* @MSG_READING_FIRST_DATA_TRACK, align 4
  %34 = call i32 @msg_hash_to_str(i32 %33)
  %35 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* @SIZE_MAX, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @intfstream_file_get_serial(i8* %36, i32 0, i32 %37, i8* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %32, %23
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @gdi_find_track(i8*, i32, i8*, i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, ...) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @intfstream_file_get_serial(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
