; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_parse.c_CL_ParseDownload.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_parse.c_CL_ParseDownload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64, i64*, i64*, i64 }

@MAX_MSGLEN = common dso_local global i32 0, align 4
@clc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [16 x i8] c"cl_downloadSize\00", align 1
@ERR_DROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"CL_ParseDownload: Expected block %d, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Server sending download, but no download was requested\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"stopdl\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Could not create %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"nextdl %d\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"cl_downloadCount\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"cl_downloadName\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_ParseDownload(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32, i32* @MAX_MSGLEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @MSG_ReadShort(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %1
  %17 = load i32*, i32** %2, align 8
  %18 = call i64 @MSG_ReadLong(i32* %17)
  store i64 %18, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 0), align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 0), align 8
  %20 = call i32 @Cvar_SetValue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 0), align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load i32, i32* @ERR_DROP, align 4
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @MSG_ReadString(i32* %25)
  %27 = call i32 @Com_Error(i32 %24, i32 %26)
  store i32 1, i32* %7, align 4
  br label %105

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28, %1
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @MSG_ReadShort(i32* %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @MSG_ReadData(i32* %35, i8* %11, i32 %36)
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 1), align 8
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 1), align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44)
  store i32 1, i32* %7, align 4
  br label %105

46:                                               ; preds = %38
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 5), align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %46
  %50 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 4), align 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %55 = call i32 @CL_AddReliableCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %105

56:                                               ; preds = %49
  %57 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 4), align 8
  %58 = call i64 @FS_SV_FOpenFileWrite(i64* %57)
  store i64 %58, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 5), align 8
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 5), align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 4), align 8
  %63 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64* %62)
  %64 = call i32 @CL_AddReliableCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %65 = call i32 (...) @CL_NextDownload()
  store i32 1, i32* %7, align 4
  br label %105

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %46
  %68 = load i32, i32* %3, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* %3, align 4
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 5), align 8
  %73 = call i32 @FS_Write(i8* %11, i32 %71, i64 %72)
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 1), align 8
  %76 = call i8* @va(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  %77 = call i32 @CL_AddReliableCommand(i8* %76)
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 1), align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 1), align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 2), align 8
  %83 = add nsw i64 %82, %81
  store i64 %83, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 2), align 8
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 2), align 8
  %85 = call i32 @Cvar_SetValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i64 %84)
  %86 = load i32, i32* %3, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %104, label %88

88:                                               ; preds = %74
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 5), align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 5), align 8
  %93 = call i32 @FS_FCloseFile(i64 %92)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 5), align 8
  %94 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 4), align 8
  %95 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 3), align 8
  %96 = call i32 @FS_SV_Rename(i64* %94, i64* %95)
  br label %97

97:                                               ; preds = %91, %88
  %98 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 3), align 8
  store i64 0, i64* %98, align 8
  %99 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 4), align 8
  store i64 0, i64* %99, align 8
  %100 = call i32 @Cvar_Set(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  %101 = call i32 (...) @CL_WritePacket()
  %102 = call i32 (...) @CL_WritePacket()
  %103 = call i32 (...) @CL_NextDownload()
  br label %104

104:                                              ; preds = %97, %74
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %104, %61, %53, %42, %23
  %106 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %7, align 4
  switch i32 %107, label %109 [
    i32 0, label %108
    i32 1, label %108
  ]

108:                                              ; preds = %105, %105
  ret void

109:                                              ; preds = %105
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MSG_ReadShort(i32*) #2

declare dso_local i64 @MSG_ReadLong(i32*) #2

declare dso_local i32 @Cvar_SetValue(i8*, i64) #2

declare dso_local i32 @Com_Error(i32, i32) #2

declare dso_local i32 @MSG_ReadString(i32*) #2

declare dso_local i32 @MSG_ReadData(i32*, i8*, i32) #2

declare dso_local i32 @Com_DPrintf(i8*, i32, i32) #2

declare dso_local i32 @Com_Printf(i8*, ...) #2

declare dso_local i32 @CL_AddReliableCommand(i8*) #2

declare dso_local i64 @FS_SV_FOpenFileWrite(i64*) #2

declare dso_local i32 @CL_NextDownload(...) #2

declare dso_local i32 @FS_Write(i8*, i32, i64) #2

declare dso_local i8* @va(i8*, i32) #2

declare dso_local i32 @FS_FCloseFile(i64) #2

declare dso_local i32 @FS_SV_Rename(i64*, i64*) #2

declare dso_local i32 @Cvar_Set(i8*, i8*) #2

declare dso_local i32 @CL_WritePacket(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
