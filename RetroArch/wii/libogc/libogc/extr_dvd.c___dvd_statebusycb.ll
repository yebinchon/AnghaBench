; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c___dvd_statebusycb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c___dvd_statebusycb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i64, i32 (i32, %struct.TYPE_14__*)*, i32 }

@__dvd_executing = common dso_local global %struct.TYPE_14__* null, align 8
@__dvd_currcmd = common dso_local global i32 0, align 4
@__dvd_internalretries = common dso_local global i64 0, align 8
@__dvd_resetrequired = common dso_local global i32 0, align 4
@_diReg = common dso_local global i32* null, align 8
@__dvd_canceling = common dso_local global i64 0, align 8
@__dvd_dummycmdblk = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@__dvd_autofinishing = common dso_local global i64 0, align 8
@__dvd_drivestate = common dso_local global i32 0, align 4
@DVD_CHIPPRESENT = common dso_local global i32 0, align 4
@DVD_DISKIDSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @__dvd_statebusycb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dvd_statebusycb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** @__dvd_executing, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  store i32 -1, i32* %9, align 8
  %10 = call i32 (...) @__dvd_statetimeout()
  br label %341

11:                                               ; preds = %1
  %12 = load i32, i32* @__dvd_currcmd, align 4
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @__dvd_currcmd, align 4
  %16 = icmp eq i32 %15, 15
  br i1 %16, label %17, label %41

17:                                               ; preds = %14, %11
  %18 = load i32, i32* %2, align 4
  %19 = and i32 %18, 2
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** @__dvd_executing, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  %24 = call i32 @__dvd_stateerror(i32 19088743)
  br label %341

25:                                               ; preds = %17
  %26 = load i32, i32* %2, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  store i64 0, i64* @__dvd_internalretries, align 8
  %29 = load i32, i32* @__dvd_currcmd, align 4
  %30 = icmp eq i32 %29, 15
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 1, i32* @__dvd_resetrequired, align 4
  br label %32

32:                                               ; preds = %31, %28
  %33 = call i64 @__dvd_checkcancel(i32 7)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %341

36:                                               ; preds = %32
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** @__dvd_executing, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  store i32 7, i32* %38, align 8
  %39 = call i32 (...) @__dvd_statemotorstopped()
  br label %341

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40, %14
  %42 = load i32, i32* %2, align 4
  %43 = and i32 %42, 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %41
  %47 = load i32, i32* @__dvd_currcmd, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %58, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @__dvd_currcmd, align 4
  %51 = icmp eq i32 %50, 4
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @__dvd_currcmd, align 4
  %54 = icmp eq i32 %53, 5
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @__dvd_currcmd, align 4
  %57 = icmp eq i32 %56, 14
  br i1 %57, label %58, label %70

58:                                               ; preds = %55, %52, %49, %46
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** @__dvd_executing, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** @_diReg, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 6
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %61, %64
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** @__dvd_executing, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %58, %55
  %71 = load i32, i32* %2, align 4
  %72 = and i32 %71, 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %70
  store i64 0, i64* @__dvd_canceling, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** @__dvd_executing, align 8
  store %struct.TYPE_14__* %75, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* @__dvd_dummycmdblk, %struct.TYPE_14__** @__dvd_executing, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** @__dvd_executing, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  store i32 10, i32* %77, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 4
  %80 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %79, align 8
  %81 = icmp ne i32 (i32, %struct.TYPE_14__*)* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 4
  %85 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %84, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %87 = call i32 %85(i32 -3, %struct.TYPE_14__* %86)
  br label %88

88:                                               ; preds = %82, %74
  br i1 true, label %89, label %92

89:                                               ; preds = %88
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %91 = call i32 @__dvd_cancelcallback(i32 0, %struct.TYPE_14__* %90)
  br label %92

92:                                               ; preds = %89, %88
  %93 = call i32 (...) @__dvd_stateready()
  br label %341

94:                                               ; preds = %70
  %95 = load i32, i32* %2, align 4
  %96 = and i32 %95, 1
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %284

98:                                               ; preds = %94
  store i64 0, i64* @__dvd_internalretries, align 8
  %99 = call i64 @__dvd_checkcancel(i32 0)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %341

102:                                              ; preds = %98
  %103 = load i32, i32* @__dvd_currcmd, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %114, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* @__dvd_currcmd, align 4
  %107 = icmp eq i32 %106, 4
  br i1 %107, label %114, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* @__dvd_currcmd, align 4
  %110 = icmp eq i32 %109, 5
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* @__dvd_currcmd, align 4
  %113 = icmp eq i32 %112, 14
  br i1 %113, label %114, label %145

114:                                              ; preds = %111, %108, %105, %102
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** @__dvd_executing, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** @__dvd_executing, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %118, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %114
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** @__dvd_executing, align 8
  %125 = call i32 @__dvd_statebusy(%struct.TYPE_14__* %124)
  br label %341

