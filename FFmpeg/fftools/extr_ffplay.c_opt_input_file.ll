; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_opt_input_file.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_opt_input_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_filename = common dso_local global i8* null, align 8
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Argument '%s' provided as input filename, but '%s' was already specified.\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"pipe:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @opt_input_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opt_input_file(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** @input_filename, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32, i32* @AV_LOG_FATAL, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i8*, i8** @input_filename, align 8
  %11 = call i32 @av_log(i32* null, i32 %8, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i8* %9, i8* %10)
  %12 = call i32 @exit(i32 1) #3
  unreachable

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %18

18:                                               ; preds = %17, %13
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** @input_filename, align 8
  ret void
}

declare dso_local i32 @av_log(i32*, i32, i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
