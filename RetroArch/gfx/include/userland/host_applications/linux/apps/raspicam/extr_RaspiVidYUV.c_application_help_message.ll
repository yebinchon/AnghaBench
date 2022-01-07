; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiVidYUV.c_application_help_message.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiVidYUV.c_application_help_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [93 x i8] c"Display camera output to display, and optionally saves an uncompressed YUV420 or RGB file \0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"NOTE: High resolutions and/or frame rates may exceed the bandwidth of the system due\0A\00", align 1
@.str.2 = private unnamed_addr constant [88 x i8] c"to the large amounts of data being moved to the SD card. This will result in undefined\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"results in the subsequent file.\0A\00", align 1
@.str.4 = private unnamed_addr constant [95 x i8] c"The single raw file produced contains all the images. Each image in the files will be of size\0A\00", align 1
@.str.5 = private unnamed_addr constant [104 x i8] c"width*height*1.5 for YUV or width*height*3 for RGB, unless width and/or height are not divisible by 16.\00", align 1
@.str.6 = private unnamed_addr constant [85 x i8] c"Use the image size displayed during the run (in verbose mode) for an accurate value\0A\00", align 1
@.str.7 = private unnamed_addr constant [79 x i8] c"The Linux split command can be used to split up the file to individual frames\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"\0Ausage: %s [options]\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Image parameter commands\0A\0A\00", align 1
@cmdline_commands = common dso_local global i32 0, align 4
@cmdline_commands_size = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @application_help_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @application_help_message(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @stdout, align 4
  %4 = call i32 (i32, i8*, ...) @fprintf(i32 %3, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @stdout, align 4
  %6 = call i32 (i32, i8*, ...) @fprintf(i32 %5, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i32, i32* @stdout, align 4
  %8 = call i32 (i32, i8*, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0))
  %9 = load i32, i32* @stdout, align 4
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %11 = load i32, i32* @stdout, align 4
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.4, i64 0, i64 0))
  %13 = load i32, i32* @stdout, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.5, i64 0, i64 0))
  %15 = load i32, i32* @stdout, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.6, i64 0, i64 0))
  %17 = load i32, i32* @stdout, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.7, i64 0, i64 0))
  %19 = load i32, i32* @stdout, align 4
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @stdout, align 4
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %24 = load i32, i32* @cmdline_commands, align 4
  %25 = load i32, i32* @cmdline_commands_size, align 4
  %26 = call i32 @raspicli_display_help(i32 %24, i32 %25)
  %27 = load i32, i32* @stdout, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @raspicli_display_help(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
