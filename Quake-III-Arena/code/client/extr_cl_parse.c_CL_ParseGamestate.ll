; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_parse.c_CL_ParseGamestate.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_parse.c_CL_ParseGamestate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8*, i64 }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, i64 }

@clc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@cl = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@svc_EOF = common dso_local global i32 0, align 4
@svc_configstring = common dso_local global i32 0, align 4
@MAX_CONFIGSTRINGS = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"configstring > MAX_CONFIGSTRINGS\00", align 1
@MAX_GAMESTATE_CHARS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"MAX_GAMESTATE_CHARS exceeded\00", align 1
@svc_baseline = common dso_local global i32 0, align 4
@GENTITYNUM_BITS = common dso_local global i32 0, align 4
@MAX_GENTITIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Baseline number out of range: %i\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"CL_ParseGamestate: bad command byte\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"cl_paused\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_ParseGamestate(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = call i32 (...) @Con_Close()
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @clc, i32 0, i32 3), align 8
  %11 = call i32 (...) @CL_ClearState()
  %12 = load i32*, i32** %2, align 8
  %13 = call i8* @MSG_ReadLong(i32* %12)
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @clc, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cl, i32 0, i32 1, i32 0), align 8
  br label %14

14:                                               ; preds = %1, %101
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @MSG_ReadByte(i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @svc_EOF, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %102

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @svc_configstring, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %69

25:                                               ; preds = %21
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @MSG_ReadShort(i32* %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @MAX_CONFIGSTRINGS, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %25
  %35 = load i32, i32* @ERR_DROP, align 4
  %36 = call i32 (i32, i8*, ...) @Com_Error(i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i32*, i32** %2, align 8
  %39 = call i8* @MSG_ReadBigString(i32* %38)
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @strlen(i8* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cl, i32 0, i32 1, i32 0), align 8
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* @MAX_GAMESTATE_CHARS, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load i32, i32* @ERR_DROP, align 4
  %50 = call i32 (i32, i8*, ...) @Com_Error(i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %37
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cl, i32 0, i32 1, i32 0), align 8
  %53 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cl, i32 0, i32 1, i32 1), align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cl, i32 0, i32 1, i32 2), align 8
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cl, i32 0, i32 1, i32 0), align 8
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  %64 = call i32 @Com_Memcpy(i64 %60, i8* %61, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cl, i32 0, i32 1, i32 0), align 8
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cl, i32 0, i32 1, i32 0), align 8
  br label %101

69:                                               ; preds = %21
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @svc_baseline, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %97

73:                                               ; preds = %69
  %74 = load i32*, i32** %2, align 8
  %75 = load i32, i32* @GENTITYNUM_BITS, align 4
  %76 = call i32 @MSG_ReadBits(i32* %74, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @MAX_GENTITIES, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79, %73
  %84 = load i32, i32* @ERR_DROP, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 (i32, i8*, ...) @Com_Error(i32 %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %83, %79
  %88 = call i32 @Com_Memset(i32* %6, i32 0, i32 4)
  %89 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cl, i32 0, i32 0), align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32* %92, i32** %4, align 8
  %93 = load i32*, i32** %2, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @MSG_ReadDeltaEntity(i32* %93, i32* %6, i32* %94, i32 %95)
  br label %100

97:                                               ; preds = %69
  %98 = load i32, i32* @ERR_DROP, align 4
  %99 = call i32 (i32, i8*, ...) @Com_Error(i32 %98, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %87
  br label %101

101:                                              ; preds = %100, %51
  br label %14

102:                                              ; preds = %20
  %103 = load i32*, i32** %2, align 8
  %104 = call i8* @MSG_ReadLong(i32* %103)
  store i8* %104, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @clc, i32 0, i32 1), align 8
  %105 = load i32*, i32** %2, align 8
  %106 = call i8* @MSG_ReadLong(i32* %105)
  store i8* %106, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @clc, i32 0, i32 0), align 8
  %107 = call i32 (...) @CL_SystemInfoChanged()
  %108 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @clc, i32 0, i32 0), align 8
  %109 = call i32 @FS_ConditionalRestart(i8* %108)
  %110 = call i32 (...) @CL_InitDownloads()
  %111 = call i32 @Cvar_Set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @Con_Close(...) #1

declare dso_local i32 @CL_ClearState(...) #1

declare dso_local i8* @MSG_ReadLong(i32*) #1

declare dso_local i32 @MSG_ReadByte(i32*) #1

declare dso_local i32 @MSG_ReadShort(i32*) #1

declare dso_local i32 @Com_Error(i32, i8*, ...) #1

declare dso_local i8* @MSG_ReadBigString(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Com_Memcpy(i64, i8*, i32) #1

declare dso_local i32 @MSG_ReadBits(i32*, i32) #1

declare dso_local i32 @Com_Memset(i32*, i32, i32) #1

declare dso_local i32 @MSG_ReadDeltaEntity(i32*, i32*, i32*, i32) #1

declare dso_local i32 @CL_SystemInfoChanged(...) #1

declare dso_local i32 @FS_ConditionalRestart(i8*) #1

declare dso_local i32 @CL_InitDownloads(...) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
