; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_ConnectionlessPacket.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_ConnectionlessPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"CL packet %s: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"challengeResponse\00", align 1
@cls = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@CA_CONNECTING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"Unwanted challenge response received.  Ignored.\0A\00", align 1
@clc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CA_CHALLENGING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"challengeResponse: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"connectResponse\00", align 1
@CA_CONNECTED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"Dup connect received.  Ignored.\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"connectResponse packet while not connecting.  Ignored.\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"connectResponse from a different address.  Ignored.\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"%s should have been %s\0A\00", align 1
@NS_CLIENT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"net_qport\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"infoResponse\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"statusResponse\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"keyAuthorize\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"motd\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"getserversResponse\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"Unknown connectionless packet command.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_ConnectionlessPacket(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @MSG_BeginReadingOOB(i32* %7)
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @MSG_ReadLong(i32* %9)
  %11 = load i32*, i32** %4, align 8
  %12 = call i8* @MSG_ReadStringLine(i32* %11)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @Cmd_TokenizeString(i8* %13)
  %15 = call i8* @Cmd_Argv(i32 0)
  store i8* %15, i8** %6, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @NET_AdrToString(i32 %16)
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %18)
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @Q_stricmp(i8* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %2
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cls, i32 0, i32 0), align 8
  %25 = load i64, i64* @CA_CONNECTING, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %36

29:                                               ; preds = %23
  %30 = call i8* @Cmd_Argv(i32 1)
  %31 = call i32 @atoi(i8* %30)
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 5), align 4
  %32 = load i64, i64* @CA_CHALLENGING, align 8
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cls, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 6), align 8
  store i32 -99999, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 0), align 8
  %33 = load i32, i32* %3, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 4), align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 5), align 4
  %35 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %29, %27
  br label %137

37:                                               ; preds = %2
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @Q_stricmp(i8* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %71, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cls, i32 0, i32 0), align 8
  %43 = load i64, i64* @CA_CONNECTED, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %137

47:                                               ; preds = %41
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cls, i32 0, i32 0), align 8
  %49 = load i64, i64* @CA_CHALLENGING, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  br label %137

53:                                               ; preds = %47
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 4), align 8
  %56 = call i32 @NET_CompareBaseAdr(i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @NET_AdrToString(i32 %60)
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 4), align 8
  %63 = call i32 @NET_AdrToString(i32 %62)
  %64 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %61, i32 %63)
  br label %137

65:                                               ; preds = %53
  %66 = load i32, i32* @NS_CLIENT, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @Cvar_VariableValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %69 = call i32 @Netchan_Setup(i32 %66, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 3), i32 %67, i32 %68)
  %70 = load i64, i64* @CA_CONNECTED, align 8
  store i64 %70, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cls, i32 0, i32 0), align 8
  store i32 -9999, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 1), align 4
  br label %137

71:                                               ; preds = %37
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @Q_stricmp(i8* %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %3, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @CL_ServerInfoPacket(i32 %76, i32* %77)
  br label %137

79:                                               ; preds = %71
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @Q_stricmp(i8* %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %3, align 4
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @CL_ServerStatusResponse(i32 %84, i32* %85)
  br label %137

87:                                               ; preds = %79
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @Q_stricmp(i8* %88, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @CL_DisconnectPacket(i32 %92)
  br label %137

94:                                               ; preds = %87
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 @Q_stricmp(i8* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* @NS_CLIENT, align 4
  %100 = load i32, i32* %3, align 4
  %101 = call i8* @Cmd_Argv(i32 1)
  %102 = call i32 @NET_OutOfBandPrint(i32 %99, i32 %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %101)
  br label %137

103:                                              ; preds = %94
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @Q_stricmp(i8* %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  br label %137

108:                                              ; preds = %103
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 @Q_stricmp(i8* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @CL_MotdPacket(i32 %113)
  br label %137

115:                                              ; preds = %108
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @Q_stricmp(i8* %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %115
  %120 = load i32*, i32** %4, align 8
  %121 = call i8* @MSG_ReadString(i32* %120)
  store i8* %121, i8** %5, align 8
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 2), align 8
  %123 = load i8*, i8** %5, align 8
  %124 = call i32 @Q_strncpyz(i32 %122, i8* %123, i32 4)
  %125 = load i8*, i8** %5, align 8
  %126 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %125)
  br label %137

127:                                              ; preds = %115
  %128 = load i8*, i8** %6, align 8
  %129 = call i32 @Q_strncmp(i8* %128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 18)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = load i32, i32* %3, align 4
  %133 = load i32*, i32** %4, align 8
  %134 = call i32 @CL_ServersResponsePacket(i32 %132, i32* %133)
  br label %137

135:                                              ; preds = %127
  %136 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %131, %119, %112, %107, %98, %91, %83, %75, %65, %58, %51, %45, %36
  ret void
}

declare dso_local i32 @MSG_BeginReadingOOB(i32*) #1

declare dso_local i32 @MSG_ReadLong(i32*) #1

declare dso_local i8* @MSG_ReadStringLine(i32*) #1

declare dso_local i32 @Cmd_TokenizeString(i8*) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i32 @Com_DPrintf(i8*, ...) #1

declare dso_local i32 @NET_AdrToString(i32) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @NET_CompareBaseAdr(i32, i32) #1

declare dso_local i32 @Netchan_Setup(i32, i32*, i32, i32) #1

declare dso_local i32 @Cvar_VariableValue(i8*) #1

declare dso_local i32 @CL_ServerInfoPacket(i32, i32*) #1

declare dso_local i32 @CL_ServerStatusResponse(i32, i32*) #1

declare dso_local i32 @CL_DisconnectPacket(i32) #1

declare dso_local i32 @NET_OutOfBandPrint(i32, i32, i8*, i8*) #1

declare dso_local i32 @CL_MotdPacket(i32) #1

declare dso_local i8* @MSG_ReadString(i32*) #1

declare dso_local i32 @Q_strncpyz(i32, i8*, i32) #1

declare dso_local i32 @Q_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @CL_ServersResponsePacket(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
