; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_serverinfo.c_ServerInfo_MenuDraw.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_serverinfo.c_ServerInfo_MenuDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32 }

@MAX_INFO_KEY = common dso_local global i32 0, align 4
@MAX_INFO_VALUE = common dso_local global i32 0, align 4
@SCREEN_HEIGHT = common dso_local global i32 0, align 4
@s_serverinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SMALLCHAR_HEIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@SCREEN_WIDTH = common dso_local global double 0.000000e+00, align 8
@UI_RIGHT = common dso_local global i32 0, align 4
@UI_SMALLFONT = common dso_local global i32 0, align 4
@color_red = common dso_local global i32 0, align 4
@UI_LEFT = common dso_local global i32 0, align 4
@text_color_normal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ServerInfo_MenuDraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ServerInfo_MenuDraw() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_INFO_KEY, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  %10 = load i32, i32* @MAX_INFO_VALUE, align 4
  %11 = zext i32 %10 to i64
  %12 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %13 = load i32, i32* @SCREEN_HEIGHT, align 4
  %14 = sdiv i32 %13, 2
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_serverinfo, i32 0, i32 0), align 8
  %16 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %17 = mul nsw i32 %15, %16
  %18 = sdiv i32 %17, 2
  %19 = sub nsw i32 %14, %18
  %20 = sub nsw i32 %19, 20
  store i32 %20, i32* %5, align 4
  %21 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_serverinfo, i32 0, i32 1), align 8
  store i8* %21, i8** %1, align 8
  br label %22

22:                                               ; preds = %31, %0
  %23 = load i8*, i8** %1, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %55

25:                                               ; preds = %22
  %26 = call i32 @Info_NextPair(i8** %1, i8* %9, i8* %12)
  %27 = getelementptr inbounds i8, i8* %9, i64 0
  %28 = load i8, i8* %27, align 16
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %55

31:                                               ; preds = %25
  %32 = load i32, i32* @MAX_INFO_KEY, align 4
  %33 = call i32 @Q_strcat(i8* %9, i32 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %34 = load double, double* @SCREEN_WIDTH, align 8
  %35 = fmul double %34, 5.000000e-01
  %36 = fsub double %35, 8.000000e+00
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @UI_RIGHT, align 4
  %39 = load i32, i32* @UI_SMALLFONT, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @color_red, align 4
  %42 = call i32 @UI_DrawString(double %36, i32 %37, i8* %9, i32 %40, i32 %41)
  %43 = load double, double* @SCREEN_WIDTH, align 8
  %44 = fmul double %43, 5.000000e-01
  %45 = fadd double %44, 8.000000e+00
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @UI_LEFT, align 4
  %48 = load i32, i32* @UI_SMALLFONT, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @text_color_normal, align 4
  %51 = call i32 @UI_DrawString(double %45, i32 %46, i8* %12, i32 %49, i32 %50)
  %52 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %22

55:                                               ; preds = %30, %22
  %56 = call i32 @Menu_Draw(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_serverinfo, i32 0, i32 2))
  %57 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %57)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Info_NextPair(i8**, i8*, i8*) #2

declare dso_local i32 @Q_strcat(i8*, i32, i8*) #2

declare dso_local i32 @UI_DrawString(double, i32, i8*, i32, i32) #2

declare dso_local i32 @Menu_Draw(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
