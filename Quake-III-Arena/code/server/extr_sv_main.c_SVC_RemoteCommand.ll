; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_main.c_SVC_RemoteCommand.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_main.c_SVC_RemoteCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@SVC_RemoteCommand.lasttime = internal global i32 0, align 4
@sv_rconPassword = common dso_local global %struct.TYPE_4__* null, align 8
@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Bad rcon from %s:\0A%s\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Rcon from %s:\0A%s\0A\00", align 1
@svs = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@SV_FlushRedirect = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"No rconpassword set on the server.\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Bad rconpassword.\0A\00", align 1
@SV_OUTPUTBUF_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SVC_RemoteCommand(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [1008 x i8], align 16
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %10 = call i32 (...) @Com_Milliseconds()
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @SVC_RemoteCommand.lasttime, align 4
  %13 = add i32 %12, 500
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %110

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* @SVC_RemoteCommand.lasttime, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sv_rconPassword, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strlen(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = call i32 @Cmd_Argv(i32 1)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sv_rconPassword, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @strcmp(i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23, %16
  %31 = load i32, i32* @qfalse, align 4
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @NET_AdrToString(i32 %32)
  %34 = call i32 @Cmd_Argv(i32 2)
  %35 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  br label %42

36:                                               ; preds = %23
  %37 = load i32, i32* @qtrue, align 4
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @NET_AdrToString(i32 %38)
  %40 = call i32 @Cmd_Argv(i32 2)
  %41 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %30
  %43 = load i32, i32* %3, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @svs, i32 0, i32 0), align 4
  %44 = getelementptr inbounds [1008 x i8], [1008 x i8]* %8, i64 0, i64 0
  %45 = load i32, i32* @SV_FlushRedirect, align 4
  %46 = call i32 @Com_BeginRedirect(i8* %44, i32 1008, i32 %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sv_rconPassword, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strlen(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %42
  %53 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %108

54:                                               ; preds = %42
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %107

59:                                               ; preds = %54
  %60 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %60, align 16
  %61 = call i8* (...) @Cmd_Cmd()
  store i8* %61, i8** %9, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 4
  store i8* %63, i8** %9, align 8
  br label %64

64:                                               ; preds = %70, %59
  %65 = load i8*, i8** %9, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 32
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %9, align 8
  br label %64

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %88, %73
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 32
  br label %86

86:                                               ; preds = %80, %74
  %87 = phi i1 [ false, %74 ], [ %85, %80 ]
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %9, align 8
  br label %74

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %98, %91
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 32
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i8*, i8** %9, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %9, align 8
  br label %92

101:                                              ; preds = %92
  %102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 @Q_strcat(i8* %102, i32 1024, i8* %103)
  %105 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %106 = call i32 @Cmd_ExecuteString(i8* %105)
  br label %107

107:                                              ; preds = %101, %57
  br label %108

108:                                              ; preds = %107, %52
  %109 = call i32 (...) @Com_EndRedirect()
  br label %110

110:                                              ; preds = %108, %15
  ret void
}

declare dso_local i32 @Com_Milliseconds(...) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @Cmd_Argv(i32) #1

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @NET_AdrToString(i32) #1

declare dso_local i32 @Com_BeginRedirect(i8*, i32, i32) #1

declare dso_local i8* @Cmd_Cmd(...) #1

declare dso_local i32 @Q_strcat(i8*, i32, i8*) #1

declare dso_local i32 @Cmd_ExecuteString(i8*) #1

declare dso_local i32 @Com_EndRedirect(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
