; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_st_stuff.c_ST_updateFaceWidget.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_st_stuff.c_ST_updateFaceWidget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64*, i32, i64*, i64, i64, %struct.TYPE_3__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64, i32, i32 }

@ST_updateFaceWidget.lastattackdown = internal global i32 -1, align 4
@ST_updateFaceWidget.priority = internal global i32 0, align 4
@plyr = common dso_local global %struct.TYPE_4__* null, align 8
@ST_DEADFACE = common dso_local global i64 0, align 8
@st_faceindex = common dso_local global i64 0, align 8
@st_facecount = common dso_local global i32 0, align 4
@NUMWEAPONS = common dso_local global i32 0, align 4
@oldweaponsowned = common dso_local global i64* null, align 8
@ST_EVILGRINCOUNT = common dso_local global i32 0, align 4
@ST_EVILGRINOFFSET = common dso_local global i64 0, align 8
@st_oldhealth = common dso_local global i64 0, align 8
@ST_MUCHPAIN = common dso_local global i64 0, align 8
@ST_TURNCOUNT = common dso_local global i32 0, align 4
@ST_OUCHOFFSET = common dso_local global i64 0, align 8
@ANG180 = common dso_local global i64 0, align 8
@ANG45 = common dso_local global i64 0, align 8
@ST_RAMPAGEOFFSET = common dso_local global i64 0, align 8
@ST_TURNOFFSET = common dso_local global i64 0, align 8
@ST_RAMPAGEDELAY = common dso_local global i32 0, align 4
@CF_GODMODE = common dso_local global i32 0, align 4
@pw_invulnerability = common dso_local global i64 0, align 8
@ST_GODFACE = common dso_local global i64 0, align 8
@st_randomnumber = common dso_local global i32 0, align 4
@ST_STRAIGHTFACECOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ST_updateFaceWidget() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @ST_updateFaceWidget.priority, align 4
  %6 = icmp slt i32 %5, 10
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plyr, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  store i32 9, i32* @ST_updateFaceWidget.priority, align 4
  %13 = load i64, i64* @ST_DEADFACE, align 8
  store i64 %13, i64* @st_faceindex, align 8
  store i32 1, i32* @st_facecount, align 4
  br label %14

14:                                               ; preds = %12, %7
  br label %15

15:                                               ; preds = %14, %0
  %16 = load i32, i32* @ST_updateFaceWidget.priority, align 4
  %17 = icmp slt i32 %16, 9
  br i1 %17, label %18, label %68

18:                                               ; preds = %15
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plyr, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %67

23:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  store i32 0, i32* %1, align 4
  br label %24

24:                                               ; preds = %55, %23
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @NUMWEAPONS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %24
  %29 = load i64*, i64** @oldweaponsowned, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plyr, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %33, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %28
  store i32 1, i32* %4, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plyr, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** @oldweaponsowned, align 8
  %51 = load i32, i32* %1, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  store i64 %49, i64* %53, align 8
  br label %54

54:                                               ; preds = %42, %28
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %1, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %1, align 4
  br label %24

58:                                               ; preds = %24
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  store i32 8, i32* @ST_updateFaceWidget.priority, align 4
  %62 = load i32, i32* @ST_EVILGRINCOUNT, align 4
  store i32 %62, i32* @st_facecount, align 4
  %63 = call i64 (...) @ST_calcPainOffset()
  %64 = load i64, i64* @ST_EVILGRINOFFSET, align 8
  %65 = add nsw i64 %63, %64
  store i64 %65, i64* @st_faceindex, align 8
  br label %66

66:                                               ; preds = %61, %58
  br label %67

67:                                               ; preds = %66, %18
  br label %68

68:                                               ; preds = %67, %15
  %69 = load i32, i32* @ST_updateFaceWidget.priority, align 4
  %70 = icmp slt i32 %69, 8
  br i1 %70, label %71, label %181

71:                                               ; preds = %68
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plyr, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %180

76:                                               ; preds = %71
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plyr, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 7
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = icmp ne %struct.TYPE_3__* %79, null
  br i1 %80, label %81, label %180

81:                                               ; preds = %76
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plyr, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 7
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plyr, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 6
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = icmp ne %struct.TYPE_3__* %84, %87
  br i1 %88, label %89, label %180

