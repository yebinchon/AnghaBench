; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_data_service_ctl_q.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_data_service_ctl_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.socket = type { i32 }
%struct.cfil_info = type { i32, %struct.cfil_entry* }
%struct.cfil_entry = type { i32, %struct.cfe_buf, %struct.cfe_buf }
%struct.cfe_buf = type { i32, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.mbuf = type opaque

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"so %llx kcunit %u outgoing %d\00", align 1
@CFEF_SENT_SOCK_ATTACHED = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@CFEF_DATA_START = common dso_local global i32 0, align 4
@cfil_stats = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"%llx first %llu peeked %llu pass %llu peek %lludatalen %u copylen %u\00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"%llx first %llu peeked %llu pass %llu peek %lludatalen %u copylen %u copyoffset %u\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"cfil_service_pending_queue() error %d\00", align 1
@CFIF_SHUT_WR = common dso_local global i32 0, align 4
@CFEF_SENT_DISCONNECT_OUT = common dso_local global i32 0, align 4
@CFIF_SHUT_RD = common dso_local global i32 0, align 4
@CFEF_SENT_DISCONNECT_IN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"first %llu peeked %llu pass %llu peek %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.cfil_info*, i32, i32)* @cfil_data_service_ctl_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfil_data_service_ctl_q(%struct.socket* %0, %struct.cfil_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.cfil_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.cfil_entry*, align 8
  %17 = alloca %struct.cfe_buf*, align 8
  %18 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.cfil_info* %1, %struct.cfil_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store %struct.mbuf* null, %struct.mbuf** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  %19 = load %struct.cfil_info*, %struct.cfil_info** %7, align 8
  %20 = icmp eq %struct.cfil_info* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %430

22:                                               ; preds = %4
  %23 = load i32, i32* @LOG_INFO, align 4
  %24 = load %struct.socket*, %struct.socket** %6, align 8
  %25 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %24)
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 (i32, i8*, i32, ...) @CFIL_LOG(i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i32 %28)
  %30 = load %struct.socket*, %struct.socket** %6, align 8
  %31 = call i32 @socket_lock_assert_owned(%struct.socket* %30)
  %32 = load %struct.cfil_info*, %struct.cfil_info** %7, align 8
  %33 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %32, i32 0, i32 1
  %34 = load %struct.cfil_entry*, %struct.cfil_entry** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %34, i64 %37
  store %struct.cfil_entry* %38, %struct.cfil_entry** %16, align 8
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %22
  %42 = load %struct.cfil_entry*, %struct.cfil_entry** %16, align 8
  %43 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %42, i32 0, i32 2
  store %struct.cfe_buf* %43, %struct.cfe_buf** %17, align 8
  br label %47

44:                                               ; preds = %22
  %45 = load %struct.cfil_entry*, %struct.cfil_entry** %16, align 8
  %46 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %45, i32 0, i32 1
  store %struct.cfe_buf* %46, %struct.cfe_buf** %17, align 8
  br label %47

47:                                               ; preds = %44, %41
  %48 = load %struct.cfil_entry*, %struct.cfil_entry** %16, align 8
  %49 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CFEF_SENT_SOCK_ATTACHED, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %47
  %55 = load %struct.socket*, %struct.socket** %6, align 8
  %56 = load %struct.cfil_info*, %struct.cfil_info** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @cfil_dispatch_attach_event(%struct.socket* %55, %struct.cfil_info* %56, i32 %57)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* @ENOBUFS, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @ENOMEM, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %61
  store i64 0, i64* %10, align 8
  br label %70

70:                                               ; preds = %69, %65
  br label %410

71:                                               ; preds = %54
  br label %82

72:                                               ; preds = %47
  %73 = load %struct.cfil_entry*, %struct.cfil_entry** %16, align 8
  %74 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @CFEF_DATA_START, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cfil_stats, i32 0, i32 4))
  br label %410

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %71
  br label %83

