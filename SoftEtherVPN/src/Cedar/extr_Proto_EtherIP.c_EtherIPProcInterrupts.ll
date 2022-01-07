; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_EtherIP.c_EtherIPProcInterrupts.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_EtherIP.c_EtherIPProcInterrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i8*, i64, i64, i32, i32, i32*, i32, i32, i32, i32, i32*, %struct.TYPE_18__*, %struct.TYPE_22__*, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"LE_RECONNECT\00", align 1
@ETHERIP_VPN_CONNECT_RETRY_INTERVAL = common dso_local global i64 0, align 8
@EtherIPIpcConnectThread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EtherIPProcInterrupts(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_20__, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %10 = icmp eq %struct.TYPE_19__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %262

12:                                               ; preds = %1
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 6
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %97

17:                                               ; preds = %12
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 12
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %96

29:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 12
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 13
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %40, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @SearchEtherIPId(%struct.TYPE_22__* %41, %struct.TYPE_20__* %3, i8* %44)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %29
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 13
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %49, align 8
  %51 = call i32 @SearchEtherIPId(%struct.TYPE_22__* %50, %struct.TYPE_20__* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %83

54:                                               ; preds = %47, %29
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 14
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @StrCmpi(i32 %58, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %81, label %63

63:                                               ; preds = %54
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 14
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @StrCmpi(i32 %67, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %63
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 14
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @StrCmp(i32 %76, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72, %63, %54
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %72
  br label %83

83:                                               ; preds = %82, %53
  %84 = load i32, i32* %4, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 6
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @FreeIPC(i32* %89)
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 6
  store i32* null, i32** %92, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %94 = call i32 @EtherIPLog(%struct.TYPE_19__* %93, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %86, %83
  br label %96

96:                                               ; preds = %95, %17
  br label %97

97:                                               ; preds = %96, %12
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 9
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @Lock(i32 %100)
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 6
  %104 = load i32*, i32** %103, align 8
  %105 = icmp eq i32* %104, null
  br i1 %105, label %106, label %166

106:                                              ; preds = %97
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 11
  %109 = load i32*, i32** %108, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %165

111:                                              ; preds = %106
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %111
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @ETHERIP_VPN_CONNECT_RETRY_INTERVAL, align 8
  %121 = add nsw i64 %119, %120
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = icmp sle i64 %121, %124
  br i1 %125, label %126, label %164

126:                                              ; preds = %116, %111
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 13
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @Lock(i32 %131)
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 13
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 1
  %139 = call i32 @Copy(i32* %134, i32* %138, i32 4)
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 13
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @Unlock(i32 %144)
  %146 = load i32, i32* @EtherIPIpcConnectThread, align 4
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %148 = call i32* @NewThread(i32 %146, %struct.TYPE_19__* %147)
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 11
  store i32* %148, i32** %150, align 8
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 12
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 11
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 @AddThreadToThreadList(i32 %155, i32* %158)
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 10
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @AddRef(i32 %162)
  br label %164

164:                                              ; preds = %126, %116
  br label %165

165:                                              ; preds = %164, %106
  br label %166

166:                                              ; preds = %165, %97
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 9
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @Unlock(i32 %169)
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 6
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %262

175:                                              ; preds = %166
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 6
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 8
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @IPCSetSockEventWhenRecvL2Packet(i32* %178, i32 %181)
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 6
  %185 = load i32*, i32** %184, align 8
  %186 = call i32 @IPCProcessInterrupts(i32* %185)
  br label %187

187:                                              ; preds = %175, %245
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 6
  %190 = load i32*, i32** %189, align 8
  %191 = call %struct.TYPE_21__* @IPCRecvL2(i32* %190)
  store %struct.TYPE_21__* %191, %struct.TYPE_21__** %5, align 8
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %193 = icmp eq %struct.TYPE_21__* %192, null
  br i1 %193, label %194, label %195

194:                                              ; preds = %187
  br label %248

195:                                              ; preds = %187
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp sge i32 %198, 14
  br i1 %199, label %200, label %245

200:                                              ; preds = %195
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %225

205:                                              ; preds = %200
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, 2
  store i32 %209, i32* %7, align 4
  %210 = load i32, i32* %7, align 4
  %211 = call i32* @Malloc(i32 %210)
  store i32* %211, i32** %6, align 8
  %212 = load i32*, i32** %6, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  store i32 48, i32* %213, align 4
  %214 = load i32*, i32** %6, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 1
  store i32 0, i32* %215, align 4
  %216 = load i32*, i32** %6, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 2
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @Copy(i32* %217, i32* %220, i32 %223)
  br label %236

225:                                              ; preds = %200
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i32* @Clone(i32* %228, i32 %231)
  store i32* %232, i32** %6, align 8
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  store i32 %235, i32* %7, align 4
  br label %236

236:                                              ; preds = %225, %205
  %237 = load i32*, i32** %6, align 8
  %238 = load i32, i32* %7, align 4
  %239 = call %struct.TYPE_21__* @NewBlock(i32* %237, i32 %238, i32 0)
  store %struct.TYPE_21__* %239, %struct.TYPE_21__** %8, align 8
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 7
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %244 = call i32 @Add(i32 %242, %struct.TYPE_21__* %243)
  br label %245

245:                                              ; preds = %236, %195
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %247 = call i32 @FreeBlock(%struct.TYPE_21__* %246)
  br label %187

248:                                              ; preds = %194
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 6
  %251 = load i32*, i32** %250, align 8
  %252 = call i32 @IsIPCConnected(i32* %251)
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %248
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 6
  %257 = load i32*, i32** %256, align 8
  %258 = call i32 @FreeIPC(i32* %257)
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 6
  store i32* null, i32** %260, align 8
  br label %261

261:                                              ; preds = %254, %248
  br label %262

262:                                              ; preds = %11, %261, %166
  ret void
}

declare dso_local i32 @SearchEtherIPId(%struct.TYPE_22__*, %struct.TYPE_20__*, i8*) #1

declare dso_local i64 @StrCmpi(i32, i32) #1

declare dso_local i64 @StrCmp(i32, i32) #1

declare dso_local i32 @FreeIPC(i32*) #1

declare dso_local i32 @EtherIPLog(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32* @NewThread(i32, %struct.TYPE_19__*) #1

declare dso_local i32 @AddThreadToThreadList(i32, i32*) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @IPCSetSockEventWhenRecvL2Packet(i32*, i32) #1

declare dso_local i32 @IPCProcessInterrupts(i32*) #1

declare dso_local %struct.TYPE_21__* @IPCRecvL2(i32*) #1

declare dso_local i32* @Malloc(i32) #1

declare dso_local i32* @Clone(i32*, i32) #1

declare dso_local %struct.TYPE_21__* @NewBlock(i32*, i32, i32) #1

declare dso_local i32 @Add(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @FreeBlock(%struct.TYPE_21__*) #1

declare dso_local i32 @IsIPCConnected(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
