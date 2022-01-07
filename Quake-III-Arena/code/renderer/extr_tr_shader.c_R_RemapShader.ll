; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shader.c_R_RemapShader.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shader.c_R_RemapShader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_7__*, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 (i32, i8*, i8*)* }

@MAX_QPATH = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ri = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@PRINT_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"WARNING: R_RemapShader: shader %s not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"WARNING: R_RemapShader: new shader %s not found\0A\00", align 1
@FILE_HASH_SIZE = common dso_local global i32 0, align 4
@hashTable = common dso_local global %struct.TYPE_7__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_RemapShader(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i32, i32* @MAX_QPATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call %struct.TYPE_7__* @R_FindShaderByName(i8* %18)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %10, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %21 = icmp eq %struct.TYPE_7__* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 0), align 8
  %25 = icmp eq %struct.TYPE_7__* %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22, %3
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @RE_RegisterShaderLightMap(i8* %27, i32 0)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call %struct.TYPE_7__* @R_GetShaderByHandle(i32 %29)
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %10, align 8
  br label %31

31:                                               ; preds = %26, %22
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %33 = icmp eq %struct.TYPE_7__* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 0), align 8
  %37 = icmp eq %struct.TYPE_7__* %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34, %31
  %39 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %40 = load i32, i32* @PRINT_WARNING, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 %39(i32 %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %41)
  store i32 1, i32* %13, align 4
  br label %114

43:                                               ; preds = %34
  %44 = load i8*, i8** %5, align 8
  %45 = call %struct.TYPE_7__* @R_FindShaderByName(i8* %44)
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %11, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %47 = icmp eq %struct.TYPE_7__* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 0), align 8
  %51 = icmp eq %struct.TYPE_7__* %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48, %43
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @RE_RegisterShaderLightMap(i8* %53, i32 0)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call %struct.TYPE_7__* @R_GetShaderByHandle(i32 %55)
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %11, align 8
  br label %57

57:                                               ; preds = %52, %48
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %59 = icmp eq %struct.TYPE_7__* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 0), align 8
  %63 = icmp eq %struct.TYPE_7__* %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60, %57
  %65 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %66 = load i32, i32* @PRINT_WARNING, align 4
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 %65(i32 %66, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  store i32 1, i32* %13, align 4
  br label %114

69:                                               ; preds = %60
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 @COM_StripExtension(i8* %70, i8* %17)
  %72 = load i32, i32* @FILE_HASH_SIZE, align 4
  %73 = call i32 @generateHashValue(i8* %17, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @hashTable, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %74, i64 %76
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  store %struct.TYPE_7__* %78, %struct.TYPE_7__** %10, align 8
  br label %79

79:                                               ; preds = %101, %69
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %81 = icmp ne %struct.TYPE_7__* %80, null
  br i1 %81, label %82, label %105

82:                                               ; preds = %79
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @Q_stricmp(i32 %85, i8* %17)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %82
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %91 = icmp ne %struct.TYPE_7__* %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  store %struct.TYPE_7__* %93, %struct.TYPE_7__** %95, align 8
  br label %99

96:                                               ; preds = %88
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %98, align 8
  br label %99

99:                                               ; preds = %96, %92
  br label %100

100:                                              ; preds = %99, %82
  br label %101

101:                                              ; preds = %100
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  store %struct.TYPE_7__* %104, %struct.TYPE_7__** %10, align 8
  br label %79

105:                                              ; preds = %79
  %106 = load i8*, i8** %6, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 @atof(i8* %109)
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %108, %105
  store i32 0, i32* %13, align 4
  br label %114

114:                                              ; preds = %113, %64, %38
  %115 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %115)
  %116 = load i32, i32* %13, align 4
  switch i32 %116, label %118 [
    i32 0, label %117
    i32 1, label %117
  ]

117:                                              ; preds = %114, %114
  ret void

118:                                              ; preds = %114
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_7__* @R_FindShaderByName(i8*) #2

declare dso_local i32 @RE_RegisterShaderLightMap(i8*, i32) #2

declare dso_local %struct.TYPE_7__* @R_GetShaderByHandle(i32) #2

declare dso_local i32 @COM_StripExtension(i8*, i8*) #2

declare dso_local i32 @generateHashValue(i8*, i32) #2

declare dso_local i64 @Q_stricmp(i32, i8*) #2

declare dso_local i32 @atof(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
