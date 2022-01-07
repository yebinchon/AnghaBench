; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_pidbsdinfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_pidbsdinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i32, i64 }
%struct.pgrp = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i32, i64, i32, %struct.TYPE_12__*, i32, i32, %struct.TYPE_11__, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.proc_bsdinfo = type { i64, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tty = type { i32 }

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
@SESSION_NULL = common dso_local global %struct.session* null, align 8
@PROC_FLAG_SLEADER = common dso_local global i32 0, align 4
@PROC_FLAG_CTTY = common dso_local global i32 0, align 4
@P_DELAYIDLESLEEP = common dso_local global i32 0, align 4
@PROC_FLAG_DELAYIDLESLEEP = common dso_local global i32 0, align 4
@PROC_FLAG_PC_THROTTLE = common dso_local global i32 0, align 4
@PROC_FLAG_PC_SUSP = common dso_local global i32 0, align 4
@PROC_FLAG_PC_KILL = common dso_local global i32 0, align 4
@PROC_FLAG_PA_THROTTLE = common dso_local global i32 0, align 4
@PROC_FLAG_PA_SUSP = common dso_local global i32 0, align 4
@SZOMB = common dso_local global i64 0, align 8
@TASK_NULL = common dso_local global i64 0, align 8
@NODEV = common dso_local global i32 0, align 4
@PGRP_NULL = common dso_local global %struct.pgrp* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_pidbsdinfo(%struct.TYPE_13__* %0, %struct.proc_bsdinfo* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.proc_bsdinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tty*, align 8
  %8 = alloca %struct.session*, align 8
  %9 = alloca %struct.pgrp*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.proc_bsdinfo* %1, %struct.proc_bsdinfo** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.session* null, %struct.session** %8, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = call %struct.pgrp* @proc_pgrp(%struct.TYPE_13__* %11)
  store %struct.pgrp* %12, %struct.pgrp** %9, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = call %struct.session* @proc_session(%struct.TYPE_13__* %13)
  store %struct.session* %14, %struct.session** %8, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = call i32 @kauth_cred_proc_ref(%struct.TYPE_13__* %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %18 = call i32 @bzero(%struct.proc_bsdinfo* %17, i32 96)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %23 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 12
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %28 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %27, i32 0, i32 20
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 11
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %33 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %32, i32 0, i32 19
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 10
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %38 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %37, i32 0, i32 18
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @kauth_cred_getuid(i32 %39)
  %41 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %42 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %41, i32 0, i32 17
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @kauth_cred_getgid(i32 %43)
  %45 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %46 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %45, i32 0, i32 16
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @kauth_cred_getruid(i32 %47)
  %49 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %50 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %49, i32 0, i32 15
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @kauth_cred_getrgid(i32 %51)
  %53 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %54 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %53, i32 0, i32 14
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @kauth_cred_getsvuid(i32 %55)
  %57 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %58 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %57, i32 0, i32 13
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @kauth_cred_getsvgid(i32 %59)
  %61 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %62 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %61, i32 0, i32 12
  store i32 %60, i32* %62, align 4
  %63 = call i32 @kauth_cred_unref(i32* %10)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 9
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %68 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %67, i32 0, i32 11
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %74 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %73, i32 0, i32 10
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %80 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %79, i32 0, i32 9
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 7
  %83 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %84 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i32, i32* @MAXCOMLEN, align 4
  %88 = call i32 @bcopy(i32* %82, i8* %86, i32 %87)
  %89 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %90 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* @MAXCOMLEN, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  store i8 0, i8* %95, align 1
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 6
  %98 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %99 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  %102 = load i32, i32* @MAXCOMLEN, align 4
  %103 = mul nsw i32 2, %102
  %104 = call i32 @bcopy(i32* %97, i8* %101, i32 %103)
  %105 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %106 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* @MAXCOMLEN, align 4
  %109 = mul nsw i32 2, %108
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %107, i64 %111
  store i8 0, i8* %112, align 1
  %113 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %114 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %113, i32 0, i32 8
  store i32 0, i32* %114, align 4
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @P_SYSTEM, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* @P_SYSTEM, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %3
  %123 = load i32, i32* @PROC_FLAG_SYSTEM, align 4
  %124 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %125 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %122, %3
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @P_LTRACED, align 4
  %133 = and i32 %131, %132
  %134 = load i32, i32* @P_LTRACED, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %128
  %137 = load i32, i32* @PROC_FLAG_TRACED, align 4
  %138 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %139 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %136, %128
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @P_LEXIT, align 4
  %147 = and i32 %145, %146
  %148 = load i32, i32* @P_LEXIT, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %142
  %151 = load i32, i32* @PROC_FLAG_INEXIT, align 4
  %152 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %153 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %152, i32 0, i32 8
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %150, %142
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @P_LPPWAIT, align 4
  %161 = and i32 %159, %160
  %162 = load i32, i32* @P_LPPWAIT, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %156
  %165 = load i32, i32* @PROC_FLAG_PPWAIT, align 4
  %166 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %167 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %166, i32 0, i32 8
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %164, %156
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @P_LP64, align 4
  %175 = and i32 %173, %174
  %176 = load i32, i32* @P_LP64, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %170
  %179 = load i32, i32* @PROC_FLAG_LP64, align 4
  %180 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %181 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %180, i32 0, i32 8
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %178, %170
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @P_CONTROLT, align 4
  %189 = and i32 %187, %188
  %190 = load i32, i32* @P_CONTROLT, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %184
  %193 = load i32, i32* @PROC_FLAG_CONTROLT, align 4
  %194 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %195 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %194, i32 0, i32 8
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %192, %184
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @P_THCWD, align 4
  %203 = and i32 %201, %202
  %204 = load i32, i32* @P_THCWD, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %198
  %207 = load i32, i32* @PROC_FLAG_THCWD, align 4
  %208 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %209 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %208, i32 0, i32 8
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %206, %198
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @P_SUGID, align 4
  %217 = and i32 %215, %216
  %218 = load i32, i32* @P_SUGID, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %212
  %221 = load i32, i32* @PROC_FLAG_PSUGID, align 4
  %222 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %223 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %222, i32 0, i32 8
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %224, %221
  store i32 %225, i32* %223, align 4
  br label %226

226:                                              ; preds = %220, %212
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @P_EXEC, align 4
  %231 = and i32 %229, %230
  %232 = load i32, i32* @P_EXEC, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %240

234:                                              ; preds = %226
  %235 = load i32, i32* @PROC_FLAG_EXEC, align 4
  %236 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %237 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %236, i32 0, i32 8
  %238 = load i32, i32* %237, align 4
  %239 = or i32 %238, %235
  store i32 %239, i32* %237, align 4
  br label %240

240:                                              ; preds = %234, %226
  %241 = load %struct.session*, %struct.session** %8, align 8
  %242 = load %struct.session*, %struct.session** @SESSION_NULL, align 8
  %243 = icmp ne %struct.session* %241, %242
  br i1 %243, label %244, label %267

244:                                              ; preds = %240
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %246 = load %struct.session*, %struct.session** %8, align 8
  %247 = call i64 @SESS_LEADER(%struct.TYPE_13__* %245, %struct.session* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %244
  %250 = load i32, i32* @PROC_FLAG_SLEADER, align 4
  %251 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %252 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %251, i32 0, i32 8
  %253 = load i32, i32* %252, align 4
  %254 = or i32 %253, %250
  store i32 %254, i32* %252, align 4
  br label %255

255:                                              ; preds = %249, %244
  %256 = load %struct.session*, %struct.session** %8, align 8
  %257 = getelementptr inbounds %struct.session, %struct.session* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %255
  %261 = load i32, i32* @PROC_FLAG_CTTY, align 4
  %262 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %263 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %262, i32 0, i32 8
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 4
  br label %266

266:                                              ; preds = %260, %255
  br label %267

267:                                              ; preds = %266, %240
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @P_DELAYIDLESLEEP, align 4
  %272 = and i32 %270, %271
  %273 = load i32, i32* @P_DELAYIDLESLEEP, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %281

275:                                              ; preds = %267
  %276 = load i32, i32* @PROC_FLAG_DELAYIDLESLEEP, align 4
  %277 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %278 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %277, i32 0, i32 8
  %279 = load i32, i32* %278, align 4
  %280 = or i32 %279, %276
  store i32 %280, i32* %278, align 4
  br label %281

281:                                              ; preds = %275, %267
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %283 = call i32 @PROC_CONTROL_STATE(%struct.TYPE_13__* %282)
  switch i32 %283, label %302 [
    i32 128, label %284
    i32 129, label %290
    i32 130, label %296
  ]

284:                                              ; preds = %281
  %285 = load i32, i32* @PROC_FLAG_PC_THROTTLE, align 4
  %286 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %287 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %286, i32 0, i32 8
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %288, %285
  store i32 %289, i32* %287, align 4
  br label %302

290:                                              ; preds = %281
  %291 = load i32, i32* @PROC_FLAG_PC_SUSP, align 4
  %292 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %293 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %292, i32 0, i32 8
  %294 = load i32, i32* %293, align 4
  %295 = or i32 %294, %291
  store i32 %295, i32* %293, align 4
  br label %302

296:                                              ; preds = %281
  %297 = load i32, i32* @PROC_FLAG_PC_KILL, align 4
  %298 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %299 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %298, i32 0, i32 8
  %300 = load i32, i32* %299, align 4
  %301 = or i32 %300, %297
  store i32 %301, i32* %299, align 4
  br label %302

302:                                              ; preds = %281, %296, %290, %284
  %303 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %304 = call i32 @PROC_ACTION_STATE(%struct.TYPE_13__* %303)
  switch i32 %304, label %317 [
    i32 128, label %305
    i32 129, label %311
  ]

305:                                              ; preds = %302
  %306 = load i32, i32* @PROC_FLAG_PA_THROTTLE, align 4
  %307 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %308 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %307, i32 0, i32 8
  %309 = load i32, i32* %308, align 4
  %310 = or i32 %309, %306
  store i32 %310, i32* %308, align 4
  br label %317

311:                                              ; preds = %302
  %312 = load i32, i32* @PROC_FLAG_PA_SUSP, align 4
  %313 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %314 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %313, i32 0, i32 8
  %315 = load i32, i32* %314, align 4
  %316 = or i32 %315, %312
  store i32 %316, i32* %314, align 4
  br label %317

317:                                              ; preds = %302, %311, %305
  %318 = load i32, i32* %6, align 4
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %339

320:                                              ; preds = %317
  %321 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @SZOMB, align 8
  %325 = icmp ne i64 %323, %324
  br i1 %325, label %326, label %339

326:                                              ; preds = %320
  %327 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %327, i32 0, i32 3
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @TASK_NULL, align 8
  %331 = icmp ne i64 %329, %330
  br i1 %331, label %332, label %339

332:                                              ; preds = %326
  %333 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %333, i32 0, i32 3
  %335 = load i64, i64* %334, align 8
  %336 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %337 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %336, i32 0, i32 8
  %338 = call i32 @proc_get_darwinbgstate(i64 %335, i32* %337)
  br label %339

339:                                              ; preds = %332, %326, %320, %317
  %340 = load i32, i32* %6, align 4
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %350

342:                                              ; preds = %339
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 5
  %345 = load %struct.TYPE_12__*, %struct.TYPE_12__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %349 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %348, i32 0, i32 7
  store i32 %347, i32* %349, align 8
  br label %350

350:                                              ; preds = %342, %339
  %351 = load i32, i32* @NODEV, align 4
  %352 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %353 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %352, i32 0, i32 4
  store i32 %351, i32* %353, align 4
  %354 = load %struct.pgrp*, %struct.pgrp** %9, align 8
  %355 = load %struct.pgrp*, %struct.pgrp** @PGRP_NULL, align 8
  %356 = icmp ne %struct.pgrp* %354, %355
  br i1 %356, label %357, label %394

357:                                              ; preds = %350
  %358 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %359 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %358, i32 0, i32 4
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %362 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %361, i32 0, i32 6
  store i32 %360, i32* %362, align 4
  %363 = load %struct.pgrp*, %struct.pgrp** %9, align 8
  %364 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %367 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %366, i32 0, i32 5
  store i32 %365, i32* %367, align 8
  %368 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 8
  %371 = load i32, i32* @P_CONTROLT, align 4
  %372 = and i32 %370, %371
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %393

374:                                              ; preds = %357
  %375 = load %struct.session*, %struct.session** %8, align 8
  %376 = load %struct.session*, %struct.session** @SESSION_NULL, align 8
  %377 = icmp ne %struct.session* %375, %376
  br i1 %377, label %378, label %393

378:                                              ; preds = %374
  %379 = load %struct.session*, %struct.session** %8, align 8
  %380 = call %struct.tty* @SESSION_TP(%struct.session* %379)
  store %struct.tty* %380, %struct.tty** %7, align 8
  %381 = icmp ne %struct.tty* %380, null
  br i1 %381, label %382, label %393

382:                                              ; preds = %378
  %383 = load %struct.tty*, %struct.tty** %7, align 8
  %384 = getelementptr inbounds %struct.tty, %struct.tty* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %387 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %386, i32 0, i32 4
  store i32 %385, i32* %387, align 4
  %388 = load %struct.session*, %struct.session** %8, align 8
  %389 = getelementptr inbounds %struct.session, %struct.session* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = load %struct.proc_bsdinfo*, %struct.proc_bsdinfo** %5, align 8
  %392 = getelementptr inbounds %struct.proc_bsdinfo, %struct.proc_bsdinfo* %391, i32 0, i32 3
  store i32 %390, i32* %392, align 8
  br label %393

393:                                              ; preds = %382, %378, %374, %357
  br label %394

394:                                              ; preds = %393, %350
  %395 = load %struct.session*, %struct.session** %8, align 8
  %396 = load %struct.session*, %struct.session** @SESSION_NULL, align 8
  %397 = icmp ne %struct.session* %395, %396
  br i1 %397, label %398, label %401

398:                                              ; preds = %394
  %399 = load %struct.session*, %struct.session** %8, align 8
  %400 = call i32 @session_rele(%struct.session* %399)
  br label %401

401:                                              ; preds = %398, %394
  %402 = load %struct.pgrp*, %struct.pgrp** %9, align 8
  %403 = load %struct.pgrp*, %struct.pgrp** @PGRP_NULL, align 8
  %404 = icmp ne %struct.pgrp* %402, %403
  br i1 %404, label %405, label %408

405:                                              ; preds = %401
  %406 = load %struct.pgrp*, %struct.pgrp** %9, align 8
  %407 = call i32 @pg_rele(%struct.pgrp* %406)
  br label %408

408:                                              ; preds = %405, %401
  ret i32 0
}

declare dso_local %struct.pgrp* @proc_pgrp(%struct.TYPE_13__*) #1

declare dso_local %struct.session* @proc_session(%struct.TYPE_13__*) #1

declare dso_local i32 @kauth_cred_proc_ref(%struct.TYPE_13__*) #1

declare dso_local i32 @bzero(%struct.proc_bsdinfo*, i32) #1

declare dso_local i32 @kauth_cred_getuid(i32) #1

declare dso_local i32 @kauth_cred_getgid(i32) #1

declare dso_local i32 @kauth_cred_getruid(i32) #1

declare dso_local i32 @kauth_cred_getrgid(i32) #1

declare dso_local i32 @kauth_cred_getsvuid(i32) #1

declare dso_local i32 @kauth_cred_getsvgid(i32) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

declare dso_local i32 @bcopy(i32*, i8*, i32) #1

declare dso_local i64 @SESS_LEADER(%struct.TYPE_13__*, %struct.session*) #1

declare dso_local i32 @PROC_CONTROL_STATE(%struct.TYPE_13__*) #1

declare dso_local i32 @PROC_ACTION_STATE(%struct.TYPE_13__*) #1

declare dso_local i32 @proc_get_darwinbgstate(i64, i32*) #1

declare dso_local %struct.tty* @SESSION_TP(%struct.session*) #1

declare dso_local i32 @session_rele(%struct.session*) #1

declare dso_local i32 @pg_rele(%struct.pgrp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
