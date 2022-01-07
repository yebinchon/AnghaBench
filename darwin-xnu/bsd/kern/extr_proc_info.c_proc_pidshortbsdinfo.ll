; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_pidshortbsdinfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_pidshortbsdinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.proc_bsdshortinfo = type { i64, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MAXCOMLEN = common dso_local global i32 0, align 4
@P_SYSTEM = common dso_local global i32 0, align 4
@PROC_FLAG_SYSTEM = common dso_local global i32 0, align 4
@P_LTRACED = common dso_local global i32 0, align 4
@PROC_FLAG_TRACED = common dso_local global i32 0, align 4
@P_LEXIT = common dso_local global i32 0, align 4
@PROC_FLAG_INEXIT = common dso_local global i32 0, align 4
@P_LPPWAIT = common dso_local global i32 0, align 4
@PROC_FLAG_PPWAIT = common dso_local global i32 0, align 4
@P_LP64 = common dso_local global i32 0, align 4
@PROC_FLAG_LP64 = common dso_local global i32 0, align 4
@P_CONTROLT = common dso_local global i32 0, align 4
@PROC_FLAG_CONTROLT = common dso_local global i32 0, align 4
@P_THCWD = common dso_local global i32 0, align 4
@PROC_FLAG_THCWD = common dso_local global i32 0, align 4
@P_SUGID = common dso_local global i32 0, align 4
@PROC_FLAG_PSUGID = common dso_local global i32 0, align 4
@P_EXEC = common dso_local global i32 0, align 4
@PROC_FLAG_EXEC = common dso_local global i32 0, align 4
@P_DELAYIDLESLEEP = common dso_local global i32 0, align 4
@PROC_FLAG_DELAYIDLESLEEP = common dso_local global i32 0, align 4
@PROC_FLAG_PC_THROTTLE = common dso_local global i32 0, align 4
@PROC_FLAG_PC_SUSP = common dso_local global i32 0, align 4
@PROC_FLAG_PC_KILL = common dso_local global i32 0, align 4
@PROC_FLAG_PA_THROTTLE = common dso_local global i32 0, align 4
@PROC_FLAG_PA_SUSP = common dso_local global i32 0, align 4
@SZOMB = common dso_local global i64 0, align 8
@TASK_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_pidshortbsdinfo(%struct.TYPE_5__* %0, %struct.proc_bsdshortinfo* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.proc_bsdshortinfo*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.proc_bsdshortinfo* %1, %struct.proc_bsdshortinfo** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %8 = call i32 @bzero(%struct.proc_bsdshortinfo* %7, i32 56)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 13
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %13 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %12, i32 0, i32 11
  store i32 %11, i32* %13, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 12
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %18 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %17, i32 0, i32 10
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 11
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %23 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %28 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 10
  %31 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %32 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i32, i32* @MAXCOMLEN, align 4
  %36 = call i32 @bcopy(i32* %30, i8* %34, i32 %35)
  %37 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %38 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* @MAXCOMLEN, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  store i8 0, i8* %43, align 1
  %44 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %45 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %44, i32 0, i32 8
  store i32 0, i32* %45, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @P_SYSTEM, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @P_SYSTEM, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %3
  %54 = load i32, i32* @PROC_FLAG_SYSTEM, align 4
  %55 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %56 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %53, %3
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @P_LTRACED, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @P_LTRACED, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load i32, i32* @PROC_FLAG_TRACED, align 4
  %69 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %70 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %67, %59
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @P_LEXIT, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @P_LEXIT, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load i32, i32* @PROC_FLAG_INEXIT, align 4
  %83 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %84 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %81, %73
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @P_LPPWAIT, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* @P_LPPWAIT, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %87
  %96 = load i32, i32* @PROC_FLAG_PPWAIT, align 4
  %97 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %98 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %87
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @P_LP64, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* @P_LP64, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = load i32, i32* @PROC_FLAG_LP64, align 4
  %111 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %112 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %109, %101
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @P_CONTROLT, align 4
  %120 = and i32 %118, %119
  %121 = load i32, i32* @P_CONTROLT, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %115
  %124 = load i32, i32* @PROC_FLAG_CONTROLT, align 4
  %125 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %126 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %123, %115
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @P_THCWD, align 4
  %134 = and i32 %132, %133
  %135 = load i32, i32* @P_THCWD, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %129
  %138 = load i32, i32* @PROC_FLAG_THCWD, align 4
  %139 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %140 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %139, i32 0, i32 8
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %137, %129
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @P_SUGID, align 4
  %148 = and i32 %146, %147
  %149 = load i32, i32* @P_SUGID, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %143
  %152 = load i32, i32* @PROC_FLAG_PSUGID, align 4
  %153 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %154 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %153, i32 0, i32 8
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 8
  br label %157

157:                                              ; preds = %151, %143
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @P_EXEC, align 4
  %162 = and i32 %160, %161
  %163 = load i32, i32* @P_EXEC, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %157
  %166 = load i32, i32* @PROC_FLAG_EXEC, align 4
  %167 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %168 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %167, i32 0, i32 8
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %165, %157
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @P_DELAYIDLESLEEP, align 4
  %176 = and i32 %174, %175
  %177 = load i32, i32* @P_DELAYIDLESLEEP, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %171
  %180 = load i32, i32* @PROC_FLAG_DELAYIDLESLEEP, align 4
  %181 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %182 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %181, i32 0, i32 8
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  br label %185

185:                                              ; preds = %179, %171
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %187 = call i32 @PROC_CONTROL_STATE(%struct.TYPE_5__* %186)
  switch i32 %187, label %206 [
    i32 128, label %188
    i32 129, label %194
    i32 130, label %200
  ]

188:                                              ; preds = %185
  %189 = load i32, i32* @PROC_FLAG_PC_THROTTLE, align 4
  %190 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %191 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %190, i32 0, i32 8
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  br label %206

194:                                              ; preds = %185
  %195 = load i32, i32* @PROC_FLAG_PC_SUSP, align 4
  %196 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %197 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 8
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 8
  br label %206

200:                                              ; preds = %185
  %201 = load i32, i32* @PROC_FLAG_PC_KILL, align 4
  %202 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %203 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %202, i32 0, i32 8
  %204 = load i32, i32* %203, align 8
  %205 = or i32 %204, %201
  store i32 %205, i32* %203, align 8
  br label %206

206:                                              ; preds = %185, %200, %194, %188
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %208 = call i32 @PROC_ACTION_STATE(%struct.TYPE_5__* %207)
  switch i32 %208, label %221 [
    i32 128, label %209
    i32 129, label %215
  ]

209:                                              ; preds = %206
  %210 = load i32, i32* @PROC_FLAG_PA_THROTTLE, align 4
  %211 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %212 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %211, i32 0, i32 8
  %213 = load i32, i32* %212, align 8
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 8
  br label %221

215:                                              ; preds = %206
  %216 = load i32, i32* @PROC_FLAG_PA_SUSP, align 4
  %217 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %218 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %217, i32 0, i32 8
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 8
  br label %221

221:                                              ; preds = %206, %215, %209
  %222 = load i32, i32* %6, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %243

224:                                              ; preds = %221
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @SZOMB, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %230, label %243

230:                                              ; preds = %224
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @TASK_NULL, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %243

236:                                              ; preds = %230
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 3
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %241 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %240, i32 0, i32 8
  %242 = call i32 @proc_get_darwinbgstate(i64 %239, i32* %241)
  br label %243

243:                                              ; preds = %236, %230, %224, %221
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 9
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %248 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %247, i32 0, i32 7
  store i32 %246, i32* %248, align 4
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 8
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %253 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %252, i32 0, i32 6
  store i32 %251, i32* %253, align 8
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 7
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %258 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %257, i32 0, i32 5
  store i32 %256, i32* %258, align 4
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %263 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %262, i32 0, i32 4
  store i32 %261, i32* %263, align 8
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %268 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %267, i32 0, i32 3
  store i32 %266, i32* %268, align 4
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.proc_bsdshortinfo*, %struct.proc_bsdshortinfo** %5, align 8
  %273 = getelementptr inbounds %struct.proc_bsdshortinfo, %struct.proc_bsdshortinfo* %272, i32 0, i32 2
  store i32 %271, i32* %273, align 8
  ret i32 0
}

declare dso_local i32 @bzero(%struct.proc_bsdshortinfo*, i32) #1

declare dso_local i32 @bcopy(i32*, i8*, i32) #1

declare dso_local i32 @PROC_CONTROL_STATE(%struct.TYPE_5__*) #1

declare dso_local i32 @PROC_ACTION_STATE(%struct.TYPE_5__*) #1

declare dso_local i32 @proc_get_darwinbgstate(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
