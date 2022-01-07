; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_setpriority.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_setpriority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgrp = type { i32 }
%struct.proc = type { i32 }
%struct.setpriority_args = type { i32, i32, i32 }
%struct.ppgrp_nice_args = type { i32, i32*, i32*, %struct.proc* }
%struct.puser_nice_args = type { i32, i32, i32*, i32*, %struct.proc* }

@cmd = common dso_local global i32 0, align 4
@owner = common dso_local global i32 0, align 4
@value32 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PGRP_NULL = common dso_local global %struct.pgrp* null, align 8
@PGRP_DROPREF = common dso_local global i32 0, align 4
@ppgrp_donice_callback = common dso_local global i32 0, align 4
@PROC_ALLPROCLIST = common dso_local global i32 0, align 4
@puser_donice_callback = common dso_local global i32 0, align 4
@PROC_NULL = common dso_local global %struct.proc* null, align 8
@ESRCH = common dso_local global i32 0, align 4
@EIDRM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setpriority(%struct.proc* %0, %struct.setpriority_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.setpriority_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pgrp*, align 8
  %13 = alloca %struct.ppgrp_nice_args, align 8
  %14 = alloca %struct.puser_nice_args, align 8
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.setpriority_args* %1, %struct.setpriority_args** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* @cmd, align 4
  %16 = load %struct.setpriority_args*, %struct.setpriority_args** %6, align 8
  %17 = getelementptr inbounds %struct.setpriority_args, %struct.setpriority_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, i32, ...) @AUDIT_ARG(i32 %15, i32 %18)
  %20 = load i32, i32* @owner, align 4
  %21 = load %struct.setpriority_args*, %struct.setpriority_args** %6, align 8
  %22 = getelementptr inbounds %struct.setpriority_args, %struct.setpriority_args* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i32, ...) @AUDIT_ARG(i32 %20, i32 %23, i32 0)
  %25 = load i32, i32* @value32, align 4
  %26 = load %struct.setpriority_args*, %struct.setpriority_args** %6, align 8
  %27 = getelementptr inbounds %struct.setpriority_args, %struct.setpriority_args* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i32, ...) @AUDIT_ARG(i32 %25, i32 %28)
  %30 = load %struct.setpriority_args*, %struct.setpriority_args** %6, align 8
  %31 = getelementptr inbounds %struct.setpriority_args, %struct.setpriority_args* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 2147483647
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %4, align 4
  br label %250

36:                                               ; preds = %3
  %37 = load %struct.setpriority_args*, %struct.setpriority_args** %6, align 8
  %38 = getelementptr inbounds %struct.setpriority_args, %struct.setpriority_args* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %235 [
    i32 129, label %40
    i32 130, label %71
    i32 128, label %103
    i32 131, label %130
    i32 133, label %145
    i32 134, label %176
    i32 132, label %203
  ]

40:                                               ; preds = %36
  %41 = load %struct.setpriority_args*, %struct.setpriority_args** %6, align 8
  %42 = getelementptr inbounds %struct.setpriority_args, %struct.setpriority_args* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load %struct.proc*, %struct.proc** %5, align 8
  store %struct.proc* %46, %struct.proc** %8, align 8
  br label %56

47:                                               ; preds = %40
  %48 = load %struct.setpriority_args*, %struct.setpriority_args** %6, align 8
  %49 = getelementptr inbounds %struct.setpriority_args, %struct.setpriority_args* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.proc* @proc_find(i32 %50)
  store %struct.proc* %51, %struct.proc** %8, align 8
  %52 = load %struct.proc*, %struct.proc** %8, align 8
  %53 = icmp eq %struct.proc* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %237

55:                                               ; preds = %47
  store i32 1, i32* %11, align 4
  br label %56

