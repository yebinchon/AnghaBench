; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_wrap_str_to_mode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_wrap_str_to_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"clamp_to_border\00", align 1
@RARCH_WRAP_BORDER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"clamp_to_edge\00", align 1
@RARCH_WRAP_EDGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@RARCH_WRAP_REPEAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"mirrored_repeat\00", align 1
@RARCH_WRAP_MIRRORED_REPEAT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [138 x i8] c"Invalid wrapping type %s. Valid ones are: clamp_to_border (default), clamp_to_edge, repeat and mirrored_repeat. Falling back to default.\0A\00", align 1
@RARCH_WRAP_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @wrap_str_to_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wrap_str_to_mode(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @string_is_equal(i8* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @RARCH_WRAP_BORDER, align 4
  store i32 %8, i32* %2, align 4
  br label %34

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @string_is_equal(i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @RARCH_WRAP_EDGE, align 4
  store i32 %14, i32* %2, align 4
  br label %34

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @string_is_equal(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @RARCH_WRAP_REPEAT, align 4
  store i32 %20, i32* %2, align 4
  br label %34

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @string_is_equal(i8* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @RARCH_WRAP_MIRRORED_REPEAT, align 4
  store i32 %26, i32* %2, align 4
  br label %34

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27
  br label %29

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %29
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.4, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @RARCH_WRAP_DEFAULT, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %25, %19, %13, %7
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i32 @RARCH_WARN(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
