; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_del_tree.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_del_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@G_FILE_TEST_IS_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @del_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @del_tree(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @G_FILE_TEST_IS_DIR, align 4
  %10 = call i64 @g_file_test(i32* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = call i32* @g_dir_open(i32* %13, i32 0, i32* null)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32* @g_dir_read_name(i32* %15)
  store i32* %16, i32** %5, align 8
  br label %17

17:                                               ; preds = %20, %12
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32* @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %21, i32* %22)
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i64, i64* @TRUE, align 8
  call void @del_tree(i32* %24, i64 %25)
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @g_free(i32* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = call i32* @g_dir_read_name(i32* %28)
  store i32* %29, i32** %5, align 8
  br label %17

30:                                               ; preds = %17
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @g_rmdir(i32* %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @g_dir_close(i32* %37)
  br label %42

39:                                               ; preds = %2
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @g_unlink(i32* %40)
  br label %42

42:                                               ; preds = %39, %36
  ret void
}

declare dso_local i64 @g_file_test(i32*, i32) #1

declare dso_local i32* @g_dir_open(i32*, i32, i32*) #1

declare dso_local i32* @g_dir_read_name(i32*) #1

declare dso_local i32* @g_strdup_printf(i8*, i32*, i32*) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @g_rmdir(i32*) #1

declare dso_local i32 @g_dir_close(i32*) #1

declare dso_local i32 @g_unlink(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
