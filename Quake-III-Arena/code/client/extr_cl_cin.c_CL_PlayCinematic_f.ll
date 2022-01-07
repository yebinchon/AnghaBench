; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_CL_PlayCinematic_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_CL_PlayCinematic_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64, i32* }

@CIN_system = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"CL_PlayCinematic_f\0A\00", align 1
@cls = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@CA_CINEMATIC = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"demoend.roq\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"end.roq\00", align 1
@CIN_hold = common dso_local global i32 0, align 4
@CIN_loop = common dso_local global i32 0, align 4
@SCREEN_WIDTH = common dso_local global i32 0, align 4
@SCREEN_HEIGHT = common dso_local global i32 0, align 4
@CL_handle = common dso_local global i64 0, align 8
@cinTable = common dso_local global %struct.TYPE_4__* null, align 8
@currentHandle = common dso_local global i64 0, align 8
@FMV_PLAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_PlayCinematic_f() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @CIN_system, align 4
  store i32 %5, i32* %4, align 4
  %6 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cls, i32 0, i32 0), align 8
  %8 = load i64, i64* @CA_CINEMATIC, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 (...) @SCR_StopCinematic()
  br label %12

12:                                               ; preds = %10, %0
  %13 = call i8* @Cmd_Argv(i32 1)
  store i8* %13, i8** %1, align 8
  %14 = call i8* @Cmd_Argv(i32 2)
  store i8* %14, i8** %2, align 8
  %15 = load i32, i32* @qfalse, align 4
  store i32 %15, i32* %3, align 4
  %16 = load i8*, i8** %2, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load i8*, i8** %2, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 49
  br i1 %23, label %32, label %24

24:                                               ; preds = %18, %12
  %25 = load i8*, i8** %1, align 8
  %26 = call i64 @Q_stricmp(i8* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %1, align 8
  %30 = call i64 @Q_stricmp(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28, %24, %18
  %33 = load i32, i32* @CIN_hold, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i8*, i8** %2, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load i8*, i8** %2, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 50
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* @CIN_loop, align 4
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %39, %36
  %50 = call i32 (...) @S_StopAllSounds()
  %51 = load i8*, i8** %1, align 8
  %52 = load i32, i32* @SCREEN_WIDTH, align 4
  %53 = load i32, i32* @SCREEN_HEIGHT, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i64 @CIN_PlayCinematic(i8* %51, i32 0, i32 0, i32 %52, i32 %53, i32 %54)
  store i64 %55, i64* @CL_handle, align 8
  %56 = load i64, i64* @CL_handle, align 8
  %57 = icmp sge i64 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %76, %58
  %60 = call i32 (...) @SCR_RunCinematic()
  br label %61

61:                                               ; preds = %59
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %63 = load i64, i64* @currentHandle, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %61
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %70 = load i64, i64* @currentHandle, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @FMV_PLAY, align 8
  %75 = icmp eq i64 %73, %74
  br label %76

76:                                               ; preds = %68, %61
  %77 = phi i1 [ false, %61 ], [ %75, %68 ]
  br i1 %77, label %59, label %78

78:                                               ; preds = %76
  br label %79

79:                                               ; preds = %78, %49
  ret void
}

declare dso_local i32 @Com_DPrintf(i8*) #1

declare dso_local i32 @SCR_StopCinematic(...) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i64 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @S_StopAllSounds(...) #1

declare dso_local i64 @CIN_PlayCinematic(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SCR_RunCinematic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
