; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_gameinfo.c_UI_CanShowTierVideo.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_gameinfo.c_UI_CanShowTierVideo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@MAX_INFO_VALUE = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@uis = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [11 x i8] c"g_spVideos\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"tier%i\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UI_CanShowTierVideo(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [16 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @MAX_INFO_VALUE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @qfalse, align 4
  store i32 %15, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %38

16:                                               ; preds = %1
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 0), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 8
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @qfalse, align 4
  store i32 %23, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %38

24:                                               ; preds = %19, %16
  %25 = trunc i64 %9 to i32
  %26 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %25)
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @Com_sprintf(i8* %27, i32 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %31 = call i32 @Info_ValueForKey(i8* %11, i8* %30)
  %32 = call i64 @atoi(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @qtrue, align 4
  store i32 %35, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %38

36:                                               ; preds = %24
  %37 = load i32, i32* @qfalse, align 4
  store i32 %37, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %38

38:                                               ; preds = %36, %34, %22, %14
  %39 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %39)
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i8*, i32) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #2

declare dso_local i64 @atoi(i32) #2

declare dso_local i32 @Info_ValueForKey(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
