; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_sendcmd.c_make_command_flags_str.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_sendcmd.c_make_command_flags_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }

@make_command_flags_str.flag_strings = internal constant [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"leave\00", align 1
@AV_BPRINT_SIZE_AUTOMATIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_6__*, i32)* @make_command_flags_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @make_command_flags_str(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %6, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = load i32, i32* @AV_BPRINT_SIZE_AUTOMATIC, align 4
  %9 = call i32 @av_bprint_init(%struct.TYPE_6__* %7, i32 0, i32 %8)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %34, %2
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @FF_ARRAY_ELEMS(i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @make_command_flags_str.flag_strings, i64 0, i64 0))
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = call i32 @av_bprint_chars(%struct.TYPE_6__* %24, i8 signext 43, i32 1)
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [2 x i8*], [2 x i8*]* @make_command_flags_str.flag_strings, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @av_bprintf(%struct.TYPE_6__* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %26, %14
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %10

37:                                               ; preds = %10
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  ret i8* %40
}

declare dso_local i32 @av_bprint_init(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i8**) #1

declare dso_local i32 @av_bprint_chars(%struct.TYPE_6__*, i8 signext, i32) #1

declare dso_local i32 @av_bprintf(%struct.TYPE_6__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