83:                                               ; preds = %177, %82
  %84 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %85 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %84, i32 0, i32 3
  %86 = call %struct.socket* @cfil_queue_first(%struct.TYPE_6__* %85)
  %87 = bitcast %struct.socket* %86 to %struct.mbuf*
  store %struct.mbuf* %87, %struct.mbuf** %11, align 8
  %88 = icmp ne %struct.mbuf* %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %83
  %90 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %91 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %95 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ult i32 %93, %96
  br label %98

98:                                               ; preds = %89, %83
  %99 = phi i1 [ false, %83 ], [ %97, %89 ]
  br i1 %99, label %100, label %178

100:                                              ; preds = %98
  %101 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %102 = bitcast %struct.mbuf* %101 to %struct.socket*
  %103 = call i32 @cfil_data_length(%struct.socket* %102, i32* null, i32* null)
  store i32 %103, i32* %13, align 4
  %104 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  store %struct.mbuf* %104, %struct.mbuf** %12, align 8
  %105 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %106 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %13, align 4
  %110 = add i32 %108, %109
  %111 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %112 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ule i32 %110, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %100
  %116 = load i32, i32* %13, align 4
  store i32 %116, i32* %14, align 4
  br label %126

117:                                              ; preds = %100
  %118 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %119 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %122 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sub i32 %120, %124
  store i32 %125, i32* %14, align 4
  br label %126

126:                                              ; preds = %117, %115
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp ule i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @VERIFY(i32 %130)
  %132 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %133 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %14, align 4
  %137 = add i32 %135, %136
  %138 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %139 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp ugt i32 %137, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %126
  %143 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %144 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %14, align 4
  %148 = add i32 %146, %147
  %149 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %150 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %142, %126
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* %13, align 4
  %154 = icmp ult i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %178

156:                                              ; preds = %151
  %157 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %158 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %157, i32 0, i32 3
  %159 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %160 = bitcast %struct.mbuf* %159 to %struct.socket*
  %161 = load i32, i32* %13, align 4
  %162 = call i32 @cfil_queue_remove(%struct.TYPE_6__* %158, %struct.socket* %160, i32 %161)
  %163 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %164 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %163, i32 0, i32 4
  %165 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %166 = bitcast %struct.mbuf* %165 to %struct.socket*
  %167 = load i32, i32* %13, align 4
  %168 = call i32 @cfil_queue_enqueue(i32* %164, %struct.socket* %166, i32 %167)
  %169 = load i32, i32* %9, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %156
  %172 = load i32, i32* %13, align 4
  %173 = call i32 @OSAddAtomic64(i32 %172, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cfil_stats, i32 0, i32 3))
  br label %177

174:                                              ; preds = %156
  %175 = load i32, i32* %13, align 4
  %176 = call i32 @OSAddAtomic64(i32 %175, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cfil_stats, i32 0, i32 2))
  br label %177

177:                                              ; preds = %174, %171
  br label %83

178:                                              ; preds = %155, %98
  %179 = load %struct.cfil_info*, %struct.cfil_info** %7, align 8
  %180 = call i32 @CFIL_INFO_VERIFY(%struct.cfil_info* %179)
  %181 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %182 = icmp ne %struct.mbuf* %181, null
  br i1 %182, label %183, label %205

183:                                              ; preds = %178
  %184 = load i32, i32* @LOG_DEBUG, align 4
  %185 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %186 = bitcast %struct.mbuf* %185 to %struct.socket*
  %187 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %186)
  %188 = trunc i64 %187 to i32
  %189 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %190 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %194 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %197 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %200 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %13, align 4
  %203 = load i32, i32* %14, align 4
  %204 = call i32 (i32, i8*, i32, ...) @CFIL_LOG(i32 %184, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %188, i32 %192, i32 %195, i32 %198, i32 %201, i32 %202, i32 %203)
  br label %205

