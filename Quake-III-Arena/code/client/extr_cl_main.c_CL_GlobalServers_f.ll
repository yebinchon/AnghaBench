; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_GlobalServers_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_GlobalServers_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"usage: globalservers <master# 0-1> <protocol> [keywords]\0A\00", align 1
@cls = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Requesting servers from the master...\0A\00", align 1
@MASTER_SERVER_NAME = common dso_local global i32 0, align 4
@AS_MPLAYER = common dso_local global i32 0, align 4
@AS_GLOBAL = common dso_local global i32 0, align 4
@NA_IP = common dso_local global i32 0, align 4
@PORT_MASTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"getservers %s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"fs_restrict\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" demo\00", align 1
@NS_SERVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_GlobalServers_f() #0 {
  %1 = alloca %struct.TYPE_5__, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = call i32 (...) @Cmd_Argc()
  %7 = icmp slt i32 %6, 3
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @Com_Printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %69

10:                                               ; preds = %0
  %11 = call i8* @Cmd_Argv(i32 1)
  %12 = call i32 @atoi(i8* %11)
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 0), align 4
  %13 = call i32 @Com_Printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 0), align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i32, i32* @MASTER_SERVER_NAME, align 4
  %18 = call i32 @NET_StringToAdr(i32 %17, %struct.TYPE_5__* %1)
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 1), align 4
  %19 = load i32, i32* @AS_MPLAYER, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 3), align 4
  br label %24

20:                                               ; preds = %10
  %21 = load i32, i32* @MASTER_SERVER_NAME, align 4
  %22 = call i32 @NET_StringToAdr(i32 %21, %struct.TYPE_5__* %1)
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 2), align 4
  %23 = load i32, i32* @AS_GLOBAL, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 3), align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* @NA_IP, align 4
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @PORT_MASTER, align 4
  %28 = call i32 @BigShort(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %31 = call i8* @Cmd_Argv(i32 2)
  %32 = call i32 (i8*, i8*, ...) @sprintf(i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %35 = call i32 @strlen(i8* %34)
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  store i8* %37, i8** %4, align 8
  %38 = call i32 (...) @Cmd_Argc()
  store i32 %38, i32* %3, align 4
  store i32 3, i32* %2, align 4
  br label %39

39:                                               ; preds = %51, %24
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* %2, align 4
  %46 = call i8* @Cmd_Argv(i32 %45)
  %47 = call i32 (i8*, i8*, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  %48 = load i8*, i8** %4, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %4, align 8
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %2, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %2, align 4
  br label %39

54:                                               ; preds = %39
  %55 = call i64 @Cvar_VariableValue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 (i8*, i8*, ...) @sprintf(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %60 = load i8*, i8** %4, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %4, align 8
  br label %63

63:                                               ; preds = %57, %54
  %64 = load i32, i32* @NS_SERVER, align 4
  %65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %66 = bitcast %struct.TYPE_5__* %1 to i64*
  %67 = load i64, i64* %66, align 4
  %68 = call i32 @NET_OutOfBandPrint(i32 %64, i64 %67, i8* %65)
  br label %69

69:                                               ; preds = %63, %8
  ret void
}

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i32 @NET_StringToAdr(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @BigShort(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @Cvar_VariableValue(i8*) #1

declare dso_local i32 @NET_OutOfBandPrint(i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
