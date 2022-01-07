; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_print_buildconf.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_print_buildconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INDENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FFMPEG_CONFIGURATION = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" --\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"~--\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"pkg-config~\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"pkg-config \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"\0A%sconfiguration:\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%s%s%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @print_buildconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_buildconf(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [1 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @INDENT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  store i8* %15, i8** %5, align 8
  %16 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  %17 = load i8, i8* @FFMPEG_CONFIGURATION, align 1
  store i8 %17, i8* %16, align 1
  br label %18

18:                                               ; preds = %22, %2
  %19 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  %20 = call i8* @strstr(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %20, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @strncpy(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  br label %18

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %30, %25
  %27 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  %28 = call i8* @strstr(i8* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i8* %28, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @strncpy(i8* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 11)
  br label %26

33:                                               ; preds = %26
  %34 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  %35 = call i8* @strtok(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i8* %35, i8** %9, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 (i32*, i32, i8*, i8*, ...) @av_log(i32* null, i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %42, %33
  %40 = load i8*, i8** %9, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 (i32*, i32, i8*, i8*, ...) @av_log(i32* null, i32 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %44, i8* %45, i8* %46)
  %48 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i8* %48, i8** %9, align 8
  br label %39

49:                                               ; preds = %39
  ret void
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