205:                                              ; preds = %183, %178
  store %struct.mbuf* null, %struct.mbuf** %12, align 8
  %206 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %207 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %206, i32 0, i32 3
  %208 = call %struct.socket* @cfil_queue_first(%struct.TYPE_6__* %207)
  %209 = bitcast %struct.socket* %208 to %struct.mbuf*
  store %struct.mbuf* %209, %struct.mbuf** %11, align 8
  %210 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %211 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %18, align 4
  br label %214

214:                                              ; preds = %313, %205
  %215 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %216 = icmp ne %struct.mbuf* %215, null
  br i1 %216, label %217, label %223

217:                                              ; preds = %214
  %218 = load i32, i32* %18, align 4
  %219 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %220 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = icmp ult i32 %218, %221
  br label %223

223:                                              ; preds = %217, %214
  %224 = phi i1 [ false, %214 ], [ %222, %217 ]
  br i1 %224, label %225, label %323

225:                                              ; preds = %223
  %226 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %227 = bitcast %struct.mbuf* %226 to %struct.socket*
  %228 = call i32 @cfil_data_length(%struct.socket* %227, i32* null, i32* null)
  store i32 %228, i32* %13, align 4
  %229 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  store %struct.mbuf* %229, %struct.mbuf** %12, align 8
  %230 = load i32, i32* %18, align 4
  %231 = load i32, i32* %13, align 4
  %232 = add i32 %230, %231
  %233 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %234 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = icmp ule i32 %232, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %225
  br label %313

238:                                              ; preds = %225
  %239 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %240 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %18, align 4
  %243 = sub i32 %241, %242
  store i32 %243, i32* %15, align 4
  %244 = load i32, i32* %15, align 4
  %245 = load i32, i32* %13, align 4
  %246 = icmp ult i32 %244, %245
  %247 = zext i1 %246 to i32
  %248 = call i32 @VERIFY(i32 %247)
  %249 = load i32, i32* %13, align 4
  %250 = load i32, i32* %15, align 4
  %251 = sub i32 %249, %250
  store i32 %251, i32* %14, align 4
  %252 = load i32, i32* %14, align 4
  %253 = load i32, i32* %13, align 4
  %254 = icmp ule i32 %252, %253
  %255 = zext i1 %254 to i32
  %256 = call i32 @VERIFY(i32 %255)
  %257 = load i32, i32* %18, align 4
  %258 = load i32, i32* %15, align 4
  %259 = add i32 %257, %258
  %260 = load i32, i32* %14, align 4
  %261 = add i32 %259, %260
  %262 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %263 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = icmp ugt i32 %261, %264
  br i1 %265, label %266, label %274

266:                                              ; preds = %238
  %267 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %268 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %18, align 4
  %271 = load i32, i32* %15, align 4
  %272 = add i32 %270, %271
  %273 = sub i32 %269, %272
  store i32 %273, i32* %14, align 4
  br label %274

274:                                              ; preds = %266, %238
  %275 = load i32, i32* %14, align 4
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %274
  br label %323

278:                                              ; preds = %274
  %279 = load %struct.socket*, %struct.socket** %6, align 8
  %280 = load %struct.cfil_info*, %struct.cfil_info** %7, align 8
  %281 = load i32, i32* %8, align 4
  %282 = load i32, i32* %9, align 4
  %283 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %284 = bitcast %struct.mbuf* %283 to %struct.socket*
  %285 = load i32, i32* %15, align 4
  %286 = load i32, i32* %14, align 4
  %287 = call i64 @cfil_dispatch_data_event(%struct.socket* %279, %struct.cfil_info* %280, i32 %281, i32 %282, %struct.socket* %284, i32 %285, i32 %286)
  store i64 %287, i64* %10, align 8
  %288 = load i64, i64* %10, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %278
  br label %323

291:                                              ; preds = %278
  %292 = load i32, i32* %14, align 4
  %293 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %294 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = add i32 %295, %292
  store i32 %296, i32* %294, align 4
  %297 = load i32, i32* %9, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %291
  %300 = load i32, i32* %14, align 4
  %301 = call i32 @OSAddAtomic64(i32 %300, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cfil_stats, i32 0, i32 1))
  br label %305

