; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_parse.c_CL_ParseSnapshot.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_parse.c_CL_ParseSnapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_13__, i8*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_19__ = type { i32, i8*, %struct.TYPE_15__, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, %struct.TYPE_20__, i8*, i32, i8*, i32, i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@clc = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@qtrue = common dso_local global i8* null, align 8
@qfalse = common dso_local global i8* null, align 8
@cl = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@PACKET_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Delta from invalid frame (not supposed to happen!).\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Delta frame too old.\0A\00", align 1
@MAX_PARSE_ENTITIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Delta parseEntitiesNum too old.\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"playerstate\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"packet entities\00", align 1
@PACKET_BACKUP = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@cl_shownet = common dso_local global %struct.TYPE_18__* null, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"   snapshot:%i  delta:%i  ping:%i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_ParseSnapshot(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = call i32 @Com_Memset(%struct.TYPE_15__* %5, i32 0, i32 56)
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @clc, i32 0, i32 3), align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 9
  store i32 %11, i32* %12, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @MSG_ReadLong(i32* %13)
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 8
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @clc, i32 0, i32 0), align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = call i8* @MSG_ReadByte(i32* %18)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 1
  store i32 -1, i32* %24, align 4
  br label %31

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %27, %28
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %25, %23
  %32 = load i32*, i32** %2, align 8
  %33 = call i8* @MSG_ReadByte(i32* %32)
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 7
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i8*, i8** @qtrue, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 5
  store i8* %39, i8** %40, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  %41 = load i8*, i8** @qfalse, align 8
  store i8* %41, i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @clc, i32 0, i32 2), align 8
  br label %82

42:                                               ; preds = %31
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cl, i32 0, i32 3), align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* @PACKET_MASK, align 8
  %48 = and i64 %46, %47
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i64 %48
  store %struct.TYPE_15__* %49, %struct.TYPE_15__** %4, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 5
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %42
  %55 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %81

56:                                               ; preds = %42
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %80

65:                                               ; preds = %56
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cl, i32 0, i32 0), align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %66, %69
  %71 = load i32, i32* @MAX_PARSE_ENTITIES, align 4
  %72 = sub nsw i32 %71, 128
  %73 = icmp sgt i32 %70, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %79

76:                                               ; preds = %65
  %77 = load i8*, i8** @qtrue, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 5
  store i8* %77, i8** %78, align 8
  br label %79

79:                                               ; preds = %76, %74
  br label %80

80:                                               ; preds = %79, %63
  br label %81

81:                                               ; preds = %80, %54
  br label %82

82:                                               ; preds = %81, %38
  %83 = load i32*, i32** %2, align 8
  %84 = call i8* @MSG_ReadByte(i32* %83)
  %85 = ptrtoint i8* %84 to i32
  store i32 %85, i32* %3, align 4
  %86 = load i32*, i32** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 6
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @MSG_ReadData(i32* %86, i32* %87, i32 %88)
  %90 = load i32*, i32** %2, align 8
  %91 = call i32 @SHOWNET(i32* %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %93 = icmp ne %struct.TYPE_15__* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %82
  %95 = load i32*, i32** %2, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 4
  %99 = call i32 @MSG_ReadDeltaPlayerstate(i32* %95, %struct.TYPE_20__* %97, %struct.TYPE_20__* %98)
  br label %104

100:                                              ; preds = %82
  %101 = load i32*, i32** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 4
  %103 = call i32 @MSG_ReadDeltaPlayerstate(i32* %101, %struct.TYPE_20__* null, %struct.TYPE_20__* %102)
  br label %104

104:                                              ; preds = %100, %94
  %105 = load i32*, i32** %2, align 8
  %106 = call i32 @SHOWNET(i32* %105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %107 = load i32*, i32** %2, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %109 = call i32 @CL_ParsePacketEntities(i32* %107, %struct.TYPE_15__* %108, %struct.TYPE_15__* %5)
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 5
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %104
  br label %202

114:                                              ; preds = %104
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cl, i32 0, i32 2, i32 0), align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sub nsw i32 %118, %119
  %121 = load i32, i32* @PACKET_BACKUP, align 4
  %122 = icmp sge i32 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %114
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @PACKET_BACKUP, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sub nsw i32 %125, %127
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %123, %114
  br label %130

130:                                              ; preds = %144, %129
  %131 = load i32, i32* %7, align 4
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %131, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %130
  %136 = load i8*, i8** @qfalse, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cl, i32 0, i32 3), align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* @PACKET_MASK, align 8
  %141 = and i64 %139, %140
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 5
  store i8* %136, i8** %143, align 8
  br label %144

144:                                              ; preds = %135
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %7, align 4
  br label %130

147:                                              ; preds = %130
  %148 = bitcast %struct.TYPE_15__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_15__* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cl, i32 0, i32 2) to i8*), i8* align 8 %148, i64 56, i1 false)
  store i32 999, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cl, i32 0, i32 2, i32 3), align 4
  store i32 0, i32* %8, align 4
  br label %149

149:                                              ; preds = %180, %147
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @PACKET_BACKUP, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %183

153:                                              ; preds = %149
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @clc, i32 0, i32 1, i32 0), align 4
  %155 = sub nsw i32 %154, 1
  %156 = load i32, i32* %8, align 4
  %157 = sub nsw i32 %155, %156
  %158 = sext i32 %157 to i64
  %159 = load i64, i64* @PACKET_MASK, align 8
  %160 = and i64 %158, %159
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %9, align 4
  %162 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cl, i32 0, i32 2, i32 4, i32 0), align 8
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cl, i32 0, i32 4), align 8
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp sge i64 %162, %168
  br i1 %169, label %170, label %179

170:                                              ; preds = %153
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cls, i32 0, i32 0), align 4
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cl, i32 0, i32 4), align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 %171, %177
  store i32 %178, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cl, i32 0, i32 2, i32 3), align 4
  br label %183

179:                                              ; preds = %153
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %8, align 4
  br label %149

183:                                              ; preds = %170, %149
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cl, i32 0, i32 3), align 8
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cl, i32 0, i32 2, i32 0), align 8
  %186 = sext i32 %185 to i64
  %187 = load i64, i64* @PACKET_MASK, align 8
  %188 = and i64 %186, %187
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i64 %188
  %190 = bitcast %struct.TYPE_15__* %189 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %190, i8* align 8 bitcast (%struct.TYPE_15__* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cl, i32 0, i32 2) to i8*), i64 56, i1 false)
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** @cl_shownet, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, 3
  br i1 %194, label %195, label %200

195:                                              ; preds = %183
  %196 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cl, i32 0, i32 2, i32 0), align 8
  %197 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cl, i32 0, i32 2, i32 1), align 4
  %198 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cl, i32 0, i32 2, i32 3), align 4
  %199 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %196, i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %195, %183
  %201 = load i8*, i8** @qtrue, align 8
  store i8* %201, i8** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cl, i32 0, i32 1), align 8
  br label %202

202:                                              ; preds = %200, %113
  ret void
}

declare dso_local i32 @Com_Memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @MSG_ReadLong(i32*) #1

declare dso_local i8* @MSG_ReadByte(i32*) #1

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @MSG_ReadData(i32*, i32*, i32) #1

declare dso_local i32 @SHOWNET(i32*, i8*) #1

declare dso_local i32 @MSG_ReadDeltaPlayerstate(i32*, %struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @CL_ParsePacketEntities(i32*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
