; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_save.c_path_init_savefile_rtc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_save.c_path_init_savefile_rtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.string_list_elem_attr = type { i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@RETRO_MEMORY_SAVE_RAM = common dso_local global i32 0, align 4
@task_save_files = common dso_local global i32 0, align 4
@RETRO_MEMORY_RTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".rtc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @path_init_savefile_rtc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %union.string_list_elem_attr, align 4
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 1
  %8 = trunc i64 %7 to i32
  %9 = call i64 @malloc(i32 %8)
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 0, i8* %12, align 1
  %13 = load i32, i32* @RETRO_MEMORY_SAVE_RAM, align 4
  %14 = bitcast %union.string_list_elem_attr* %3 to i32*
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @task_save_files, align 4
  %16 = load i8*, i8** %2, align 8
  %17 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %3, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @string_list_append(i32 %15, i8* %16, i32 %18)
  %20 = load i32, i32* @RETRO_MEMORY_RTC, align 4
  %21 = bitcast %union.string_list_elem_attr* %3 to i32*
  store i32 %20, i32* %21, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 1
  %27 = trunc i64 %26 to i32
  %28 = call i32 @fill_pathname(i8* %22, i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @task_save_files, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %3, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @string_list_append(i32 %29, i8* %30, i32 %32)
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @free(i8* %34)
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @string_list_append(i32, i8*, i32) #1

declare dso_local i32 @fill_pathname(i8*, i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