302:                                              ; preds = %291
  %303 = load i32, i32* %14, align 4
  %304 = call i32 @OSAddAtomic64(i32 %303, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cfil_stats, i32 0, i32 0))
  br label %305

305:                                              ; preds = %302, %299
  %306 = load i32, i32* %14, align 4
  %307 = load i32, i32* %15, align 4
  %308 = add i32 %306, %307
  %309 = load i32, i32* %13, align 4
  %310 = icmp ult i32 %308, %309
  br i1 %310, label %311, label %312

311:                                              ; preds = %305
  br label %323

312:                                              ; preds = %305
  br label %313

313:                                              ; preds = %312, %237
  %314 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %315 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %314, i32 0, i32 3
  %316 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %317 = bitcast %struct.mbuf* %316 to %struct.socket*
  %318 = call %struct.socket* @cfil_queue_next(%struct.TYPE_6__* %315, %struct.socket* %317)
  %319 = bitcast %struct.socket* %318 to %struct.mbuf*
  store %struct.mbuf* %319, %struct.mbuf** %11, align 8
  %320 = load i32, i32* %13, align 4
  %321 = load i32, i32* %18, align 4
  %322 = add i32 %321, %320
  store i32 %322, i32* %18, align 4
  br label %214

323:                                              ; preds = %311, %290, %277, %223
  %324 = load %struct.cfil_info*, %struct.cfil_info** %7, align 8
  %325 = call i32 @CFIL_INFO_VERIFY(%struct.cfil_info* %324)
  %326 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %327 = icmp ne %struct.mbuf* %326, null
  br i1 %327, label %328, label %348

328:                                              ; preds = %323
  %329 = load i32, i32* @LOG_DEBUG, align 4
  %330 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %331 = bitcast %struct.mbuf* %330 to %struct.socket*
  %332 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %331)
  %333 = trunc i64 %332 to i32
  %334 = load i32, i32* %18, align 4
  %335 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %336 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %339 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %342 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* %13, align 4
  %345 = load i32, i32* %14, align 4
  %346 = load i32, i32* %15, align 4
  %347 = call i32 (i32, i8*, i32, ...) @CFIL_LOG(i32 %329, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i32 %333, i32 %334, i32 %337, i32 %340, i32 %343, i32 %344, i32 %345, i32 %346)
  br label %348

348:                                              ; preds = %328, %323
  %349 = load %struct.socket*, %struct.socket** %6, align 8
  %350 = load %struct.cfil_info*, %struct.cfil_info** %7, align 8
  %351 = load i32, i32* %8, align 4
  %352 = load i32, i32* %9, align 4
  %353 = call i64 @cfil_service_pending_queue(%struct.socket* %349, %struct.cfil_info* %350, i32 %351, i32 %352)
  store i64 %353, i64* %10, align 8
  %354 = load i64, i64* %10, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %361

356:                                              ; preds = %348
  %357 = load i32, i32* @LOG_ERR, align 4
  %358 = load i64, i64* %10, align 8
  %359 = trunc i64 %358 to i32
  %360 = call i32 (i32, i8*, i32, ...) @CFIL_LOG(i32 %357, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %359)
  br label %410

361:                                              ; preds = %348
  %362 = load %struct.cfil_info*, %struct.cfil_info** %7, align 8
  %363 = icmp eq %struct.cfil_info* %362, null
  br i1 %363, label %364, label %365

364:                                              ; preds = %361
  br label %410

365:                                              ; preds = %361
  %366 = load i32, i32* %9, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %388

368:                                              ; preds = %365
  %369 = load %struct.cfil_info*, %struct.cfil_info** %7, align 8
  %370 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = load i32, i32* @CFIF_SHUT_WR, align 4
  %373 = and i32 %371, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %387

375:                                              ; preds = %368
  %376 = load %struct.cfil_entry*, %struct.cfil_entry** %16, align 8
  %377 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* @CFEF_SENT_DISCONNECT_OUT, align 4
  %380 = and i32 %378, %379
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %387, label %382

