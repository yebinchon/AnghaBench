; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_main.c_SV_ConnectionlessPacket.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_main.c_SV_ConnectionlessPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"SV packet %s : %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"getstatus\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"getinfo\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"getchallenge\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"ipAuthorize\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"rcon\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"bad connectionless packet from %s:\0A%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_ConnectionlessPacket(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = call i32 @MSG_BeginReadingOOB(%struct.TYPE_8__* %7)
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = call i32 @MSG_ReadLong(%struct.TYPE_8__* %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 4
  %15 = call i32 @Q_strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %14, i32 7)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = call i32 @Huff_Decompress(%struct.TYPE_8__* %18, i32 12)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = call i8* @MSG_ReadStringLine(%struct.TYPE_8__* %21)
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @Cmd_TokenizeString(i8* %23)
  %25 = call i8* @Cmd_Argv(i32 0)
  store i8* %25, i8** %6, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @NET_AdrToString(i32 %26)
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %27, i8* %28)
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @Q_stricmp(i8* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %20
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @SVC_Status(i32 %34)
  br label %88

36:                                               ; preds = %20
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @Q_stricmp(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @SVC_Info(i32 %41)
  br label %87

43:                                               ; preds = %36
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @Q_stricmp(i8* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @SV_GetChallenge(i32 %48)
  br label %86

50:                                               ; preds = %43
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @Q_stricmp(i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @SV_DirectConnect(i32 %55)
  br label %85

57:                                               ; preds = %50
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @Q_stricmp(i8* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @SV_AuthorizeIpPacket(i32 %62)
  br label %84

64:                                               ; preds = %57
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @Q_stricmp(i8* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = call i32 @SVC_RemoteCommand(i32 %69, %struct.TYPE_8__* %70)
  br label %83

72:                                               ; preds = %64
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @Q_stricmp(i8* %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  br label %82

77:                                               ; preds = %72
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @NET_AdrToString(i32 %78)
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %79, i8* %80)
  br label %82

82:                                               ; preds = %77, %76
  br label %83

83:                                               ; preds = %82, %68
  br label %84

84:                                               ; preds = %83, %61
  br label %85

85:                                               ; preds = %84, %54
  br label %86

86:                                               ; preds = %85, %47
  br label %87

87:                                               ; preds = %86, %40
  br label %88

88:                                               ; preds = %87, %33
  ret void
}

declare dso_local i32 @MSG_BeginReadingOOB(%struct.TYPE_8__*) #1

declare dso_local i32 @MSG_ReadLong(%struct.TYPE_8__*) #1

declare dso_local i32 @Q_strncmp(i8*, i32*, i32) #1

declare dso_local i32 @Huff_Decompress(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @MSG_ReadStringLine(%struct.TYPE_8__*) #1

declare dso_local i32 @Cmd_TokenizeString(i8*) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i32 @Com_DPrintf(i8*, i32, i8*) #1

declare dso_local i32 @NET_AdrToString(i32) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @SVC_Status(i32) #1

declare dso_local i32 @SVC_Info(i32) #1

declare dso_local i32 @SV_GetChallenge(i32) #1

declare dso_local i32 @SV_DirectConnect(i32) #1

declare dso_local i32 @SV_AuthorizeIpPacket(i32) #1

declare dso_local i32 @SVC_RemoteCommand(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
