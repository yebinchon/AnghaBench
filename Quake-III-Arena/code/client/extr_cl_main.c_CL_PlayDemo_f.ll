; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_PlayDemo_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_PlayDemo_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i8* }

@MAX_OSPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"playdemo <demoname>\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"sv_killserver\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@qtrue = common dso_local global i32 0, align 4
@demo_protocols = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"demos/%s\00", align 1
@clc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"Protocol %d not supported for demos\0A\00", align 1
@ERR_DROP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"couldn't open %s\00", align 1
@CA_CONNECTED = common dso_local global i64 0, align 8
@cls = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@CA_PRIMED = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_PlayDemo_f() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = load i32, i32* @MAX_OSPATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %1, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %2, align 8
  %13 = load i32, i32* @MAX_OSPATH, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %16 = call i32 (...) @Cmd_Argc()
  %17 = icmp ne i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %0
  %19 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %151

20:                                               ; preds = %0
  %21 = call i32 @Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* @qtrue, align 4
  %23 = call i32 @CL_Disconnect(i32 %22)
  %24 = call i8* @Cmd_Argv(i32 1)
  store i8* %24, i8** %3, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = getelementptr inbounds i8, i8* %29, i64 -6
  store i8* %30, i8** %4, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = icmp sgt i32 %32, 6
  br i1 %33, label %34, label %118

34:                                               ; preds = %20
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 46
  br i1 %39, label %40, label %118

40:                                               ; preds = %34
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 100
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 68
  br i1 %51, label %52, label %118

52:                                               ; preds = %46, %40
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 109
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 77
  br i1 %63, label %64, label %118

64:                                               ; preds = %58, %52
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 3
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 95
  br i1 %69, label %70, label %118

70:                                               ; preds = %64
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 4
  %73 = call i32 @atoi(i8* %72)
  store i32 %73, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %90, %70
  %75 = load i32*, i32** @demo_protocols, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %74
  %82 = load i32*, i32** @demo_protocols, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %93

90:                                               ; preds = %81
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %74

93:                                               ; preds = %89, %74
  %94 = load i32*, i32** @demo_protocols, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = trunc i64 %10 to i32
  %102 = load i8*, i8** %3, align 8
  %103 = call i32 @Com_sprintf(i8* %12, i32 %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %102)
  %104 = load i32, i32* @qtrue, align 4
  %105 = call i32 @FS_FOpenFileRead(i8* %12, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 3), i32 %104)
  br label %117

106:                                              ; preds = %93
  %107 = load i32, i32* %5, align 4
  %108 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  %109 = load i8*, i8** %3, align 8
  %110 = trunc i64 %14 to i32
  %111 = call i32 @Q_strncpyz(i8* %15, i8* %109, i32 %110)
  %112 = call i32 @strlen(i8* %15)
  %113 = sub nsw i32 %112, 6
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %15, i64 %114
  store i8 0, i8* %115, align 1
  %116 = call i32 @CL_WalkDemoExt(i8* %15, i8* %12, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 3))
  br label %117

117:                                              ; preds = %106, %100
  br label %121

118:                                              ; preds = %64, %58, %46, %34, %20
  %119 = load i8*, i8** %3, align 8
  %120 = call i32 @CL_WalkDemoExt(i8* %119, i8* %12, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 3))
  br label %121

121:                                              ; preds = %118, %117
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 3), align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* @ERR_DROP, align 4
  %126 = call i32 @Com_Error(i32 %125, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %12)
  store i32 1, i32* %8, align 4
  br label %151

127:                                              ; preds = %121
  %128 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 0), align 8
  %129 = call i8* @Cmd_Argv(i32 1)
  %130 = call i32 @Q_strncpyz(i8* %128, i8* %129, i32 8)
  %131 = call i32 (...) @Con_Close()
  %132 = load i64, i64* @CA_CONNECTED, align 8
  store i64 %132, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cls, i32 0, i32 0), align 8
  %133 = load i32, i32* @qtrue, align 4
  store i32 %133, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 2), align 4
  %134 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cls, i32 0, i32 1), align 8
  %135 = call i8* @Cmd_Argv(i32 1)
  %136 = call i32 @Q_strncpyz(i8* %134, i8* %135, i32 8)
  br label %137

137:                                              ; preds = %147, %127
  %138 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cls, i32 0, i32 0), align 8
  %139 = load i64, i64* @CA_CONNECTED, align 8
  %140 = icmp sge i64 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cls, i32 0, i32 0), align 8
  %143 = load i64, i64* @CA_PRIMED, align 8
  %144 = icmp slt i64 %142, %143
  br label %145

145:                                              ; preds = %141, %137
  %146 = phi i1 [ false, %137 ], [ %144, %141 ]
  br i1 %146, label %147, label %149

147:                                              ; preds = %145
  %148 = call i32 (...) @CL_ReadDemoMessage()
  br label %137

149:                                              ; preds = %145
  %150 = load i32, i32* @qfalse, align 4
  store i32 %150, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 1), align 8
  store i32 0, i32* %8, align 4
  br label %151

151:                                              ; preds = %149, %124, %18
  %152 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %8, align 4
  switch i32 %153, label %155 [
    i32 0, label %154
    i32 1, label %154
  ]

154:                                              ; preds = %151, %151
  ret void

155:                                              ; preds = %151
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Cmd_Argc(...) #2

declare dso_local i32 @Com_Printf(i8*, ...) #2

declare dso_local i32 @Cvar_Set(i8*, i8*) #2

declare dso_local i32 @CL_Disconnect(i32) #2

declare dso_local i8* @Cmd_Argv(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @FS_FOpenFileRead(i8*, i32*, i32) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i32 @CL_WalkDemoExt(i8*, i8*, i32*) #2

declare dso_local i32 @Com_Error(i32, i8*, i8*) #2

declare dso_local i32 @Con_Close(...) #2

declare dso_local i32 @CL_ReadDemoMessage(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
