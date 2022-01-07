; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_trace_send.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_trace_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_36__ = type { %struct.TYPE_38__* }
%struct.TYPE_32__ = type { %struct.TYPE_43__*, i32 }
%struct.TYPE_43__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_31__ = type { i64, i64, %struct.TYPE_35__, %struct.TYPE_36__*, i64 }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_38__* }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_44__ = type { %struct.TYPE_37__ }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_42__ = type { i32, i32, i32 }
%struct.TYPE_41__ = type { i64 }
%struct.TYPE_40__ = type { i32 }

@TASK_NULL = common dso_local global %struct.TYPE_38__* null, align 8
@KMSG_TRACE_FLAG_TRACED = common dso_local global i64 0, align 8
@kdebug_enable = common dso_local global i32 0, align 4
@KDEBUG_TRACE = common dso_local global i32 0, align 4
@DBG_MACH_IPC = common dso_local global i32 0, align 4
@MACH_IPC_KMSG_INFO = common dso_local global i32 0, align 4
@MACH_SEND_MSG = common dso_local global i32 0, align 4
@MACH_RCV_MSG = common dso_local global i32 0, align 4
@KMSG_TRACE_FLAG_SNDRCV = common dso_local global i64 0, align 8
@is_iokit_subsystem = common dso_local global %struct.TYPE_33__ zeroinitializer, align 4
@KMSG_TRACE_FLAG_IOKIT = common dso_local global i64 0, align 8
@KMSG_TRACE_FLAG_CHECKIN = common dso_local global i64 0, align 8
@MACH_MSGH_BITS_RAISEIMP = common dso_local global i32 0, align 4
@KMSG_TRACE_FLAG_RAISEIMP = common dso_local global i64 0, align 8
@KMSG_TRACE_FLAG_VOUCHER = common dso_local global i64 0, align 8
@KMSG_TRACE_FLAG_DAEMON_SRC = common dso_local global i64 0, align 8
@KMSG_TRACE_FLAG_APP_SRC = common dso_local global i64 0, align 8
@VM_MAX_ADDRESS = common dso_local global i64 0, align 8
@KMSG_TRACE_FLAG_SND64 = common dso_local global i64 0, align 8
@MACH_PORT_QLIMIT_DEFAULT = common dso_local global i64 0, align 8
@KMSG_TRACE_FLAG_SRC_NDFLTQ = common dso_local global i64 0, align 8
@KMSG_TRACE_FLAG_SRC_SONCE = common dso_local global i64 0, align 8
@KMSG_TRACE_FLAG_ONEWAY = common dso_local global i64 0, align 8
@KMSG_TRACE_FLAG_DTMPOWNER = common dso_local global i64 0, align 8
@IIT_NULL = common dso_local global %struct.TYPE_36__* null, align 8
@MACH_PORT_NULL = common dso_local global i64 0, align 8
@ipc_space_kernel = common dso_local global i64 0, align 8
@KMSG_TRACE_FLAG_DAEMON_DST = common dso_local global i64 0, align 8
@KMSG_TRACE_FLAG_APP_DST = common dso_local global i64 0, align 8
@KMSG_TRACE_FLAG_DST_NDFLTQ = common dso_local global i64 0, align 8
@KMSG_TRACE_FLAG_DSTQFULL = common dso_local global i64 0, align 8
@KMSG_TRACE_FLAG_SEMA = common dso_local global i64 0, align 8
@KMSG_TRACE_FLAG_TIMER = common dso_local global i64 0, align 8
@KMSG_TRACE_FLAG_DST_SONCE = common dso_local global i64 0, align 8
@MACH_MSGH_BITS_COMPLEX = common dso_local global i32 0, align 4
@KMSG_TRACE_FLAG_COMPLEX = common dso_local global i64 0, align 8
@KMSG_TRACE_FLAG_OOLMEM = common dso_local global i64 0, align 8
@MSG_OOL_SIZE_SMALL = common dso_local global i32 0, align 4
@MACH_MSG_PHYSICAL_COPY = common dso_local global i32 0, align 4
@KMSG_TRACE_FLAG_PCPY = common dso_local global i64 0, align 8
@KMSG_TRACE_FLAG_VCPY = common dso_local global i64 0, align 8
@KERNEL_SECURITY_TOKEN = external dso_local global i32, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@KMSG_TRACE_FLAGS_MASK = common dso_local global i64 0, align 8
@KMSG_TRACE_FLAGS_SHIFT = common dso_local global i64 0, align 8
@KMSG_TRACE_PORTS_MASK = common dso_local global i64 0, align 8
@KMSG_TRACE_PORTS_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_kmsg_trace_send(%struct.TYPE_32__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_32__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_38__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_43__*, align 8
  %10 = alloca %struct.TYPE_39__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_30__*, align 8
  %18 = alloca %struct.TYPE_29__*, align 8
  %19 = alloca %struct.TYPE_44__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_42__*, align 8
  %23 = alloca %struct.TYPE_41__*, align 8
  %24 = alloca %struct.TYPE_40__*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %3, align 8
  store i32 %1, i32* %4, align 4
  %25 = load %struct.TYPE_38__*, %struct.TYPE_38__** @TASK_NULL, align 8
  store %struct.TYPE_38__* %25, %struct.TYPE_38__** %5, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %26 = load i64, i64* @KMSG_TRACE_FLAG_TRACED, align 8
  store i64 %26, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %27 = load i32, i32* @kdebug_enable, align 4
  %28 = load i32, i32* @KDEBUG_TRACE, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i64 @__probable(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %510

35:                                               ; preds = %2
  %36 = load i32, i32* @DBG_MACH_IPC, align 4
  %37 = load i32, i32* @MACH_IPC_KMSG_INFO, align 4
  %38 = call i32 @MACHDBG_CODE(i32 %36, i32 %37)
  %39 = call i32 @kdebug_debugid_enabled(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %510

42:                                               ; preds = %35
  %43 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_43__*, %struct.TYPE_43__** %44, align 8
  store %struct.TYPE_43__* %45, %struct.TYPE_43__** %9, align 8
  %46 = load %struct.TYPE_43__*, %struct.TYPE_43__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %49, %struct.TYPE_31__** %6, align 8
  %50 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %51 = call i32 @IPC_PORT_VALID(%struct.TYPE_31__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %42
  br label %510

54:                                               ; preds = %42
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @MACH_SEND_MSG, align 4
  %57 = load i32, i32* @MACH_RCV_MSG, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = load i32, i32* @MACH_SEND_MSG, align 4
  %61 = load i32, i32* @MACH_RCV_MSG, align 4
  %62 = or i32 %60, %61
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = load i64, i64* @KMSG_TRACE_FLAG_SNDRCV, align 8
  %66 = load i64, i64* %13, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* %13, align 8
  br label %68

68:                                               ; preds = %64, %54
  %69 = load %struct.TYPE_43__*, %struct.TYPE_43__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @is_iokit_subsystem, i32 0, i32 0), align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %68
  %75 = load %struct.TYPE_43__*, %struct.TYPE_43__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @is_iokit_subsystem, i32 0, i32 1), align 4
  %79 = add nsw i32 %78, 100
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load i64, i64* @KMSG_TRACE_FLAG_IOKIT, align 8
  %83 = load i64, i64* %13, align 8
  %84 = or i64 %83, %82
  store i64 %84, i64* %13, align 8
  br label %95

85:                                               ; preds = %74, %68
  %86 = load %struct.TYPE_43__*, %struct.TYPE_43__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 1999646836
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i64, i64* @KMSG_TRACE_FLAG_CHECKIN, align 8
  %92 = load i64, i64* %13, align 8
  %93 = or i64 %92, %91
  store i64 %93, i64* %13, align 8
  br label %94

94:                                               ; preds = %90, %85
  br label %95

95:                                               ; preds = %94, %81
  %96 = load %struct.TYPE_43__*, %struct.TYPE_43__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @MACH_MSGH_BITS_RAISEIMP, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load i64, i64* @KMSG_TRACE_FLAG_RAISEIMP, align 8
  %104 = load i64, i64* %13, align 8
  %105 = or i64 %104, %103
  store i64 %105, i64* %13, align 8
  br label %106

106:                                              ; preds = %102, %95
  %107 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @unsafe_convert_port_to_voucher(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load i64, i64* @KMSG_TRACE_FLAG_VOUCHER, align 8
  %114 = load i64, i64* %13, align 8
  %115 = or i64 %114, %113
  store i64 %115, i64* %13, align 8
  br label %116

116:                                              ; preds = %112, %106
  %117 = call %struct.TYPE_38__* (...) @current_task()
  store %struct.TYPE_38__* %117, %struct.TYPE_38__** %5, align 8
  %118 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %119 = call i64 @task_pid(%struct.TYPE_38__* %118)
  store i64 %119, i64* %15, align 8
  %120 = load i64, i64* %15, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %140

122:                                              ; preds = %116
  %123 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %124 = call i64 @task_is_daemon(%struct.TYPE_38__* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i64, i64* @KMSG_TRACE_FLAG_DAEMON_SRC, align 8
  %128 = load i64, i64* %13, align 8
  %129 = or i64 %128, %127
  store i64 %129, i64* %13, align 8
  br label %139

130:                                              ; preds = %122
  %131 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %132 = call i64 @task_is_app(%struct.TYPE_38__* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load i64, i64* @KMSG_TRACE_FLAG_APP_SRC, align 8
  %136 = load i64, i64* %13, align 8
  %137 = or i64 %136, %135
  store i64 %137, i64* %13, align 8
  br label %138

138:                                              ; preds = %134, %130
  br label %139

139:                                              ; preds = %138, %126
  br label %140

140:                                              ; preds = %139, %116
  %141 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_34__*, %struct.TYPE_34__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @VM_MAX_ADDRESS, align 8
  %147 = icmp sgt i64 %145, %146
  %148 = zext i1 %147 to i32
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %140
  %152 = load i64, i64* @KMSG_TRACE_FLAG_SND64, align 8
  %153 = load i64, i64* %13, align 8
  %154 = or i64 %153, %152
  store i64 %154, i64* %13, align 8
  br label %155

155:                                              ; preds = %151, %140
  %156 = load %struct.TYPE_43__*, %struct.TYPE_43__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = inttoptr i64 %158 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %159, %struct.TYPE_31__** %7, align 8
  %160 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %161 = icmp ne %struct.TYPE_31__* %160, null
  br i1 %161, label %162, label %184

162:                                              ; preds = %155
  %163 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @MACH_PORT_QLIMIT_DEFAULT, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %162
  %170 = load i64, i64* @KMSG_TRACE_FLAG_SRC_NDFLTQ, align 8
  %171 = load i64, i64* %13, align 8
  %172 = or i64 %171, %170
  store i64 %172, i64* %13, align 8
  br label %173

173:                                              ; preds = %169, %162
  %174 = load %struct.TYPE_43__*, %struct.TYPE_43__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @MACH_MSGH_BITS_LOCAL(i32 %176)
  switch i32 %177, label %182 [
    i32 129, label %178
  ]

178:                                              ; preds = %173
  %179 = load i64, i64* @KMSG_TRACE_FLAG_SRC_SONCE, align 8
  %180 = load i64, i64* %13, align 8
  %181 = or i64 %180, %179
  store i64 %181, i64* %13, align 8
  br label %183

182:                                              ; preds = %173
  br label %183

183:                                              ; preds = %182, %178
  br label %188

184:                                              ; preds = %155
  %185 = load i64, i64* @KMSG_TRACE_FLAG_ONEWAY, align 8
  %186 = load i64, i64* %13, align 8
  %187 = or i64 %186, %185
  store i64 %187, i64* %13, align 8
  br label %188

188:                                              ; preds = %184, %183
  %189 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %190 = call i32 @ip_lock(%struct.TYPE_31__* %189)
  %191 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %192 = call i32 @ip_active(%struct.TYPE_31__* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %188
  store i64 4294967280, i64* %16, align 8
  br label %274

195:                                              ; preds = %188
  %196 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %196, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %218

200:                                              ; preds = %195
  %201 = load i64, i64* @KMSG_TRACE_FLAG_DTMPOWNER, align 8
  %202 = load i64, i64* %13, align 8
  %203 = or i64 %202, %201
  store i64 %203, i64* %13, align 8
  %204 = load %struct.TYPE_36__*, %struct.TYPE_36__** @IIT_NULL, align 8
  %205 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %205, i32 0, i32 3
  %207 = load %struct.TYPE_36__*, %struct.TYPE_36__** %206, align 8
  %208 = icmp ne %struct.TYPE_36__* %204, %207
  br i1 %208, label %209, label %216

209:                                              ; preds = %200
  %210 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %210, i32 0, i32 3
  %212 = load %struct.TYPE_36__*, %struct.TYPE_36__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_38__*, %struct.TYPE_38__** %213, align 8
  %215 = call i64 @task_pid(%struct.TYPE_38__* %214)
  store i64 %215, i64* %16, align 8
  br label %217

216:                                              ; preds = %200
  store i64 4294967281, i64* %16, align 8
  br label %217

217:                                              ; preds = %216, %209
  br label %273

218:                                              ; preds = %195
  %219 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @MACH_PORT_NULL, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %218
  store i64 4294967282, i64* %16, align 8
  br label %272

225:                                              ; preds = %218
  %226 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @ipc_space_kernel, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %225
  store i64 0, i64* %16, align 8
  br label %271

232:                                              ; preds = %225
  %233 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = inttoptr i64 %235 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %236, %struct.TYPE_30__** %17, align 8
  %237 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %238 = icmp ne %struct.TYPE_30__* %237, null
  br i1 %238, label %239, label %269

239:                                              ; preds = %232
  %240 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %241 = call i64 @is_active(%struct.TYPE_30__* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %269

243:                                              ; preds = %239
  %244 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %245 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_38__*, %struct.TYPE_38__** %245, align 8
  %247 = call i64 @task_pid(%struct.TYPE_38__* %246)
  store i64 %247, i64* %16, align 8
  %248 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %249 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_38__*, %struct.TYPE_38__** %249, align 8
  %251 = call i64 @task_is_daemon(%struct.TYPE_38__* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %243
  %254 = load i64, i64* @KMSG_TRACE_FLAG_DAEMON_DST, align 8
  %255 = load i64, i64* %13, align 8
  %256 = or i64 %255, %254
  store i64 %256, i64* %13, align 8
  br label %268

257:                                              ; preds = %243
  %258 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %259 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_38__*, %struct.TYPE_38__** %259, align 8
  %261 = call i64 @task_is_app(%struct.TYPE_38__* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %257
  %264 = load i64, i64* @KMSG_TRACE_FLAG_APP_DST, align 8
  %265 = load i64, i64* %13, align 8
  %266 = or i64 %265, %264
  store i64 %266, i64* %13, align 8
  br label %267

267:                                              ; preds = %263, %257
  br label %268

268:                                              ; preds = %267, %253
  br label %270

269:                                              ; preds = %239, %232
  store i64 4294967283, i64* %16, align 8
  br label %270

270:                                              ; preds = %269, %268
  br label %271

271:                                              ; preds = %270, %231
  br label %272

272:                                              ; preds = %271, %224
  br label %273

273:                                              ; preds = %272, %217
  br label %274

274:                                              ; preds = %273, %194
  %275 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @MACH_PORT_QLIMIT_DEFAULT, align 8
  %280 = icmp ne i64 %278, %279
  br i1 %280, label %281, label %285

281:                                              ; preds = %274
  %282 = load i64, i64* @KMSG_TRACE_FLAG_DST_NDFLTQ, align 8
  %283 = load i64, i64* %13, align 8
  %284 = or i64 %283, %282
  store i64 %284, i64* %13, align 8
  br label %285

285:                                              ; preds = %281, %274
  %286 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %286, i32 0, i32 2
  %288 = call i64 @imq_full(%struct.TYPE_35__* %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %294

290:                                              ; preds = %285
  %291 = load i64, i64* @KMSG_TRACE_FLAG_DSTQFULL, align 8
  %292 = load i64, i64* %13, align 8
  %293 = or i64 %292, %291
  store i64 %293, i64* %13, align 8
  br label %294

294:                                              ; preds = %290, %285
  %295 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %296 = call i32 @ip_kotype(%struct.TYPE_31__* %295)
  store i32 %296, i32* %11, align 4
  %297 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %298 = call i32 @ip_unlock(%struct.TYPE_31__* %297)
  %299 = load i32, i32* %11, align 4
  switch i32 %299, label %312 [
    i32 135, label %300
    i32 134, label %304
    i32 140, label %304
    i32 136, label %308
    i32 139, label %308
    i32 137, label %308
    i32 138, label %308
  ]

300:                                              ; preds = %294
  %301 = load i64, i64* @KMSG_TRACE_FLAG_SEMA, align 8
  %302 = load i64, i64* %13, align 8
  %303 = or i64 %302, %301
  store i64 %303, i64* %13, align 8
  br label %313

304:                                              ; preds = %294, %294
  %305 = load i64, i64* @KMSG_TRACE_FLAG_TIMER, align 8
  %306 = load i64, i64* %13, align 8
  %307 = or i64 %306, %305
  store i64 %307, i64* %13, align 8
  br label %313

308:                                              ; preds = %294, %294, %294, %294
  %309 = load i64, i64* @KMSG_TRACE_FLAG_IOKIT, align 8
  %310 = load i64, i64* %13, align 8
  %311 = or i64 %310, %309
  store i64 %311, i64* %13, align 8
  br label %313

312:                                              ; preds = %294
  br label %313

313:                                              ; preds = %312, %308, %304, %300
  %314 = load %struct.TYPE_43__*, %struct.TYPE_43__** %9, align 8
  %315 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @MACH_MSGH_BITS_REMOTE(i32 %316)
  switch i32 %317, label %322 [
    i32 128, label %318
  ]

318:                                              ; preds = %313
  %319 = load i64, i64* @KMSG_TRACE_FLAG_DST_SONCE, align 8
  %320 = load i64, i64* %13, align 8
  %321 = or i64 %320, %319
  store i64 %321, i64* %13, align 8
  br label %323

322:                                              ; preds = %313
  br label %323

323:                                              ; preds = %322, %318
  %324 = load %struct.TYPE_43__*, %struct.TYPE_43__** %9, align 8
  %325 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %324, i32 0, i32 2
  %326 = load i64, i64* %325, align 8
  %327 = sub i64 %326, 32
  store i64 %327, i64* %12, align 8
  %328 = load %struct.TYPE_43__*, %struct.TYPE_43__** %9, align 8
  %329 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @MACH_MSGH_BITS_COMPLEX, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %460

334:                                              ; preds = %323
  %335 = load i64, i64* @KMSG_TRACE_FLAG_COMPLEX, align 8
  %336 = load i64, i64* %13, align 8
  %337 = or i64 %336, %335
  store i64 %337, i64* %13, align 8
  %338 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %339 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %338, i32 0, i32 0
  %340 = load %struct.TYPE_43__*, %struct.TYPE_43__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %340, i64 1
  %342 = bitcast %struct.TYPE_43__* %341 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %342, %struct.TYPE_29__** %18, align 8
  %343 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %344 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = trunc i64 %345 to i32
  store i32 %346, i32* %20, align 4
  %347 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %348 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %347, i64 1
  %349 = bitcast %struct.TYPE_29__* %348 to %struct.TYPE_44__*
  store %struct.TYPE_44__* %349, %struct.TYPE_44__** %19, align 8
  %350 = load i32, i32* %8, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %358, label %352

352:                                              ; preds = %334
  %353 = load i32, i32* %20, align 4
  %354 = mul nsw i32 %353, 12
  %355 = sext i32 %354 to i64
  %356 = load i64, i64* %12, align 8
  %357 = sub nsw i64 %356, %355
  store i64 %357, i64* %12, align 8
  br label %358

358:                                              ; preds = %352, %334
  store i32 0, i32* %21, align 4
  br label %359

359:                                              ; preds = %456, %358
  %360 = load i32, i32* %21, align 4
  %361 = load i32, i32* %20, align 4
  %362 = icmp slt i32 %360, %361
  br i1 %362, label %363, label %459

363:                                              ; preds = %359
  %364 = load %struct.TYPE_44__*, %struct.TYPE_44__** %19, align 8
  %365 = load i32, i32* %21, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %364, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  switch i32 %370, label %454 [
    i32 130, label %371
    i32 131, label %380
    i32 133, label %380
    i32 132, label %437
  ]

371:                                              ; preds = %363
  %372 = load i64, i64* %14, align 8
  %373 = add nsw i64 %372, 1
  store i64 %373, i64* %14, align 8
  %374 = load i32, i32* %8, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %379

376:                                              ; preds = %371
  %377 = load i64, i64* %12, align 8
  %378 = sub nsw i64 %377, 12
  store i64 %378, i64* %12, align 8
  br label %379

379:                                              ; preds = %376, %371
  br label %455

380:                                              ; preds = %363, %363
  %381 = load %struct.TYPE_44__*, %struct.TYPE_44__** %19, align 8
  %382 = load i32, i32* %21, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %381, i64 %383
  %385 = bitcast %struct.TYPE_44__* %384 to %struct.TYPE_42__*
  store %struct.TYPE_42__* %385, %struct.TYPE_42__** %22, align 8
  %386 = load i64, i64* @KMSG_TRACE_FLAG_OOLMEM, align 8
  %387 = load i64, i64* %13, align 8
  %388 = or i64 %387, %386
  store i64 %388, i64* %13, align 8
  %389 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %390 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = sext i32 %391 to i64
  %393 = load i64, i64* %12, align 8
  %394 = add nsw i64 %393, %392
  store i64 %394, i64* %12, align 8
  %395 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %396 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* @MSG_OOL_SIZE_SMALL, align 4
  %399 = icmp sge i32 %397, %398
  br i1 %399, label %400, label %415

400:                                              ; preds = %380
  %401 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %402 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 4
  %404 = load i32, i32* @MACH_MSG_PHYSICAL_COPY, align 4
  %405 = icmp eq i32 %403, %404
  br i1 %405, label %406, label %415

406:                                              ; preds = %400
  %407 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %408 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %415, label %411

411:                                              ; preds = %406
  %412 = load i64, i64* @KMSG_TRACE_FLAG_PCPY, align 8
  %413 = load i64, i64* %13, align 8
  %414 = or i64 %413, %412
  store i64 %414, i64* %13, align 8
  br label %430

415:                                              ; preds = %406, %400, %380
  %416 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %417 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 4
  %419 = load i32, i32* @MSG_OOL_SIZE_SMALL, align 4
  %420 = icmp sle i32 %418, %419
  br i1 %420, label %421, label %425

421:                                              ; preds = %415
  %422 = load i64, i64* @KMSG_TRACE_FLAG_PCPY, align 8
  %423 = load i64, i64* %13, align 8
  %424 = or i64 %423, %422
  store i64 %424, i64* %13, align 8
  br label %429

425:                                              ; preds = %415
  %426 = load i64, i64* @KMSG_TRACE_FLAG_VCPY, align 8
  %427 = load i64, i64* %13, align 8
  %428 = or i64 %427, %426
  store i64 %428, i64* %13, align 8
  br label %429

429:                                              ; preds = %425, %421
  br label %430

430:                                              ; preds = %429, %411
  %431 = load i32, i32* %8, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %436

433:                                              ; preds = %430
  %434 = load i64, i64* %12, align 8
  %435 = sub nsw i64 %434, 16
  store i64 %435, i64* %12, align 8
  br label %436

436:                                              ; preds = %433, %430
  br label %455

437:                                              ; preds = %363
  %438 = load %struct.TYPE_44__*, %struct.TYPE_44__** %19, align 8
  %439 = load i32, i32* %21, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %438, i64 %440
  %442 = bitcast %struct.TYPE_44__* %441 to %struct.TYPE_41__*
  store %struct.TYPE_41__* %442, %struct.TYPE_41__** %23, align 8
  %443 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %444 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %443, i32 0, i32 0
  %445 = load i64, i64* %444, align 8
  %446 = load i64, i64* %14, align 8
  %447 = add nsw i64 %446, %445
  store i64 %447, i64* %14, align 8
  %448 = load i32, i32* %8, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %453

450:                                              ; preds = %437
  %451 = load i64, i64* %12, align 8
  %452 = sub nsw i64 %451, 16
  store i64 %452, i64* %12, align 8
  br label %453

453:                                              ; preds = %450, %437
  br label %455

454:                                              ; preds = %363
  br label %455

455:                                              ; preds = %454, %453, %436, %379
  br label %456

456:                                              ; preds = %455
  %457 = load i32, i32* %21, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %21, align 4
  br label %359

459:                                              ; preds = %359
  br label %460

460:                                              ; preds = %459, %323
  %461 = load %struct.TYPE_43__*, %struct.TYPE_43__** %9, align 8
  %462 = ptrtoint %struct.TYPE_43__* %461 to i64
  %463 = load %struct.TYPE_43__*, %struct.TYPE_43__** %9, align 8
  %464 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %463, i32 0, i32 2
  %465 = load i64, i64* %464, align 8
  %466 = call i64 @round_msg(i64 %465)
  %467 = add nsw i64 %462, %466
  %468 = inttoptr i64 %467 to %struct.TYPE_39__*
  store %struct.TYPE_39__* %468, %struct.TYPE_39__** %10, align 8
  %469 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %470 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 4
  %472 = sext i32 %471 to i64
  %473 = icmp ule i64 %472, 4
  br i1 %473, label %474, label %489

474:                                              ; preds = %460
  %475 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %476 = bitcast %struct.TYPE_39__* %475 to %struct.TYPE_40__*
  store %struct.TYPE_40__* %476, %struct.TYPE_40__** %24, align 8
  %477 = load %struct.TYPE_40__*, %struct.TYPE_40__** %24, align 8
  %478 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %477, i32 0, i32 0
  %479 = call i64 @memcmp(i32* %478, i32* @KERNEL_SECURITY_TOKEN, i32 4)
  %480 = icmp eq i64 %479, 0
  br i1 %480, label %481, label %488

481:                                              ; preds = %474
  store i64 0, i64* %15, align 8
  %482 = load i64, i64* @KMSG_TRACE_FLAG_APP_SRC, align 8
  %483 = load i64, i64* @KMSG_TRACE_FLAG_DAEMON_SRC, align 8
  %484 = or i64 %482, %483
  %485 = xor i64 %484, -1
  %486 = load i64, i64* %13, align 8
  %487 = and i64 %486, %485
  store i64 %487, i64* %13, align 8
  br label %488

488:                                              ; preds = %481, %474
  br label %489

489:                                              ; preds = %488, %460
  %490 = load i32, i32* @DBG_MACH_IPC, align 4
  %491 = load i32, i32* @MACH_IPC_KMSG_INFO, align 4
  %492 = call i32 @MACHDBG_CODE(i32 %490, i32 %491)
  %493 = load i32, i32* @DBG_FUNC_END, align 4
  %494 = or i32 %492, %493
  %495 = load i64, i64* %15, align 8
  %496 = load i64, i64* %16, align 8
  %497 = load i64, i64* %12, align 8
  %498 = load i64, i64* %13, align 8
  %499 = load i64, i64* @KMSG_TRACE_FLAGS_MASK, align 8
  %500 = and i64 %498, %499
  %501 = load i64, i64* @KMSG_TRACE_FLAGS_SHIFT, align 8
  %502 = shl i64 %500, %501
  %503 = load i64, i64* %14, align 8
  %504 = load i64, i64* @KMSG_TRACE_PORTS_MASK, align 8
  %505 = and i64 %503, %504
  %506 = load i64, i64* @KMSG_TRACE_PORTS_SHIFT, align 8
  %507 = shl i64 %505, %506
  %508 = or i64 %502, %507
  %509 = call i32 @KDBG(i32 %494, i64 %495, i64 %496, i64 %497, i64 %508)
  br label %510

510:                                              ; preds = %489, %53, %41, %34
  ret void
}

declare dso_local i64 @__probable(i32) #1

declare dso_local i32 @kdebug_debugid_enabled(i32) #1

declare dso_local i32 @MACHDBG_CODE(i32, i32) #1

declare dso_local i32 @IPC_PORT_VALID(%struct.TYPE_31__*) #1

declare dso_local i64 @unsafe_convert_port_to_voucher(i32) #1

declare dso_local %struct.TYPE_38__* @current_task(...) #1

declare dso_local i64 @task_pid(%struct.TYPE_38__*) #1

declare dso_local i64 @task_is_daemon(%struct.TYPE_38__*) #1

declare dso_local i64 @task_is_app(%struct.TYPE_38__*) #1

declare dso_local i32 @MACH_MSGH_BITS_LOCAL(i32) #1

declare dso_local i32 @ip_lock(%struct.TYPE_31__*) #1

declare dso_local i32 @ip_active(%struct.TYPE_31__*) #1

declare dso_local i64 @is_active(%struct.TYPE_30__*) #1

declare dso_local i64 @imq_full(%struct.TYPE_35__*) #1

declare dso_local i32 @ip_kotype(%struct.TYPE_31__*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_31__*) #1

declare dso_local i32 @MACH_MSGH_BITS_REMOTE(i32) #1

declare dso_local i64 @round_msg(i64) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @KDBG(i32, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
