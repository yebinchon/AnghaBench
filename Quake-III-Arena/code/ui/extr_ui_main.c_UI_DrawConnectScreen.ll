; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_DrawConnectScreen.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_DrawConnectScreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32, i8*, i32 }

@MAX_INFO_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Connect\00", align 1
@qtrue = common dso_local global i32 0, align 4
@CS_SERVERINFO = common dso_local global i32 0, align 4
@colorWhite = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Loading %s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"mapname\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Starting up...\00", align 1
@ITEM_TEXTSTYLE_SHADOWEDMORE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"Connecting to %s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"motd\00", align 1
@lastConnState = common dso_local global i32 0, align 4
@lastLoadingText = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"Awaiting connection...%i\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Awaiting challenge...%i\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"cl_downloadName\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Awaiting gamestate...\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_DrawConnectScreen(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %15 = load i32, i32* @MAX_INFO_VALUE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = call i32* @Menus_FindByName(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %11, align 8
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  %23 = load i32*, i32** %11, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* @qtrue, align 4
  %28 = call i32 @Menu_Paint(i32* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %22, %1
  %30 = load i32, i32* %2, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store float 3.200000e+02, float* %8, align 4
  store float 1.300000e+02, float* %9, align 4
  store float 5.000000e-01, float* %10, align 4
  br label %34

33:                                               ; preds = %29
  store float 3.200000e+02, float* %8, align 4
  store float 3.200000e+01, float* %9, align 4
  store float 0x3FE3333340000000, float* %10, align 4
  store i32 1, i32* %12, align 4
  br label %154

34:                                               ; preds = %32
  %35 = call i32 @trap_GetClientState(%struct.TYPE_3__* %4)
  %36 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 0, i8* %36, align 16
  %37 = load i32, i32* @CS_SERVERINFO, align 4
  %38 = trunc i64 %16 to i32
  %39 = call i64 @trap_GetConfigString(i32 %37, i8* %18, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load float, float* %8, align 4
  %43 = load float, float* %9, align 4
  %44 = load float, float* %10, align 4
  %45 = load i32, i32* @colorWhite, align 4
  %46 = call i8* @Info_ValueForKey(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i8* (i8*, ...) @va(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = call i32 @Text_PaintCenter(float %42, float %43, float %44, i32 %45, i8* %47, i32 0)
  br label %49

49:                                               ; preds = %41, %34
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @Q_stricmp(i8* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %49
  %55 = load float, float* %8, align 4
  %56 = load float, float* %9, align 4
  %57 = fadd float %56, 4.800000e+01
  %58 = load float, float* %10, align 4
  %59 = load i32, i32* @colorWhite, align 4
  %60 = call i8* (i8*, ...) @va(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i32, i32* @ITEM_TEXTSTYLE_SHADOWEDMORE, align 4
  %62 = call i32 @Text_PaintCenter(float %55, float %57, float %58, i32 %59, i8* %60, i32 %61)
  br label %77

63:                                               ; preds = %49
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* (i8*, ...) @va(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %66)
  %68 = call i32 @strcpy(i8* %64, i8* %67)
  %69 = load float, float* %8, align 4
  %70 = load float, float* %9, align 4
  %71 = fadd float %70, 4.800000e+01
  %72 = load float, float* %10, align 4
  %73 = load i32, i32* @colorWhite, align 4
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %75 = load i32, i32* @ITEM_TEXTSTYLE_SHADOWEDMORE, align 4
  %76 = call i32 @Text_PaintCenter(float %69, float %71, float %72, i32 %73, i8* %74, i32 %75)
  br label %77

77:                                               ; preds = %63, %54
  %78 = load float, float* %8, align 4
  %79 = load float, float* %10, align 4
  %80 = load i32, i32* @colorWhite, align 4
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i8* @Info_ValueForKey(i8* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %84 = call i32 @Text_PaintCenter(float %78, float 6.000000e+02, float %79, i32 %80, i8* %83, i32 0)
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %86, 131
  br i1 %87, label %88, label %97

88:                                               ; preds = %77
  %89 = load float, float* %8, align 4
  %90 = load float, float* %9, align 4
  %91 = fadd float %90, 1.760000e+02
  %92 = load float, float* %10, align 4
  %93 = load i32, i32* @colorWhite, align 4
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @Text_PaintCenter_AutoWrapped(float %89, float %91, i32 630, i32 20, float %92, i32 %93, i32 %95, i32 0)
  br label %97

97:                                               ; preds = %88, %77
  %98 = load i32, i32* @lastConnState, align 4
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp sgt i32 %98, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i8*, i8** @lastLoadingText, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  store i8 0, i8* %104, align 1
  br label %105

105:                                              ; preds = %102, %97
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* @lastConnState, align 4
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  switch i32 %109, label %139 [
    i32 130, label %110
    i32 132, label %114
    i32 131, label %118
    i32 129, label %137
    i32 128, label %138
  ]

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  %113 = call i8* (i8*, ...) @va(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %112)
  store i8* %113, i8** %3, align 8
  br label %140

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %116 = load i8*, i8** %115, align 8
  %117 = call i8* (i8*, ...) @va(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %116)
  store i8* %117, i8** %3, align 8
  br label %140

118:                                              ; preds = %105
  %119 = load i32, i32* @MAX_INFO_VALUE, align 4
  %120 = zext i32 %119 to i64
  %121 = call i8* @llvm.stacksave()
  store i8* %121, i8** %13, align 8
  %122 = alloca i8, i64 %120, align 16
  store i64 %120, i64* %14, align 8
  %123 = trunc i64 %120 to i32
  %124 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %122, i32 %123)
  %125 = load i8, i8* %122, align 16
  %126 = icmp ne i8 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %118
  %128 = load float, float* %8, align 4
  %129 = load float, float* %9, align 4
  %130 = load float, float* %10, align 4
  %131 = call i32 @UI_DisplayDownloadInfo(i8* %122, float %128, float %129, float %130)
  store i32 1, i32* %12, align 4
  br label %133

132:                                              ; preds = %118
  store i32 0, i32* %12, align 4
  br label %133

133:                                              ; preds = %132, %127
  %134 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %134)
  %135 = load i32, i32* %12, align 4
  switch i32 %135, label %154 [
    i32 0, label %136
  ]

136:                                              ; preds = %133
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %140

137:                                              ; preds = %105
  store i32 1, i32* %12, align 4
  br label %154

138:                                              ; preds = %105
  store i32 1, i32* %12, align 4
  br label %154

139:                                              ; preds = %105
  store i32 1, i32* %12, align 4
  br label %154

140:                                              ; preds = %136, %114, %110
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i64 @Q_stricmp(i8* %142, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %140
  %146 = load float, float* %8, align 4
  %147 = load float, float* %9, align 4
  %148 = fadd float %147, 8.000000e+01
  %149 = load float, float* %10, align 4
  %150 = load i32, i32* @colorWhite, align 4
  %151 = load i8*, i8** %3, align 8
  %152 = call i32 @Text_PaintCenter(float %146, float %148, float %149, i32 %150, i8* %151, i32 0)
  br label %153

153:                                              ; preds = %145, %140
  store i32 0, i32* %12, align 4
  br label %154

154:                                              ; preds = %153, %139, %138, %137, %133, %33
  %155 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %155)
  %156 = load i32, i32* %12, align 4
  switch i32 %156, label %158 [
    i32 0, label %157
    i32 1, label %157
  ]

157:                                              ; preds = %154, %154
  ret void

158:                                              ; preds = %154
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @Menus_FindByName(i8*) #2

declare dso_local i32 @Menu_Paint(i32*, i32) #2

declare dso_local i32 @trap_GetClientState(%struct.TYPE_3__*) #2

declare dso_local i64 @trap_GetConfigString(i32, i8*, i32) #2

declare dso_local i32 @Text_PaintCenter(float, float, float, i32, i8*, i32) #2

declare dso_local i8* @va(i8*, ...) #2

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #2

declare dso_local i64 @Q_stricmp(i8*, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @Text_PaintCenter_AutoWrapped(float, float, i32, i32, float, i32, i32, i32) #2

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i8*, i32) #2

declare dso_local i32 @UI_DisplayDownloadInfo(i8*, float, float, float) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
