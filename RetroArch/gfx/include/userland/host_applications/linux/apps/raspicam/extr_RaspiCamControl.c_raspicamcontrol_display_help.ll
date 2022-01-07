; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiCamControl.c_raspicamcontrol_display_help.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiCamControl.c_raspicamcontrol_display_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_11__ = type { i8* }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"\0AImage parameter commands\0A\0A\00", align 1
@cmdline_commands = common dso_local global i32 0, align 4
@cmdline_commands_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"\0A\0ANotes\0A\0AExposure mode options :\0A%s\00", align 1
@exposure_map = common dso_local global %struct.TYPE_10__* null, align 8
@exposure_map_size = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"\0A\0AFlicker avoid mode options :\0A%s\00", align 1
@flicker_avoid_map = common dso_local global %struct.TYPE_9__* null, align 8
@flicker_avoid_map_size = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"\0A\0AAWB mode options :\0A%s\00", align 1
@awb_map = common dso_local global %struct.TYPE_12__* null, align 8
@awb_map_size = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"\0A\0AImage Effect mode options :\0A%s\00", align 1
@imagefx_map = common dso_local global %struct.TYPE_8__* null, align 8
@imagefx_map_size = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"\0A\0AMetering Mode options :\0A%s\00", align 1
@metering_mode_map = common dso_local global %struct.TYPE_7__* null, align 8
@metering_mode_map_size = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [47 x i8] c"\0A\0ADynamic Range Compression (DRC) options :\0A%s\00", align 1
@drc_mode_map = common dso_local global %struct.TYPE_11__* null, align 8
@drc_mode_map_size = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @raspicamcontrol_display_help() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @stdout, align 4
  %3 = call i32 (i32, i8*, ...) @fprintf(i32 %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @cmdline_commands, align 4
  %5 = load i32, i32* @cmdline_commands_size, align 4
  %6 = call i32 @raspicli_display_help(i32 %4, i32 %5)
  %7 = load i32, i32* @stdout, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** @exposure_map, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  store i32 1, i32* %1, align 4
  br label %13

13:                                               ; preds = %26, %0
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @exposure_map_size, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load i32, i32* @stdout, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** @exposure_map, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %13

29:                                               ; preds = %13
  %30 = load i32, i32* @stdout, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** @flicker_avoid_map, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %34)
  store i32 1, i32* %1, align 4
  br label %36

36:                                               ; preds = %49, %29
  %37 = load i32, i32* %1, align 4
  %38 = load i32, i32* @flicker_avoid_map_size, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load i32, i32* @stdout, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** @flicker_avoid_map, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %1, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %1, align 4
  br label %36

52:                                               ; preds = %36
  %53 = load i32, i32* @stdout, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** @awb_map, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %57)
  store i32 1, i32* %1, align 4
  br label %59

59:                                               ; preds = %72, %52
  %60 = load i32, i32* %1, align 4
  %61 = load i32, i32* @awb_map_size, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = load i32, i32* @stdout, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** @awb_map, align 8
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %1, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %1, align 4
  br label %59

75:                                               ; preds = %59
  %76 = load i32, i32* @stdout, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** @imagefx_map, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %80)
  store i32 1, i32* %1, align 4
  br label %82

82:                                               ; preds = %95, %75
  %83 = load i32, i32* %1, align 4
  %84 = load i32, i32* @imagefx_map_size, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %82
  %87 = load i32, i32* @stdout, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** @imagefx_map, align 8
  %89 = load i32, i32* %1, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (i32, i8*, ...) @fprintf(i32 %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %86
  %96 = load i32, i32* %1, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %1, align 4
  br label %82

98:                                               ; preds = %82
  %99 = load i32, i32* @stdout, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** @metering_mode_map, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %103)
  store i32 1, i32* %1, align 4
  br label %105

105:                                              ; preds = %118, %98
  %106 = load i32, i32* %1, align 4
  %107 = load i32, i32* @metering_mode_map_size, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %105
  %110 = load i32, i32* @stdout, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** @metering_mode_map, align 8
  %112 = load i32, i32* %1, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %109
  %119 = load i32, i32* %1, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %1, align 4
  br label %105

121:                                              ; preds = %105
  %122 = load i32, i32* @stdout, align 4
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** @drc_mode_map, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 (i32, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i8* %126)
  store i32 1, i32* %1, align 4
  br label %128

128:                                              ; preds = %141, %121
  %129 = load i32, i32* %1, align 4
  %130 = load i32, i32* @drc_mode_map_size, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %144

132:                                              ; preds = %128
  %133 = load i32, i32* @stdout, align 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** @drc_mode_map, align 8
  %135 = load i32, i32* %1, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 (i32, i8*, ...) @fprintf(i32 %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %132
  %142 = load i32, i32* %1, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %1, align 4
  br label %128

144:                                              ; preds = %128
  %145 = load i32, i32* @stdout, align 4
  %146 = call i32 (i32, i8*, ...) @fprintf(i32 %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
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
