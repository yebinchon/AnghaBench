; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_map.c_ParseMapEntity.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_map.c_ParseMapEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_10__* }

@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@token = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.1 = private unnamed_addr constant [93 x i8] c"ParseEntity: { not found, found %s on line %d - last entity was at: <%4.2f, %4.2f, %4.2f>...\00", align 1
@scriptline = common dso_local global i32 0, align 4
@entities = common dso_local global %struct.TYPE_11__* null, align 8
@num_entities = common dso_local global i64 0, align 8
@MAX_MAP_ENTITIES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"num_entities == MAX_MAP_ENTITIES\00", align 1
@entitySourceBrushes = common dso_local global i64 0, align 8
@mapent = common dso_local global %struct.TYPE_11__* null, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"ParseEntity: EOF without closing brace\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"patchDef2\00", align 1
@numMapPatches = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"terrainDef\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"brushDef\00", align 1
@g_bBrushPrimit = common dso_local global i64 0, align 8
@BPRIMIT_OLDBRUSHES = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [53 x i8] c"old brush format not allowed in new brush format map\00", align 1
@BPRIMIT_NEWBRUSHES = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [53 x i8] c"new brush format not allowed in old brush format map\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"group_info\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"func_group\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"terrain\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParseMapEntity() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = load i32, i32* @qtrue, align 4
  %4 = call i32 @GetToken(i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @qfalse, align 4
  store i32 %7, i32* %1, align 4
  br label %183

8:                                                ; preds = %0
  %9 = load i8*, i8** @token, align 8
  %10 = call i64 @strcmp(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %8
  %13 = load i8*, i8** @token, align 8
  %14 = load i32, i32* @scriptline, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** @entities, align 8
  %16 = load i64, i64* @num_entities, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @entities, align 8
  %23 = load i64, i64* @num_entities, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** @entities, align 8
  %30 = load i64, i64* @num_entities, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i8* %13, i32 %14, i64 %21, i64 %28, i64 %35)
  br label %37

37:                                               ; preds = %12, %8
  %38 = load i64, i64* @num_entities, align 8
  %39 = load i64, i64* @MAX_MAP_ENTITIES, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37
  store i64 0, i64* @entitySourceBrushes, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** @entities, align 8
  %45 = load i64, i64* @num_entities, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i64 %45
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** @mapent, align 8
  %47 = load i64, i64* @num_entities, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* @num_entities, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mapent, align 8
  %50 = call i32 @memset(%struct.TYPE_11__* %49, i32 0, i32 16)
  br label %51

51:                                               ; preds = %124, %43
  %52 = load i32, i32* @qtrue, align 4
  %53 = call i32 @GetToken(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i8*, i8** @token, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  br label %125

62:                                               ; preds = %57
  %63 = load i8*, i8** @token, align 8
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %113, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @qtrue, align 4
  %68 = call i32 @GetToken(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  br label %125

71:                                               ; preds = %66
  %72 = load i8*, i8** @token, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* @numMapPatches, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* @numMapPatches, align 4
  %78 = call i32 (...) @ParsePatch()
  br label %110

79:                                               ; preds = %71
  %80 = load i8*, i8** @token, align 8
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = call i32 (...) @ParseTerrain()
  br label %109

85:                                               ; preds = %79
  %86 = load i8*, i8** @token, align 8
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %85
  %90 = load i64, i64* @g_bBrushPrimit, align 8
  %91 = load i64, i64* @BPRIMIT_OLDBRUSHES, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %89
  %96 = load i64, i64* @BPRIMIT_NEWBRUSHES, align 8
  store i64 %96, i64* @g_bBrushPrimit, align 8
  %97 = call i32 (...) @ParseBrush()
  br label %108

98:                                               ; preds = %85
  %99 = load i64, i64* @g_bBrushPrimit, align 8
  %100 = load i64, i64* @BPRIMIT_NEWBRUSHES, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %98
  %105 = load i64, i64* @BPRIMIT_OLDBRUSHES, align 8
  store i64 %105, i64* @g_bBrushPrimit, align 8
  %106 = call i32 (...) @UnGetToken()
  %107 = call i32 (...) @ParseBrush()
  br label %108

108:                                              ; preds = %104, %95
  br label %109

109:                                              ; preds = %108, %83
  br label %110

110:                                              ; preds = %109, %75
  %111 = load i64, i64* @entitySourceBrushes, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* @entitySourceBrushes, align 8
  br label %123

113:                                              ; preds = %62
  %114 = call %struct.TYPE_10__* (...) @ParseEpair()
  store %struct.TYPE_10__* %114, %struct.TYPE_10__** %2, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mapent, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  store %struct.TYPE_10__* %117, %struct.TYPE_10__** %119, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mapent, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  store %struct.TYPE_10__* %120, %struct.TYPE_10__** %122, align 8
  br label %123

123:                                              ; preds = %113, %110
  br label %124

124:                                              ; preds = %123
  br i1 true, label %51, label %125

125:                                              ; preds = %124, %70, %61
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mapent, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mapent, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = call i32 @GetVectorForKey(%struct.TYPE_11__* %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i64* %129)
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mapent, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i64*, i64** %132, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %151, label %137

137:                                              ; preds = %125
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mapent, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i64*, i64** %139, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %137
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mapent, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i64*, i64** %146, align 8
  %148 = getelementptr inbounds i64, i64* %147, i64 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %144, %137, %125
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mapent, align 8
  %153 = call i32 @AdjustBrushesForOrigin(%struct.TYPE_11__* %152)
  br label %154

154:                                              ; preds = %151, %144
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mapent, align 8
  %156 = call i8* @ValueForKey(%struct.TYPE_11__* %155, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %157 = call i64 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %154
  %160 = load i64, i64* @num_entities, align 8
  %161 = add i64 %160, -1
  store i64 %161, i64* @num_entities, align 8
  %162 = load i32, i32* @qtrue, align 4
  store i32 %162, i32* %1, align 4
  br label %183

163:                                              ; preds = %154
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mapent, align 8
  %165 = call i8* @ValueForKey(%struct.TYPE_11__* %164, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %166 = call i64 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %181, label %168

168:                                              ; preds = %163
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mapent, align 8
  %170 = call i8* @ValueForKey(%struct.TYPE_11__* %169, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %171 = call i64 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %168
  %174 = call i32 (...) @SetTerrainTextures()
  br label %175

175:                                              ; preds = %173, %168
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mapent, align 8
  %177 = call i32 @MoveBrushesToWorld(%struct.TYPE_11__* %176)
  %178 = load i64, i64* @num_entities, align 8
  %179 = add i64 %178, -1
  store i64 %179, i64* @num_entities, align 8
  %180 = load i32, i32* @qtrue, align 4
  store i32 %180, i32* %1, align 4
  br label %183

181:                                              ; preds = %163
  %182 = load i32, i32* @qtrue, align 4
  store i32 %182, i32* %1, align 4
  br label %183

183:                                              ; preds = %181, %175, %159, %6
  %184 = load i32, i32* %1, align 4
  ret i32 %184
}

declare dso_local i32 @GetToken(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @Error(i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @ParsePatch(...) #1

declare dso_local i32 @ParseTerrain(...) #1

declare dso_local i32 @ParseBrush(...) #1

declare dso_local i32 @UnGetToken(...) #1

declare dso_local %struct.TYPE_10__* @ParseEpair(...) #1

declare dso_local i32 @GetVectorForKey(%struct.TYPE_11__*, i8*, i64*) #1

declare dso_local i32 @AdjustBrushesForOrigin(%struct.TYPE_11__*) #1

declare dso_local i8* @ValueForKey(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @SetTerrainTextures(...) #1

declare dso_local i32 @MoveBrushesToWorld(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
