; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_poll_thread_fn.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_poll_thread_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlil_threading_info = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.ifnet = type { i64, i32, i64, %struct.timespec, i32, i32 (%struct.ifnet*, i32, i32, %struct.mbuf**, %struct.mbuf**, i32*, i32*)*, %struct.dlil_threading_info* }
%struct.timespec = type { i64, i64 }
%struct.mbuf = type { i32 }
%struct.ifnet_stat_increment_param = type { i32, i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s_poller\00", align 1
@THREAD_NULL = common dso_local global i64 0, align 8
@PZERO = common dso_local global i32 0, align 4
@PSPIN = common dso_local global i32 0, align 4
@dlil_verbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: poller thread terminated\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"%s: polling up to %d pkts, pkts avg %d max %d, wreq avg %d, bytes avg %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"%s: polled %d pkts, pkts avg %d max %d, wreq avg %d, bytes avg %d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [63 x i8] c"%s: no packets, pkts avg %d max %d, wreq avg %d, bytes avg %d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ifnet_poll_thread_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifnet_poll_thread_fn(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dlil_threading_info*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.timespec*, align 8
  %10 = alloca %struct.ifnet_stat_increment_param, align 4
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = bitcast i8* %17 to %struct.ifnet*
  store %struct.ifnet* %18, %struct.ifnet** %6, align 8
  %19 = load i32, i32* @IFNAMSIZ, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %7, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  store %struct.timespec* null, %struct.timespec** %9, align 8
  %24 = trunc i64 %21 to i32
  %25 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %26 = call i8* @if_name(%struct.ifnet* %25)
  %27 = call i32 @snprintf(i8* %23, i32 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = call i32 @bzero(%struct.ifnet_stat_increment_param* %10, i32 8)
  %29 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 4
  %31 = call i32 @lck_mtx_lock_spin(i32* %30)
  %32 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 6
  %34 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %33, align 8
  store %struct.dlil_threading_info* %34, %struct.dlil_threading_info** %5, align 8
  %35 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %5, align 8
  %36 = icmp ne %struct.dlil_threading_info* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @VERIFY(i32 %37)
  br label %39

39:                                               ; preds = %241, %2
  %40 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @THREAD_NULL, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %47 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %46, i32 0, i32 0
  %48 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %49 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %48, i32 0, i32 4
  %50 = load i32, i32* @PZERO, align 4
  %51 = sub nsw i32 %50, 1
  %52 = load i32, i32* @PSPIN, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.timespec*, %struct.timespec** %9, align 8
  %55 = call i32 @msleep(i64* %47, i32* %49, i32 %53, i8* %23, %struct.timespec* %54)
  br label %56

56:                                               ; preds = %45, %39
  %57 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %58 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @THREAD_NULL, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %56
  %63 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %64 = call i32 @ifnet_set_poll_cycle(%struct.ifnet* %63, i32* null)
  %65 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 4
  %67 = call i32 @lck_mtx_unlock(i32* %66)
  %68 = load i32, i32* @dlil_verbose, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %72 = call i8* @if_name(%struct.ifnet* %71)
  %73 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %70, %62
  %75 = call i32 (...) @current_thread()
  %76 = call i32 @thread_deallocate(i32 %75)
  %77 = call i32 (...) @current_thread()
  %78 = call i32 @thread_terminate(i32 %77)
  %79 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %79)
  ret void

80:                                               ; preds = %56
  %81 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %82 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %81, i32 0, i32 1
  store i32 1, i32* %82, align 8
  br label %83

83:                                               ; preds = %223, %80
  %84 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %85 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %16, align 8
  %87 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %88 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %87, i32 0, i32 4
  %89 = call i32 @lck_mtx_unlock(i32* %88)
  %90 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %91 = call i32 @ifnet_is_attached(%struct.ifnet* %90, i32 1)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %83
  %94 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %95 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %94, i32 0, i32 4
  %96 = call i32 @lck_mtx_lock_spin(i32* %95)
  br label %224

97:                                               ; preds = %83
  %98 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %5, align 8
  %99 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %5, align 8
  %104 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  br label %116

106:                                              ; preds = %97
  %107 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %5, align 8
  %108 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %107, i32 0, i32 6
  %109 = call i32 @qlimit(i32* %108)
  %110 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %5, align 8
  %111 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = shl i32 %112, 2
  %114 = call i32 @MAX(i32 %109, i32 %113)
  %115 = sext i32 %114 to i64
  br label %116

116:                                              ; preds = %106, %102
  %117 = phi i64 [ %105, %102 ], [ %115, %106 ]
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* @dlil_verbose, align 4
  %120 = icmp sgt i32 %119, 1
  br i1 %120, label %121, label %138

121:                                              ; preds = %116
  %122 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %123 = call i8* @if_name(%struct.ifnet* %122)
  %124 = load i32, i32* %13, align 4
  %125 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %5, align 8
  %126 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %5, align 8
  %129 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %5, align 8
  %132 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %5, align 8
  %135 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i8* %123, i32 %124, i32 %127, i32 %130, i32 %133, i32 %136)
  br label %138

