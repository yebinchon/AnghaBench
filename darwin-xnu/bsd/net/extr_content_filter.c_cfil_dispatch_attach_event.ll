; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_dispatch_attach_event.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_dispatch_attach_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.content_filter = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.socket = type { i32, i32, i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.cfil_info = type { %struct.TYPE_12__, %struct.cfil_entry* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.cfil_entry = type { i32, %struct.TYPE_13__, %struct.content_filter*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.cfil_msg_sock_attached = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64, i32, i32, i32 }

@cfil_lck_rw = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@MAX_CONTENT_FILTER = common dso_local global i32 0, align 4
@content_filters = common dso_local global %struct.content_filter** null, align 8
@CFEF_SENT_SOCK_ATTACHED = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"so %llx filter_control_unit %u kcunit %u\00", align 1
@CFF_FLOW_CONTROLLED = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i64 0, align 8
@CFM_VERSION_CURRENT = common dso_local global i32 0, align 4
@CFM_TYPE_EVENT = common dso_local global i32 0, align 4
@CFM_OP_SOCKET_ATTACHED = common dso_local global i32 0, align 4
@SOF_DELEGATED = common dso_local global i32 0, align 4
@CTL_DATA_EOR = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"ctl_enqueuedata() failed: %d\00", align 1
@cfil_stats = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@CFEF_FLOW_CONTROLLED = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.cfil_info*, i32)* @cfil_dispatch_attach_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfil_dispatch_attach_event(%struct.socket* %0, %struct.cfil_info* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.cfil_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.cfil_entry*, align 8
  %9 = alloca %struct.cfil_msg_sock_attached, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.content_filter*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.cfil_info* %1, %struct.cfil_info** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store %struct.cfil_entry* null, %struct.cfil_entry** %8, align 8
  store %struct.content_filter* null, %struct.content_filter** %11, align 8
  %12 = load %struct.socket*, %struct.socket** %4, align 8
  %13 = call i32 @socket_lock_assert_owned(%struct.socket* %12)
  %14 = call i32 @cfil_rw_lock_shared(i32* @cfil_lck_rw)
  %15 = load %struct.socket*, %struct.socket** %4, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 5
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = icmp eq %struct.TYPE_10__* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load %struct.socket*, %struct.socket** %4, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 5
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = icmp eq %struct.TYPE_9__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %19, %3
  %27 = load i64, i64* @EINVAL, align 8
  store i64 %27, i64* %7, align 8
  br label %229

28:                                               ; preds = %19
  store i32 1, i32* %10, align 4
  br label %29

29:                                               ; preds = %71, %28
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @MAX_CONTENT_FILTER, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %74

33:                                               ; preds = %29
  %34 = load %struct.content_filter**, %struct.content_filter*** @content_filters, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.content_filter*, %struct.content_filter** %34, i64 %37
  %39 = load %struct.content_filter*, %struct.content_filter** %38, align 8
  store %struct.content_filter* %39, %struct.content_filter** %11, align 8
  %40 = load %struct.content_filter*, %struct.content_filter** %11, align 8
  %41 = icmp eq %struct.content_filter* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %71

43:                                               ; preds = %33
  %44 = load %struct.content_filter*, %struct.content_filter** %11, align 8
  %45 = getelementptr inbounds %struct.content_filter, %struct.content_filter* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %71

50:                                               ; preds = %43
  %51 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %52 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %51, i32 0, i32 1
  %53 = load %struct.cfil_entry*, %struct.cfil_entry** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %53, i64 %56
  store %struct.cfil_entry* %57, %struct.cfil_entry** %8, align 8
  %58 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %59 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %58, i32 0, i32 2
  %60 = load %struct.content_filter*, %struct.content_filter** %59, align 8
  %61 = icmp eq %struct.content_filter* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %71

63:                                               ; preds = %50
  %64 = load %struct.content_filter*, %struct.content_filter** %11, align 8
  %65 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %66 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %65, i32 0, i32 2
  %67 = load %struct.content_filter*, %struct.content_filter** %66, align 8
  %68 = icmp eq %struct.content_filter* %64, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @VERIFY(i32 %69)
  br label %74

71:                                               ; preds = %62, %49, %42
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %29

74:                                               ; preds = %63, %29
  %75 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %76 = icmp eq %struct.cfil_entry* %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %79 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %78, i32 0, i32 2
  %80 = load %struct.content_filter*, %struct.content_filter** %79, align 8
  %81 = icmp eq %struct.content_filter* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %77, %74
  br label %229

83:                                               ; preds = %77
  %84 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %85 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @CFEF_SENT_SOCK_ATTACHED, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %229

91:                                               ; preds = %83
  %92 = load i32, i32* @LOG_INFO, align 4
  %93 = load %struct.socket*, %struct.socket** %4, align 8
  %94 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %93)
  %95 = trunc i64 %94 to i32
  %96 = sext i32 %95 to i64
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 (i32, i8*, i64, ...) @CFIL_LOG(i32 %92, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %96, i32 %97, i32 %98)
  %100 = load %struct.content_filter*, %struct.content_filter** %11, align 8
  %101 = getelementptr inbounds %struct.content_filter, %struct.content_filter* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @CFF_FLOW_CONTROLLED, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %91
  %107 = load i64, i64* @ENOBUFS, align 8
  store i64 %107, i64* %7, align 8
  br label %229

108:                                              ; preds = %91
  %109 = call i32 @bzero(%struct.cfil_msg_sock_attached* %9, i32 64)
  %110 = getelementptr inbounds %struct.cfil_msg_sock_attached, %struct.cfil_msg_sock_attached* %9, i32 0, i32 7
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i32 64, i32* %111, align 8
  %112 = load i32, i32* @CFM_VERSION_CURRENT, align 4
  %113 = getelementptr inbounds %struct.cfil_msg_sock_attached, %struct.cfil_msg_sock_attached* %9, i32 0, i32 7
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* @CFM_TYPE_EVENT, align 4
  %116 = getelementptr inbounds %struct.cfil_msg_sock_attached, %struct.cfil_msg_sock_attached* %9, i32 0, i32 7
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @CFM_OP_SOCKET_ATTACHED, align 4
  %119 = getelementptr inbounds %struct.cfil_msg_sock_attached, %struct.cfil_msg_sock_attached* %9, i32 0, i32 7
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %122 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %121, i32 0, i32 3
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.cfil_msg_sock_attached, %struct.cfil_msg_sock_attached* %9, i32 0, i32 7
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  %128 = load %struct.socket*, %struct.socket** %4, align 8
  %129 = getelementptr inbounds %struct.socket, %struct.socket* %128, i32 0, i32 5
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.cfil_msg_sock_attached, %struct.cfil_msg_sock_attached* %9, i32 0, i32 6
  store i32 %134, i32* %135, align 8
  %136 = load %struct.socket*, %struct.socket** %4, align 8
  %137 = getelementptr inbounds %struct.socket, %struct.socket* %136, i32 0, i32 5
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.cfil_msg_sock_attached, %struct.cfil_msg_sock_attached* %9, i32 0, i32 5
  store i32 %140, i32* %141, align 4
  %142 = load %struct.socket*, %struct.socket** %4, align 8
  %143 = getelementptr inbounds %struct.socket, %struct.socket* %142, i32 0, i32 5
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = getelementptr inbounds %struct.cfil_msg_sock_attached, %struct.cfil_msg_sock_attached* %9, i32 0, i32 4
  store i32 %146, i32* %147, align 8
  %148 = load %struct.socket*, %struct.socket** %4, align 8
  %149 = getelementptr inbounds %struct.socket, %struct.socket* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = getelementptr inbounds %struct.cfil_msg_sock_attached, %struct.cfil_msg_sock_attached* %9, i32 0, i32 3
  store i32 %150, i32* %151, align 4
  %152 = getelementptr inbounds %struct.cfil_msg_sock_attached, %struct.cfil_msg_sock_attached* %9, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.socket*, %struct.socket** %4, align 8
  %155 = getelementptr inbounds %struct.socket, %struct.socket* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @memcpy(i32 %153, i32 %156, i32 4)
  %158 = load %struct.socket*, %struct.socket** %4, align 8
  %159 = getelementptr inbounds %struct.socket, %struct.socket* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @SOF_DELEGATED, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %108
  %165 = load %struct.socket*, %struct.socket** %4, align 8
  %166 = getelementptr inbounds %struct.socket, %struct.socket* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = getelementptr inbounds %struct.cfil_msg_sock_attached, %struct.cfil_msg_sock_attached* %9, i32 0, i32 1
  store i32 %167, i32* %168, align 4
  %169 = getelementptr inbounds %struct.cfil_msg_sock_attached, %struct.cfil_msg_sock_attached* %9, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.socket*, %struct.socket** %4, align 8
  %172 = getelementptr inbounds %struct.socket, %struct.socket* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @memcpy(i32 %170, i32 %173, i32 4)
  br label %186

175:                                              ; preds = %108
  %176 = load %struct.socket*, %struct.socket** %4, align 8
  %177 = getelementptr inbounds %struct.socket, %struct.socket* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = getelementptr inbounds %struct.cfil_msg_sock_attached, %struct.cfil_msg_sock_attached* %9, i32 0, i32 1
  store i32 %178, i32* %179, align 4
  %180 = getelementptr inbounds %struct.cfil_msg_sock_attached, %struct.cfil_msg_sock_attached* %9, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.socket*, %struct.socket** %4, align 8
  %183 = getelementptr inbounds %struct.socket, %struct.socket* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @memcpy(i32 %181, i32 %184, i32 4)
  br label %186

186:                                              ; preds = %175, %164
  %187 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %188 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %187, i32 0, i32 2
  %189 = load %struct.content_filter*, %struct.content_filter** %188, align 8
  %190 = getelementptr inbounds %struct.content_filter, %struct.content_filter* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %193 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %192, i32 0, i32 2
  %194 = load %struct.content_filter*, %struct.content_filter** %193, align 8
  %195 = getelementptr inbounds %struct.content_filter, %struct.content_filter* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @CTL_DATA_EOR, align 4
  %198 = call i64 @ctl_enqueuedata(i32 %191, i32 %196, %struct.cfil_msg_sock_attached* %9, i32 64, i32 %197)
  store i64 %198, i64* %7, align 8
  %199 = load i64, i64* %7, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %186
  %202 = load i32, i32* @LOG_ERR, align 4
  %203 = load i64, i64* %7, align 8
  %204 = call i32 (i32, i8*, i64, ...) @CFIL_LOG(i32 %202, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %203)
  br label %229

205:                                              ; preds = %186
  %206 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %207 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %206, i32 0, i32 1
  %208 = call i32 @microuptime(%struct.TYPE_13__* %207)
  %209 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %210 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %214 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 1
  store i32 %212, i32* %215, align 4
  %216 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %217 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %221 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  store i32 %219, i32* %222, align 8
  %223 = load i32, i32* @CFEF_SENT_SOCK_ATTACHED, align 4
  %224 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %225 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = or i32 %226, %223
  store i32 %227, i32* %225, align 8
  %228 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cfil_stats, i32 0, i32 2))
  br label %229

