; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dsp.c___dsp_def_taskcb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dsp.c___dsp_def_taskcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 (%struct.TYPE_16__*)*, i8*, i32 (%struct.TYPE_16__*)*, %struct.TYPE_16__*, i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)* }

@__dsp_currtask = common dso_local global %struct.TYPE_16__* null, align 8
@DSPTASK_CANCEL = common dso_local global i32 0, align 4
@DSPTASK_RUN = common dso_local global i8* null, align 8
@__dsp_rudetask_pend = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@__dsp_rudetask = common dso_local global %struct.TYPE_16__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@DSPTASK_YIELD = common dso_local global i8* null, align 8
@__dsp_firsttask = common dso_local global %struct.TYPE_16__* null, align 8
@DSPTASK_DONE = common dso_local global i8* null, align 8
@__dsp_lasttask = common dso_local global %struct.TYPE_16__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__dsp_def_taskcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dsp_def_taskcb() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %6, %0
  %3 = call i32 (...) @DSP_CheckMailFrom()
  %4 = icmp ne i32 %3, 0
  %5 = xor i1 %4, true
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  br label %2

7:                                                ; preds = %2
  %8 = call i32 (...) @DSP_ReadMailFrom()
  store i32 %8, i32* %1, align 4
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @DSPTASK_CANCEL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = load i32, i32* %1, align 4
  %17 = icmp eq i32 %16, -590282750
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 -590282749, i32* %1, align 4
  br label %19

19:                                               ; preds = %18, %15
  br label %20

20:                                               ; preds = %19, %7
  %21 = load i32, i32* %1, align 4
  switch i32 %21, label %259 [
    i32 -590282752, label %22
    i32 -590282751, label %37
    i32 -590282750, label %52
    i32 -590282749, label %158
    i32 -590282748, label %247
  ]

22:                                               ; preds = %20
  %23 = load i8*, i8** @DSPTASK_RUN, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 6
  %28 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %27, align 8
  %29 = icmp ne i32 (%struct.TYPE_16__*)* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 6
  %33 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %32, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %35 = call i32 %33(%struct.TYPE_16__* %34)
  br label %36

36:                                               ; preds = %30, %22
  br label %259

37:                                               ; preds = %20
  %38 = load i8*, i8** @DSPTASK_RUN, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 5
  %43 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %42, align 8
  %44 = icmp ne i32 (%struct.TYPE_16__*)* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 5
  %48 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %47, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %50 = call i32 %48(%struct.TYPE_16__* %49)
  br label %51

51:                                               ; preds = %45, %37
  br label %259

52:                                               ; preds = %20
  %53 = load i32, i32* @__dsp_rudetask_pend, align 4
  %54 = load i32, i32* @TRUE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %96

56:                                               ; preds = %52
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_rudetask, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %59 = icmp eq %struct.TYPE_16__* %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %56
  %61 = call i32 @DSP_SendMailTo(i32 -841940989)
  br label %62

62:                                               ; preds = %65, %60
  %63 = call i32 (...) @DSP_CheckMailTo()
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %62

66:                                               ; preds = %62
  store %struct.TYPE_16__* null, %struct.TYPE_16__** @__dsp_rudetask, align 8
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* @__dsp_rudetask_pend, align 4
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 5
  %70 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %69, align 8
  %71 = icmp ne i32 (%struct.TYPE_16__*)* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 5
  %75 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %74, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %77 = call i32 %75(%struct.TYPE_16__* %76)
  br label %78

78:                                               ; preds = %72, %66
  br label %95

79:                                               ; preds = %56
  %80 = call i32 @DSP_SendMailTo(i32 -841940991)
  br label %81

81:                                               ; preds = %84, %79
  %82 = call i32 (...) @DSP_CheckMailTo()
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %81

85:                                               ; preds = %81
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_rudetask, align 8
  %88 = call i32 @__dsp_exectask(%struct.TYPE_16__* %86, %struct.TYPE_16__* %87)
  %89 = load i8*, i8** @DSPTASK_YIELD, align 8
  %90 = ptrtoint i8* %89 to i32
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_rudetask, align 8
  store %struct.TYPE_16__* %93, %struct.TYPE_16__** @__dsp_currtask, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** @__dsp_rudetask, align 8
  %94 = load i32, i32* @FALSE, align 4
  store i32 %94, i32* @__dsp_rudetask_pend, align 4
  br label %95

95:                                               ; preds = %85, %78
  br label %157

96:                                               ; preds = %52
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = icmp eq %struct.TYPE_16__* %99, null
  br i1 %100, label %101, label %138

101:                                              ; preds = %96
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_firsttask, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %104 = icmp eq %struct.TYPE_16__* %102, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %101
  %106 = call i32 @DSP_SendMailTo(i32 -841940989)
  br label %107

107:                                              ; preds = %110, %105
  %108 = call i32 (...) @DSP_CheckMailTo()
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %107

111:                                              ; preds = %107
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 5
  %114 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %113, align 8
  %115 = icmp ne i32 (%struct.TYPE_16__*)* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 5
  %119 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %118, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %121 = call i32 %119(%struct.TYPE_16__* %120)
  br label %122

122:                                              ; preds = %116, %111
  br label %137

123:                                              ; preds = %101
  %124 = call i32 @DSP_SendMailTo(i32 -841940991)
  br label %125

125:                                              ; preds = %128, %123
  %126 = call i32 (...) @DSP_CheckMailTo()
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %125

129:                                              ; preds = %125
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_firsttask, align 8
  %132 = call i32 @__dsp_exectask(%struct.TYPE_16__* %130, %struct.TYPE_16__* %131)
  %133 = load i8*, i8** @DSPTASK_YIELD, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 2
  store i8* %133, i8** %135, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_firsttask, align 8
  store %struct.TYPE_16__* %136, %struct.TYPE_16__** @__dsp_currtask, align 8
  br label %137