56:                                               ; preds = %55, %45
  %57 = load %struct.proc*, %struct.proc** %5, align 8
  %58 = load %struct.proc*, %struct.proc** %8, align 8
  %59 = load %struct.setpriority_args*, %struct.setpriority_args** %6, align 8
  %60 = getelementptr inbounds %struct.setpriority_args, %struct.setpriority_args* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @donice(%struct.proc* %57, %struct.proc* %58, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load %struct.proc*, %struct.proc** %8, align 8
  %69 = call i32 @proc_rele(%struct.proc* %68)
  br label %70

70:                                               ; preds = %67, %56
  br label %237

71:                                               ; preds = %36
  %72 = load %struct.pgrp*, %struct.pgrp** @PGRP_NULL, align 8
  store %struct.pgrp* %72, %struct.pgrp** %12, align 8
  %73 = load %struct.setpriority_args*, %struct.setpriority_args** %6, align 8
  %74 = getelementptr inbounds %struct.setpriority_args, %struct.setpriority_args* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load %struct.proc*, %struct.proc** %5, align 8
  %79 = call %struct.pgrp* @proc_pgrp(%struct.proc* %78)
  store %struct.pgrp* %79, %struct.pgrp** %12, align 8
  br label %89

80:                                               ; preds = %71
  %81 = load %struct.setpriority_args*, %struct.setpriority_args** %6, align 8
  %82 = getelementptr inbounds %struct.setpriority_args, %struct.setpriority_args* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call %struct.pgrp* @pgfind(i32 %83)
  store %struct.pgrp* %84, %struct.pgrp** %12, align 8
  %85 = load %struct.pgrp*, %struct.pgrp** @PGRP_NULL, align 8
  %86 = icmp eq %struct.pgrp* %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %237

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %77
  %90 = load %struct.proc*, %struct.proc** %5, align 8
  %91 = getelementptr inbounds %struct.ppgrp_nice_args, %struct.ppgrp_nice_args* %13, i32 0, i32 3
  store %struct.proc* %90, %struct.proc** %91, align 8
  %92 = load %struct.setpriority_args*, %struct.setpriority_args** %6, align 8
  %93 = getelementptr inbounds %struct.setpriority_args, %struct.setpriority_args* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.ppgrp_nice_args, %struct.ppgrp_nice_args* %13, i32 0, i32 0
  store i32 %94, i32* %95, align 8
  %96 = getelementptr inbounds %struct.ppgrp_nice_args, %struct.ppgrp_nice_args* %13, i32 0, i32 1
  store i32* %9, i32** %96, align 8
  %97 = getelementptr inbounds %struct.ppgrp_nice_args, %struct.ppgrp_nice_args* %13, i32 0, i32 2
  store i32* %10, i32** %97, align 8
  %98 = load %struct.pgrp*, %struct.pgrp** %12, align 8
  %99 = load i32, i32* @PGRP_DROPREF, align 4
  %100 = load i32, i32* @ppgrp_donice_callback, align 4
  %101 = bitcast %struct.ppgrp_nice_args* %13 to i8*
  %102 = call i32 @pgrp_iterate(%struct.pgrp* %98, i32 %99, i32 %100, i8* %101, i32* null, i32* null)
  br label %237

103:                                              ; preds = %36
  %104 = load %struct.setpriority_args*, %struct.setpriority_args** %6, align 8
  %105 = getelementptr inbounds %struct.setpriority_args, %struct.setpriority_args* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = call i32 (...) @kauth_cred_get()
  %110 = call i32 @kauth_cred_getuid(i32 %109)
  %111 = load %struct.setpriority_args*, %struct.setpriority_args** %6, align 8
  %112 = getelementptr inbounds %struct.setpriority_args, %struct.setpriority_args* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %108, %103
  %114 = load %struct.proc*, %struct.proc** %5, align 8
  %115 = getelementptr inbounds %struct.puser_nice_args, %struct.puser_nice_args* %14, i32 0, i32 4
  store %struct.proc* %114, %struct.proc** %115, align 8
  %116 = load %struct.setpriority_args*, %struct.setpriority_args** %6, align 8
  %117 = getelementptr inbounds %struct.setpriority_args, %struct.setpriority_args* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.puser_nice_args, %struct.puser_nice_args* %14, i32 0, i32 0
  store i32 %118, i32* %119, align 8
  %120 = load %struct.setpriority_args*, %struct.setpriority_args** %6, align 8
  %121 = getelementptr inbounds %struct.setpriority_args, %struct.setpriority_args* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.puser_nice_args, %struct.puser_nice_args* %14, i32 0, i32 1
  store i32 %122, i32* %123, align 4
  %124 = getelementptr inbounds %struct.puser_nice_args, %struct.puser_nice_args* %14, i32 0, i32 2
  store i32* %9, i32** %124, align 8
  store i32 0, i32* %10, align 4
  %125 = getelementptr inbounds %struct.puser_nice_args, %struct.puser_nice_args* %14, i32 0, i32 3
  store i32* %10, i32** %125, align 8
  %126 = load i32, i32* @PROC_ALLPROCLIST, align 4
  %127 = load i32, i32* @puser_donice_callback, align 4
  %128 = bitcast %struct.puser_nice_args* %14 to i8*
  %129 = call i32 @proc_iterate(i32 %126, i32 %127, i8* %128, i32* null, i32* null)
  br label %237

130:                                              ; preds = %36
  %131 = load %struct.setpriority_args*, %struct.setpriority_args** %6, align 8
  %132 = getelementptr inbounds %struct.setpriority_args, %struct.setpriority_args* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i32, i32* @EINVAL, align 4
  store i32 %136, i32* %4, align 4
  br label %250

137:                                              ; preds = %130
  %138 = call i32 (...) @current_thread()
  %139 = load %struct.setpriority_args*, %struct.setpriority_args** %6, align 8
  %140 = getelementptr inbounds %struct.setpriority_args, %struct.setpriority_args* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @do_background_thread(i32 %138, i32 %141)
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %237

145:                                              ; preds = %36
  %146 = load %struct.setpriority_args*, %struct.setpriority_args** %6, align 8
  %147 = getelementptr inbounds %struct.setpriority_args, %struct.setpriority_args* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = load %struct.proc*, %struct.proc** %5, align 8
  store %struct.proc* %151, %struct.proc** %8, align 8
  br label %161

152:                                              ; preds = %145
  %153 = load %struct.setpriority_args*, %struct.setpriority_args** %6, align 8
  %154 = getelementptr inbounds %struct.setpriority_args, %struct.setpriority_args* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call %struct.proc* @proc_find(i32 %155)
  store %struct.proc* %156, %struct.proc** %8, align 8
  %157 = load %struct.proc*, %struct.proc** %8, align 8
  %158 = icmp eq %struct.proc* %157, null
  br i1 %158, label %159, label %160

159:                                              ; preds = %152
  br label %237

160:                                              ; preds = %152
  store i32 1, i32* %11, align 4
  br label %161

161:                                              ; preds = %160, %150
  %162 = load %struct.proc*, %struct.proc** %5, align 8
  %163 = load %struct.proc*, %struct.proc** %8, align 8
  %164 = load %struct.setpriority_args*, %struct.setpriority_args** %6, align 8
  %165 = getelementptr inbounds %struct.setpriority_args, %struct.setpriority_args* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @do_background_proc(%struct.proc* %162, %struct.proc* %163, i32 %166)
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %9, align 4
  %170 = load i32, i32* %11, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %161
  %173 = load %struct.proc*, %struct.proc** %8, align 8
  %174 = call i32 @proc_rele(%struct.proc* %173)
  br label %175

175:                                              ; preds = %172, %161
  br label %237

176:                                              ; preds = %36
  %177 = load %struct.setpriority_args*, %struct.setpriority_args** %6, align 8
  %178 = getelementptr inbounds %struct.setpriority_args, %struct.setpriority_args* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %176
  %182 = load i32, i32* @EINVAL, align 4
  store i32 %182, i32* %4, align 4
  br label %250

183:                                              ; preds = %176
  %184 = load %struct.setpriority_args*, %struct.setpriority_args** %6, align 8
  %185 = getelementptr inbounds %struct.setpriority_args, %struct.setpriority_args* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call %struct.proc* @proc_find(i32 %186)
  store %struct.proc* %187, %struct.proc** %8, align 8
  %188 = load %struct.proc*, %struct.proc** %8, align 8
  %189 = load %struct.proc*, %struct.proc** @PROC_NULL, align 8
  %190 = icmp eq %struct.proc* %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %183
  br label %237

192:                                              ; preds = %183
  %193 = load %struct.proc*, %struct.proc** %5, align 8
  %194 = load %struct.proc*, %struct.proc** %8, align 8
  %195 = load %struct.setpriority_args*, %struct.setpriority_args** %6, align 8
  %196 = getelementptr inbounds %struct.setpriority_args, %struct.setpriority_args* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @set_gpudeny_proc(%struct.proc* %193, %struct.proc* %194, i32 %197)
  store i32 %198, i32* %10, align 4
  %199 = load i32, i32* %9, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %9, align 4
  %201 = load %struct.proc*, %struct.proc** %8, align 8
  %202 = call i32 @proc_rele(%struct.proc* %201)
  br label %237

203:                                              ; preds = %36
  %204 = load %struct.setpriority_args*, %struct.setpriority_args** %6, align 8
  %205 = getelementptr inbounds %struct.setpriority_args, %struct.setpriority_args* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %203
  %209 = load %struct.proc*, %struct.proc** %5, align 8
  store %struct.proc* %209, %struct.proc** %8, align 8
  br label %220

210:                                              ; preds = %203
  %211 = load %struct.setpriority_args*, %struct.setpriority_args** %6, align 8
  %212 = getelementptr inbounds %struct.setpriority_args, %struct.setpriority_args* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call %struct.proc* @proc_find(i32 %213)
  store %struct.proc* %214, %struct.proc** %8, align 8
  %215 = load %struct.proc*, %struct.proc** %8, align 8
  %216 = load %struct.proc*, %struct.proc** @PROC_NULL, align 8
  %217 = icmp eq %struct.proc* %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %210
  br label %237

219:                                              ; preds = %210
  store i32 1, i32* %11, align 4
  br label %220

220:                                              ; preds = %219, %208
  %221 = load %struct.proc*, %struct.proc** %5, align 8
  %222 = load %struct.proc*, %struct.proc** %8, align 8
  %223 = load %struct.setpriority_args*, %struct.setpriority_args** %6, align 8
  %224 = getelementptr inbounds %struct.setpriority_args, %struct.setpriority_args* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @proc_set_darwin_role(%struct.proc* %221, %struct.proc* %222, i32 %225)
  store i32 %226, i32* %10, align 4
  %227 = load i32, i32* %9, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %9, align 4
  %229 = load i32, i32* %11, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %220
  %232 = load %struct.proc*, %struct.proc** %8, align 8
  %233 = call i32 @proc_rele(%struct.proc* %232)
  br label %234

234:                                              ; preds = %231, %220
  br label %237

235:                                              ; preds = %36
  %236 = load i32, i32* @EINVAL, align 4
  store i32 %236, i32* %4, align 4
  br label %250

237:                                              ; preds = %234, %218, %192, %191, %175, %159, %137, %113, %89, %87, %70, %54
  %238 = load i32, i32* %9, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %237
  %241 = load i32, i32* @ESRCH, align 4
  store i32 %241, i32* %4, align 4
  br label %250

242:                                              ; preds = %237
  %243 = load i32, i32* %10, align 4
  %244 = load i32, i32* @EIDRM, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %242
  %247 = load i32*, i32** %7, align 8
  store i32 -2, i32* %247, align 4
  store i32 0, i32* %10, align 4
  br label %248

248:                                              ; preds = %246, %242
  %249 = load i32, i32* %10, align 4
  store i32 %249, i32* %4, align 4
  br label %250

250:                                              ; preds = %248, %240, %235, %181, %135, %34
  %251 = load i32, i32* %4, align 4
  ret i32 %251
}

declare dso_local i32 @AUDIT_ARG(i32, i32, ...) #1

declare dso_local %struct.proc* @proc_find(i32) #1

declare dso_local i32 @donice(%struct.proc*, %struct.proc*, i32) #1

declare dso_local i32 @proc_rele(%struct.proc*) #1

declare dso_local %struct.pgrp* @proc_pgrp(%struct.proc*) #1

declare dso_local %struct.pgrp* @pgfind(i32) #1

declare dso_local i32 @pgrp_iterate(%struct.pgrp*, i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @kauth_cred_getuid(i32) #1

declare dso_local i32 @kauth_cred_get(...) #1

declare dso_local i32 @proc_iterate(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @do_background_thread(i32, i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @do_background_proc(%struct.proc*, %struct.proc*, i32) #1

declare dso_local i32 @set_gpudeny_proc(%struct.proc*, %struct.proc*, i32) #1

declare dso_local i32 @proc_set_darwin_role(%struct.proc*, %struct.proc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