89:                                               ; preds = %81
  store i32 7, i32* @ST_updateFaceWidget.priority, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plyr, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @st_oldhealth, align 8
  %94 = sub nsw i64 %92, %93
  %95 = load i64, i64* @ST_MUCHPAIN, align 8
  %96 = icmp sgt i64 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %89
  %98 = load i32, i32* @ST_TURNCOUNT, align 4
  store i32 %98, i32* @st_facecount, align 4
  %99 = call i64 (...) @ST_calcPainOffset()
  %100 = load i64, i64* @ST_OUCHOFFSET, align 8
  %101 = add nsw i64 %99, %100
  store i64 %101, i64* @st_faceindex, align 8
  br label %179

102:                                              ; preds = %89
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plyr, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 6
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plyr, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 6
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plyr, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 7
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plyr, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 7
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @R_PointToAngle2(i32 %107, i32 %112, i32 %117, i32 %122)
  store i64 %123, i64* %2, align 8
  %124 = load i64, i64* %2, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plyr, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 6
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp sgt i64 %124, %129
  br i1 %130, label %131, label %143

131:                                              ; preds = %102
  %132 = load i64, i64* %2, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plyr, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 6
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = sub nsw i64 %132, %137
  store i64 %138, i64* %3, align 8
  %139 = load i64, i64* %3, align 8
  %140 = load i64, i64* @ANG180, align 8
  %141 = icmp sgt i64 %139, %140
  %142 = zext i1 %141 to i32
  store i32 %142, i32* %1, align 4
  br label %155

143:                                              ; preds = %102
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plyr, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 6
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %2, align 8
  %150 = sub nsw i64 %148, %149
  store i64 %150, i64* %3, align 8
  %151 = load i64, i64* %3, align 8
  %152 = load i64, i64* @ANG180, align 8
  %153 = icmp sle i64 %151, %152
  %154 = zext i1 %153 to i32
  store i32 %154, i32* %1, align 4
  br label %155

155:                                              ; preds = %143, %131
  %156 = load i32, i32* @ST_TURNCOUNT, align 4
  store i32 %156, i32* @st_facecount, align 4
  %157 = call i64 (...) @ST_calcPainOffset()
  store i64 %157, i64* @st_faceindex, align 8
  %158 = load i64, i64* %3, align 8
  %159 = load i64, i64* @ANG45, align 8
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = load i64, i64* @ST_RAMPAGEOFFSET, align 8
  %163 = load i64, i64* @st_faceindex, align 8
  %164 = add nsw i64 %163, %162
  store i64 %164, i64* @st_faceindex, align 8
  br label %178

165:                                              ; preds = %155
  %166 = load i32, i32* %1, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load i64, i64* @ST_TURNOFFSET, align 8
  %170 = load i64, i64* @st_faceindex, align 8
  %171 = add nsw i64 %170, %169
  store i64 %171, i64* @st_faceindex, align 8
  br label %177

172:                                              ; preds = %165
  %173 = load i64, i64* @ST_TURNOFFSET, align 8
  %174 = add nsw i64 %173, 1
  %175 = load i64, i64* @st_faceindex, align 8
  %176 = add nsw i64 %175, %174
  store i64 %176, i64* @st_faceindex, align 8
  br label %177

177:                                              ; preds = %172, %168
  br label %178

178:                                              ; preds = %177, %161
  br label %179

179:                                              ; preds = %178, %97
  br label %180

180:                                              ; preds = %179, %81, %76, %71
  br label %181

181:                                              ; preds = %180, %68
  %182 = load i32, i32* @ST_updateFaceWidget.priority, align 4
  %183 = icmp slt i32 %182, 7
  br i1 %183, label %184, label %209

184:                                              ; preds = %181
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plyr, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 5
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %208

189:                                              ; preds = %184
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plyr, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @st_oldhealth, align 8
  %194 = sub nsw i64 %192, %193
  %195 = load i64, i64* @ST_MUCHPAIN, align 8
  %196 = icmp sgt i64 %194, %195
  br i1 %196, label %197, label %202

197:                                              ; preds = %189
  store i32 7, i32* @ST_updateFaceWidget.priority, align 4
  %198 = load i32, i32* @ST_TURNCOUNT, align 4
  store i32 %198, i32* @st_facecount, align 4
  %199 = call i64 (...) @ST_calcPainOffset()
  %200 = load i64, i64* @ST_OUCHOFFSET, align 8
  %201 = add nsw i64 %199, %200
  store i64 %201, i64* @st_faceindex, align 8
  br label %207