382:                                              ; preds = %375
  %383 = load %struct.socket*, %struct.socket** %6, align 8
  %384 = load %struct.cfil_info*, %struct.cfil_info** %7, align 8
  %385 = load i32, i32* %8, align 4
  %386 = call i32 @cfil_dispatch_disconnect_event(%struct.socket* %383, %struct.cfil_info* %384, i32 %385, i32 1)
  br label %387

387:                                              ; preds = %382, %375, %368
  br label %408

388:                                              ; preds = %365
  %389 = load %struct.cfil_info*, %struct.cfil_info** %7, align 8
  %390 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = load i32, i32* @CFIF_SHUT_RD, align 4
  %393 = and i32 %391, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %407

395:                                              ; preds = %388
  %396 = load %struct.cfil_entry*, %struct.cfil_entry** %16, align 8
  %397 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = load i32, i32* @CFEF_SENT_DISCONNECT_IN, align 4
  %400 = and i32 %398, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %407, label %402

402:                                              ; preds = %395
  %403 = load %struct.socket*, %struct.socket** %6, align 8
  %404 = load %struct.cfil_info*, %struct.cfil_info** %7, align 8
  %405 = load i32, i32* %8, align 4
  %406 = call i32 @cfil_dispatch_disconnect_event(%struct.socket* %403, %struct.cfil_info* %404, i32 %405, i32 0)
  br label %407

407:                                              ; preds = %402, %395, %388
  br label %408

408:                                              ; preds = %407, %387
  br label %409

409:                                              ; preds = %408
  br label %410

410:                                              ; preds = %409, %364, %356, %79, %70
  %411 = load i32, i32* @LOG_DEBUG, align 4
  %412 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %413 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %412, i32 0, i32 3
  %414 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 4
  %416 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %417 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %420 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.cfe_buf*, %struct.cfe_buf** %17, align 8
  %423 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %422, i32 0, i32 2
  %424 = load i32, i32* %423, align 4
  %425 = call i32 (i32, i8*, i32, ...) @CFIL_LOG(i32 %411, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %415, i32 %418, i32 %421, i32 %424)
  %426 = load %struct.cfil_info*, %struct.cfil_info** %7, align 8
  %427 = call i32 @CFIL_INFO_VERIFY(%struct.cfil_info* %426)
  %428 = load i64, i64* %10, align 8
  %429 = trunc i64 %428 to i32
  store i32 %429, i32* %5, align 4
  br label %430

430:                                              ; preds = %410, %21
  %431 = load i32, i32* %5, align 4
  ret i32 %431
}

declare dso_local i32 @CFIL_LOG(i32, i8*, i32, ...) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.socket*) #1

declare dso_local i32 @socket_lock_assert_owned(%struct.socket*) #1

declare dso_local i64 @cfil_dispatch_attach_event(%struct.socket*, %struct.cfil_info*, i32) #1

declare dso_local i32 @OSIncrementAtomic(i32*) #1

declare dso_local %struct.socket* @cfil_queue_first(%struct.TYPE_6__*) #1

declare dso_local i32 @cfil_data_length(%struct.socket*, i32*, i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @cfil_queue_remove(%struct.TYPE_6__*, %struct.socket*, i32) #1

declare dso_local i32 @cfil_queue_enqueue(i32*, %struct.socket*, i32) #1

declare dso_local i32 @OSAddAtomic64(i32, i32*) #1

declare dso_local i32 @CFIL_INFO_VERIFY(%struct.cfil_info*) #1

declare dso_local i64 @cfil_dispatch_data_event(%struct.socket*, %struct.cfil_info*, i32, i32, %struct.socket*, i32, i32) #1

declare dso_local %struct.socket* @cfil_queue_next(%struct.TYPE_6__*, %struct.socket*) #1

declare dso_local i64 @cfil_service_pending_queue(%struct.socket*, %struct.cfil_info*, i32, i32) #1

declare dso_local i32 @cfil_dispatch_disconnect_event(%struct.socket*, %struct.cfil_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
