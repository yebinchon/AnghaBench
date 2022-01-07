; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_presets.c_ghb_write_pid_file.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_presets.c_ghb_write_pid_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"%s/ghb.pid.%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@F_TLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_write_pid_file() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = call i32 (...) @getpid()
  store i32 %6, i32* %3, align 4
  %7 = call i32* @ghb_get_user_config_dir(i32* null)
  store i32* %7, i32** %1, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32* @g_strdup_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %8, i32 %9)
  store i32* %10, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32* @g_fopen(i32* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %0
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @fprintf(i32* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @fclose(i32* %19)
  br label %21

21:                                               ; preds = %15, %0
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @O_RDWR, align 4
  %24 = load i32, i32* @O_CREAT, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @S_IRUSR, align 4
  %27 = load i32, i32* @S_IWUSR, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @open(i32* %22, i32 %25, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @F_TLOCK, align 4
  %35 = call i32 @lockf(i32 %33, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %32, %21
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @g_free(i32* %37)
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @g_free(i32* %39)
  ret void
}

declare dso_local i32 @getpid(...) #1

declare dso_local i32* @ghb_get_user_config_dir(i32*) #1

declare dso_local i32* @g_strdup_printf(i8*, i32*, i32) #1

declare dso_local i32* @g_fopen(i32*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @open(i32*, i32, i32) #1

declare dso_local i32 @lockf(i32, i32, i32) #1

declare dso_local i32 @g_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