229:                                              ; preds = %205, %201, %106, %90, %82, %26
  %230 = load i64, i64* %7, align 8
  %231 = load i64, i64* @ENOBUFS, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %251

233:                                              ; preds = %229
  %234 = load i32, i32* @CFEF_FLOW_CONTROLLED, align 4
  %235 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %236 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 8
  %239 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cfil_stats, i32 0, i32 1))
  %240 = call i32 @cfil_rw_lock_shared_to_exclusive(i32* @cfil_lck_rw)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %233
  %243 = call i32 @cfil_rw_lock_exclusive(i32* @cfil_lck_rw)
  br label %244

244:                                              ; preds = %242, %233
  %245 = load i32, i32* @CFF_FLOW_CONTROLLED, align 4
  %246 = load %struct.content_filter*, %struct.content_filter** %11, align 8
  %247 = getelementptr inbounds %struct.content_filter, %struct.content_filter* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 4
  %250 = call i32 @cfil_rw_unlock_exclusive(i32* @cfil_lck_rw)
  br label %258

251:                                              ; preds = %229
  %252 = load i64, i64* %7, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %251
  %255 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cfil_stats, i32 0, i32 0))
  br label %256

256:                                              ; preds = %254, %251
  %257 = call i32 @cfil_rw_unlock_shared(i32* @cfil_lck_rw)
  br label %258

258:                                              ; preds = %256, %244
  %259 = load i64, i64* %7, align 8
  %260 = trunc i64 %259 to i32
  ret i32 %260
}

declare dso_local i32 @socket_lock_assert_owned(%struct.socket*) #1

declare dso_local i32 @cfil_rw_lock_shared(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @CFIL_LOG(i32, i8*, i64, ...) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.socket*) #1

declare dso_local i32 @bzero(%struct.cfil_msg_sock_attached*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @ctl_enqueuedata(i32, i32, %struct.cfil_msg_sock_attached*, i32, i32) #1

declare dso_local i32 @microuptime(%struct.TYPE_13__*) #1

declare dso_local i32 @OSIncrementAtomic(i32*) #1

declare dso_local i32 @cfil_rw_lock_shared_to_exclusive(i32*) #1

declare dso_local i32 @cfil_rw_lock_exclusive(i32*) #1

declare dso_local i32 @cfil_rw_unlock_exclusive(i32*) #1

declare dso_local i32 @cfil_rw_unlock_shared(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
