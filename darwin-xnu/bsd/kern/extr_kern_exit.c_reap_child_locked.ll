; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exit.c_reap_child_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exit.c_reap_child_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_23__*, i32, %struct.TYPE_22__*, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_22__ = type { i32, i32 }

@PROC_NULL = common dso_local global %struct.TYPE_23__* null, align 8
@NOTE_EXIT = common dso_local global i32 0, align 4
@initproc = common dso_local global %struct.TYPE_23__* null, align 8
@CLD_CONTINUED = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@P_LIST_WAITING = common dso_local global i32 0, align 4
@NOTE_REAP = common dso_local global i32 0, align 4
@P_NOCLDWAIT = common dso_local global i32 0, align 4
@M_ZOMBIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Warning : lost p_ru for %s\0A\00", align 1
@p_list = common dso_local global i32 0, align 4
@p_sibling = common dso_local global i32 0, align 4
@p_hash = common dso_local global i32 0, align 4
@P_LIST_INHASH = common dso_local global i32 0, align 4
@nprocs = common dso_local global i32 0, align 4
@P_LIST_DEADPARENT = common dso_local global i32 0, align 4
@proc_lck_grp = common dso_local global i32 0, align 4
@M_PROC = common dso_local global i32 0, align 4
@proc_fdmlock_grp = common dso_local global i32 0, align 4
@proc_mlock_grp = common dso_local global i32 0, align 4
@proc_slock_grp = common dso_local global i32 0, align 4
@proc_ucred_mlock_grp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, i32, i32, i32, i32)* @reap_child_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reap_child_locked(%struct.TYPE_23__* %0, %struct.TYPE_23__* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** @PROC_NULL, align 8
  store %struct.TYPE_23__* %17, %struct.TYPE_23__** %14, align 8
  %18 = load i32, i32* %12, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = call i32 (...) @proc_list_unlock()
  br label %22

22:                                               ; preds = %20, %6
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %126

27:                                               ; preds = %22
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %29 = call i32 @proc_lock(%struct.TYPE_23__* %28)
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 23
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %16, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 23
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @NOTE_EXIT, align 4
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 65535
  %40 = or i32 %35, %39
  store i32 %40, i32* %15, align 4
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %42 = call i32 @proc_unlock(%struct.TYPE_23__* %41)
  %43 = load i64, i64* %16, align 8
  %44 = call %struct.TYPE_23__* @proc_find(i64 %43)
  store %struct.TYPE_23__* %44, %struct.TYPE_23__** %14, align 8
  %45 = icmp ne %struct.TYPE_23__* %44, null
  br i1 %45, label %46, label %115

46:                                               ; preds = %27
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** @initproc, align 8
  %49 = icmp eq %struct.TYPE_23__* %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %115, label %53

53:                                               ; preds = %50, %46
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** @initproc, align 8
  %56 = icmp ne %struct.TYPE_23__* %54, %55
  br i1 %56, label %57, label %81

57:                                               ; preds = %53
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %59 = call i32 @proc_lock(%struct.TYPE_23__* %58)
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 21
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 22
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @CLD_CONTINUED, align 4
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 20
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 13
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @kauth_cred_getruid(i32 %75)
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 19
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %80 = call i32 @proc_unlock(%struct.TYPE_23__* %79)
  br label %81

81:                                               ; preds = %57, %53
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %84 = call i32 @proc_reparentlocked(%struct.TYPE_23__* %82, %struct.TYPE_23__* %83, i32 1, i32 0)
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @proc_knote(%struct.TYPE_23__* %85, i32 %86)
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %89 = load i32, i32* @SIGCHLD, align 4
  %90 = call i32 @psignal(%struct.TYPE_23__* %88, i32 %89)
  %91 = call i32 (...) @proc_list_lock()
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %93 = bitcast %struct.TYPE_23__* %92 to i32*
  %94 = call i32 @wakeup(i32* %93)
  %95 = load i32, i32* @P_LIST_WAITING, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 9
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 10
  %103 = call i32 @wakeup(i32* %102)
  %104 = call i32 (...) @proc_list_unlock()
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %106 = call i32 @proc_rele(%struct.TYPE_23__* %105)
  %107 = load i32, i32* %12, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %114

109:                                              ; preds = %81
  %110 = load i32, i32* %13, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = call i32 (...) @proc_list_lock()
  br label %114

114:                                              ; preds = %112, %109, %81
  store i32 0, i32* %7, align 4
  br label %287

115:                                              ; preds = %50, %27
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @proc_knote(%struct.TYPE_23__* %116, i32 %117)
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** @PROC_NULL, align 8
  %121 = icmp ne %struct.TYPE_23__* %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %124 = call i32 @proc_rele(%struct.TYPE_23__* %123)
  br label %125

125:                                              ; preds = %122, %115
  br label %126

126:                                              ; preds = %125, %22
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %128 = load i32, i32* @NOTE_REAP, align 4
  %129 = call i32 @proc_knote(%struct.TYPE_23__* %127, i32 %128)
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %131 = call i32 @proc_knote_drain(%struct.TYPE_23__* %130)
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 0
  store i32 0, i32* %133, align 8
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 15
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %135, align 8
  %137 = icmp ne %struct.TYPE_23__* %136, null
  br i1 %137, label %138, label %176

138:                                              ; preds = %126
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %140 = call i32 @proc_lock(%struct.TYPE_23__* %139)
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @P_NOCLDWAIT, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %157, label %147

147:                                              ; preds = %138
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 17
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 15
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 18
  %156 = call i32 @ruadd(i32* %151, i32* %155)
  br label %157

157:                                              ; preds = %147, %138
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 17
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 15
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 16
  %166 = call i32 @update_rusage_info_child(i32* %161, i32* %165)
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %168 = call i32 @proc_unlock(%struct.TYPE_23__* %167)
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 15
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %170, align 8
  %172 = load i32, i32* @M_ZOMBIE, align 4
  %173 = call i32 @FREE_ZONE(%struct.TYPE_23__* %171, i32 128, i32 %172)
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 15
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %175, align 8
  br label %181

176:                                              ; preds = %126
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 3
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %179)
  br label %181

