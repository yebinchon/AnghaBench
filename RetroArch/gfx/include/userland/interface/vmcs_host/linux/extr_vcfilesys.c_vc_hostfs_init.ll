; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/linux/extr_vcfilesys.c_vc_hostfs_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/linux/extr_vcfilesys.c_vc_hostfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"FILESYS\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"HFilesys\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"%s: vc_hostfs is deprecated. Please use stdio\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"hostfs\00", align 1
@hostfs_log_cat = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@FILE_INFO_TABLE_CHUNK_LEN = common dso_local global i32 0, align 4
@p_file_info_table = common dso_local global i32* null, align 8
@file_info_table_len = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vc_hostfs_init() #0 {
  %1 = alloca i8*, align 8
  %2 = call i32 (...) @vcos_thread_current()
  %3 = call i8* @vcos_thread_get_name(i32 %2)
  store i8* %3, i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = call i64 @strcmp(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %0
  %8 = load i8*, i8** %1, align 8
  %9 = call i64 @strcmp(i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 (...) @vcos_thread_current()
  %14 = call i8* @vcos_thread_get_name(i32 %13)
  %15 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %11, %7, %0
  %17 = call i32 @vcos_log_register(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* @hostfs_log_cat)
  %18 = call i32 @DEBUG_MINOR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %19 = load i32, i32* @FILE_INFO_TABLE_CHUNK_LEN, align 4
  %20 = call i64 @calloc(i32 %19, i32 4)
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** @p_file_info_table, align 8
  %22 = load i32*, i32** @p_file_info_table, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32*, i32** @p_file_info_table, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load i32, i32* @FILE_INFO_TABLE_CHUNK_LEN, align 4
  store i32 %29, i32* @file_info_table_len, align 4
  br label %30

30:                                               ; preds = %28, %16
  ret void
}

declare dso_local i8* @vcos_thread_get_name(i32) #1

declare dso_local i32 @vcos_thread_current(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @vcos_log_register(i8*, i32*) #1

declare dso_local i32 @DEBUG_MINOR(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
