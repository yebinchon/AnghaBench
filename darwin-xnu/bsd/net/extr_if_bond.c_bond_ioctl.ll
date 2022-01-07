; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bond_ioctl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bond_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.ifnet = type { i32 }
%struct.if_bond_req = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.ifaddr = type { i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_15__**, i32, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { i8* }
%struct.ifreq = type { i32, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.ifmediareq = type { i32, i8*, i32, i8*, i32 }
%struct.ifmediareq64 = type { i32 }
%struct.ifmediareq32 = type { i32 }

@IFT_IEEE8023ADLAG = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i8* null, align 8
@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@USER_ADDR_NULL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i64 0, align 8
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@g_bond = common dso_local global %struct.TYPE_19__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i8*)* @bond_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_ioctl(%struct.ifnet* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.if_bond_req, align 4
  %10 = alloca %struct.ifaddr*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.ifreq*, align 8
  %13 = alloca %struct.ifmediareq*, align 8
  %14 = alloca %struct.ifnet*, align 8
  %15 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store %struct.ifnet* null, %struct.ifnet** %14, align 8
  %16 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %17 = call i64 @ifnet_type(%struct.ifnet* %16)
  %18 = load i64, i64* @IFT_IEEE8023ADLAG, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %21, i32* %4, align 4
  br label %411

22:                                               ; preds = %3
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.ifreq*
  store %struct.ifreq* %24, %struct.ifreq** %12, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast i8* %25 to %struct.ifaddr*
  store %struct.ifaddr* %26, %struct.ifaddr** %10, align 8
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %407 [
    i32 134, label %28
    i32 136, label %33
    i32 135, label %33
    i32 129, label %142
    i32 137, label %144
    i32 139, label %182
    i32 133, label %211
    i32 128, label %217
    i32 132, label %223
    i32 138, label %336
    i32 130, label %397
    i32 131, label %399
    i32 141, label %404
    i32 140, label %404
  ]

28:                                               ; preds = %22
  %29 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %30 = load i32, i32* @IFF_UP, align 4
  %31 = load i32, i32* @IFF_UP, align 4
  %32 = call i32 @ifnet_set_flags(%struct.ifnet* %29, i32 %30, i32 %31)
  br label %409

33:                                               ; preds = %22, %22
  %34 = call i32 (...) @bond_lock()
  %35 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %36 = call i32 @ifnet_softc(%struct.ifnet* %35)
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %38, %struct.TYPE_18__** %11, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %40 = icmp eq %struct.TYPE_18__* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %43 = call i32 @ifbond_flags_if_detaching(%struct.TYPE_18__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %41, %33
  %46 = call i32 (...) @bond_unlock()
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %48 = icmp eq %struct.TYPE_18__* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  br label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @EBUSY, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  store i32 %54, i32* %4, align 4
  br label %411

55:                                               ; preds = %41
  %56 = load i8*, i8** %7, align 8
  %57 = bitcast i8* %56 to %struct.ifmediareq*
  store %struct.ifmediareq* %57, %struct.ifmediareq** %13, align 8
  %58 = load i8*, i8** @IFM_ETHER, align 8
  %59 = load %struct.ifmediareq*, %struct.ifmediareq** %13, align 8
  %60 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.ifmediareq*, %struct.ifmediareq** %13, align 8
  %62 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %61, i32 0, i32 4
  store i32 0, i32* %62, align 8
  %63 = load i32, i32* @IFM_AVALID, align 4
  %64 = load %struct.ifmediareq*, %struct.ifmediareq** %13, align 8
  %65 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load i8*, i8** @IFM_ETHER, align 8
  %67 = load %struct.ifmediareq*, %struct.ifmediareq** %13, align 8
  %68 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  %69 = load %struct.ifmediareq*, %struct.ifmediareq** %13, align 8
  %70 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 148
  br i1 %74, label %75, label %94

75:                                               ; preds = %55
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = icmp ne %struct.TYPE_13__* %78, null
  br i1 %79, label %80, label %93

80:                                               ; preds = %75
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.ifmediareq*, %struct.ifmediareq** %13, align 8
  %87 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* @IFM_ACTIVE, align 4
  %89 = load %struct.ifmediareq*, %struct.ifmediareq** %13, align 8
  %90 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %80, %75
  br label %116

94:                                               ; preds = %55
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %94
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %102, i64 0
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.ifmediareq*, %struct.ifmediareq** %13, align 8
  %109 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  %110 = load i32, i32* @IFM_ACTIVE, align 4
  %111 = load %struct.ifmediareq*, %struct.ifmediareq** %13, align 8
  %112 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %99, %94
  br label %116

116:                                              ; preds = %115, %93
  %117 = call i32 (...) @bond_unlock()
  %118 = load i32, i32* %6, align 4
  %119 = icmp eq i32 %118, 135
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load %struct.ifmediareq*, %struct.ifmediareq** %13, align 8
  %122 = bitcast %struct.ifmediareq* %121 to %struct.ifmediareq64*
  %123 = getelementptr inbounds %struct.ifmediareq64, %struct.ifmediareq64* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  br label %131

125:                                              ; preds = %116
  %126 = load %struct.ifmediareq*, %struct.ifmediareq** %13, align 8
  %127 = bitcast %struct.ifmediareq* %126 to %struct.ifmediareq32*
  %128 = getelementptr inbounds %struct.ifmediareq32, %struct.ifmediareq32* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @CAST_USER_ADDR_T(i32 %129)
  br label %131

131:                                              ; preds = %125, %120
  %132 = phi i32 [ %124, %120 ], [ %130, %125 ]
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* @USER_ADDR_NULL, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load %struct.ifmediareq*, %struct.ifmediareq** %13, align 8
  %138 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %137, i32 0, i32 1
  %139 = load i32, i32* %15, align 4
  %140 = call i32 @copyout(i8** %138, i32 %139, i32 4)
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %136, %131
  br label %409

142:                                              ; preds = %22
  %143 = load i32, i32* @EINVAL, align 4
  store i32 %143, i32* %8, align 4
  br label %409

144:                                              ; preds = %22
  %145 = call i32 (...) @bond_lock()
  %146 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %147 = call i32 @ifnet_softc(%struct.ifnet* %146)
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %149, %struct.TYPE_18__** %11, align 8
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %151 = icmp eq %struct.TYPE_18__* %150, null
  br i1 %151, label %156, label %152

152:                                              ; preds = %144
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %154 = call i32 @ifbond_flags_if_detaching(%struct.TYPE_18__* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %152, %144
  %157 = call i32 (...) @bond_unlock()
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %159 = icmp eq %struct.TYPE_18__* %158, null
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = load i32, i32* @EOPNOTSUPP, align 4
  br label %164

162:                                              ; preds = %156
  %163 = load i32, i32* @EBUSY, align 4
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi i32 [ %161, %160 ], [ %163, %162 ]
  store i32 %165, i32* %8, align 4
  br label %409

166:                                              ; preds = %152
  %167 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %169 = call i32 @bond_device_mtu(%struct.ifnet* %167, %struct.TYPE_18__* %168)
  %170 = load %struct.ifreq*, %struct.ifreq** %12, align 8
  %171 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 2
  store i32 %169, i32* %172, align 4
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %174 = load %struct.ifreq*, %struct.ifreq** %12, align 8
  %175 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 1
  %177 = load %struct.ifreq*, %struct.ifreq** %12, align 8
  %178 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 0
  %180 = call i32 @bond_get_mtu_values(%struct.TYPE_18__* %173, i32* %176, i32* %179)
  %181 = call i32 (...) @bond_unlock()
  br label %409

182:                                              ; preds = %22
  %183 = call i32 (...) @bond_lock()
  %184 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %185 = call i32 @ifnet_softc(%struct.ifnet* %184)
  %186 = sext i32 %185 to i64
  %187 = inttoptr i64 %186 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %187, %struct.TYPE_18__** %11, align 8
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %189 = icmp eq %struct.TYPE_18__* %188, null
  br i1 %189, label %194, label %190

190:                                              ; preds = %182
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %192 = call i32 @ifbond_flags_if_detaching(%struct.TYPE_18__* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %190, %182
  %195 = call i32 (...) @bond_unlock()
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %197 = icmp eq %struct.TYPE_18__* %196, null
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = load i32, i32* @EOPNOTSUPP, align 4
  br label %202

200:                                              ; preds = %194
  %201 = load i32, i32* @EBUSY, align 4
  br label %202

202:                                              ; preds = %200, %198
  %203 = phi i32 [ %199, %198 ], [ %201, %200 ]
  store i32 %203, i32* %8, align 4
  br label %409

204:                                              ; preds = %190
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.ifreq*, %struct.ifreq** %12, align 8
  %209 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %208, i32 0, i32 2
  store i32 %207, i32* %209, align 4
  %210 = call i32 (...) @bond_unlock()
  br label %409

211:                                              ; preds = %22
  %212 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %213 = load %struct.ifreq*, %struct.ifreq** %12, align 8
  %214 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @bond_set_mtu(%struct.ifnet* %212, i32 %215, i32 1)
  store i32 %216, i32* %8, align 4
  br label %409

217:                                              ; preds = %22
  %218 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %219 = load %struct.ifreq*, %struct.ifreq** %12, align 8
  %220 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @bond_set_mtu(%struct.ifnet* %218, i32 %221, i32 0)
  store i32 %222, i32* %8, align 4
  br label %409

223:                                              ; preds = %22
  %224 = call i32 (...) @current_proc()
  %225 = call i32 @proc_is64bit(i32 %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %223
  %228 = load %struct.ifreq*, %struct.ifreq** %12, align 8
  %229 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  br label %236

231:                                              ; preds = %223
  %232 = load %struct.ifreq*, %struct.ifreq** %12, align 8
  %233 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @CAST_USER_ADDR_T(i32 %234)
  br label %236

236:                                              ; preds = %231, %227
  %237 = phi i32 [ %230, %227 ], [ %235, %231 ]
  store i32 %237, i32* %15, align 4
  %238 = load i32, i32* %15, align 4
  %239 = call i32 @copyin(i32 %238, %struct.if_bond_req* %9, i32 12)
  store i32 %239, i32* %8, align 4
  %240 = load i32, i32* %8, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %236
  br label %409

243:                                              ; preds = %236
  %244 = getelementptr inbounds %struct.if_bond_req, %struct.if_bond_req* %9, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  switch i32 %245, label %264 [
    i32 146, label %246
    i32 144, label %246
    i32 142, label %263
    i32 143, label %263
  ]

246:                                              ; preds = %243, %243
  %247 = getelementptr inbounds %struct.if_bond_req, %struct.if_bond_req* %9, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = call %struct.ifnet* @ifunit(i32 %249)
  store %struct.ifnet* %250, %struct.ifnet** %14, align 8
  %251 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %252 = icmp eq %struct.ifnet* %251, null
  br i1 %252, label %253, label %255

253:                                              ; preds = %246
  %254 = load i32, i32* @ENXIO, align 4
  store i32 %254, i32* %8, align 4
  br label %266

255:                                              ; preds = %246
  %256 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %257 = call i64 @ifnet_type(%struct.ifnet* %256)
  %258 = load i64, i64* @IFT_ETHER, align 8
  %259 = icmp ne i64 %257, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %255
  %261 = load i32, i32* @EPROTONOSUPPORT, align 4
  store i32 %261, i32* %8, align 4
  br label %266

262:                                              ; preds = %255
  br label %266

263:                                              ; preds = %243, %243
  br label %266

264:                                              ; preds = %243
  %265 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %265, i32* %8, align 4
  br label %266

266:                                              ; preds = %264, %263, %262, %260, %253
  %267 = load i32, i32* %8, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %266
  br label %409

270:                                              ; preds = %266
  %271 = getelementptr inbounds %struct.if_bond_req, %struct.if_bond_req* %9, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  switch i32 %272, label %335 [
    i32 146, label %273
    i32 144, label %277
    i32 142, label %304
    i32 143, label %318
  ]

273:                                              ; preds = %270
  %274 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %275 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %276 = call i32 @bond_add_interface(%struct.ifnet* %274, %struct.ifnet* %275)
  store i32 %276, i32* %8, align 4
  br label %335

277:                                              ; preds = %270
  %278 = call i32 (...) @bond_lock()
  %279 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %280 = call i32 @ifnet_softc(%struct.ifnet* %279)
  %281 = sext i32 %280 to i64
  %282 = inttoptr i64 %281 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %282, %struct.TYPE_18__** %11, align 8
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %284 = icmp eq %struct.TYPE_18__* %283, null
  br i1 %284, label %289, label %285

285:                                              ; preds = %277
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %287 = call i32 @ifbond_flags_if_detaching(%struct.TYPE_18__* %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %299

289:                                              ; preds = %285, %277
  %290 = call i32 (...) @bond_unlock()
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %292 = icmp eq %struct.TYPE_18__* %291, null
  br i1 %292, label %293, label %295

293:                                              ; preds = %289
  %294 = load i32, i32* @EOPNOTSUPP, align 4
  br label %297

295:                                              ; preds = %289
  %296 = load i32, i32* @EBUSY, align 4
  br label %297

297:                                              ; preds = %295, %293
  %298 = phi i32 [ %294, %293 ], [ %296, %295 ]
  store i32 %298, i32* %4, align 4
  br label %411

299:                                              ; preds = %285
  %300 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %301 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %302 = call i32 @bond_remove_interface(%struct.TYPE_18__* %300, %struct.ifnet* %301)
  store i32 %302, i32* %8, align 4
  %303 = call i32 (...) @bond_unlock()
  br label %335

304:                                              ; preds = %270
  %305 = call i32 (...) @bond_lock()
  %306 = load %struct.TYPE_19__*, %struct.TYPE_19__** @g_bond, align 8
  %307 = icmp eq %struct.TYPE_19__* %306, null
  br i1 %307, label %308, label %311

308:                                              ; preds = %304
  %309 = call i32 (...) @bond_unlock()
  %310 = load i32, i32* @ENXIO, align 4
  store i32 %310, i32* %8, align 4
  br label %335

311:                                              ; preds = %304
  %312 = getelementptr inbounds %struct.if_bond_req, %struct.if_bond_req* %9, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.TYPE_19__*, %struct.TYPE_19__** @g_bond, align 8
  %316 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %315, i32 0, i32 0
  store i32 %314, i32* %316, align 4
  %317 = call i32 (...) @bond_unlock()
  br label %335

318:                                              ; preds = %270
  %319 = getelementptr inbounds %struct.if_bond_req, %struct.if_bond_req* %9, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  switch i32 %321, label %323 [
    i32 148, label %322
    i32 147, label %322
  ]

322:                                              ; preds = %318, %318
  br label %325

323:                                              ; preds = %318
  %324 = load i32, i32* @EINVAL, align 4
  store i32 %324, i32* %8, align 4
  br label %325

325:                                              ; preds = %323, %322
  %326 = load i32, i32* %8, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %325
  br label %335

329:                                              ; preds = %325
  %330 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %331 = getelementptr inbounds %struct.if_bond_req, %struct.if_bond_req* %9, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @bond_set_mode(%struct.ifnet* %330, i32 %333)
  store i32 %334, i32* %8, align 4
  br label %335

335:                                              ; preds = %270, %329, %328, %311, %308, %299, %273
  br label %409

336:                                              ; preds = %22
  %337 = call i32 (...) @current_proc()
  %338 = call i32 @proc_is64bit(i32 %337)
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %344

340:                                              ; preds = %336
  %341 = load %struct.ifreq*, %struct.ifreq** %12, align 8
  %342 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  br label %349

344:                                              ; preds = %336
  %345 = load %struct.ifreq*, %struct.ifreq** %12, align 8
  %346 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @CAST_USER_ADDR_T(i32 %347)
  br label %349

349:                                              ; preds = %344, %340
  %350 = phi i32 [ %343, %340 ], [ %348, %344 ]
  store i32 %350, i32* %15, align 4
  %351 = load i32, i32* %15, align 4
  %352 = call i32 @copyin(i32 %351, %struct.if_bond_req* %9, i32 12)
  store i32 %352, i32* %8, align 4
  %353 = load i32, i32* %8, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %349
  br label %409

356:                                              ; preds = %349
  %357 = getelementptr inbounds %struct.if_bond_req, %struct.if_bond_req* %9, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  switch i32 %358, label %360 [
    i32 145, label %359
  ]

359:                                              ; preds = %356
  br label %362

360:                                              ; preds = %356
  %361 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %361, i32* %8, align 4
  br label %362

362:                                              ; preds = %360, %359
  %363 = load i32, i32* %8, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %362
  br label %409

366:                                              ; preds = %362
  %367 = call i32 (...) @bond_lock()
  %368 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %369 = call i32 @ifnet_softc(%struct.ifnet* %368)
  %370 = sext i32 %369 to i64
  %371 = inttoptr i64 %370 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %371, %struct.TYPE_18__** %11, align 8
  %372 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %373 = icmp eq %struct.TYPE_18__* %372, null
  br i1 %373, label %378, label %374

374:                                              ; preds = %366
  %375 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %376 = call i32 @ifbond_flags_if_detaching(%struct.TYPE_18__* %375)
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %388

378:                                              ; preds = %374, %366
  %379 = call i32 (...) @bond_unlock()
  %380 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %381 = icmp eq %struct.TYPE_18__* %380, null
  br i1 %381, label %382, label %384

382:                                              ; preds = %378
  %383 = load i32, i32* @EOPNOTSUPP, align 4
  br label %386

384:                                              ; preds = %378
  %385 = load i32, i32* @EBUSY, align 4
  br label %386

386:                                              ; preds = %384, %382
  %387 = phi i32 [ %383, %382 ], [ %385, %384 ]
  store i32 %387, i32* %4, align 4
  br label %411

388:                                              ; preds = %374
  %389 = getelementptr inbounds %struct.if_bond_req, %struct.if_bond_req* %9, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  switch i32 %390, label %395 [
    i32 145, label %391
  ]

391:                                              ; preds = %388
  %392 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %393 = load i32, i32* %15, align 4
  %394 = call i32 @bond_get_status(%struct.TYPE_18__* %392, %struct.if_bond_req* %9, i32 %393)
  store i32 %394, i32* %8, align 4
  br label %395

395:                                              ; preds = %388, %391
  %396 = call i32 (...) @bond_unlock()
  br label %409

397:                                              ; preds = %22
  %398 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %398, i32* %8, align 4
  br label %409

399:                                              ; preds = %22
  %400 = call i32 (...) @bond_lock()
  %401 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %402 = call i32 @bond_set_promisc(%struct.ifnet* %401)
  store i32 %402, i32* %8, align 4
  %403 = call i32 (...) @bond_unlock()
  br label %409

404:                                              ; preds = %22, %22
  %405 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %406 = call i32 @bond_setmulti(%struct.ifnet* %405)
  store i32 %406, i32* %8, align 4
  br label %409

407:                                              ; preds = %22
  %408 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %408, i32* %8, align 4
  br label %409

409:                                              ; preds = %407, %404, %399, %397, %395, %365, %355, %335, %269, %242, %217, %211, %204, %202, %166, %164, %142, %141, %28
  %410 = load i32, i32* %8, align 4
  store i32 %410, i32* %4, align 4
  br label %411

411:                                              ; preds = %409, %386, %297, %53, %20
  %412 = load i32, i32* %4, align 4
  ret i32 %412
}

declare dso_local i64 @ifnet_type(%struct.ifnet*) #1

declare dso_local i32 @ifnet_set_flags(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @bond_lock(...) #1

declare dso_local i32 @ifnet_softc(%struct.ifnet*) #1

declare dso_local i32 @ifbond_flags_if_detaching(%struct.TYPE_18__*) #1

declare dso_local i32 @bond_unlock(...) #1

declare dso_local i32 @CAST_USER_ADDR_T(i32) #1

declare dso_local i32 @copyout(i8**, i32, i32) #1

declare dso_local i32 @bond_device_mtu(%struct.ifnet*, %struct.TYPE_18__*) #1

declare dso_local i32 @bond_get_mtu_values(%struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i32 @bond_set_mtu(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @proc_is64bit(i32) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i32 @copyin(i32, %struct.if_bond_req*, i32) #1

declare dso_local %struct.ifnet* @ifunit(i32) #1

declare dso_local i32 @bond_add_interface(%struct.ifnet*, %struct.ifnet*) #1

declare dso_local i32 @bond_remove_interface(%struct.TYPE_18__*, %struct.ifnet*) #1

declare dso_local i32 @bond_set_mode(%struct.ifnet*, i32) #1

declare dso_local i32 @bond_get_status(%struct.TYPE_18__*, %struct.if_bond_req*, i32) #1

declare dso_local i32 @bond_set_promisc(%struct.ifnet*) #1

declare dso_local i32 @bond_setmulti(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
