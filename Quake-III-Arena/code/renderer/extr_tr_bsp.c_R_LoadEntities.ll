; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_bsp.c_R_LoadEntities.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_bsp.c_R_LoadEntities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32, i32 }
%struct.TYPE_9__ = type { i32 (i32, i8*, i8*)*, i32 (i64, i32)* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64 }

@MAX_TOKEN_CHARS = common dso_local global i32 0, align 4
@s_worldData = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@fileBase = common dso_local global i64 0, align 8
@ri = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@h_low = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"vertexremapshader\00", align 1
@PRINT_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"WARNING: no semi colon in vertexshaderremap '%s'\0A\00", align 1
@r_vertexLight = common dso_local global %struct.TYPE_10__* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"remapshader\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"WARNING: no semi colon in shaderremap '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"gridsize\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%f %f %f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_LoadEntities(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %11 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  store %struct.TYPE_7__* @s_worldData, %struct.TYPE_7__** %9, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 64, i32* %21, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 64, i32* %25, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  store i32 128, i32* %29, align 4
  %30 = load i64, i64* @fileBase, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %3, align 8
  %36 = load i32 (i64, i32)*, i32 (i64, i32)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 1), align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  %41 = load i32, i32* @h_low, align 4
  %42 = call i32 %36(i64 %40, i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @strcpy(i32 %47, i8* %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @qtrue, align 4
  %56 = call i8* @COM_ParseExt(i8** %3, i32 %55)
  store i8* %56, i8** %4, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %1
  %61 = load i8*, i8** %4, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 123
  br i1 %64, label %65, label %66

65:                                               ; preds = %60, %1
  store i32 1, i32* %10, align 4
  br label %161

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %159, %145, %137, %122, %66
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* @qtrue, align 4
  %70 = call i8* @COM_ParseExt(i8** %3, i32 %69)
  store i8* %70, i8** %4, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = load i8, i8* %71, align 1
  %73 = icmp ne i8 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load i8*, i8** %4, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 125
  br i1 %78, label %79, label %80

79:                                               ; preds = %74, %68
  br label %160

80:                                               ; preds = %74
  %81 = load i8*, i8** %4, align 8
  %82 = trunc i64 %12 to i32
  %83 = call i32 @Q_strncpyz(i8* %14, i8* %81, i32 %82)
  %84 = load i32, i32* @qtrue, align 4
  %85 = call i8* @COM_ParseExt(i8** %3, i32 %84)
  store i8* %85, i8** %4, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %80
  %90 = load i8*, i8** %4, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 125
  br i1 %93, label %94, label %95

94:                                               ; preds = %89, %80
  br label %160

95:                                               ; preds = %89
  %96 = load i8*, i8** %4, align 8
  %97 = trunc i64 %16 to i32
  %98 = call i32 @Q_strncpyz(i8* %17, i8* %96, i32 %97)
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = call i32 @strlen(i8* %100)
  %102 = call i32 @Q_strncmp(i8* %14, i8* %99, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %123, label %104

104:                                              ; preds = %95
  %105 = call i8* @strchr(i8* %17, i8 signext 59)
  store i8* %105, i8** %5, align 8
  %106 = load i8*, i8** %5, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %110 = load i32, i32* @PRINT_WARNING, align 4
  %111 = call i32 %109(i32 %110, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %160

112:                                              ; preds = %104
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %5, align 8
  store i8 0, i8* %113, align 1
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** @r_vertexLight, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = load i8*, i8** %5, align 8
  %121 = call i32 @R_RemapShader(i8* %17, i8* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %112
  br label %67

123:                                              ; preds = %95
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  %124 = load i8*, i8** %5, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = call i32 @strlen(i8* %125)
  %127 = call i32 @Q_strncmp(i8* %14, i8* %124, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %142, label %129

129:                                              ; preds = %123
  %130 = call i8* @strchr(i8* %17, i8 signext 59)
  store i8* %130, i8** %5, align 8
  %131 = load i8*, i8** %5, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %135 = load i32, i32* @PRINT_WARNING, align 4
  %136 = call i32 %134(i32 %135, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %17)
  br label %160

137:                                              ; preds = %129
  %138 = load i8*, i8** %5, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %5, align 8
  store i8 0, i8* %138, align 1
  %140 = load i8*, i8** %5, align 8
  %141 = call i32 @R_RemapShader(i8* %17, i8* %140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %67

142:                                              ; preds = %123
  %143 = call i32 @Q_stricmp(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %159, label %145

145:                                              ; preds = %142
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  %158 = call i32 @sscanf(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* %149, i32* %153, i32* %157)
  br label %67

159:                                              ; preds = %142
  br label %67

160:                                              ; preds = %133, %108, %94, %79
  store i32 0, i32* %10, align 4
  br label %161

161:                                              ; preds = %160, %65
  %162 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %162)
  %163 = load i32, i32* %10, align 4
  switch i32 %163, label %165 [
    i32 0, label %164
    i32 1, label %164
  ]

164:                                              ; preds = %161, %161
  ret void

165:                                              ; preds = %161
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcpy(i32, i8*) #2

declare dso_local i8* @COM_ParseExt(i8**, i32) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i32 @Q_strncmp(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @R_RemapShader(i8*, i8*, i8*) #2

declare dso_local i32 @Q_stricmp(i8*, i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