181:                                              ; preds = %176, %157
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %183 = call i32 @AUDIT_SESSION_PROCEXIT(%struct.TYPE_23__* %182)
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 13
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @kauth_cred_getruid(i32 %186)
  %188 = call i32 @chgproccnt(i32 %187, i32 -1)
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 14
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @os_reason_free(i32 %191)
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 13
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @IS_VALID_CRED(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %181
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 13
  %201 = call i32 @kauth_cred_unref(i32* %200)
  br label %202

202:                                              ; preds = %198, %181
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %204 = call i32 @leavepgrp(%struct.TYPE_23__* %203)
  %205 = call i32 (...) @proc_list_lock()
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %207 = load i32, i32* @p_list, align 4
  %208 = call i32 @LIST_REMOVE(%struct.TYPE_23__* %206, i32 %207)
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 12
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %211, -1
  store i32 %212, i32* %210, align 8
  %213 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %214 = load i32, i32* @p_sibling, align 4
  %215 = call i32 @LIST_REMOVE(%struct.TYPE_23__* %213, i32 %214)
  %216 = load i32, i32* %10, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %202
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 11
  %221 = call i64 @LIST_EMPTY(i32* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %218
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %225 = bitcast %struct.TYPE_23__* %224 to i32*
  %226 = call i32 @wakeup(i32* %225)
  br label %227

227:                                              ; preds = %223, %218, %202
  %228 = load i32, i32* @P_LIST_WAITING, align 4
  %229 = xor i32 %228, -1
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 9
  %232 = load i32, i32* %231, align 4
  %233 = and i32 %232, %229
  store i32 %233, i32* %231, align 4
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i32 0, i32 10
  %236 = call i32 @wakeup(i32* %235)
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %238 = load i32, i32* @p_hash, align 4
  %239 = call i32 @LIST_REMOVE(%struct.TYPE_23__* %237, i32 %238)
  %240 = load i32, i32* @P_LIST_INHASH, align 4
  %241 = xor i32 %240, -1
  %242 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 0, i32 9
  %244 = load i32, i32* %243, align 4
  %245 = and i32 %244, %241
  store i32 %245, i32* %243, align 4
  %246 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %247 = call i32 @proc_checkdeadrefs(%struct.TYPE_23__* %246)
  %248 = load i32, i32* @nprocs, align 4
  %249 = add nsw i32 %248, -1
  store i32 %249, i32* @nprocs, align 4
  %250 = load i32, i32* %10, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %227
  %253 = load i32, i32* @P_LIST_DEADPARENT, align 4
  %254 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %254, i32 0, i32 9
  %256 = load i32, i32* %255, align 4
  %257 = or i32 %256, %253
  store i32 %257, i32* %255, align 4
  br label %258

258:                                              ; preds = %252, %227
  %259 = call i32 (...) @proc_list_unlock()
  %260 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %260, i32 0, i32 8
  %262 = load i32, i32* @proc_lck_grp, align 4
  %263 = call i32 @lck_mtx_destroy(i32* %261, i32 %262)
  %264 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %264, i32 0, i32 7
  %266 = load i32, i32* @proc_lck_grp, align 4
  %267 = call i32 @lck_mtx_destroy(i32* %265, i32 %266)
  %268 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %268, i32 0, i32 6
  %270 = load i32, i32* @proc_lck_grp, align 4
  %271 = call i32 @lck_mtx_destroy(i32* %269, i32 %270)
  %272 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %272, i32 0, i32 4
  %274 = load i32, i32* @proc_lck_grp, align 4
  %275 = call i32 @lck_spin_destroy(i32* %273, i32 %274)
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %277 = load i32, i32* @M_PROC, align 4
  %278 = call i32 @FREE_ZONE(%struct.TYPE_23__* %276, i32 128, i32 %277)
  %279 = load i32, i32* %12, align 4
  %280 = icmp eq i32 %279, 1
  br i1 %280, label %281, label %286

281:                                              ; preds = %258
  %282 = load i32, i32* %13, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %281
  %285 = call i32 (...) @proc_list_lock()
  br label %286

286:                                              ; preds = %284, %281, %258
  store i32 1, i32* %7, align 4
  br label %287

287:                                              ; preds = %286, %114
  %288 = load i32, i32* %7, align 4
  ret i32 %288
}

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @proc_lock(%struct.TYPE_23__*) #1

declare dso_local i32 @proc_unlock(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @proc_find(i64) #1

declare dso_local i32 @kauth_cred_getruid(i32) #1

declare dso_local i32 @proc_reparentlocked(%struct.TYPE_23__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @proc_knote(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @psignal(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @proc_rele(%struct.TYPE_23__*) #1

declare dso_local i32 @proc_knote_drain(%struct.TYPE_23__*) #1

declare dso_local i32 @ruadd(i32*, i32*) #1

declare dso_local i32 @update_rusage_info_child(i32*, i32*) #1

declare dso_local i32 @FREE_ZONE(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @AUDIT_SESSION_PROCEXIT(%struct.TYPE_23__*) #1

declare dso_local i32 @chgproccnt(i32, i32) #1

declare dso_local i32 @os_reason_free(i32) #1

declare dso_local i64 @IS_VALID_CRED(i32) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

declare dso_local i32 @leavepgrp(%struct.TYPE_23__*) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @proc_checkdeadrefs(%struct.TYPE_23__*) #1

declare dso_local i32 @lck_mtx_destroy(i32*, i32) #1

declare dso_local i32 @lck_spin_destroy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
