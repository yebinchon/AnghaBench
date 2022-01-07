; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttwrite.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgrp = type { i64 }
%struct.tty = type { i32, i32, i32, i32, i32, %struct.TYPE_7__, i32, i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.uio = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.uthread = type { i32 }

@OBUFSIZ = common dso_local global i32 0, align 4
@TS_ZOMBIE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TS_CONNECTED = common dso_local global i32 0, align 4
@IO_NDELAY = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@TTIPRI = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ttydcd\00", align 1
@TOSTOP = common dso_local global i32 0, align 4
@P_LPPWAIT = common dso_local global i32 0, align 4
@SIGTTOU = common dso_local global i32 0, align 4
@PGRP_NULL = common dso_local global %struct.pgrp* null, align 8
@EINTR = common dso_local global i32 0, align 4
@FLUSHO = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@char_type = common dso_local global i32 0, align 4
@CCLASSMASK = common dso_local global i32 0, align 4
@tk_nout = common dso_local global i32 0, align 4
@TS_SO_OLOWAT = common dso_local global i32 0, align 4
@TTOPRI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ttywri\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttwrite(%struct.tty* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.uthread*, align 8
  %19 = alloca %struct.pgrp*, align 8
  %20 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %21 = load i32, i32* @OBUFSIZ, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %16, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %17, align 8
  %25 = load %struct.tty*, %struct.tty** %5, align 8
  %26 = call i32 @TTY_LOCK_OWNED(%struct.tty* %25)
  %27 = call i32 (...) @current_thread()
  %28 = call i64 @get_bsdthread_info(i32 %27)
  %29 = inttoptr i64 %28 to %struct.uthread*
  store %struct.uthread* %29, %struct.uthread** %18, align 8
  %30 = load %struct.tty*, %struct.tty** %5, align 8
  %31 = getelementptr inbounds %struct.tty, %struct.tty* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %13, align 4
  %33 = load %struct.uio*, %struct.uio** %6, align 8
  %34 = call i64 @uio_resid(%struct.uio* %33)
  store i64 %34, i64* %15, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %369, %321, %75, %3
  %36 = load %struct.tty*, %struct.tty** %5, align 8
  %37 = getelementptr inbounds %struct.tty, %struct.tty* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @TS_ZOMBIE, align 4
  %40 = call i64 @ISSET(i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = load %struct.uio*, %struct.uio** %6, align 8
  %44 = call i64 @uio_resid(%struct.uio* %43)
  %45 = load i64, i64* %15, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @EIO, align 4
  store i32 %48, i32* %14, align 4
  br label %49

49:                                               ; preds = %47, %42
  br label %297

50:                                               ; preds = %35
  %51 = load %struct.tty*, %struct.tty** %5, align 8
  %52 = getelementptr inbounds %struct.tty, %struct.tty* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @TS_CONNECTED, align 4
  %55 = call i64 @ISSET(i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @IO_NDELAY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %63, i32* %14, align 4
  br label %297

64:                                               ; preds = %57
  %65 = load %struct.tty*, %struct.tty** %5, align 8
  %66 = load %struct.tty*, %struct.tty** %5, align 8
  %67 = call i32 @TSA_CARR_ON(%struct.tty* %66)
  %68 = load i32, i32* @TTIPRI, align 4
  %69 = load i32, i32* @PCATCH, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @ttysleep(%struct.tty* %65, i32 %67, i32 %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %297

75:                                               ; preds = %64
  br label %35

76:                                               ; preds = %50
  %77 = call %struct.TYPE_6__* (...) @current_proc()
  store %struct.TYPE_6__* %77, %struct.TYPE_6__** %11, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %79 = load %struct.tty*, %struct.tty** %5, align 8
  %80 = call i64 @isbackground(%struct.TYPE_6__* %78, %struct.tty* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %144

82:                                               ; preds = %76
  %83 = load %struct.tty*, %struct.tty** %5, align 8
  %84 = getelementptr inbounds %struct.tty, %struct.tty* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @TOSTOP, align 4
  %87 = call i64 @ISSET(i32 %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %144

89:                                               ; preds = %82
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @P_LPPWAIT, align 4
  %94 = and i32 %92, %93
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %144

96:                                               ; preds = %89
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @SIGTTOU, align 4
  %101 = call i32 @sigmask(i32 %100)
  %102 = and i32 %99, %101
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %144

104:                                              ; preds = %96
  %105 = load %struct.uthread*, %struct.uthread** %18, align 8
  %106 = getelementptr inbounds %struct.uthread, %struct.uthread* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @SIGTTOU, align 4
  %109 = call i32 @sigmask(i32 %108)
  %110 = and i32 %107, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %144

112:                                              ; preds = %104
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %114 = call %struct.pgrp* @proc_pgrp(%struct.TYPE_6__* %113)
  store %struct.pgrp* %114, %struct.pgrp** %19, align 8
  %115 = load %struct.pgrp*, %struct.pgrp** %19, align 8
  %116 = load %struct.pgrp*, %struct.pgrp** @PGRP_NULL, align 8
  %117 = icmp eq %struct.pgrp* %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i32, i32* @EIO, align 4
  store i32 %119, i32* %14, align 4
  br label %297

120:                                              ; preds = %112
  %121 = load %struct.pgrp*, %struct.pgrp** %19, align 8
  %122 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %120
  %126 = load %struct.tty*, %struct.tty** %5, align 8
  %127 = call i32 @tty_unlock(%struct.tty* %126)
  %128 = load %struct.pgrp*, %struct.pgrp** %19, align 8
  %129 = call i32 @pg_rele(%struct.pgrp* %128)
  %130 = load %struct.tty*, %struct.tty** %5, align 8
  %131 = call i32 @tty_lock(%struct.tty* %130)
  %132 = load i32, i32* @EIO, align 4
  store i32 %132, i32* %14, align 4
  br label %297

133:                                              ; preds = %120
  %134 = load %struct.tty*, %struct.tty** %5, align 8
  %135 = call i32 @tty_unlock(%struct.tty* %134)
  %136 = load %struct.pgrp*, %struct.pgrp** %19, align 8
  %137 = load i32, i32* @SIGTTOU, align 4
  %138 = call i32 @pgsignal(%struct.pgrp* %136, i32 %137, i32 1)
  %139 = load %struct.pgrp*, %struct.pgrp** %19, align 8
  %140 = call i32 @pg_rele(%struct.pgrp* %139)
  %141 = load %struct.tty*, %struct.tty** %5, align 8
  %142 = call i32 @tty_lock(%struct.tty* %141)
  %143 = load i32, i32* @EINTR, align 4
  store i32 %143, i32* %14, align 4
  br label %297

144:                                              ; preds = %104, %96, %89, %82, %76
  br label %145

145:                                              ; preds = %293, %144
  %146 = load %struct.uio*, %struct.uio** %6, align 8
  %147 = call i64 @uio_resid(%struct.uio* %146)
  %148 = icmp sgt i64 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* %9, align 4
  %151 = icmp sgt i32 %150, 0
  br label %152

152:                                              ; preds = %149, %145
  %153 = phi i1 [ true, %145 ], [ %151, %149 ]
  br i1 %153, label %154, label %296

154:                                              ; preds = %152
  %155 = load %struct.tty*, %struct.tty** %5, align 8
  %156 = getelementptr inbounds %struct.tty, %struct.tty* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @FLUSHO, align 4
  %159 = call i64 @ISSET(i32 %157, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %154
  %162 = load %struct.uio*, %struct.uio** %6, align 8
  %163 = call i32 @uio_setresid(%struct.uio* %162, i64 0)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %370

164:                                              ; preds = %154
  %165 = load %struct.tty*, %struct.tty** %5, align 8
  %166 = getelementptr inbounds %struct.tty, %struct.tty* %165, i32 0, i32 5
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %13, align 4
  %170 = icmp sgt i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %164
  br label %312

172:                                              ; preds = %164
  %173 = load i32, i32* %9, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %188

175:                                              ; preds = %172
  %176 = load %struct.uio*, %struct.uio** %6, align 8
  %177 = call i64 @uio_resid(%struct.uio* %176)
  %178 = load i32, i32* @OBUFSIZ, align 4
  %179 = call i32 @MIN(i64 %177, i32 %178)
  store i32 %179, i32* %9, align 4
  store i8* %24, i8** %8, align 8
  %180 = load i8*, i8** %8, align 8
  %181 = load i32, i32* %9, align 4
  %182 = load %struct.uio*, %struct.uio** %6, align 8
  %183 = call i32 @uiomove(i8* %180, i32 %181, %struct.uio* %182)
  store i32 %183, i32* %14, align 4
  %184 = load i32, i32* %14, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %175
  store i32 0, i32* %9, align 4
  br label %296

187:                                              ; preds = %175
  br label %188

188:                                              ; preds = %187, %172
  br label %189

189:                                              ; preds = %292, %240, %188
  %190 = load i32, i32* %9, align 4
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %192, label %293

192:                                              ; preds = %189
  %193 = load %struct.tty*, %struct.tty** %5, align 8
  %194 = getelementptr inbounds %struct.tty, %struct.tty* %193, i32 0, i32 8
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @OPOST, align 4
  %197 = call i64 @ISSET(i32 %195, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %192
  %200 = load i32, i32* %9, align 4
  store i32 %200, i32* %10, align 4
  br label %242

201:                                              ; preds = %192
  %202 = load i32, i32* %9, align 4
  %203 = load i32, i32* %9, align 4
  %204 = load i8*, i8** %8, align 8
  %205 = bitcast i8* %204 to i32*
  %206 = load i32, i32* @char_type, align 4
  %207 = load i32, i32* @CCLASSMASK, align 4
  %208 = call i32 @scanc(i32 %203, i32* %205, i32 %206, i32 %207)
  %209 = sub nsw i32 %202, %208
  store i32 %209, i32* %10, align 4
  %210 = load i32, i32* %10, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %241

212:                                              ; preds = %201
  %213 = load %struct.tty*, %struct.tty** %5, align 8
  %214 = getelementptr inbounds %struct.tty, %struct.tty* %213, i32 0, i32 7
  store i64 0, i64* %214, align 8
  %215 = load i8*, i8** %8, align 8
  %216 = load i8, i8* %215, align 1
  %217 = load %struct.tty*, %struct.tty** %5, align 8
  %218 = call i64 @ttyoutput(i8 signext %216, %struct.tty* %217)
  %219 = icmp sge i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %212
  br label %306

221:                                              ; preds = %212
  %222 = load i8*, i8** %8, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %8, align 8
  %224 = load i32, i32* %9, align 4
  %225 = add nsw i32 %224, -1
  store i32 %225, i32* %9, align 4
  %226 = load %struct.tty*, %struct.tty** %5, align 8
  %227 = getelementptr inbounds %struct.tty, %struct.tty* %226, i32 0, i32 6
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @FLUSHO, align 4
  %230 = call i64 @ISSET(i32 %228, i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %239, label %232

232:                                              ; preds = %221
  %233 = load %struct.tty*, %struct.tty** %5, align 8
  %234 = getelementptr inbounds %struct.tty, %struct.tty* %233, i32 0, i32 5
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %13, align 4
  %238 = icmp sgt i32 %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %232, %221
  br label %312

240:                                              ; preds = %232
  br label %189

241:                                              ; preds = %201
  br label %242

242:                                              ; preds = %241, %199
  %243 = load %struct.tty*, %struct.tty** %5, align 8
  %244 = getelementptr inbounds %struct.tty, %struct.tty* %243, i32 0, i32 7
  store i64 0, i64* %244, align 8
  %245 = load i8*, i8** %8, align 8
  %246 = bitcast i8* %245 to i32*
  %247 = load i32, i32* %10, align 4
  %248 = load %struct.tty*, %struct.tty** %5, align 8
  %249 = getelementptr inbounds %struct.tty, %struct.tty* %248, i32 0, i32 5
  %250 = call i32 @b_to_q(i32* %246, i32 %247, %struct.TYPE_7__* %249)
  store i32 %250, i32* %12, align 4
  %251 = load i32, i32* %12, align 4
  %252 = load i32, i32* %10, align 4
  %253 = sub nsw i32 %252, %251
  store i32 %253, i32* %10, align 4
  %254 = load i32, i32* %10, align 4
  %255 = load %struct.tty*, %struct.tty** %5, align 8
  %256 = getelementptr inbounds %struct.tty, %struct.tty* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %257, %254
  store i32 %258, i32* %256, align 4
  %259 = load i32, i32* %10, align 4
  %260 = load i8*, i8** %8, align 8
  %261 = sext i32 %259 to i64
  %262 = getelementptr inbounds i8, i8* %260, i64 %261
  store i8* %262, i8** %8, align 8
  %263 = load i32, i32* %10, align 4
  %264 = load i32, i32* %9, align 4
  %265 = sub nsw i32 %264, %263
  store i32 %265, i32* %9, align 4
  %266 = load i32, i32* %10, align 4
  %267 = load i32, i32* @tk_nout, align 4
  %268 = add nsw i32 %267, %266
  store i32 %268, i32* @tk_nout, align 4
  %269 = load i32, i32* %10, align 4
  %270 = load %struct.tty*, %struct.tty** %5, align 8
  %271 = getelementptr inbounds %struct.tty, %struct.tty* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = add nsw i32 %272, %269
  store i32 %273, i32* %271, align 8
  %274 = load i32, i32* %12, align 4
  %275 = icmp sgt i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %242
  br label %306

277:                                              ; preds = %242
  %278 = load %struct.tty*, %struct.tty** %5, align 8
  %279 = getelementptr inbounds %struct.tty, %struct.tty* %278, i32 0, i32 6
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @FLUSHO, align 4
  %282 = call i64 @ISSET(i32 %280, i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %291, label %284

284:                                              ; preds = %277
  %285 = load %struct.tty*, %struct.tty** %5, align 8
  %286 = getelementptr inbounds %struct.tty, %struct.tty* %285, i32 0, i32 5
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %13, align 4
  %290 = icmp sgt i32 %288, %289
  br i1 %290, label %291, label %292

291:                                              ; preds = %284, %277
  br label %293

292:                                              ; preds = %284
  br label %189

293:                                              ; preds = %291, %189
  %294 = load %struct.tty*, %struct.tty** %5, align 8
  %295 = call i32 @ttstart(%struct.tty* %294)
  br label %145

296:                                              ; preds = %186, %152
  br label %297

297:                                              ; preds = %368, %296, %133, %125, %118, %74, %62, %49
  %298 = load %struct.uio*, %struct.uio** %6, align 8
  %299 = load %struct.uio*, %struct.uio** %6, align 8
  %300 = call i64 @uio_resid(%struct.uio* %299)
  %301 = load i32, i32* %9, align 4
  %302 = sext i32 %301 to i64
  %303 = add nsw i64 %300, %302
  %304 = call i32 @uio_setresid(%struct.uio* %298, i64 %303)
  %305 = load i32, i32* %14, align 4
  store i32 %305, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %370

306:                                              ; preds = %276, %220
  %307 = load %struct.tty*, %struct.tty** %5, align 8
  %308 = getelementptr inbounds %struct.tty, %struct.tty* %307, i32 0, i32 5
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = sub nsw i32 %310, 1
  store i32 %311, i32* %13, align 4
  br label %312

312:                                              ; preds = %306, %239, %171
  %313 = load %struct.tty*, %struct.tty** %5, align 8
  %314 = call i32 @ttstart(%struct.tty* %313)
  %315 = load %struct.tty*, %struct.tty** %5, align 8
  %316 = getelementptr inbounds %struct.tty, %struct.tty* %315, i32 0, i32 5
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %13, align 4
  %320 = icmp sle i32 %318, %319
  br i1 %320, label %321, label %322

321:                                              ; preds = %312
  br label %35

322:                                              ; preds = %312
  %323 = load i32, i32* %7, align 4
  %324 = load i32, i32* @IO_NDELAY, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %344

327:                                              ; preds = %322
  %328 = load %struct.uio*, %struct.uio** %6, align 8
  %329 = load %struct.uio*, %struct.uio** %6, align 8
  %330 = call i64 @uio_resid(%struct.uio* %329)
  %331 = load i32, i32* %9, align 4
  %332 = sext i32 %331 to i64
  %333 = add nsw i64 %330, %332
  %334 = call i32 @uio_setresid(%struct.uio* %328, i64 %333)
  %335 = load %struct.uio*, %struct.uio** %6, align 8
  %336 = call i64 @uio_resid(%struct.uio* %335)
  %337 = load i64, i64* %15, align 8
  %338 = icmp eq i64 %336, %337
  br i1 %338, label %339, label %341

339:                                              ; preds = %327
  %340 = load i32, i32* @EWOULDBLOCK, align 4
  br label %342

341:                                              ; preds = %327
  br label %342

342:                                              ; preds = %341, %339
  %343 = phi i32 [ %340, %339 ], [ 0, %341 ]
  store i32 %343, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %370

344:                                              ; preds = %322
  %345 = load %struct.tty*, %struct.tty** %5, align 8
  %346 = getelementptr inbounds %struct.tty, %struct.tty* %345, i32 0, i32 4
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* @TS_SO_OLOWAT, align 4
  %349 = call i32 @SET(i32 %347, i32 %348)
  %350 = load %struct.tty*, %struct.tty** %5, align 8
  %351 = load %struct.tty*, %struct.tty** %5, align 8
  %352 = call i32 @TSA_OLOWAT(%struct.tty* %351)
  %353 = load i32, i32* @TTOPRI, align 4
  %354 = load i32, i32* @PCATCH, align 4
  %355 = or i32 %353, %354
  %356 = load %struct.tty*, %struct.tty** %5, align 8
  %357 = getelementptr inbounds %struct.tty, %struct.tty* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @ttysleep(%struct.tty* %350, i32 %352, i32 %355, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %358)
  store i32 %359, i32* %14, align 4
  %360 = load i32, i32* %14, align 4
  %361 = load i32, i32* @EWOULDBLOCK, align 4
  %362 = icmp eq i32 %360, %361
  br i1 %362, label %363, label %365

363:                                              ; preds = %344
  %364 = load i32, i32* @EIO, align 4
  store i32 %364, i32* %14, align 4
  br label %365

365:                                              ; preds = %363, %344
  %366 = load i32, i32* %14, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %365
  br label %297

369:                                              ; preds = %365
  br label %35

370:                                              ; preds = %342, %297, %161
  %371 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %371)
  %372 = load i32, i32* %4, align 4
  ret i32 %372
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TTY_LOCK_OWNED(%struct.tty*) #2

declare dso_local i64 @get_bsdthread_info(i32) #2

declare dso_local i32 @current_thread(...) #2

declare dso_local i64 @uio_resid(%struct.uio*) #2

declare dso_local i64 @ISSET(i32, i32) #2

declare dso_local i32 @ttysleep(%struct.tty*, i32, i32, i8*, i32) #2

declare dso_local i32 @TSA_CARR_ON(%struct.tty*) #2

declare dso_local %struct.TYPE_6__* @current_proc(...) #2

declare dso_local i64 @isbackground(%struct.TYPE_6__*, %struct.tty*) #2

declare dso_local i32 @sigmask(i32) #2

declare dso_local %struct.pgrp* @proc_pgrp(%struct.TYPE_6__*) #2

declare dso_local i32 @tty_unlock(%struct.tty*) #2

declare dso_local i32 @pg_rele(%struct.pgrp*) #2

declare dso_local i32 @tty_lock(%struct.tty*) #2

declare dso_local i32 @pgsignal(%struct.pgrp*, i32, i32) #2

declare dso_local i32 @uio_setresid(%struct.uio*, i64) #2

declare dso_local i32 @MIN(i64, i32) #2

declare dso_local i32 @uiomove(i8*, i32, %struct.uio*) #2

declare dso_local i32 @scanc(i32, i32*, i32, i32) #2

declare dso_local i64 @ttyoutput(i8 signext, %struct.tty*) #2

declare dso_local i32 @b_to_q(i32*, i32, %struct.TYPE_7__*) #2

declare dso_local i32 @ttstart(%struct.tty*) #2

declare dso_local i32 @SET(i32, i32) #2

declare dso_local i32 @TSA_OLOWAT(%struct.tty*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