202:                                              ; preds = %189
  store i32 6, i32* @ST_updateFaceWidget.priority, align 4
  %203 = load i32, i32* @ST_TURNCOUNT, align 4
  store i32 %203, i32* @st_facecount, align 4
  %204 = call i64 (...) @ST_calcPainOffset()
  %205 = load i64, i64* @ST_RAMPAGEOFFSET, align 8
  %206 = add nsw i64 %204, %205
  store i64 %206, i64* @st_faceindex, align 8
  br label %207

207:                                              ; preds = %202, %197
  br label %208

208:                                              ; preds = %207, %184
  br label %209

209:                                              ; preds = %208, %181
  %210 = load i32, i32* @ST_updateFaceWidget.priority, align 4
  %211 = icmp slt i32 %210, 6
  br i1 %211, label %212, label %234

212:                                              ; preds = %209
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plyr, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 4
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %232

217:                                              ; preds = %212
  %218 = load i32, i32* @ST_updateFaceWidget.lastattackdown, align 4
  %219 = icmp eq i32 %218, -1
  br i1 %219, label %220, label %222

220:                                              ; preds = %217
  %221 = load i32, i32* @ST_RAMPAGEDELAY, align 4
  store i32 %221, i32* @ST_updateFaceWidget.lastattackdown, align 4
  br label %231

222:                                              ; preds = %217
  %223 = load i32, i32* @ST_updateFaceWidget.lastattackdown, align 4
  %224 = add nsw i32 %223, -1
  store i32 %224, i32* @ST_updateFaceWidget.lastattackdown, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %230, label %226

226:                                              ; preds = %222
  store i32 5, i32* @ST_updateFaceWidget.priority, align 4
  %227 = call i64 (...) @ST_calcPainOffset()
  %228 = load i64, i64* @ST_RAMPAGEOFFSET, align 8
  %229 = add nsw i64 %227, %228
  store i64 %229, i64* @st_faceindex, align 8
  store i32 1, i32* @st_facecount, align 4
  store i32 1, i32* @ST_updateFaceWidget.lastattackdown, align 4
  br label %230

230:                                              ; preds = %226, %222
  br label %231

231:                                              ; preds = %230, %220
  br label %233

232:                                              ; preds = %212
  store i32 -1, i32* @ST_updateFaceWidget.lastattackdown, align 4
  br label %233

233:                                              ; preds = %232, %231
  br label %234

234:                                              ; preds = %233, %209
  %235 = load i32, i32* @ST_updateFaceWidget.priority, align 4
  %236 = icmp slt i32 %235, 5
  br i1 %236, label %237, label %255

237:                                              ; preds = %234
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plyr, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @CF_GODMODE, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %252, label %244

244:                                              ; preds = %237
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plyr, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 3
  %247 = load i64*, i64** %246, align 8
  %248 = load i64, i64* @pw_invulnerability, align 8
  %249 = getelementptr inbounds i64, i64* %247, i64 %248
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %244, %237
  store i32 4, i32* @ST_updateFaceWidget.priority, align 4
  %253 = load i64, i64* @ST_GODFACE, align 8
  store i64 %253, i64* @st_faceindex, align 8
  store i32 1, i32* @st_facecount, align 4
  br label %254

254:                                              ; preds = %252, %244
  br label %255

255:                                              ; preds = %254, %234
  %256 = load i32, i32* @st_facecount, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %265, label %258

258:                                              ; preds = %255
  %259 = call i64 (...) @ST_calcPainOffset()
  %260 = load i32, i32* @st_randomnumber, align 4
  %261 = srem i32 %260, 3
  %262 = sext i32 %261 to i64
  %263 = add nsw i64 %259, %262
  store i64 %263, i64* @st_faceindex, align 8
  %264 = load i32, i32* @ST_STRAIGHTFACECOUNT, align 4
  store i32 %264, i32* @st_facecount, align 4
  store i32 0, i32* @ST_updateFaceWidget.priority, align 4
  br label %265

265:                                              ; preds = %258, %255
  %266 = load i32, i32* @st_facecount, align 4
  %267 = add nsw i32 %266, -1
  store i32 %267, i32* @st_facecount, align 4
  ret void
}

declare dso_local i64 @ST_calcPainOffset(...) #1

declare dso_local i64 @R_PointToAngle2(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
