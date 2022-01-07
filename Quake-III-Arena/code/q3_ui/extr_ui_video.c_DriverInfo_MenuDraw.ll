; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_video.c_DriverInfo_MenuDraw.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_video.c_DriverInfo_MenuDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8**, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i32, i32, i32 }

@s_driverinfo = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"VENDOR\00", align 1
@UI_CENTER = common dso_local global i32 0, align 4
@UI_SMALLFONT = common dso_local global i32 0, align 4
@color_red = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"PIXELFORMAT\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"EXTENSIONS\00", align 1
@uis = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@text_color_normal = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"color(%d-bits) Z(%d-bits) stencil(%d-bits)\00", align 1
@UI_RIGHT = common dso_local global i32 0, align 4
@UI_LEFT = common dso_local global i32 0, align 4
@SMALLCHAR_HEIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @DriverInfo_MenuDraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DriverInfo_MenuDraw() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @Menu_Draw(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s_driverinfo, i32 0, i32 2))
  %4 = load i32, i32* @UI_CENTER, align 4
  %5 = load i32, i32* @UI_SMALLFONT, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @color_red, align 4
  %8 = call i32 @UI_DrawString(i32 320, i32 80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7)
  %9 = load i32, i32* @UI_CENTER, align 4
  %10 = load i32, i32* @UI_SMALLFONT, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @color_red, align 4
  %13 = call i32 @UI_DrawString(i32 320, i32 152, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load i32, i32* @UI_CENTER, align 4
  %15 = load i32, i32* @UI_SMALLFONT, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @color_red, align 4
  %18 = call i32 @UI_DrawString(i32 320, i32 192, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 0, i32 0), align 8
  %20 = load i32, i32* @UI_CENTER, align 4
  %21 = load i32, i32* @UI_SMALLFONT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @text_color_normal, align 4
  %24 = call i32 @UI_DrawString(i32 320, i32 96, i8* %19, i32 %22, i32 %23)
  %25 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 0, i32 1), align 8
  %26 = load i32, i32* @UI_CENTER, align 4
  %27 = load i32, i32* @UI_SMALLFONT, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @text_color_normal, align 4
  %30 = call i32 @UI_DrawString(i32 320, i32 112, i8* %25, i32 %28, i32 %29)
  %31 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 0, i32 2), align 8
  %32 = load i32, i32* @UI_CENTER, align 4
  %33 = load i32, i32* @UI_SMALLFONT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @text_color_normal, align 4
  %36 = call i32 @UI_DrawString(i32 320, i32 128, i8* %31, i32 %34, i32 %35)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 0, i32 5), align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 0, i32 4), align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 0, i32 3), align 8
  %40 = call i8* @va(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* @UI_CENTER, align 4
  %42 = load i32, i32* @UI_SMALLFONT, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @text_color_normal, align 4
  %45 = call i32 @UI_DrawString(i32 320, i32 168, i8* %40, i32 %43, i32 %44)
  store i32 208, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %46

46:                                               ; preds = %82, %0
  %47 = load i32, i32* %1, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s_driverinfo, i32 0, i32 0), align 8
  %49 = sdiv i32 %48, 2
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %85

51:                                               ; preds = %46
  %52 = load i32, i32* %2, align 4
  %53 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s_driverinfo, i32 0, i32 1), align 8
  %54 = load i32, i32* %1, align 4
  %55 = mul nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %53, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* @UI_RIGHT, align 4
  %60 = load i32, i32* @UI_SMALLFONT, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @text_color_normal, align 4
  %63 = call i32 @UI_DrawString(i32 316, i32 %52, i8* %58, i32 %61, i32 %62)
  %64 = load i32, i32* %2, align 4
  %65 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s_driverinfo, i32 0, i32 1), align 8
  %66 = load i32, i32* %1, align 4
  %67 = mul nsw i32 %66, 2
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %65, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* @UI_LEFT, align 4
  %73 = load i32, i32* @UI_SMALLFONT, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @text_color_normal, align 4
  %76 = call i32 @UI_DrawString(i32 324, i32 %64, i8* %71, i32 %74, i32 %75)
  %77 = load i64, i64* @SMALLCHAR_HEIGHT, align 8
  %78 = load i32, i32* %2, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %51
  %83 = load i32, i32* %1, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %1, align 4
  br label %46

85:                                               ; preds = %46
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s_driverinfo, i32 0, i32 0), align 8
  %87 = and i32 %86, 1
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %85
  %90 = load i32, i32* %2, align 4
  %91 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s_driverinfo, i32 0, i32 1), align 8
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s_driverinfo, i32 0, i32 0), align 8
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %91, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = load i32, i32* @UI_CENTER, align 4
  %98 = load i32, i32* @UI_SMALLFONT, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @text_color_normal, align 4
  %101 = call i32 @UI_DrawString(i32 320, i32 %90, i8* %96, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %89, %85
  ret void
}

declare dso_local i32 @Menu_Draw(i32*) #1

declare dso_local i32 @UI_DrawString(i32, i32, i8*, i32, i32) #1

declare dso_local i8* @va(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
