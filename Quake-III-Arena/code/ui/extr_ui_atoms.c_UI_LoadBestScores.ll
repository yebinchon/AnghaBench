; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_atoms.c_UI_LoadBestScores.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_atoms.c_UI_LoadBestScores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MAX_QPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"games/%s_%i.game\00", align 1
@FS_READ = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"demos/%s_%d.dm_%d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@uiInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_LoadBestScores(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @MAX_QPATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = call i32 @memset(i32* %8, i32 0, i32 4)
  %15 = load i32, i32* @MAX_QPATH, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (i8*, i32, i8*, i8*, i32, ...) @Com_sprintf(i8* %13, i32 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %17)
  %19 = load i32, i32* @FS_READ, align 4
  %20 = call i64 @trap_FS_FOpenFile(i8* %13, i32* %7, i32 %19)
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @trap_FS_Read(i32* %9, i32 4, i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp eq i64 %26, 4
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @trap_FS_Read(i32* %8, i32 4, i32 %29)
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @trap_FS_FCloseFile(i32 %32)
  br label %34

34:                                               ; preds = %31, %2
  %35 = load i32, i32* @qfalse, align 4
  %36 = call i32 @UI_SetBestScores(i32* %8, i32 %35)
  %37 = load i32, i32* @MAX_QPATH, align 4
  %38 = load i8*, i8** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %41 = trunc i64 %40 to i32
  %42 = call i32 (i8*, i32, i8*, i8*, i32, ...) @Com_sprintf(i8* %13, i32 %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32 %39, i32 %41)
  %43 = load i32, i32* @qfalse, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 0), align 4
  %44 = load i32, i32* @FS_READ, align 4
  %45 = call i64 @trap_FS_FOpenFile(i8* %13, i32* %7, i32 %44)
  %46 = icmp sge i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %34
  %48 = load i32, i32* @qtrue, align 4
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 0), align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @trap_FS_FCloseFile(i32 %49)
  br label %51

51:                                               ; preds = %47, %34
  %52 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %52)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, i32, ...) #2

declare dso_local i64 @trap_FS_FOpenFile(i8*, i32*, i32) #2

declare dso_local i32 @trap_FS_Read(i32*, i32, i32) #2

declare dso_local i32 @trap_FS_FCloseFile(i32) #2

declare dso_local i32 @UI_SetBestScores(i32*, i32) #2

declare dso_local i64 @trap_Cvar_VariableValue(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
