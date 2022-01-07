; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_client.c_CopyToBodyQue.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_client.c_CopyToBodyQue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_17__** }
%struct.TYPE_17__ = type { i32, i64, %struct.TYPE_16__, %struct.TYPE_15__, i8*, i32, i32, i64, %struct.TYPE_13__*, i64, i8*, i64, %struct.TYPE_17__*, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i64, i32, i32, %struct.TYPE_14__, i64, i64, i64, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@CONTENTS_NODROP = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@BODY_QUEUE_SIZE = common dso_local global i32 0, align 4
@EF_DEAD = common dso_local global i32 0, align 4
@g_entities = common dso_local global %struct.TYPE_17__* null, align 8
@qtrue = common dso_local global i8* null, align 8
@ENTITYNUM_NONE = common dso_local global i64 0, align 8
@TR_GRAVITY = common dso_local global i32 0, align 4
@TR_STATIONARY = common dso_local global i32 0, align 4
@ANIM_TOGGLEBIT = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@CONTENTS_PLAYERCLIP = common dso_local global i32 0, align 4
@CONTENTS_CORPSE = common dso_local global i32 0, align 4
@BodySink = common dso_local global i32 0, align 4
@body_die = common dso_local global i32 0, align 4
@GIB_HEALTH = common dso_local global i64 0, align 8
@qfalse = common dso_local global i8* null, align 8
@EF_KAMIKAZE = common dso_local global i32 0, align 4
@MAX_GENTITIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CopyToBodyQue(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %5 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %6 = call i32 @trap_UnlinkEntity(%struct.TYPE_17__* %5)
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 9
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @trap_PointContents(i32 %10, i32 -1)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @CONTENTS_NODROP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %227

17:                                               ; preds = %1
  %18 = load %struct.TYPE_17__**, %struct.TYPE_17__*** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 2), align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 0), align 8
  %20 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %18, i64 %19
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %3, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 0), align 8
  %23 = add i64 %22, 1
  %24 = load i32, i32* @BODY_QUEUE_SIZE, align 4
  %25 = sext i32 %24 to i64
  %26 = urem i64 %23, %25
  store i64 %26, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 0), align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %28 = call i32 @trap_UnlinkEntity(%struct.TYPE_17__* %27)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 3
  %33 = bitcast %struct.TYPE_15__* %30 to i8*
  %34 = bitcast %struct.TYPE_15__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 80, i1 false)
  %35 = load i32, i32* @EF_DEAD, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 8
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 7
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** @g_entities, align 8
  %47 = ptrtoint %struct.TYPE_17__* %45 to i64
  %48 = ptrtoint %struct.TYPE_17__* %46 to i64
  %49 = sub i64 %47, %48
  %50 = sdiv exact i64 %49, 200
  %51 = trunc i64 %50 to i32
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 1), align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 11
  store i64 %55, i64* %57, align 8
  %58 = load i8*, i8** @qtrue, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 10
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 9
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ENTITYNUM_NONE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %92

69:                                               ; preds = %17
  %70 = load i32, i32* @TR_GRAVITY, align 4
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  store i32 %70, i32* %74, align 4
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 1), align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 3
  store i64 %75, i64* %79, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @VectorCopy(i32 %85, i32 %90)
  br label %98

92:                                               ; preds = %17
  %93 = load i32, i32* @TR_STATIONARY, align 4
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  store i32 %93, i32* %97, align 4
  br label %98

98:                                               ; preds = %92, %69
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 6
  store i64 0, i64* %101, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @ANIM_TOGGLEBIT, align 4
  %107 = xor i32 %106, -1
  %108 = and i32 %105, %107
  switch i32 %108, label %124 [
    i32 130, label %109
    i32 133, label %109
    i32 129, label %116
    i32 132, label %116
    i32 128, label %123
    i32 131, label %123
  ]

109:                                              ; preds = %98, %98
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 3
  store i32 133, i32* %112, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 4
  store i32 133, i32* %115, align 4
  br label %131

116:                                              ; preds = %98, %98
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 3
  store i32 132, i32* %119, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 4
  store i32 132, i32* %122, align 4
  br label %131

123:                                              ; preds = %98, %98
  br label %124

124:                                              ; preds = %98, %123
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 3
  store i32 131, i32* %127, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 4
  store i32 131, i32* %130, align 4
  br label %131

131:                                              ; preds = %124, %116, %109
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 7
  store i32 %135, i32* %138, align 4
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @VectorCopy(i32 %142, i32 %146)
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @VectorCopy(i32 %151, i32 %155)
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @VectorCopy(i32 %160, i32 %164)
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @VectorCopy(i32 %169, i32 %173)
  %175 = load i32, i32* @CONTENTS_SOLID, align 4
  %176 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %177 = or i32 %175, %176
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = load i32, i32* @CONTENTS_CORPSE, align 4
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 2
  store i32 %180, i32* %183, align 8
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  store i32 %187, i32* %190, align 8
  %191 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 1), align 8
  %192 = add nsw i64 %191, 5000
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 7
  store i64 %192, i64* %194, align 8
  %195 = load i32, i32* @BodySink, align 4
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 6
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* @body_die, align 4
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 5
  store i32 %198, i32* %200, align 8
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @GIB_HEALTH, align 8
  %205 = icmp sle i64 %203, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %131
  %207 = load i8*, i8** @qfalse, align 8
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 4
  store i8* %207, i8** %209, align 8
  br label %214

210:                                              ; preds = %131
  %211 = load i8*, i8** @qtrue, align 8
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 4
  store i8* %211, i8** %213, align 8
  br label %214

214:                                              ; preds = %210, %206
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 5
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @VectorCopy(i32 %219, i32 %223)
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %226 = call i32 @trap_LinkEntity(%struct.TYPE_17__* %225)
  br label %227

227:                                              ; preds = %214, %16
  ret void
}

declare dso_local i32 @trap_UnlinkEntity(%struct.TYPE_17__*) #1

declare dso_local i32 @trap_PointContents(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @trap_LinkEntity(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
