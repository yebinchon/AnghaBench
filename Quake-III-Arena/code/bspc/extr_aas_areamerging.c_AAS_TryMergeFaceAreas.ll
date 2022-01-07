; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_areamerging.c_AAS_TryMergeFaceAreas.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_areamerging.c_AAS_TryMergeFaceAreas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_15__** }
%struct.TYPE_16__ = type { i64, i64, i64, i32, %struct.TYPE_16__*, %struct.TYPE_15__* }

@.str = private unnamed_addr constant [30 x i8] c"face does not belong to area1\00", align 1
@FACE_GAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"face does not belong to area2\00", align 1
@FACE_GROUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_TryMergeFaceAreas(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %8, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %9, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %404

29:                                               ; preds = %1
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %404

38:                                               ; preds = %29
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %404

47:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 5
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  store %struct.TYPE_15__* %50, %struct.TYPE_15__** %11, align 8
  br label %51

51:                                               ; preds = %197, %47
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %53 = icmp ne %struct.TYPE_15__* %52, null
  br i1 %53, label %54, label %205

54:                                               ; preds = %51
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %59 = icmp ne %struct.TYPE_16__* %57, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %4, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %62, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %65 = icmp ne %struct.TYPE_16__* %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %54
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %71 = icmp ne %struct.TYPE_16__* %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = call i32 @Error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %66, %54
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %79 = icmp eq %struct.TYPE_16__* %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %85 = icmp eq %struct.TYPE_16__* %83, %84
  br i1 %85, label %98, label %86

86:                                               ; preds = %80, %74
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %88, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %91 = icmp eq %struct.TYPE_16__* %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %97 = icmp eq %struct.TYPE_16__* %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92, %80
  br label %197

99:                                               ; preds = %92, %86
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %6, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i64 @AAS_GapFace(%struct.TYPE_15__* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %99
  %110 = load i32, i32* @FACE_GAP, align 4
  %111 = load i32, i32* %6, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %109, %99
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 5
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  store %struct.TYPE_15__* %116, %struct.TYPE_15__** %12, align 8
  br label %117

117:                                              ; preds = %188, %113
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %119 = icmp ne %struct.TYPE_15__* %118, null
  br i1 %119, label %120, label %196

120:                                              ; preds = %117
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %122, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %125 = icmp ne %struct.TYPE_16__* %123, %124
  %126 = zext i1 %125 to i32
  store i32 %126, i32* %5, align 4
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %131 = icmp ne %struct.TYPE_16__* %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %120
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %134, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %137 = icmp ne %struct.TYPE_16__* %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = call i32 @Error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %132, %120
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %142, align 8
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %145 = icmp eq %struct.TYPE_16__* %143, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %140
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %148, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %151 = icmp eq %struct.TYPE_16__* %149, %150
  br i1 %151, label %164, label %152

152:                                              ; preds = %146, %140
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %154, align 8
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %157 = icmp eq %struct.TYPE_16__* %155, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %152
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %160, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %163 = icmp eq %struct.TYPE_16__* %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %158, %146
  br label %188

165:                                              ; preds = %158, %152
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %7, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %7, align 4
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %172 = load i32, i32* %5, align 4
  %173 = call i64 @AAS_GapFace(%struct.TYPE_15__* %171, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %165
  %176 = load i32, i32* @FACE_GAP, align 4
  %177 = load i32, i32* %7, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %7, align 4
  br label %179

179:                                              ; preds = %175, %165
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %182 = load i32, i32* %4, align 4
  %183 = load i32, i32* %5, align 4
  %184 = call i64 @NonConvex(%struct.TYPE_15__* %180, %struct.TYPE_15__* %181, i32 %182, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %179
  store i32 0, i32* %2, align 4
  br label %404

187:                                              ; preds = %179
  br label %188

188:                                              ; preds = %187, %164
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 3
  %191 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %190, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %191, i64 %193
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %194, align 8
  store %struct.TYPE_15__* %195, %struct.TYPE_15__** %12, align 8
  br label %117

196:                                              ; preds = %117
  br label %197

197:                                              ; preds = %196, %98
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 3
  %200 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %199, align 8
  %201 = load i32, i32* %4, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %200, i64 %202
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %203, align 8
  store %struct.TYPE_15__* %204, %struct.TYPE_15__** %11, align 8
  br label %51

205:                                              ; preds = %51
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* @FACE_GROUND, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %205
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* @FACE_GAP, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %225, label %215

215:                                              ; preds = %210, %205
  %216 = load i32, i32* %7, align 4
  %217 = load i32, i32* @FACE_GROUND, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %215
  %221 = load i32, i32* %6, align 4
  %222 = load i32, i32* @FACE_GAP, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %220, %210
  store i32 0, i32* %2, align 4
  br label %404

226:                                              ; preds = %220, %215
  %227 = call %struct.TYPE_16__* (...) @AAS_AllocTmpArea()
  store %struct.TYPE_16__* %227, %struct.TYPE_16__** %10, align 8
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 0
  store i64 %230, i64* %232, align 8
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 1
  store i64 %235, i64* %237, align 8
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 2
  store i64 %240, i64* %242, align 8
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 5
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %244, align 8
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 5
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %246, align 8
  store %struct.TYPE_15__* %247, %struct.TYPE_15__** %11, align 8
  br label %248

248:                                              ; preds = %297, %226
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %250 = icmp ne %struct.TYPE_15__* %249, null
  br i1 %250, label %251, label %299

251:                                              ; preds = %248
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 2
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %253, align 8
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %256 = icmp ne %struct.TYPE_16__* %254, %255
  %257 = zext i1 %256 to i32
  store i32 %257, i32* %4, align 4
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 3
  %260 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %259, align 8
  %261 = load i32, i32* %4, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %260, i64 %262
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %263, align 8
  store %struct.TYPE_15__* %264, %struct.TYPE_15__** %13, align 8
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 2
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %266, align 8
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %269 = icmp eq %struct.TYPE_16__* %267, %268
  br i1 %269, label %270, label %276

270:                                              ; preds = %251
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 1
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %272, align 8
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %275 = icmp eq %struct.TYPE_16__* %273, %274
  br i1 %275, label %288, label %276

276:                                              ; preds = %270, %251
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 2
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %278, align 8
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %281 = icmp eq %struct.TYPE_16__* %279, %280
  br i1 %281, label %282, label %289

282:                                              ; preds = %276
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 1
  %285 = load %struct.TYPE_16__*, %struct.TYPE_16__** %284, align 8
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %287 = icmp eq %struct.TYPE_16__* %285, %286
  br i1 %287, label %288, label %289

288:                                              ; preds = %282, %270
  br label %297

289:                                              ; preds = %282, %276
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %292 = call i32 @AAS_RemoveFaceFromArea(%struct.TYPE_15__* %290, %struct.TYPE_16__* %291)
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %294 = load i32, i32* %4, align 4
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %296 = call i32 @AAS_AddFaceSideToArea(%struct.TYPE_15__* %293, i32 %294, %struct.TYPE_16__* %295)
  br label %297

297:                                              ; preds = %289, %288
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %298, %struct.TYPE_15__** %11, align 8
  br label %248

299:                                              ; preds = %248
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 5
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %301, align 8
  store %struct.TYPE_15__* %302, %struct.TYPE_15__** %12, align 8
  br label %303

303:                                              ; preds = %352, %299
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %305 = icmp ne %struct.TYPE_15__* %304, null
  br i1 %305, label %306, label %354

306:                                              ; preds = %303
  %307 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %308 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %307, i32 0, i32 2
  %309 = load %struct.TYPE_16__*, %struct.TYPE_16__** %308, align 8
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %311 = icmp ne %struct.TYPE_16__* %309, %310
  %312 = zext i1 %311 to i32
  store i32 %312, i32* %5, align 4
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 3
  %315 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %314, align 8
  %316 = load i32, i32* %5, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %315, i64 %317
  %319 = load %struct.TYPE_15__*, %struct.TYPE_15__** %318, align 8
  store %struct.TYPE_15__* %319, %struct.TYPE_15__** %14, align 8
  %320 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i32 0, i32 2
  %322 = load %struct.TYPE_16__*, %struct.TYPE_16__** %321, align 8
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %324 = icmp eq %struct.TYPE_16__* %322, %323
  br i1 %324, label %325, label %331

325:                                              ; preds = %306
  %326 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %327 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %326, i32 0, i32 1
  %328 = load %struct.TYPE_16__*, %struct.TYPE_16__** %327, align 8
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %330 = icmp eq %struct.TYPE_16__* %328, %329
  br i1 %330, label %343, label %331

331:                                              ; preds = %325, %306
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 2
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %333, align 8
  %335 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %336 = icmp eq %struct.TYPE_16__* %334, %335
  br i1 %336, label %337, label %344

337:                                              ; preds = %331
  %338 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %339 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %338, i32 0, i32 1
  %340 = load %struct.TYPE_16__*, %struct.TYPE_16__** %339, align 8
  %341 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %342 = icmp eq %struct.TYPE_16__* %340, %341
  br i1 %342, label %343, label %344

343:                                              ; preds = %337, %325
  br label %352

344:                                              ; preds = %337, %331
  %345 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %346 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %347 = call i32 @AAS_RemoveFaceFromArea(%struct.TYPE_15__* %345, %struct.TYPE_16__* %346)
  %348 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %349 = load i32, i32* %5, align 4
  %350 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %351 = call i32 @AAS_AddFaceSideToArea(%struct.TYPE_15__* %348, i32 %349, %struct.TYPE_16__* %350)
  br label %352

352:                                              ; preds = %344, %343
  %353 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %353, %struct.TYPE_15__** %12, align 8
  br label %303

354:                                              ; preds = %303
  %355 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %356 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %355, i32 0, i32 5
  %357 = load %struct.TYPE_15__*, %struct.TYPE_15__** %356, align 8
  store %struct.TYPE_15__* %357, %struct.TYPE_15__** %11, align 8
  br label %358

358:                                              ; preds = %387, %354
  %359 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %360 = icmp ne %struct.TYPE_15__* %359, null
  br i1 %360, label %361, label %389

361:                                              ; preds = %358
  %362 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %363 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %362, i32 0, i32 2
  %364 = load %struct.TYPE_16__*, %struct.TYPE_16__** %363, align 8
  %365 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %366 = icmp ne %struct.TYPE_16__* %364, %365
  %367 = zext i1 %366 to i32
  store i32 %367, i32* %4, align 4
  %368 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %369 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %368, i32 0, i32 3
  %370 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %369, align 8
  %371 = load i32, i32* %4, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %370, i64 %372
  %374 = load %struct.TYPE_15__*, %struct.TYPE_15__** %373, align 8
  store %struct.TYPE_15__* %374, %struct.TYPE_15__** %13, align 8
  %375 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %376 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %377 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %376, i32 0, i32 2
  %378 = load %struct.TYPE_16__*, %struct.TYPE_16__** %377, align 8
  %379 = call i32 @AAS_RemoveFaceFromArea(%struct.TYPE_15__* %375, %struct.TYPE_16__* %378)
  %380 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %381 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %382 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %381, i32 0, i32 1
  %383 = load %struct.TYPE_16__*, %struct.TYPE_16__** %382, align 8
  %384 = call i32 @AAS_RemoveFaceFromArea(%struct.TYPE_15__* %380, %struct.TYPE_16__* %383)
  %385 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %386 = call i32 @AAS_FreeTmpFace(%struct.TYPE_15__* %385)
  br label %387

387:                                              ; preds = %361
  %388 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %388, %struct.TYPE_15__** %11, align 8
  br label %358

389:                                              ; preds = %358
  %390 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %391 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %392 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %391, i32 0, i32 4
  store %struct.TYPE_16__* %390, %struct.TYPE_16__** %392, align 8
  %393 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %394 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %393, i32 0, i32 3
  store i32 1, i32* %394, align 8
  %395 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %396 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %397 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %396, i32 0, i32 4
  store %struct.TYPE_16__* %395, %struct.TYPE_16__** %397, align 8
  %398 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %399 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %398, i32 0, i32 3
  store i32 1, i32* %399, align 8
  %400 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %401 = call i32 @AAS_CheckArea(%struct.TYPE_16__* %400)
  %402 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %403 = call i32 @AAS_FlipAreaFaces(%struct.TYPE_16__* %402)
  store i32 1, i32* %2, align 4
  br label %404

404:                                              ; preds = %389, %225, %186, %46, %37, %28
  %405 = load i32, i32* %2, align 4
  ret i32 %405
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i64 @AAS_GapFace(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @NonConvex(%struct.TYPE_15__*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local %struct.TYPE_16__* @AAS_AllocTmpArea(...) #1

declare dso_local i32 @AAS_RemoveFaceFromArea(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @AAS_AddFaceSideToArea(%struct.TYPE_15__*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @AAS_FreeTmpFace(%struct.TYPE_15__*) #1

declare dso_local i32 @AAS_CheckArea(%struct.TYPE_16__*) #1

declare dso_local i32 @AAS_FlipAreaFaces(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
