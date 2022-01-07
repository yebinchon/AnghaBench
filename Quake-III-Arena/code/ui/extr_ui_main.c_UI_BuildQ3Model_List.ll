; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_BuildQ3Model_List.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_BuildQ3Model_List.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8**, i32* }

@uiInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [15 x i8] c"models/players\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@MAX_PLAYERMODELS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"models/players/%s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"tga\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"icon_\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"icon_blue\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"icon_red\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"icon_default\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"models/players/%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UI_BuildQ3Model_List to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_BuildQ3Model_List() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2048 x i8], align 16
  %4 = alloca [2048 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 0), align 8
  %15 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %16 = call i32 @trap_FS_GetFileList(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %15, i32 2048)
  store i32 %16, i32* %1, align 4
  %17 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  store i8* %17, i8** %7, align 8
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %154, %0
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %1, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 0), align 8
  %24 = load i32, i32* @MAX_PLAYERMODELS, align 4
  %25 = icmp slt i32 %23, %24
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i1 [ false, %18 ], [ %25, %22 ]
  br i1 %27, label %28, label %162

28:                                               ; preds = %26
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @strlen(i8* %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %28
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 47
  br i1 %41, label %42, label %48

42:                                               ; preds = %33
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  store i8 0, i8* %47, align 1
  br label %48

48:                                               ; preds = %42, %33, %28
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52, %48
  br label %154

57:                                               ; preds = %52
  %58 = load i8*, i8** %7, align 8
  %59 = call i8* (i8*, i8*, ...) @va(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  %60 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %61 = call i32 @trap_FS_GetFileList(i8* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %60, i32 2048)
  store i32 %61, i32* %2, align 4
  %62 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  store i8* %62, i8** %8, align 8
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %145, %57
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %2, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 0), align 8
  %69 = load i32, i32* @MAX_PLAYERMODELS, align 4
  %70 = icmp slt i32 %68, %69
  br label %71

71:                                               ; preds = %67, %63
  %72 = phi i1 [ false, %63 ], [ %70, %67 ]
  br i1 %72, label %73, label %153

73:                                               ; preds = %71
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @strlen(i8* %74)
  store i32 %75, i32* %14, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %78 = call i32 @COM_StripExtension(i8* %76, i8* %77)
  %79 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %80 = call i64 @Q_stricmpn(i8* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %144

82:                                               ; preds = %73
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %84 = call i64 @Q_stricmp(i8* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %144, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %88 = call i64 @Q_stricmp(i8* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %144, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %92 = call i64 @Q_stricmp(i8* %91, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %96 = load i8*, i8** %7, align 8
  %97 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %95, i32 256, i8* %96)
  br label %104

98:                                               ; preds = %90
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %100 = load i8*, i8** %7, align 8
  %101 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %102 = getelementptr inbounds i8, i8* %101, i64 5
  %103 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %99, i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %100, i8* %102)
  br label %104

104:                                              ; preds = %98, %94
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %120, %104
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 0), align 8
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %105
  %110 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %111 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 1), align 8
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 0), align 8
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = call i64 @Q_stricmp(i8* %110, i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %109
  store i32 1, i32* %12, align 4
  br label %123

119:                                              ; preds = %109
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %105

123:                                              ; preds = %118, %105
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %143, label %126

126:                                              ; preds = %123
  %127 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 1), align 8
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 0), align 8
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %133 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %131, i32 8, i8* %132)
  %134 = load i8*, i8** %7, align 8
  %135 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %136 = call i8* (i8*, i8*, ...) @va(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* %134, i8* %135)
  %137 = call i32 @trap_R_RegisterShaderNoMip(i8* %136)
  %138 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 2), align 8
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 0), align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 0), align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  store i32 %137, i32* %142, align 4
  br label %143

143:                                              ; preds = %126, %123
  br label %144

144:                                              ; preds = %143, %86, %82, %73
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %14, align 4
  %149 = add nsw i32 %148, 1
  %150 = load i8*, i8** %8, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  store i8* %152, i8** %8, align 8
  br label %63

153:                                              ; preds = %71
  br label %154

154:                                              ; preds = %153, %56
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %13, align 4
  %158 = add nsw i32 %157, 1
  %159 = load i8*, i8** %7, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  store i8* %161, i8** %7, align 8
  br label %18

162:                                              ; preds = %26
  ret void
}

declare dso_local i32 @trap_FS_GetFileList(i8*, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @va(i8*, i8*, ...) #1

declare dso_local i32 @COM_StripExtension(i8*, i8*) #1

declare dso_local i64 @Q_stricmpn(i8*, i8*, i32) #1

declare dso_local i64 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @trap_R_RegisterShaderNoMip(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
