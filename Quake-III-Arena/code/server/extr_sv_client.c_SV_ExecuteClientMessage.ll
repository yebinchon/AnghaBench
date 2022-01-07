; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_client.c_SV_ExecuteClientMessage.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_client.c_SV_ExecuteClientMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32, i8*, i8*, i32, i32*, i8*, i8* }

@.str = private unnamed_addr constant [32 x i8] c"DEBUG: illegible client message\00", align 1
@MAX_RELIABLE_COMMANDS = common dso_local global i8* null, align 8
@sv = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"nextdl\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"%s : ignoring pre map_restart / outdated client message\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%s : dropped gamestate, resending\0A\00", align 1
@clc_EOF = common dso_local global i32 0, align 4
@clc_clientCommand = common dso_local global i32 0, align 4
@CS_ZOMBIE = common dso_local global i64 0, align 8
@clc_move = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@clc_moveNoDelta = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"WARNING: bad command byte for client %i\0A\00", align 1
@svs = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_ExecuteClientMessage(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @MSG_Bitstream(i32* %7)
  %9 = load i32*, i32** %4, align 8
  %10 = call i8* @MSG_ReadLong(i32* %9)
  %11 = ptrtoint i8* %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i8* @MSG_ReadLong(i32* %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  store i8* %13, i8** %15, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 3
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ult i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = call i32 @SV_DropClient(%struct.TYPE_10__* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %152

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = call i8* @MSG_ReadLong(i32* %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 7
  store i8* %25, i8** %27, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 7
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 6
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** @MAX_RELIABLE_COMMANDS, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = inttoptr i64 %37 to i8*
  %39 = icmp ult i8* %30, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %23
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = call i32 @SV_DropClient(%struct.TYPE_10__* %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 6
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 7
  store i8* %45, i8** %47, align 8
  br label %152

48:                                               ; preds = %23
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sv, i32 0, i32 0), align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %93

52:                                               ; preds = %48
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %93, label %58

58:                                               ; preds = %52
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @strstr(i32 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %93, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sv, i32 0, i32 1), align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sv, i32 0, i32 0), align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %152

77:                                               ; preds = %68, %64
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ugt i8* %80, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %91 = call i32 @SV_SendClientGameState(%struct.TYPE_10__* %90)
  br label %92

92:                                               ; preds = %85, %77
  br label %152

93:                                               ; preds = %58, %52, %48
  br label %94

94:                                               ; preds = %120, %93
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @MSG_ReadByte(i32* %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @clc_EOF, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %121

101:                                              ; preds = %94
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @clc_clientCommand, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %121

106:                                              ; preds = %101
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @SV_ClientCommand(%struct.TYPE_10__* %107, i32* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %106
  br label %152

112:                                              ; preds = %106
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @CS_ZOMBIE, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %152

119:                                              ; preds = %112
  br label %120

120:                                              ; preds = %119
  br i1 true, label %94, label %121

121:                                              ; preds = %120, %105, %100
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @clc_move, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %127 = load i32*, i32** %4, align 8
  %128 = load i32, i32* @qtrue, align 4
  %129 = call i32 @SV_UserMove(%struct.TYPE_10__* %126, i32* %127, i32 %128)
  br label %152

130:                                              ; preds = %121
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* @clc_moveNoDelta, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %136 = load i32*, i32** %4, align 8
  %137 = load i32, i32* @qfalse, align 4
  %138 = call i32 @SV_UserMove(%struct.TYPE_10__* %135, i32* %136, i32 %137)
  br label %151

139:                                              ; preds = %130
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @clc_EOF, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @svs, i32 0, i32 0), align 4
  %146 = sext i32 %145 to i64
  %147 = sub i64 0, %146
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i64 %147
  %149 = call i32 @Com_Printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_10__* %148)
  br label %150

150:                                              ; preds = %143, %139
  br label %151

151:                                              ; preds = %150, %134
  br label %152

152:                                              ; preds = %20, %40, %72, %92, %111, %118, %151, %125
  ret void
}

declare dso_local i32 @MSG_Bitstream(i32*) #1

declare dso_local i8* @MSG_ReadLong(i32*) #1

declare dso_local i32 @SV_DropClient(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @strstr(i32, i8*) #1

declare dso_local i32 @Com_DPrintf(i8*, i32) #1

declare dso_local i32 @SV_SendClientGameState(%struct.TYPE_10__*) #1

declare dso_local i32 @MSG_ReadByte(i32*) #1

declare dso_local i32 @SV_ClientCommand(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @SV_UserMove(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @Com_Printf(i8*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