126:                                              ; preds = %114
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** @__dvd_executing, align 8
  store %struct.TYPE_14__* %127, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* @__dvd_dummycmdblk, %struct.TYPE_14__** @__dvd_executing, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  store i32 0, i32* %129, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 4
  %132 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %131, align 8
  %133 = icmp ne i32 (i32, %struct.TYPE_14__*)* %132, null
  br i1 %133, label %134, label %143

134:                                              ; preds = %126
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 4
  %137 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %136, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %142 = call i32 %137(i32 %140, %struct.TYPE_14__* %141)
  br label %143

143:                                              ; preds = %134, %126
  %144 = call i32 (...) @__dvd_stateready()
  br label %341

145:                                              ; preds = %111
  %146 = load i32, i32* @__dvd_currcmd, align 4
  %147 = icmp eq i32 %146, 9
  br i1 %147, label %157, label %148

148:                                              ; preds = %145
  %149 = load i32, i32* @__dvd_currcmd, align 4
  %150 = icmp eq i32 %149, 10
  br i1 %150, label %157, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* @__dvd_currcmd, align 4
  %153 = icmp eq i32 %152, 11
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* @__dvd_currcmd, align 4
  %156 = icmp eq i32 %155, 12
  br i1 %156, label %157, label %186

157:                                              ; preds = %154, %151, %148, %145
  %158 = load i32*, i32** @_diReg, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 8
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %3, align 4
  %161 = load i32, i32* @__dvd_currcmd, align 4
  %162 = icmp eq i32 %161, 10
  br i1 %162, label %166, label %163

163:                                              ; preds = %157
  %164 = load i32, i32* @__dvd_currcmd, align 4
  %165 = icmp eq i32 %164, 11
  br i1 %165, label %166, label %169

166:                                              ; preds = %163, %157
  %167 = load i32, i32* %3, align 4
  %168 = shl i32 %167, 2
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %166, %163
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** @__dvd_executing, align 8
  store %struct.TYPE_14__* %170, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* @__dvd_dummycmdblk, %struct.TYPE_14__** @__dvd_executing, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  store i32 0, i32* %172, align 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 4
  %175 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %174, align 8
  %176 = icmp ne i32 (i32, %struct.TYPE_14__*)* %175, null
  br i1 %176, label %177, label %184

177:                                              ; preds = %169
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 4
  %180 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %179, align 8
  %181 = load i32, i32* %3, align 4
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %183 = call i32 %180(i32 %181, %struct.TYPE_14__* %182)
  br label %184

184:                                              ; preds = %177, %169
  %185 = call i32 (...) @__dvd_stateready()
  br label %341

186:                                              ; preds = %154
  %187 = load i32, i32* @__dvd_currcmd, align 4
  %188 = icmp eq i32 %187, 6
  br i1 %188, label %189, label %242

189:                                              ; preds = %186
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** @__dvd_executing, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %226, label %194

194:                                              ; preds = %189
  %195 = load i32*, i32** @_diReg, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 8
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, 1
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %216

200:                                              ; preds = %194
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** @__dvd_executing, align 8
  store %struct.TYPE_14__* %201, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* @__dvd_dummycmdblk, %struct.TYPE_14__** @__dvd_executing, align 8
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 0
  store i32 9, i32* %203, align 8
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 4
  %206 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %205, align 8
  %207 = icmp ne i32 (i32, %struct.TYPE_14__*)* %206, null
  br i1 %207, label %208, label %214

208:                                              ; preds = %200
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 4
  %211 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %210, align 8
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %213 = call i32 %211(i32 -2, %struct.TYPE_14__* %212)
  br label %214

214:                                              ; preds = %208, %200
  %215 = call i32 (...) @__dvd_stateready()
  br label %341

216:                                              ; preds = %194
  store i64 0, i64* @__dvd_autofinishing, align 8
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** @__dvd_executing, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 2
  store i32 1, i32* %218, align 8
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** @__dvd_executing, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** @__dvd_executing, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @DVD_LowAudioStream(i32 0, i64 %221, i32 %224, void (i32)* @__dvd_statebusycb)
  br label %341

226:                                              ; preds = %189
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** @__dvd_executing, align 8
  store %struct.TYPE_14__* %227, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* @__dvd_dummycmdblk, %struct.TYPE_14__** @__dvd_executing, align 8
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 0
  store i32 0, i32* %229, align 8
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 4
  %232 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %231, align 8
  %233 = icmp ne i32 (i32, %struct.TYPE_14__*)* %232, null
  br i1 %233, label %234, label %240

234:                                              ; preds = %226
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 4
  %237 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %236, align 8
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %239 = call i32 %237(i32 0, %struct.TYPE_14__* %238)
  br label %240

240:                                              ; preds = %234, %226
  %241 = call i32 (...) @__dvd_stateready()
  br label %341

242:                                              ; preds = %186
  %243 = load i32, i32* @__dvd_currcmd, align 4
  %244 = icmp eq i32 %243, 16
  br i1 %244, label %245, label %268

245:                                              ; preds = %242
  %246 = load i32, i32* @__dvd_drivestate, align 4
  %247 = load i32, i32* @DVD_CHIPPRESENT, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %267

