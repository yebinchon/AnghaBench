; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_file.c_AAS_WriteAASFile.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_file.c_AAS_WriteAASFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"writing %s\0A\00", align 1
@AASID = common dso_local global i32 0, align 4
@AASVERSION = common dso_local global i32 0, align 4
@aasworld = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"error opening %s\0A\00", align 1
@AASLUMP_BBOXES = common dso_local global i32 0, align 4
@AASLUMP_VERTEXES = common dso_local global i32 0, align 4
@AASLUMP_PLANES = common dso_local global i32 0, align 4
@AASLUMP_EDGES = common dso_local global i32 0, align 4
@AASLUMP_EDGEINDEX = common dso_local global i32 0, align 4
@AASLUMP_FACES = common dso_local global i32 0, align 4
@AASLUMP_FACEINDEX = common dso_local global i32 0, align 4
@AASLUMP_AREAS = common dso_local global i32 0, align 4
@AASLUMP_AREASETTINGS = common dso_local global i32 0, align 4
@AASLUMP_REACHABILITY = common dso_local global i32 0, align 4
@AASLUMP_NODES = common dso_local global i32 0, align 4
@AASLUMP_PORTALS = common dso_local global i32 0, align 4
@AASLUMP_PORTALINDEX = common dso_local global i32 0, align 4
@AASLUMP_CLUSTERS = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_WriteAASFile(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @Log_Print(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %6)
  %8 = call i32 (...) @AAS_ShowTotals()
  %9 = call i32 (...) @AAS_SwapAASData()
  %10 = call i32 @memset(%struct.TYPE_6__* %4, i32 0, i32 24)
  %11 = load i32, i32* @AASID, align 4
  %12 = call i8* @LittleLong(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  store i8* %12, i8** %13, align 8
  %14 = load i32, i32* @AASVERSION, align 4
  %15 = call i8* @LittleLong(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 28), align 4
  %18 = call i8* @LittleLong(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i32* @fopen(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @Log_Print(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  store i32 0, i32* %2, align 4
  br label %204

27:                                               ; preds = %1
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @fwrite(%struct.TYPE_6__* %4, i32 24, i32 1, i32* %28)
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @fclose(i32* %32)
  store i32 0, i32* %2, align 4
  br label %204

34:                                               ; preds = %27
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @AASLUMP_BBOXES, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 27), align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 0), align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i32 @AAS_WriteAASLump(i32* %35, %struct.TYPE_6__* %4, i32 %36, i32 %37, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %204

45:                                               ; preds = %34
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @AASLUMP_VERTEXES, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 26), align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 1), align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = call i32 @AAS_WriteAASLump(i32* %46, %struct.TYPE_6__* %4, i32 %47, i32 %48, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %204

56:                                               ; preds = %45
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* @AASLUMP_PLANES, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 25), align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 2), align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = call i32 @AAS_WriteAASLump(i32* %57, %struct.TYPE_6__* %4, i32 %58, i32 %59, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %204

67:                                               ; preds = %56
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* @AASLUMP_EDGES, align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 24), align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 3), align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = trunc i64 %73 to i32
  %75 = call i32 @AAS_WriteAASLump(i32* %68, %struct.TYPE_6__* %4, i32 %69, i32 %70, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %204

78:                                               ; preds = %67
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* @AASLUMP_EDGEINDEX, align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 23), align 4
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 4), align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  %85 = trunc i64 %84 to i32
  %86 = call i32 @AAS_WriteAASLump(i32* %79, %struct.TYPE_6__* %4, i32 %80, i32 %81, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %204

89:                                               ; preds = %78
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* @AASLUMP_FACES, align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 22), align 4
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 5), align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = call i32 @AAS_WriteAASLump(i32* %90, %struct.TYPE_6__* %4, i32 %91, i32 %92, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %89
  store i32 0, i32* %2, align 4
  br label %204

100:                                              ; preds = %89
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* @AASLUMP_FACEINDEX, align 4
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 21), align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 6), align 4
  %105 = sext i32 %104 to i64
  %106 = mul i64 %105, 4
  %107 = trunc i64 %106 to i32
  %108 = call i32 @AAS_WriteAASLump(i32* %101, %struct.TYPE_6__* %4, i32 %102, i32 %103, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %204

111:                                              ; preds = %100
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* @AASLUMP_AREAS, align 4
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 20), align 4
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 7), align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 %116, 4
  %118 = trunc i64 %117 to i32
  %119 = call i32 @AAS_WriteAASLump(i32* %112, %struct.TYPE_6__* %4, i32 %113, i32 %114, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %111
  store i32 0, i32* %2, align 4
  br label %204

122:                                              ; preds = %111
  %123 = load i32*, i32** %5, align 8
  %124 = load i32, i32* @AASLUMP_AREASETTINGS, align 4
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 19), align 4
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 8), align 4
  %127 = sext i32 %126 to i64
  %128 = mul i64 %127, 4
  %129 = trunc i64 %128 to i32
  %130 = call i32 @AAS_WriteAASLump(i32* %123, %struct.TYPE_6__* %4, i32 %124, i32 %125, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %122
  store i32 0, i32* %2, align 4
  br label %204

133:                                              ; preds = %122
  %134 = load i32*, i32** %5, align 8
  %135 = load i32, i32* @AASLUMP_REACHABILITY, align 4
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 18), align 4
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 9), align 4
  %138 = sext i32 %137 to i64
  %139 = mul i64 %138, 4
  %140 = trunc i64 %139 to i32
  %141 = call i32 @AAS_WriteAASLump(i32* %134, %struct.TYPE_6__* %4, i32 %135, i32 %136, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %133
  store i32 0, i32* %2, align 4
  br label %204

144:                                              ; preds = %133
  %145 = load i32*, i32** %5, align 8
  %146 = load i32, i32* @AASLUMP_NODES, align 4
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 17), align 4
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 10), align 4
  %149 = sext i32 %148 to i64
  %150 = mul i64 %149, 4
  %151 = trunc i64 %150 to i32
  %152 = call i32 @AAS_WriteAASLump(i32* %145, %struct.TYPE_6__* %4, i32 %146, i32 %147, i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %144
  store i32 0, i32* %2, align 4
  br label %204

155:                                              ; preds = %144
  %156 = load i32*, i32** %5, align 8
  %157 = load i32, i32* @AASLUMP_PORTALS, align 4
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 16), align 4
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 11), align 4
  %160 = sext i32 %159 to i64
  %161 = mul i64 %160, 4
  %162 = trunc i64 %161 to i32
  %163 = call i32 @AAS_WriteAASLump(i32* %156, %struct.TYPE_6__* %4, i32 %157, i32 %158, i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %155
  store i32 0, i32* %2, align 4
  br label %204

166:                                              ; preds = %155
  %167 = load i32*, i32** %5, align 8
  %168 = load i32, i32* @AASLUMP_PORTALINDEX, align 4
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 15), align 4
  %170 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 12), align 4
  %171 = sext i32 %170 to i64
  %172 = mul i64 %171, 4
  %173 = trunc i64 %172 to i32
  %174 = call i32 @AAS_WriteAASLump(i32* %167, %struct.TYPE_6__* %4, i32 %168, i32 %169, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %166
  store i32 0, i32* %2, align 4
  br label %204

177:                                              ; preds = %166
  %178 = load i32*, i32** %5, align 8
  %179 = load i32, i32* @AASLUMP_CLUSTERS, align 4
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 14), align 4
  %181 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 13), align 4
  %182 = sext i32 %181 to i64
  %183 = mul i64 %182, 4
  %184 = trunc i64 %183 to i32
  %185 = call i32 @AAS_WriteAASLump(i32* %178, %struct.TYPE_6__* %4, i32 %179, i32 %180, i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %177
  store i32 0, i32* %2, align 4
  br label %204

188:                                              ; preds = %177
  %189 = load i32*, i32** %5, align 8
  %190 = load i32, i32* @SEEK_SET, align 4
  %191 = call i32 @fseek(i32* %189, i32 0, i32 %190)
  %192 = bitcast %struct.TYPE_6__* %4 to i8*
  %193 = getelementptr inbounds i8, i8* %192, i64 8
  %194 = call i32 @AAS_DData(i8* %193, i32 16)
  %195 = load i32*, i32** %5, align 8
  %196 = call i32 @fwrite(%struct.TYPE_6__* %4, i32 24, i32 1, i32* %195)
  %197 = icmp slt i32 %196, 1
  br i1 %197, label %198, label %201

198:                                              ; preds = %188
  %199 = load i32*, i32** %5, align 8
  %200 = call i32 @fclose(i32* %199)
  store i32 0, i32* %2, align 4
  br label %204

201:                                              ; preds = %188
  %202 = load i32*, i32** %5, align 8
  %203 = call i32 @fclose(i32* %202)
  store i32 1, i32* %2, align 4
  br label %204

204:                                              ; preds = %201, %198, %187, %176, %165, %154, %143, %132, %121, %110, %99, %88, %77, %66, %55, %44, %31, %24
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i32 @Log_Print(i8*, i8*) #1

declare dso_local i32 @AAS_ShowTotals(...) #1

declare dso_local i32 @AAS_SwapAASData(...) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i8* @LittleLong(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fwrite(%struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @AAS_WriteAASLump(i32*, %struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @AAS_DData(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
