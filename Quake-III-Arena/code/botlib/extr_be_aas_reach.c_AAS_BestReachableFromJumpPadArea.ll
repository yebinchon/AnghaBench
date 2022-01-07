; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_reach.c_AAS_BestReachableFromJumpPadArea.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_reach.c_AAS_BestReachableFromJumpPadArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i32, i8*)* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_8__* }

@MAX_EPAIRKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"bot_visualizejumppads\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"trigger_push\00", align 1
@PRESENCE_CROUCH = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@PRT_MESSAGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"trigger_push not in any jump pad area\0A\00", align 1
@PRESENCE_NORMAL = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_BestReachableFromJumpPadArea(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_9__, align 4
  %22 = alloca %struct.TYPE_8__*, align 8
  %23 = alloca %struct.TYPE_8__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %27 = load i32, i32* @MAX_EPAIRKEY, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %24, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %25, align 8
  %31 = call i32 @LibVarValue(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %16, align 4
  %35 = call i32 @VectorAdd(i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %17, align 4
  %39 = call i32 @VectorAdd(i32 %36, i32 %37, i32 %38)
  %40 = call i32 @AAS_NextBSPEntity(i32 0)
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %146, %3
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %149

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @MAX_EPAIRKEY, align 4
  %47 = call i32 @AAS_ValueForBSPEpairKey(i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %30, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %146

50:                                               ; preds = %44
  %51 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %146

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* %20, align 4
  %60 = call i32 @AAS_GetJumpPadInfo(i32 %55, i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  br label %146

63:                                               ; preds = %54
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* %19, align 4
  %66 = load i32, i32* @PRESENCE_CROUCH, align 4
  %67 = call %struct.TYPE_8__* @AAS_LinkEntityClientBBox(i32 %64, i32 %65, i32 -1, i32 %66)
  store %struct.TYPE_8__* %67, %struct.TYPE_8__** %22, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  store %struct.TYPE_8__* %68, %struct.TYPE_8__** %23, align 8
  br label %69

69:                                               ; preds = %80, %63
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %71 = icmp ne %struct.TYPE_8__* %70, null
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @AAS_AreaJumpPad(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %84

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  store %struct.TYPE_8__* %83, %struct.TYPE_8__** %23, align 8
  br label %69

84:                                               ; preds = %78, %69
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %86 = icmp ne %struct.TYPE_8__* %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @botimport, i32 0, i32 0), align 8
  %89 = load i32, i32* @PRT_MESSAGE, align 4
  %90 = call i32 %88(i32 %89, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %92 = call i32 @AAS_UnlinkFromAreas(%struct.TYPE_8__* %91)
  br label %146

93:                                               ; preds = %84
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @VectorSet(i32 %94, i32 0, i32 0, i32 0)
  %96 = call i32 @Com_Memset(%struct.TYPE_9__* %21, i32 0, i32 4)
  store i32 0, i32* %8, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* @PRESENCE_NORMAL, align 4
  %99 = load i32, i32* @qfalse, align 4
  %100 = load i32, i32* %20, align 4
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @AAS_ClientMovementHitBBox(%struct.TYPE_9__* %21, i32 -1, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 0, i32 30, float 0x3FB99999A0000000, i32 %102, i32 %103, i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %107, 30
  br i1 %108, label %109, label %143

109:                                              ; preds = %93
  store i32 0, i32* %11, align 4
  store float 0.000000e+00, float* %13, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  store %struct.TYPE_8__* %110, %struct.TYPE_8__** %23, align 8
  br label %111

111:                                              ; preds = %135, %109
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %113 = icmp ne %struct.TYPE_8__* %112, null
  br i1 %113, label %114, label %139

114:                                              ; preds = %111
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @AAS_AreaJumpPad(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %114
  br label %135

121:                                              ; preds = %114
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call float @AAS_AreaVolume(i32 %124)
  store float %125, float* %12, align 4
  %126 = load float, float* %12, align 4
  %127 = load float, float* %13, align 4
  %128 = fcmp oge float %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %121
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %11, align 4
  %133 = load float, float* %12, align 4
  store float %133, float* %13, align 4
  br label %134

134:                                              ; preds = %129, %121
  br label %135

135:                                              ; preds = %134, %120
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  store %struct.TYPE_8__* %138, %struct.TYPE_8__** %23, align 8
  br label %111

139:                                              ; preds = %111
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %141 = call i32 @AAS_UnlinkFromAreas(%struct.TYPE_8__* %140)
  %142 = load i32, i32* %11, align 4
  store i32 %142, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %150

143:                                              ; preds = %93
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %145 = call i32 @AAS_UnlinkFromAreas(%struct.TYPE_8__* %144)
  br label %146

146:                                              ; preds = %143, %87, %62, %53, %49
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @AAS_NextBSPEntity(i32 %147)
  store i32 %148, i32* %9, align 4
  br label %41

149:                                              ; preds = %41
  store i32 0, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %150

150:                                              ; preds = %149, %139
  %151 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %151)
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LibVarValue(i8*, i8*) #2

declare dso_local i32 @VectorAdd(i32, i32, i32) #2

declare dso_local i32 @AAS_NextBSPEntity(i32) #2

declare dso_local i32 @AAS_ValueForBSPEpairKey(i32, i8*, i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @AAS_GetJumpPadInfo(i32, i32, i32, i32, i32) #2

declare dso_local %struct.TYPE_8__* @AAS_LinkEntityClientBBox(i32, i32, i32, i32) #2

declare dso_local i64 @AAS_AreaJumpPad(i32) #2

declare dso_local i32 @AAS_UnlinkFromAreas(%struct.TYPE_8__*) #2

declare dso_local i32 @VectorSet(i32, i32, i32, i32) #2

declare dso_local i32 @Com_Memset(%struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @AAS_ClientMovementHitBBox(%struct.TYPE_9__*, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32) #2

declare dso_local float @AAS_AreaVolume(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