137:                                              ; preds = %129, %122
  br label %156

138:                                              ; preds = %96
  %139 = call i32 @DSP_SendMailTo(i32 -841940991)
  br label %140

140:                                              ; preds = %143, %138
  %141 = call i32 (...) @DSP_CheckMailTo()
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  br label %140

144:                                              ; preds = %140
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 4
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %147, align 8
  %149 = call i32 @__dsp_exectask(%struct.TYPE_16__* %145, %struct.TYPE_16__* %148)
  %150 = load i8*, i8** @DSPTASK_YIELD, align 8
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 4
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %154, align 8
  store %struct.TYPE_16__* %155, %struct.TYPE_16__** @__dsp_currtask, align 8
  br label %156

156:                                              ; preds = %144, %137
  br label %157

157:                                              ; preds = %156, %95
  br label %259

158:                                              ; preds = %20
  %159 = load i32, i32* @__dsp_rudetask_pend, align 4
  %160 = load i32, i32* @TRUE, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %186

162:                                              ; preds = %158
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 3
  %165 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %164, align 8
  %166 = icmp ne i32 (%struct.TYPE_16__*)* %165, null
  br i1 %166, label %167, label %173

167:                                              ; preds = %162
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 3
  %170 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %169, align 8
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %172 = call i32 %170(%struct.TYPE_16__* %171)
  br label %173

173:                                              ; preds = %167, %162
  %174 = call i32 @DSP_SendMailTo(i32 -841940991)
  br label %175

175:                                              ; preds = %178, %173
  %176 = call i32 (...) @DSP_CheckMailTo()
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  br label %175

179:                                              ; preds = %175
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_rudetask, align 8
  %181 = call i32 @__dsp_exectask(%struct.TYPE_16__* null, %struct.TYPE_16__* %180)
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %183 = call i32 @__dsp_removetask(%struct.TYPE_16__* %182)
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_rudetask, align 8
  store %struct.TYPE_16__* %184, %struct.TYPE_16__** @__dsp_currtask, align 8
  %185 = load i32, i32* @FALSE, align 4
  store i32 %185, i32* @__dsp_rudetask_pend, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** @__dsp_rudetask, align 8
  br label %246

186:                                              ; preds = %158
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 4
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %188, align 8
  %190 = icmp eq %struct.TYPE_16__* %189, null
  br i1 %190, label %191, label %219

191:                                              ; preds = %186
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_firsttask, align 8
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %194 = icmp eq %struct.TYPE_16__* %192, %193
  br i1 %194, label %195, label %218

195:                                              ; preds = %191
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 3
  %198 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %197, align 8
  %199 = icmp ne i32 (%struct.TYPE_16__*)* %198, null
  br i1 %199, label %200, label %206

200:                                              ; preds = %195
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 3
  %203 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %202, align 8
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %205 = call i32 %203(%struct.TYPE_16__* %204)
  br label %206

206:                                              ; preds = %200, %195
  %207 = call i32 @DSP_SendMailTo(i32 -841940990)
  br label %208

208:                                              ; preds = %211, %206
  %209 = call i32 (...) @DSP_CheckMailTo()
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  br label %208

212:                                              ; preds = %208
  %213 = load i8*, i8** @DSPTASK_DONE, align 8
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 2
  store i8* %213, i8** %215, align 8
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %217 = call i32 @__dsp_removetask(%struct.TYPE_16__* %216)
  br label %218

218:                                              ; preds = %212, %191
  br label %245

219:                                              ; preds = %186
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 3
  %222 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %221, align 8
  %223 = icmp ne i32 (%struct.TYPE_16__*)* %222, null
  br i1 %223, label %224, label %230

224:                                              ; preds = %219
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 3
  %227 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %226, align 8
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %229 = call i32 %227(%struct.TYPE_16__* %228)
  br label %230

230:                                              ; preds = %224, %219
  %231 = call i32 @DSP_SendMailTo(i32 -841940991)
  br label %232

232:                                              ; preds = %235, %230
  %233 = call i32 (...) @DSP_CheckMailTo()
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %232
  br label %232

236:                                              ; preds = %232
  %237 = load i8*, i8** @DSPTASK_DONE, align 8
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 2
  store i8* %237, i8** %239, align 8
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_firsttask, align 8
  %241 = call i32 @__dsp_exectask(%struct.TYPE_16__* null, %struct.TYPE_16__* %240)
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_firsttask, align 8
  store %struct.TYPE_16__* %242, %struct.TYPE_16__** @__dsp_currtask, align 8
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_lasttask, align 8
  %244 = call i32 @__dsp_removetask(%struct.TYPE_16__* %243)
  br label %245

245:                                              ; preds = %236, %218
  br label %246

246:                                              ; preds = %245, %179
  br label %259

247:                                              ; preds = %20
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 1
  %250 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %249, align 8
  %251 = icmp ne i32 (%struct.TYPE_16__*)* %250, null
  br i1 %251, label %252, label %258

252:                                              ; preds = %247
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 1
  %255 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %254, align 8
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** @__dsp_currtask, align 8
  %257 = call i32 %255(%struct.TYPE_16__* %256)
  br label %258

258:                                              ; preds = %252, %247
  br label %259

259:                                              ; preds = %20, %258, %246, %157, %51, %36
  ret void
}

declare dso_local i32 @DSP_CheckMailFrom(...) #1

declare dso_local i32 @DSP_ReadMailFrom(...) #1

declare dso_local i32 @DSP_SendMailTo(i32) #1

declare dso_local i32 @DSP_CheckMailTo(...) #1

declare dso_local i32 @__dsp_exectask(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @__dsp_removetask(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
