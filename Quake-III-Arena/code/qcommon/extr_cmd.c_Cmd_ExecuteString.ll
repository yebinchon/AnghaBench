; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cmd.c_Cmd_ExecuteString.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cmd.c_Cmd_ExecuteString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (...)*, %struct.TYPE_5__*, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@cmd_functions = common dso_local global %struct.TYPE_5__* null, align 8
@cmd_argv = common dso_local global i32* null, align 8
@com_cl_running = common dso_local global %struct.TYPE_7__* null, align 8
@com_sv_running = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cmd_ExecuteString(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__**, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @Cmd_TokenizeString(i8* %5)
  %7 = call i32 (...) @Cmd_Argc()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %93

10:                                               ; preds = %1
  store %struct.TYPE_5__** @cmd_functions, %struct.TYPE_5__*** %4, align 8
  br label %11

11:                                               ; preds = %47, %10
  %12 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %50

15:                                               ; preds = %11
  %16 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %3, align 8
  %18 = load i32*, i32** @cmd_argv, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @Q_stricmp(i32 %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %46, label %26

26:                                               ; preds = %15
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cmd_functions, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** @cmd_functions, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32 (...)*, i32 (...)** %36, align 8
  %38 = icmp ne i32 (...)* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %26
  br label %50

40:                                               ; preds = %26
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32 (...)*, i32 (...)** %42, align 8
  %44 = call i32 (...) %43()
  br label %45

45:                                               ; preds = %40
  br label %93

46:                                               ; preds = %15
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store %struct.TYPE_5__** %49, %struct.TYPE_5__*** %4, align 8
  br label %11

50:                                               ; preds = %39, %11
  %51 = call i64 (...) @Cvar_Command()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %93

54:                                               ; preds = %50
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** @com_cl_running, align 8
  %56 = icmp ne %struct.TYPE_7__* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** @com_cl_running, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = call i64 (...) @CL_GameCommand()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %93

66:                                               ; preds = %62, %57, %54
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @com_sv_running, align 8
  %68 = icmp ne %struct.TYPE_6__* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @com_sv_running, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = call i64 (...) @SV_GameCommand()
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %93

78:                                               ; preds = %74, %69, %66
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** @com_cl_running, align 8
  %80 = icmp ne %struct.TYPE_7__* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** @com_cl_running, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = call i64 (...) @UI_GameCommand()
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %93

90:                                               ; preds = %86, %81, %78
  %91 = load i8*, i8** %2, align 8
  %92 = call i32 @CL_ForwardCommandToServer(i8* %91)
  br label %93

93:                                               ; preds = %90, %89, %77, %65, %53, %45, %9
  ret void
}

declare dso_local i32 @Cmd_TokenizeString(i8*) #1

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i32 @Q_stricmp(i32, i32) #1

declare dso_local i64 @Cvar_Command(...) #1

declare dso_local i64 @CL_GameCommand(...) #1

declare dso_local i64 @SV_GameCommand(...) #1

declare dso_local i64 @UI_GameCommand(...) #1

declare dso_local i32 @CL_ForwardCommandToServer(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