138:                                              ; preds = %121, %116
  %139 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %140 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %139, i32 0, i32 5
  %141 = load i32 (%struct.ifnet*, i32, i32, %struct.mbuf**, %struct.mbuf**, i32*, i32*)*, i32 (%struct.ifnet*, i32, i32, %struct.mbuf**, %struct.mbuf**, i32*, i32*)** %140, align 8
  %142 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %143 = load i32, i32* %13, align 4
  %144 = call i32 %141(%struct.ifnet* %142, i32 0, i32 %143, %struct.mbuf** %11, %struct.mbuf** %12, i32* %14, i32* %15)
  %145 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %146 = icmp ne %struct.mbuf* %145, null
  br i1 %146, label %147, label %187

147:                                              ; preds = %138
  %148 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %149 = icmp ne %struct.mbuf* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i32, i32* %14, align 4
  %152 = icmp sgt i32 %151, 0
  br label %153

153:                                              ; preds = %150, %147
  %154 = phi i1 [ false, %147 ], [ %152, %150 ]
  %155 = zext i1 %154 to i32
  %156 = call i32 @VERIFY(i32 %155)
  %157 = load i32, i32* @dlil_verbose, align 4
  %158 = icmp sgt i32 %157, 1
  br i1 %158, label %159, label %176

159:                                              ; preds = %153
  %160 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %161 = call i8* @if_name(%struct.ifnet* %160)
  %162 = load i32, i32* %14, align 4
  %163 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %5, align 8
  %164 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %5, align 8
  %167 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %5, align 8
  %170 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %5, align 8
  %173 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 8
  %175 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i8* %161, i32 %162, i32 %165, i32 %168, i32 %171, i32 %174)
  br label %176

176:                                              ; preds = %159, %153
  %177 = load i32, i32* %14, align 4
  %178 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %10, i32 0, i32 0
  store i32 %177, i32* %178, align 4
  %179 = load i32, i32* %15, align 4
  %180 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %10, i32 0, i32 1
  store i32 %179, i32* %180, align 4
  %181 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %182 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %183 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %184 = load i32, i32* @TRUE, align 4
  %185 = load i32, i32* @TRUE, align 4
  %186 = call i32 @ifnet_input_common(%struct.ifnet* %181, %struct.mbuf* %182, %struct.mbuf* %183, %struct.ifnet_stat_increment_param* %10, i32 %184, i32 %185)
  br label %211

187:                                              ; preds = %138
  %188 = load i32, i32* @dlil_verbose, align 4
  %189 = icmp sgt i32 %188, 1
  br i1 %189, label %190, label %206

190:                                              ; preds = %187
  %191 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %192 = call i8* @if_name(%struct.ifnet* %191)
  %193 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %5, align 8
  %194 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %5, align 8
  %197 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %5, align 8
  %200 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %5, align 8
  %203 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 8
  %205 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i8* %192, i32 %195, i32 %198, i32 %201, i32 %204)
  br label %206

206:                                              ; preds = %190, %187
  %207 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %208 = load i32, i32* @FALSE, align 4
  %209 = load i32, i32* @TRUE, align 4
  %210 = call i32 @ifnet_input_common(%struct.ifnet* %207, %struct.mbuf* null, %struct.mbuf* null, %struct.ifnet_stat_increment_param* null, i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %206, %176
  %212 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %213 = call i32 @ifnet_decr_iorefcnt(%struct.ifnet* %212)
  %214 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %215 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %214, i32 0, i32 4
  %216 = call i32 @lck_mtx_lock_spin(i32* %215)
  %217 = load i64, i64* %16, align 8
  %218 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %219 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = icmp eq i64 %217, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %211
  br label %224

223:                                              ; preds = %211
  br label %83

224:                                              ; preds = %222, %93
  %225 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %226 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %225, i32 0, i32 2
  store i64 0, i64* %226, align 8
  %227 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %228 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %227, i32 0, i32 1
  store i32 0, i32* %228, align 8
  %229 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %230 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %229, i32 0, i32 3
  store %struct.timespec* %230, %struct.timespec** %9, align 8
  %231 = load %struct.timespec*, %struct.timespec** %9, align 8
  %232 = getelementptr inbounds %struct.timespec, %struct.timespec* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %224
  %236 = load %struct.timespec*, %struct.timespec** %9, align 8
  %237 = getelementptr inbounds %struct.timespec, %struct.timespec* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %235
  store %struct.timespec* null, %struct.timespec** %9, align 8
  br label %241

241:                                              ; preds = %240, %235, %224
  br label %39
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @if_name(%struct.ifnet*) #2

declare dso_local i32 @bzero(%struct.ifnet_stat_increment_param*, i32) #2

declare dso_local i32 @lck_mtx_lock_spin(i32*) #2

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i32 @msleep(i64*, i32*, i32, i8*, %struct.timespec*) #2

declare dso_local i32 @ifnet_set_poll_cycle(%struct.ifnet*, i32*) #2

declare dso_local i32 @lck_mtx_unlock(i32*) #2

declare dso_local i32 @printf(i8*, i8*, ...) #2

declare dso_local i32 @thread_deallocate(i32) #2

declare dso_local i32 @current_thread(...) #2

declare dso_local i32 @thread_terminate(i32) #2

declare dso_local i32 @ifnet_is_attached(%struct.ifnet*, i32) #2

declare dso_local i32 @MAX(i32, i32) #2

declare dso_local i32 @qlimit(i32*) #2

declare dso_local i32 @ifnet_input_common(%struct.ifnet*, %struct.mbuf*, %struct.mbuf*, %struct.ifnet_stat_increment_param*, i32, i32) #2

declare dso_local i32 @ifnet_decr_iorefcnt(%struct.ifnet*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
