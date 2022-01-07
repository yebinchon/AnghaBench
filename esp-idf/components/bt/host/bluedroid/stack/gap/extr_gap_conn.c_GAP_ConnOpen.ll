; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gap/extr_gap_conn.c_GAP_ConnOpen.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gap/extr_gap_conn.c_GAP_ConnOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32*, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_15__, i32, i32, i32, %struct.TYPE_16__, i8*, i32*, i32, i32* }

@.str = private unnamed_addr constant [24 x i8] c"GAP_CONN - Open Request\00", align 1
@GAP_INVALID_HANDLE = common dso_local global i32 0, align 4
@BT_BD_ANY = common dso_local global i32 0, align 4
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"GAP ERROR: Client must specify a remote BD ADDR to connect to!\00", align 1
@gap_cb = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@gap_connect_ind = common dso_local global i8* null, align 8
@AMP_AUTOSWITCH_ALLOWED = common dso_local global i32 0, align 4
@AMP_USE_AMP_IF_POSSIBLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"GAP_ConnOpen: Failure registering PSM 0x%04x\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GAP_CONN - Security Error\00", align 1
@GAP_DATA_BUF_SIZE = common dso_local global i8* null, align 8
@L2CAP_INVALID_ERM_BUF_SIZE = common dso_local global i8* null, align 8
@L2CAP_FCR_CHAN_OPT_BASIC = common dso_local global i64 0, align 8
@GAP_CCB_FLAGS_SEC_DONE = common dso_local global i32 0, align 4
@GAP_CCB_STATE_LISTENING = common dso_local global i32 0, align 4
@GAP_CCB_FLAGS_IS_ORIG = common dso_local global i32 0, align 4
@GAP_CCB_STATE_CONN_SETUP = common dso_local global i32 0, align 4
@BTM_SEC_OUT_AUTHORIZE = common dso_local global i32 0, align 4
@BTM_SEC_OUT_AUTHENTICATE = common dso_local global i32 0, align 4
@BTM_SEC_OUT_ENCRYPT = common dso_local global i32 0, align 4
@bt_uuid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GAP_ConnOpen(i8* %0, i8* %1, i64 %2, i32 %3, i32 %4, %struct.TYPE_16__* %5, %struct.TYPE_15__* %6, i32 %7, i8* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_17__*, align 8
  %23 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i64 %2, i64* %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store %struct.TYPE_16__* %5, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_15__* %6, %struct.TYPE_15__** %18, align 8
  store i32 %7, i32* %19, align 4
  store i8* %8, i8** %20, align 8
  store i32* %9, i32** %21, align 8
  %24 = call i32 @GAP_TRACE_EVENT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %25 = call %struct.TYPE_17__* (...) @gap_allocate_ccb()
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %22, align 8
  %26 = icmp eq %struct.TYPE_17__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %10
  %28 = load i32, i32* @GAP_INVALID_HANDLE, align 4
  store i32 %28, i32* %11, align 4
  br label %244

29:                                               ; preds = %10
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* @BT_BD_ANY, align 4
  %35 = load i32, i32* @BD_ADDR_LEN, align 4
  %36 = call i64 @memcmp(i32 %33, i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* @TRUE, align 4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 9
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %38, %32
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 10
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* @BD_ADDR_LEN, align 4
  %49 = call i32 @memcpy(i32* %46, i32 %47, i32 %48)
  br label %56

50:                                               ; preds = %29
  %51 = load i64, i64* %14, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @GAP_INVALID_HANDLE, align 4
  store i32 %54, i32* %11, align 4
  br label %244

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %42
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 9
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %56
  %62 = load i64, i64* %14, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %66 = call i32 @gap_release_ccb(%struct.TYPE_17__* %65)
  %67 = call i32 (i8*, ...) @GAP_TRACE_ERROR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @GAP_INVALID_HANDLE, align 4
  store i32 %68, i32* %11, align 4
  br label %244

69:                                               ; preds = %61, %56
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %71 = icmp ne %struct.TYPE_16__* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 6
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %76 = bitcast %struct.TYPE_16__* %74 to i8*
  %77 = bitcast %struct.TYPE_16__* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 16, i1 false)
  br label %78

78:                                               ; preds = %72, %69
  %79 = load i32*, i32** %21, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 8
  store i32* %79, i32** %81, align 8
  %82 = load i64, i64* %14, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @gap_cb, i32 0, i32 0, i32 0, i32 0), align 8
  br label %88

85:                                               ; preds = %78
  %86 = load i8*, i8** @gap_connect_ind, align 8
  %87 = bitcast i8* %86 to i32*
  store i32* %87, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @gap_cb, i32 0, i32 0, i32 0, i32 0), align 8
  br label %88

88:                                               ; preds = %85, %84
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* @AMP_AUTOSWITCH_ALLOWED, align 4
  %91 = load i32, i32* @AMP_USE_AMP_IF_POSSIBLE, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @L2CA_REGISTER(i32 %89, %struct.TYPE_19__* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @gap_cb, i32 0, i32 0, i32 0), i32 %92)
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  %96 = icmp eq i32 %93, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %88
  %98 = load i32, i32* %16, align 4
  %99 = call i32 (i8*, ...) @GAP_TRACE_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %101 = call i32 @gap_release_ccb(%struct.TYPE_17__* %100)
  %102 = load i32, i32* @GAP_INVALID_HANDLE, align 4
  store i32 %102, i32* %11, align 4
  br label %244

