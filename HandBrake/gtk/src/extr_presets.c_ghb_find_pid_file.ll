; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_presets.c_ghb_find_pid_file.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_presets.c_ghb_find_pid_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@G_FILE_TEST_IS_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ghb.pid.\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ghb.pid.%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@F_TLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ghb_find_pid_file() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i32* @ghb_get_user_config_dir(i32* null)
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @G_FILE_TEST_IS_DIR, align 4
  %12 = call i64 @g_file_test(i32* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %67

14:                                               ; preds = %0
  %15 = load i32*, i32** %3, align 8
  %16 = call i32* @g_dir_open(i32* %15, i32 0, i32* null)
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32* @g_dir_read_name(i32* %17)
  store i32* %18, i32** %2, align 8
  br label %19

19:                                               ; preds = %61, %14
  %20 = load i32*, i32** %2, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %64

22:                                               ; preds = %19
  %23 = load i32*, i32** %2, align 8
  %24 = call i64 @strncmp(i32* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %22
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @sscanf(i32* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %2, align 8
  %31 = call i32* @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %29, i32* %30)
  store i32* %31, i32** %5, align 8
  store i32 1, i32* %8, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @O_RDWR, align 4
  %34 = call i32 @open(i32* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @F_TLOCK, align 4
  %40 = call i32 @lockf(i32 %38, i32 %39, i32 0)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %37, %26
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @close(i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @g_dir_close(i32* %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @g_unlink(i32* %49)
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @g_free(i32* %51)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @g_free(i32* %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %1, align 4
  br label %70

56:                                               ; preds = %41
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @g_free(i32* %57)
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @close(i32 %59)
  br label %61

61:                                               ; preds = %56, %22
  %62 = load i32*, i32** %4, align 8
  %63 = call i32* @g_dir_read_name(i32* %62)
  store i32* %63, i32** %2, align 8
  br label %19

64:                                               ; preds = %19
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @g_dir_close(i32* %65)
  br label %67

67:                                               ; preds = %64, %0
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @g_free(i32* %68)
  store i32 -1, i32* %1, align 4
  br label %70

70:                                               ; preds = %67, %44
  %71 = load i32, i32* %1, align 4
  ret i32 %71
}

declare dso_local i32* @ghb_get_user_config_dir(i32*) #1

declare dso_local i64 @g_file_test(i32*, i32) #1

declare dso_local i32* @g_dir_open(i32*, i32, i32*) #1

declare dso_local i32* @g_dir_read_name(i32*) #1

declare dso_local i64 @strncmp(i32*, i8*, i32) #1

declare dso_local i32 @sscanf(i32*, i8*, i32*) #1

declare dso_local i32* @g_strdup_printf(i8*, i32*, i32*) #1

declare dso_local i32 @open(i32*, i32) #1

declare dso_local i32 @lockf(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @g_dir_close(i32*) #1

declare dso_local i32 @g_unlink(i32*) #1

declare dso_local i32 @g_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
