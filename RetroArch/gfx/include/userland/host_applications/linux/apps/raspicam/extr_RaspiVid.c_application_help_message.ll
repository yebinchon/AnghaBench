; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiVid.c_application_help_message.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiVid.c_application_help_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_5__ = type { i8* }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"Display camera output to display, and optionally saves an H264 capture at requested bitrate\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"\0Ausage: %s [options]\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Image parameter commands\0A\0A\00", align 1
@cmdline_commands = common dso_local global i32 0, align 4
@cmdline_commands_size = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"\0A\0AH264 Profile options :\0A%s\00", align 1
@profile_map = common dso_local global %struct.TYPE_6__* null, align 8
@profile_map_size = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"\0A\0AH264 Level options :\0A%s\00", align 1
@level_map = common dso_local global %struct.TYPE_7__* null, align 8
@level_map_size = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"\0A\0AH264 Intra refresh options :\0A%s\00", align 1
@intra_refresh_map = common dso_local global %struct.TYPE_8__* null, align 8
@intra_refresh_map_size = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"\0A\0ARaw output format options :\0A%s\00", align 1
@raw_output_fmt_map = common dso_local global %struct.TYPE_5__* null, align 8
@raw_output_fmt_map_size = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [339 x i8] c"Raspivid allows output to a remote IPv4 host e.g. -o tcp://192.168.1.2:1234or -o udp://192.168.1.2:1234\0ATo listen on a TCP port (IPv4) and wait for an incoming connection use the -l option\0Ae.g. raspivid -l -o tcp://0.0.0.0:3333 -> bind to all network interfaces,\0Araspivid -l -o tcp://192.168.1.1:3333 -> bind to a certain local IPv4 port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @application_help_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @application_help_message(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @stdout, align 4
  %5 = call i32 (i32, i8*, ...) @fprintf(i32 %4, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @stdout, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 (i32, i8*, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %7)
  %9 = load i32, i32* @stdout, align 4
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %11 = load i32, i32* @cmdline_commands, align 4
  %12 = load i32, i32* @cmdline_commands_size, align 4
  %13 = call i32 @raspicli_display_help(i32 %11, i32 %12)
  %14 = load i32, i32* @stdout, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @profile_map, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %18)
  store i32 1, i32* %3, align 4
  br label %20

20:                                               ; preds = %33, %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @profile_map_size, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i32, i32* @stdout, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @profile_map, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %20

36:                                               ; preds = %20
  %37 = load i32, i32* @stdout, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** @level_map, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %41)
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %56, %36
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @level_map_size, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load i32, i32* @stdout, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** @level_map, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %43

59:                                               ; preds = %43
  %60 = load i32, i32* @stdout, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** @intra_refresh_map, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* %64)
  store i32 1, i32* %3, align 4
  br label %66

66:                                               ; preds = %79, %59
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @intra_refresh_map_size, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = load i32, i32* @stdout, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** @intra_refresh_map, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %70
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %66

82:                                               ; preds = %66
  %83 = load i32, i32* @stdout, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** @raw_output_fmt_map, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* %87)
  store i32 1, i32* %3, align 4
  br label %89

89:                                               ; preds = %102, %82
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* @raw_output_fmt_map_size, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = load i32, i32* @stdout, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** @raw_output_fmt_map, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %93
  %103 = load i32, i32* %3, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %3, align 4
  br label %89

105:                                              ; preds = %89
  %106 = load i32, i32* @stdout, align 4
  %107 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %108 = load i32, i32* @stdout, align 4
  %109 = call i32 (i32, i8*, ...) @fprintf(i32 %108, i8* getelementptr inbounds ([339 x i8], [339 x i8]* @.str.9, i64 0, i64 0))
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