103:                                              ; preds = %88
  %104 = load i8*, i8** %13, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 7
  store i8* %104, i8** %106, align 8
  %107 = load i64, i64* %14, align 8
  %108 = icmp ne i64 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i8*
  %113 = load i8*, i8** %12, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 7
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* %19, align 4
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @BTM_SetSecurityLevel(i8* %112, i8* %113, i8* %116, i32 %117, i32 %120, i32 0, i32 0)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %103
  %124 = call i32 (i8*, ...) @GAP_TRACE_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %126 = call i32 @gap_release_ccb(%struct.TYPE_17__* %125)
  %127 = load i32, i32* @GAP_INVALID_HANDLE, align 4
  store i32 %127, i32* %11, align 4
  br label %244

128:                                              ; preds = %103
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 6
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %169

134:                                              ; preds = %128
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %136 = icmp eq %struct.TYPE_15__* %135, null
  br i1 %136, label %137, label %162

137:                                              ; preds = %134
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 6
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 5
  store i32 %142, i32* %145, align 8
  %146 = load i8*, i8** @GAP_DATA_BUF_SIZE, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 4
  store i8* %146, i8** %149, align 8
  %150 = load i8*, i8** @GAP_DATA_BUF_SIZE, align 8
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 3
  store i8* %150, i8** %153, align 8
  %154 = load i8*, i8** @L2CAP_INVALID_ERM_BUF_SIZE, align 8
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 2
  store i8* %154, i8** %157, align 8
  %158 = load i8*, i8** @L2CAP_INVALID_ERM_BUF_SIZE, align 8
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  store i8* %158, i8** %161, align 8
  br label %168

162:                                              ; preds = %134
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %166 = bitcast %struct.TYPE_15__* %164 to i8*
  %167 = bitcast %struct.TYPE_15__* %165 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %166, i8* align 8 %167, i64 48, i1 false)
  br label %168

168:                                              ; preds = %162, %137
  br label %169

169:                                              ; preds = %168, %128
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %171 = icmp ne %struct.TYPE_15__* %170, null
  br i1 %171, label %172, label %185

172:                                              ; preds = %169
  %173 = load i8*, i8** %20, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = load i8*, i8** %20, align 8
  br label %180

177:                                              ; preds = %172
  %178 = load i64, i64* @L2CAP_FCR_CHAN_OPT_BASIC, align 8
  %179 = inttoptr i64 %178 to i8*
  br label %180

180:                                              ; preds = %177, %175
  %181 = phi i8* [ %176, %175 ], [ %179, %177 ]
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  store i8* %181, i8** %184, align 8
  br label %185

185:                                              ; preds = %180, %169
  %186 = load i64, i64* %14, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %200

188:                                              ; preds = %185
  %189 = load i32, i32* @GAP_CCB_FLAGS_SEC_DONE, align 4
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 4
  %194 = load i32, i32* @GAP_CCB_STATE_LISTENING, align 4
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 5
  store i32 %194, i32* %196, align 8
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  store i32 %199, i32* %11, align 4
  br label %244

200:                                              ; preds = %185
  %201 = load i32, i32* @GAP_CCB_FLAGS_IS_ORIG, align 4
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 4
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* @GAP_CCB_STATE_CONN_SETUP, align 4
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 5
  store i32 %204, i32* %206, align 8
  %207 = load i32, i32* %19, align 4
  %208 = load i32, i32* @BTM_SEC_OUT_AUTHORIZE, align 4
  %209 = load i32, i32* @BTM_SEC_OUT_AUTHENTICATE, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @BTM_SEC_OUT_ENCRYPT, align 4
  %212 = or i32 %210, %211
  %213 = and i32 %207, %212
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %200
  %216 = load i32, i32* @GAP_CCB_FLAGS_SEC_DONE, align 4
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 4
  br label %221

221:                                              ; preds = %215, %200
  %222 = load i32, i32* %15, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %240

224:                                              ; preds = %221
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* %15, align 4
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 2
  %231 = call i32 @L2CA_CONNECT_REQ(i32 %227, i32 %228, %struct.TYPE_15__* %230, i32* @bt_uuid)
  store i32 %231, i32* %23, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %224
  %234 = load i32, i32* %23, align 4
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 4
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  store i32 %239, i32* %11, align 4
  br label %244

240:                                              ; preds = %224, %221
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %242 = call i32 @gap_release_ccb(%struct.TYPE_17__* %241)
  %243 = load i32, i32* @GAP_INVALID_HANDLE, align 4
  store i32 %243, i32* %11, align 4
  br label %244

244:                                              ; preds = %240, %233, %188, %123, %97, %64, %53, %27
  %245 = load i32, i32* %11, align 4
  ret i32 %245
}

declare dso_local i32 @GAP_TRACE_EVENT(i8*) #1

declare dso_local %struct.TYPE_17__* @gap_allocate_ccb(...) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @gap_release_ccb(%struct.TYPE_17__*) #1

declare dso_local i32 @GAP_TRACE_ERROR(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @L2CA_REGISTER(i32, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @BTM_SetSecurityLevel(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @L2CA_CONNECT_REQ(i32, i32, %struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