250:                                              ; preds = %245
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** @__dvd_executing, align 8
  store %struct.TYPE_14__* %251, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* @__dvd_dummycmdblk, %struct.TYPE_14__** @__dvd_executing, align 8
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 0
  store i32 0, i32* %253, align 8
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 4
  %256 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %255, align 8
  %257 = icmp ne i32 (i32, %struct.TYPE_14__*)* %256, null
  br i1 %257, label %258, label %265

258:                                              ; preds = %250
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 4
  %261 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %260, align 8
  %262 = load i32, i32* @DVD_DISKIDSIZE, align 4
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %264 = call i32 %261(i32 %262, %struct.TYPE_14__* %263)
  br label %265

265:                                              ; preds = %258, %250
  %266 = call i32 (...) @__dvd_stateready()
  br label %341

267:                                              ; preds = %245
  br label %268

268:                                              ; preds = %267, %242
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** @__dvd_executing, align 8
  store %struct.TYPE_14__* %269, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* @__dvd_dummycmdblk, %struct.TYPE_14__** @__dvd_executing, align 8
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 0
  store i32 0, i32* %271, align 8
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 4
  %274 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %273, align 8
  %275 = icmp ne i32 (i32, %struct.TYPE_14__*)* %274, null
  br i1 %275, label %276, label %282

276:                                              ; preds = %268
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 4
  %279 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %278, align 8
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %281 = call i32 %279(i32 0, %struct.TYPE_14__* %280)
  br label %282

282:                                              ; preds = %276, %268
  %283 = call i32 (...) @__dvd_stateready()
  br label %341

284:                                              ; preds = %94
  %285 = load i32, i32* %2, align 4
  %286 = icmp eq i32 %285, 2
  br i1 %286, label %287, label %339

287:                                              ; preds = %284
  %288 = load i32, i32* @__dvd_currcmd, align 4
  %289 = icmp eq i32 %288, 14
  br i1 %289, label %290, label %294

290:                                              ; preds = %287
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** @__dvd_executing, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 0
  store i32 -1, i32* %292, align 8
  %293 = call i32 @__dvd_stateerror(i32 19088743)
  br label %341

294:                                              ; preds = %287
  %295 = load i32, i32* @__dvd_currcmd, align 4
  %296 = icmp eq i32 %295, 1
  br i1 %296, label %306, label %297

297:                                              ; preds = %294
  %298 = load i32, i32* @__dvd_currcmd, align 4
  %299 = icmp eq i32 %298, 4
  br i1 %299, label %306, label %300

300:                                              ; preds = %297
  %301 = load i32, i32* @__dvd_currcmd, align 4
  %302 = icmp eq i32 %301, 5
  br i1 %302, label %306, label %303

303:                                              ; preds = %300
  %304 = load i32, i32* @__dvd_currcmd, align 4
  %305 = icmp eq i32 %304, 14
  br i1 %305, label %306, label %338

306:                                              ; preds = %303, %300, %297, %294
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** @__dvd_executing, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = sext i32 %309 to i64
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** @__dvd_executing, align 8
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 3
  %313 = load i64, i64* %312, align 8
  %314 = icmp eq i64 %310, %313
  br i1 %314, label %315, label %338

315:                                              ; preds = %306
  %316 = call i64 @__dvd_checkcancel(i32 0)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %315
  br label %341

319:                                              ; preds = %315
  %320 = load %struct.TYPE_14__*, %struct.TYPE_14__** @__dvd_executing, align 8
  store %struct.TYPE_14__* %320, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* @__dvd_dummycmdblk, %struct.TYPE_14__** @__dvd_executing, align 8
  %321 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 0
  store i32 0, i32* %322, align 8
  %323 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %323, i32 0, i32 4
  %325 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %324, align 8
  %326 = icmp ne i32 (i32, %struct.TYPE_14__*)* %325, null
  br i1 %326, label %327, label %336

327:                                              ; preds = %319
  %328 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i32 0, i32 4
  %330 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %329, align 8
  %331 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %335 = call i32 %330(i32 %333, %struct.TYPE_14__* %334)
  br label %336

336:                                              ; preds = %327, %319
  %337 = call i32 (...) @__dvd_stateready()
  br label %341

338:                                              ; preds = %306, %303
  br label %339

339:                                              ; preds = %338, %284
  %340 = call i32 (...) @__dvd_stategettingerror()
  br label %341

341:                                              ; preds = %339, %336, %318, %290, %282, %265, %240, %216, %214, %184, %143, %123, %101, %92, %36, %35, %21, %7
  ret void
}

declare dso_local i32 @__dvd_statetimeout(...) #1

declare dso_local i32 @__dvd_stateerror(i32) #1

declare dso_local i64 @__dvd_checkcancel(i32) #1

declare dso_local i32 @__dvd_statemotorstopped(...) #1

declare dso_local i32 @__dvd_cancelcallback(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @__dvd_stateready(...) #1

declare dso_local i32 @__dvd_statebusy(%struct.TYPE_14__*) #1

declare dso_local i32 @DVD_LowAudioStream(i32, i64, i32, void (i32)*) #1

declare dso_local i32 @__dvd_stategettingerror(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
