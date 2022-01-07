; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_show_banner.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_show_banner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@hide_banner = common dso_local global i64 0, align 8
@INDENT = common dso_local global i32 0, align 4
@SHOW_COPYRIGHT = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@SHOW_CONFIG = common dso_local global i32 0, align 4
@SHOW_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_banner(i32 %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @locate_option(i32 %8, i8** %9, i32* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %7, align 4
  %12 = load i64, i64* @hide_banner, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %3
  br label %34

18:                                               ; preds = %14
  %19 = load i32, i32* @INDENT, align 4
  %20 = load i32, i32* @SHOW_COPYRIGHT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @AV_LOG_INFO, align 4
  %23 = call i32 @print_program_info(i32 %21, i32 %22)
  %24 = load i32, i32* @INDENT, align 4
  %25 = load i32, i32* @SHOW_CONFIG, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @AV_LOG_INFO, align 4
  %28 = call i32 @print_all_libs_info(i32 %26, i32 %27)
  %29 = load i32, i32* @INDENT, align 4
  %30 = load i32, i32* @SHOW_VERSION, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @AV_LOG_INFO, align 4
  %33 = call i32 @print_all_libs_info(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @locate_option(i32, i8**, i32*, i8*) #1

declare dso_local i32 @print_program_info(i32, i32) #1

declare dso_local i32 @print_all_libs_info(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
