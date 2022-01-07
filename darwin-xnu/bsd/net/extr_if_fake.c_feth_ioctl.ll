; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_fake.c_feth_ioctl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_fake.c_feth_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.ifdevmtu = type { i32, i32, i32 }
%union.ifdrvu = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.ifmediareq = type { i32, i32, i32, i8*, i8* }
%struct.ifreq = type { %struct.TYPE_16__, i32, %struct.ifdevmtu }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32* }
%struct.ifmediareq64 = type { i32 }
%struct.ifmediareq32 = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i8* null, align 8
@USER_ADDR_NULL = common dso_local global i32 0, align 4
@IF_MINMTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IFF_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32, i8*)* @feth_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feth_ioctl(%struct.TYPE_17__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ifdevmtu*, align 8
  %10 = alloca %union.ifdrvu, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ifmediareq*, align 8
  %16 = alloca %struct.ifreq*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.ifreq*
  store %struct.ifreq* %22, %struct.ifreq** %16, align 8
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %259 [
    i32 131, label %24
    i32 135, label %29
    i32 134, label %29
    i32 136, label %121
    i32 128, label %134
    i32 133, label %155
    i32 132, label %155
    i32 138, label %163
    i32 137, label %163
    i32 129, label %214
    i32 130, label %225
    i32 140, label %258
    i32 139, label %258
  ]

24:                                               ; preds = %3
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %26 = load i32, i32* @IFF_UP, align 4
  %27 = load i32, i32* @IFF_UP, align 4
  %28 = call i32 @ifnet_set_flags(%struct.TYPE_17__* %25, i32 %26, i32 %27)
  br label %261

29:                                               ; preds = %3, %3
  %30 = call i32 (...) @feth_lock()
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %32 = call i32 @ifnet_softc(%struct.TYPE_17__* %31)
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %34, %struct.TYPE_18__** %17, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %36 = icmp eq %struct.TYPE_18__* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = call i32 (...) @feth_unlock()
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %39, i32* %4, align 4
  br label %263

40:                                               ; preds = %29
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @IFM_AVALID, align 4
  %47 = load i32, i32* @IFM_ACTIVE, align 4
  %48 = or i32 %46, %47
  br label %51

49:                                               ; preds = %40
  %50 = load i32, i32* @IFM_AVALID, align 4
  br label %51

51:                                               ; preds = %49, %45
  %52 = phi i32 [ %48, %45 ], [ %50, %49 ]
  store i32 %52, i32* %18, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = bitcast i8* %53 to %struct.ifmediareq*
  store %struct.ifmediareq* %54, %struct.ifmediareq** %15, align 8
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 134
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.ifmediareq*, %struct.ifmediareq** %15, align 8
  %59 = bitcast %struct.ifmediareq* %58 to %struct.ifmediareq64*
  %60 = getelementptr inbounds %struct.ifmediareq64, %struct.ifmediareq64* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  br label %68

62:                                               ; preds = %51
  %63 = load %struct.ifmediareq*, %struct.ifmediareq** %15, align 8
  %64 = bitcast %struct.ifmediareq* %63 to %struct.ifmediareq32*
  %65 = getelementptr inbounds %struct.ifmediareq32, %struct.ifmediareq32* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @CAST_USER_ADDR_T(i32 %66)
  br label %68

68:                                               ; preds = %62, %57
  %69 = phi i32 [ %61, %57 ], [ %67, %62 ]
  store i32 %69, i32* %19, align 4
  %70 = load %struct.ifmediareq*, %struct.ifmediareq** %15, align 8
  %71 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %8, align 4
  %73 = load i8*, i8** @IFM_ETHER, align 8
  %74 = load %struct.ifmediareq*, %struct.ifmediareq** %15, align 8
  %75 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %74, i32 0, i32 4
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** @IFM_ETHER, align 8
  %77 = load %struct.ifmediareq*, %struct.ifmediareq** %15, align 8
  %78 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load %struct.ifmediareq*, %struct.ifmediareq** %15, align 8
  %80 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %79, i32 0, i32 2
  store i32 0, i32* %80, align 8
  %81 = load i32, i32* %18, align 4
  %82 = load %struct.ifmediareq*, %struct.ifmediareq** %15, align 8
  %83 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* @USER_ADDR_NULL, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %68
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.ifmediareq*, %struct.ifmediareq** %15, align 8
  %92 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %119

93:                                               ; preds = %68
  %94 = load i32, i32* %8, align 4
  %95 = icmp ugt i32 %94, 0
  br i1 %95, label %96, label %118

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ugt i32 %97, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %102, %96
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.ifmediareq*, %struct.ifmediareq** %15, align 8
  %109 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* %8, align 4
  %114 = zext i32 %113 to i64
  %115 = mul i64 %114, 4
  %116 = trunc i64 %115 to i32
  %117 = call i32 @copyout(i32* %111, i32 %112, i32 %116)
  store i32 %117, i32* %14, align 4
  br label %118

118:                                              ; preds = %106, %93
  br label %119

119:                                              ; preds = %118, %87
  %120 = call i32 (...) @feth_unlock()
  br label %261

121:                                              ; preds = %3
  %122 = load %struct.ifreq*, %struct.ifreq** %16, align 8
  %123 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %122, i32 0, i32 2
  store %struct.ifdevmtu* %123, %struct.ifdevmtu** %9, align 8
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %125 = call i32 @ifnet_mtu(%struct.TYPE_17__* %124)
  %126 = load %struct.ifdevmtu*, %struct.ifdevmtu** %9, align 8
  %127 = getelementptr inbounds %struct.ifdevmtu, %struct.ifdevmtu* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  %128 = call i32 (...) @feth_max_mtu()
  %129 = load %struct.ifdevmtu*, %struct.ifdevmtu** %9, align 8
  %130 = getelementptr inbounds %struct.ifdevmtu, %struct.ifdevmtu* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @IF_MINMTU, align 4
  %132 = load %struct.ifdevmtu*, %struct.ifdevmtu** %9, align 8
  %133 = getelementptr inbounds %struct.ifdevmtu, %struct.ifdevmtu* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  br label %261

134:                                              ; preds = %3
  %135 = load %struct.ifreq*, %struct.ifreq** %16, align 8
  %136 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (...) @feth_max_mtu()
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %146, label %140

140:                                              ; preds = %134
  %141 = load %struct.ifreq*, %struct.ifreq** %16, align 8
  %142 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @IF_MINMTU, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %140, %134
  %147 = load i32, i32* @EINVAL, align 4
  store i32 %147, i32* %14, align 4
  br label %154

148:                                              ; preds = %140
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %150 = load %struct.ifreq*, %struct.ifreq** %16, align 8
  %151 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @ifnet_set_mtu(%struct.TYPE_17__* %149, i32 %152)
  store i32 %153, i32* %14, align 4
  br label %154

154:                                              ; preds = %148, %146
  br label %261

155:                                              ; preds = %3, %3
  %156 = call i32 (...) @current_proc()
  %157 = call i32 @proc_suser(i32 %156)
  store i32 %157, i32* %14, align 4
  %158 = load i32, i32* %14, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  br label %261

161:                                              ; preds = %155
  %162 = load i32, i32* @TRUE, align 4
  store i32 %162, i32* %13, align 4
  br label %163

163:                                              ; preds = %3, %3, %161
  %164 = load i8*, i8** %7, align 8
  %165 = bitcast %union.ifdrvu* %10 to i8**
  store i8* %164, i8** %165, align 8
  %166 = load i32, i32* %6, align 4
  %167 = icmp eq i32 %166, 138
  br i1 %167, label %171, label %168

168:                                              ; preds = %163
  %169 = load i32, i32* %6, align 4
  %170 = icmp eq i32 %169, 133
  br i1 %170, label %171, label %185

171:                                              ; preds = %168, %163
  %172 = bitcast %union.ifdrvu* %10 to %struct.TYPE_14__**
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %11, align 4
  %176 = bitcast %union.ifdrvu* %10 to %struct.TYPE_14__**
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %12, align 4
  %180 = bitcast %union.ifdrvu* %10 to %struct.TYPE_14__**
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @CAST_USER_ADDR_T(i32 %183)
  store i32 %184, i32* %19, align 4
  br label %198

185:                                              ; preds = %168
  %186 = bitcast %union.ifdrvu* %10 to %struct.TYPE_15__**
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %11, align 4
  %190 = bitcast %union.ifdrvu* %10 to %struct.TYPE_15__**
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %12, align 4
  %194 = bitcast %union.ifdrvu* %10 to %struct.TYPE_15__**
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %19, align 4
  br label %198

198:                                              ; preds = %185, %171
  %199 = load i32, i32* %13, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %198
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %12, align 4
  %205 = load i32, i32* %19, align 4
  %206 = call i32 @feth_set_drvspec(%struct.TYPE_17__* %202, i32 %203, i32 %204, i32 %205)
  store i32 %206, i32* %14, align 4
  br label %213

207:                                              ; preds = %198
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* %19, align 4
  %212 = call i32 @feth_get_drvspec(%struct.TYPE_17__* %208, i32 %209, i32 %210, i32 %211)
  store i32 %212, i32* %14, align 4
  br label %213

213:                                              ; preds = %207, %201
  br label %261

214:                                              ; preds = %3
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %216 = load %struct.ifreq*, %struct.ifreq** %16, align 8
  %217 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.ifreq*, %struct.ifreq** %16, align 8
  %221 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @ifnet_set_lladdr(%struct.TYPE_17__* %215, i32 %219, i32 %223)
  store i32 %224, i32* %14, align 4
  br label %261

225:                                              ; preds = %3
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @IFF_UP, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %245

232:                                              ; preds = %225
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @IFF_RUNNING, align 4
  %237 = and i32 %235, %236
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %232
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %241 = load i32, i32* @IFF_RUNNING, align 4
  %242 = load i32, i32* @IFF_RUNNING, align 4
  %243 = call i32 @ifnet_set_flags(%struct.TYPE_17__* %240, i32 %241, i32 %242)
  store i32 %243, i32* %14, align 4
  br label %244

244:                                              ; preds = %239, %232
  br label %257

245:                                              ; preds = %225
  %246 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @IFF_RUNNING, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %245
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %254 = load i32, i32* @IFF_RUNNING, align 4
  %255 = call i32 @ifnet_set_flags(%struct.TYPE_17__* %253, i32 0, i32 %254)
  store i32 %255, i32* %14, align 4
  br label %256

256:                                              ; preds = %252, %245
  br label %257

257:                                              ; preds = %256, %244
  br label %261

258:                                              ; preds = %3, %3
  store i32 0, i32* %14, align 4
  br label %261

259:                                              ; preds = %3
  %260 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %260, i32* %14, align 4
  br label %261

261:                                              ; preds = %259, %258, %257, %214, %213, %160, %154, %121, %119, %24
  %262 = load i32, i32* %14, align 4
  store i32 %262, i32* %4, align 4
  br label %263

263:                                              ; preds = %261, %37
  %264 = load i32, i32* %4, align 4
  ret i32 %264
}

declare dso_local i32 @ifnet_set_flags(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @feth_lock(...) #1

declare dso_local i32 @ifnet_softc(%struct.TYPE_17__*) #1

declare dso_local i32 @feth_unlock(...) #1

declare dso_local i32 @CAST_USER_ADDR_T(i32) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @ifnet_mtu(%struct.TYPE_17__*) #1

declare dso_local i32 @feth_max_mtu(...) #1

declare dso_local i32 @ifnet_set_mtu(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @proc_suser(i32) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i32 @feth_set_drvspec(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @feth_get_drvspec(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @ifnet_set_lladdr(%struct.TYPE_17__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
