; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiTex.c_raspitex_parse_cmdline.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiTex.c_raspitex_parse_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@cmdline_commands = common dso_local global i32 0, align 4
@cmdline_commands_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%d,%d,%d,%d\00", align 1
@DEFAULT_WIDTH = common dso_local global i32 0, align 4
@DEFAULT_HEIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"square\00", align 1
@RASPITEX_SCENE_SQUARE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"teapot\00", align 1
@RASPITEX_SCENE_TEAPOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"mirror\00", align 1
@RASPITEX_SCENE_MIRROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"yuv\00", align 1
@RASPITEX_SCENE_YUV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"sobel\00", align 1
@RASPITEX_SCENE_SOBEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"vcsm_square\00", align 1
@RASPITEX_SCENE_VCSM_SQUARE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"Unknown scene %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raspitex_parse_cmdline(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %121

15:                                               ; preds = %3
  %16 = load i32, i32* @cmdline_commands, align 4
  %17 = load i32, i32* @cmdline_commands_size, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @raspicli_get_command_id(i32 %16, i32 %17, i8* %18, i32* %10)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %31, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* %10, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i8*, i8** %7, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %15
  store i32 0, i32* %4, align 4
  br label %121

32:                                               ; preds = %28, %25, %22
  %33 = load i32, i32* %8, align 4
  switch i32 %33, label %119 [
    i32 128, label %34
    i32 129, label %62
  ]

34:                                               ; preds = %32
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 5
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = call i32 @sscanf(i8* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %37, i32* %39, i32* %41, i32* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 4
  br i1 %46, label %47, label %58

47:                                               ; preds = %34
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 4
  store i32 0, i32* %49, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 5
  store i32 0, i32* %51, align 4
  %52 = load i32, i32* @DEFAULT_WIDTH, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @DEFAULT_HEIGHT, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  br label %61

58:                                               ; preds = %34
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %47
  store i32 2, i32* %9, align 4
  br label %119

62:                                               ; preds = %32
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* @RASPITEX_SCENE_SQUARE, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %118

70:                                               ; preds = %62
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* @RASPITEX_SCENE_TEAPOT, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %117

78:                                               ; preds = %70
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i32, i32* @RASPITEX_SCENE_MIRROR, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %116

86:                                               ; preds = %78
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i32, i32* @RASPITEX_SCENE_YUV, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %115

94:                                               ; preds = %86
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i32, i32* @RASPITEX_SCENE_SOBEL, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %114

102:                                              ; preds = %94
  %103 = load i8*, i8** %7, align 8
  %104 = call i32 @strcmp(i8* %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32, i32* @RASPITEX_SCENE_VCSM_SQUARE, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  br label %113

110:                                              ; preds = %102
  %111 = load i8*, i8** %7, align 8
  %112 = call i32 @vcos_log_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %111)
  br label %113

113:                                              ; preds = %110, %106
  br label %114

114:                                              ; preds = %113, %98
  br label %115

115:                                              ; preds = %114, %90
  br label %116

116:                                              ; preds = %115, %82
  br label %117

117:                                              ; preds = %116, %74
  br label %118

118:                                              ; preds = %117, %66
  store i32 2, i32* %9, align 4
  br label %119

119:                                              ; preds = %32, %118, %61
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %119, %31, %14
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @raspicli_get_command_id(i32, i32, i8*, i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @vcos_log_error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
