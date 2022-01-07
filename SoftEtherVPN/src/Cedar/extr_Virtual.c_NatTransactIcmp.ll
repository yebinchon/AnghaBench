; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NatTransactIcmp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NatTransactIcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i64, i8*, i32, i64 }
%struct.TYPE_27__ = type { i64, i32, i64, i64, i32*, %struct.TYPE_31__*, %struct.TYPE_26__*, i32, i32, %struct.TYPE_30__*, i64, %struct.TYPE_30__*, i32, i32, i64 }
%struct.TYPE_31__ = type { i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_30__ = type { i32, i32, i32 }
%struct.TYPE_29__ = type { i32, i64, i32, i64 }
%struct.TYPE_28__ = type { i64 }

@IP_PROTO_ICMPV4 = common dso_local global i32 0, align 4
@NatIcmpThreadProc = common dso_local global i32 0, align 4
@NAT_ICMP_TIMEOUT_WITH_API = common dso_local global i64 0, align 8
@SOCK_LATER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"ICMP ERROR\0A\00", align 1
@MAX_NUM_IGNORE_ERRORS = common dso_local global i64 0, align 8
@NAT_ICMP_TIMEOUT = common dso_local global i64 0, align 8
@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NatTransactIcmp(%struct.TYPE_25__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_29__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %19 = icmp eq %struct.TYPE_25__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %22 = icmp eq %struct.TYPE_27__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %2
  store i32 1, i32* %3, align 4
  br label %362

24:                                               ; preds = %20
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %11, align 8
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 14
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %325

33:                                               ; preds = %24
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %80

38:                                               ; preds = %33
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %79

43:                                               ; preds = %38
  %44 = load i32, i32* @IP_PROTO_ICMPV4, align 4
  %45 = call i32 @MAKE_SPECIAL_PORT(i32 %44)
  %46 = call %struct.TYPE_31__* @NewUDP(i32 %45)
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 5
  store %struct.TYPE_31__* %46, %struct.TYPE_31__** %48, align 8
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i32 0, i32 5
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %50, align 8
  %52 = icmp eq %struct.TYPE_31__* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %325

54:                                               ; preds = %43
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 5
  %57 = load %struct.TYPE_31__*, %struct.TYPE_31__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %57, i32 0, i32 3
  %59 = call i32 @IPToUINT(i32* %58)
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 13
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 5
  %64 = load %struct.TYPE_31__*, %struct.TYPE_31__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 12
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 5
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %70, align 8
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @JoinSockToSockEvent(%struct.TYPE_31__* %71, i32 %74)
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 1
  store i32 1, i32* %77, align 8
  br label %78

78:                                               ; preds = %54
  br label %79

79:                                               ; preds = %78, %38
  br label %156

80:                                               ; preds = %33
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %106

85:                                               ; preds = %80
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 6
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp sge i32 %90, 1
  br i1 %91, label %92, label %105

92:                                               ; preds = %85
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 6
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %94, align 8
  %96 = call %struct.TYPE_30__* @GetNext(%struct.TYPE_26__* %95)
  store %struct.TYPE_30__* %96, %struct.TYPE_30__** %12, align 8
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 11
  store %struct.TYPE_30__* %97, %struct.TYPE_30__** %99, align 8
  %100 = load i32, i32* @NatIcmpThreadProc, align 4
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %102 = call i32* @NewThread(i32 %100, %struct.TYPE_27__* %101)
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 4
  store i32* %102, i32** %104, align 8
  br label %105

105:                                              ; preds = %92, %85
  br label %106

106:                                              ; preds = %105, %80
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 10
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %136

111:                                              ; preds = %106
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 9
  %114 = load %struct.TYPE_30__*, %struct.TYPE_30__** %113, align 8
  %115 = icmp ne %struct.TYPE_30__* %114, null
  br i1 %115, label %116, label %134

116:                                              ; preds = %111
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 9
  %119 = load %struct.TYPE_30__*, %struct.TYPE_30__** %118, align 8
  store %struct.TYPE_30__* %119, %struct.TYPE_30__** %8, align 8
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 9
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %121, align 8
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %126 = call i32 @InsertQueue(i32 %124, %struct.TYPE_30__* %125)
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %132, i32 0, i32 2
  store i64 %131, i64* %133, align 8
  br label %135

134:                                              ; preds = %111
  br label %325

135:                                              ; preds = %116
  br label %136

136:                                              ; preds = %135, %106
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @NAT_ICMP_TIMEOUT_WITH_API, align 8
  %141 = add nsw i64 %139, %140
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp slt i64 %141, %144
  br i1 %145, label %154, label %146

146:                                              ; preds = %136
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp sgt i64 %149, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %146, %136
  br label %325

155:                                              ; preds = %146
  store i32 1, i32* %3, align 4
  br label %362

156:                                              ; preds = %79
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 2
  %159 = load i8*, i8** %158, align 8
  store i8* %159, i8** %6, align 8
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @UINTToIP(i32* %9, i64 %162)
  br label %164

164:                                              ; preds = %156, %257
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 5
  %167 = load %struct.TYPE_31__*, %struct.TYPE_31__** %166, align 8
  %168 = load i8*, i8** %6, align 8
  %169 = call i64 @RecvFrom(%struct.TYPE_31__* %167, i32* %13, i64* %14, i8* %168, i32 65536)
  store i64 %169, i64* %7, align 8
  %170 = load i64, i64* %7, align 8
  %171 = load i64, i64* @SOCK_LATER, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %164
  br label %258

174:                                              ; preds = %164
  %175 = load i64, i64* %7, align 8
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %194

177:                                              ; preds = %174
  %178 = call i32 @Debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 5
  %181 = load %struct.TYPE_31__*, %struct.TYPE_31__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %177
  br label %325

186:                                              ; preds = %177
  %187 = load i64, i64* %10, align 8
  %188 = add nsw i64 %187, 1
  store i64 %188, i64* %10, align 8
  %189 = load i64, i64* @MAX_NUM_IGNORE_ERRORS, align 8
  %190 = icmp sge i64 %187, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  br label %325

192:                                              ; preds = %186
  br label %193

193:                                              ; preds = %192
  br label %256

194:                                              ; preds = %174
  %195 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %195, i32 0, i32 8
  %197 = load i32, i32* %196, align 4
  %198 = load i8*, i8** %6, align 8
  %199 = load i64, i64* %7, align 8
  %200 = call %struct.TYPE_29__* @IcmpParseResult(i32* %9, i32 %197, i32 0, i8* %198, i64 %199)
  store %struct.TYPE_29__* %200, %struct.TYPE_29__** %15, align 8
  %201 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %202 = icmp ne %struct.TYPE_29__* %201, null
  br i1 %202, label %203, label %255

203:                                              ; preds = %194
  %204 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %205 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %210 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %209, i32 0, i32 2
  %211 = call i64 @CmpIpAddr(i32* %210, i32* %9)
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %230, label %213

213:                                              ; preds = %208, %203
  %214 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %215 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = sext i32 %216 to i64
  %218 = icmp uge i64 %217, 8
  br i1 %218, label %219, label %252

219:                                              ; preds = %213
  %220 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %221 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = inttoptr i64 %222 to %struct.TYPE_28__*
  %224 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = icmp eq i64 %225, %228
  br i1 %229, label %230, label %252

230:                                              ; preds = %219, %208
  %231 = load i64, i64* %7, align 8
  %232 = call i8* @Malloc(i64 %231)
  store i8* %232, i8** %16, align 8
  %233 = load i8*, i8** %16, align 8
  %234 = load i8*, i8** %6, align 8
  %235 = load i64, i64* %7, align 8
  %236 = call i32 @Copy(i8* %233, i8* %234, i64 %235)
  %237 = load i8*, i8** %16, align 8
  %238 = load i64, i64* %7, align 8
  %239 = call %struct.TYPE_30__* @NewBlock(i8* %237, i64 %238, i32 0)
  store %struct.TYPE_30__* %239, %struct.TYPE_30__** %8, align 8
  %240 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %240, i32 0, i32 7
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %244 = call i32 @InsertQueue(i32 %242, %struct.TYPE_30__* %243)
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 0
  store i32 1, i32* %246, align 8
  %247 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %250, i32 0, i32 2
  store i64 %249, i64* %251, align 8
  br label %252

252:                                              ; preds = %230, %219, %213
  %253 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %254 = call i32 @IcmpFreeResult(%struct.TYPE_29__* %253)
  br label %255

255:                                              ; preds = %252, %194
  br label %256

256:                                              ; preds = %255, %193
  br label %257

257:                                              ; preds = %256
  br label %164

258:                                              ; preds = %173
  br label %259

259:                                              ; preds = %304, %258
  %260 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %260, i32 0, i32 6
  %262 = load %struct.TYPE_26__*, %struct.TYPE_26__** %261, align 8
  %263 = call %struct.TYPE_30__* @GetNext(%struct.TYPE_26__* %262)
  store %struct.TYPE_30__* %263, %struct.TYPE_30__** %8, align 8
  %264 = icmp ne %struct.TYPE_30__* %263, null
  br i1 %264, label %265, label %305

265:                                              ; preds = %259
  %266 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %266, i32 0, i32 5
  %268 = load %struct.TYPE_31__*, %struct.TYPE_31__** %267, align 8
  %269 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @SetTtl(%struct.TYPE_31__* %268, i32 %271)
  %273 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %273, i32 0, i32 5
  %275 = load %struct.TYPE_31__*, %struct.TYPE_31__** %274, align 8
  %276 = load i64, i64* %11, align 8
  %277 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = call i64 @SendTo(%struct.TYPE_31__* %275, i32* %9, i64 %276, i32 %279, i32 %282)
  store i64 %283, i64* %17, align 8
  %284 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %285 = call i32 @FreeBlock(%struct.TYPE_30__* %284)
  %286 = load i64, i64* %17, align 8
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %288, label %298

288:                                              ; preds = %265
  %289 = call i32 @Debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %290 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %290, i32 0, i32 5
  %292 = load %struct.TYPE_31__*, %struct.TYPE_31__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %288
  br label %325

297:                                              ; preds = %288
  br label %304

298:                                              ; preds = %265
  %299 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %302, i32 0, i32 2
  store i64 %301, i64* %303, align 8
  br label %304

304:                                              ; preds = %298, %297
  br label %259

305:                                              ; preds = %259
  %306 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @NAT_ICMP_TIMEOUT, align 8
  %310 = add nsw i64 %308, %309
  %311 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = icmp slt i64 %310, %313
  br i1 %314, label %323, label %315

315:                                              ; preds = %305
  %316 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %316, i32 0, i32 2
  %318 = load i64, i64* %317, align 8
  %319 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %319, i32 0, i32 1
  %321 = load i64, i64* %320, align 8
  %322 = icmp sgt i64 %318, %321
  br i1 %322, label %323, label %324

323:                                              ; preds = %315, %305
  br label %325

324:                                              ; preds = %315
  store i32 1, i32* %3, align 4
  br label %362

325:                                              ; preds = %323, %296, %191, %185, %154, %134, %53, %32
  %326 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %341

330:                                              ; preds = %325
  %331 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %331, i32 0, i32 5
  %333 = load %struct.TYPE_31__*, %struct.TYPE_31__** %332, align 8
  %334 = call i32 @Disconnect(%struct.TYPE_31__* %333)
  %335 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %335, i32 0, i32 5
  %337 = load %struct.TYPE_31__*, %struct.TYPE_31__** %336, align 8
  %338 = call i32 @ReleaseSock(%struct.TYPE_31__* %337)
  %339 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %339, i32 0, i32 5
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %340, align 8
  br label %341

341:                                              ; preds = %330, %325
  %342 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %342, i32 0, i32 4
  %344 = load i32*, i32** %343, align 8
  %345 = icmp ne i32* %344, null
  br i1 %345, label %346, label %358

346:                                              ; preds = %341
  %347 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %347, i32 0, i32 4
  %349 = load i32*, i32** %348, align 8
  %350 = load i32, i32* @INFINITE, align 4
  %351 = call i32 @WaitThread(i32* %349, i32 %350)
  %352 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %352, i32 0, i32 4
  %354 = load i32*, i32** %353, align 8
  %355 = call i32 @ReleaseThread(i32* %354)
  %356 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %356, i32 0, i32 4
  store i32* null, i32** %357, align 8
  br label %358

358:                                              ; preds = %346, %341
  %359 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %360 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %361 = call i32 @DeleteNatIcmp(%struct.TYPE_25__* %359, %struct.TYPE_27__* %360)
  store i32 0, i32* %3, align 4
  br label %362

362:                                              ; preds = %358, %324, %155, %23
  %363 = load i32, i32* %3, align 4
  ret i32 %363
}

declare dso_local %struct.TYPE_31__* @NewUDP(i32) #1

declare dso_local i32 @MAKE_SPECIAL_PORT(i32) #1

declare dso_local i32 @IPToUINT(i32*) #1

declare dso_local i32 @JoinSockToSockEvent(%struct.TYPE_31__*, i32) #1

declare dso_local %struct.TYPE_30__* @GetNext(%struct.TYPE_26__*) #1

declare dso_local i32* @NewThread(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @InsertQueue(i32, %struct.TYPE_30__*) #1

declare dso_local i32 @UINTToIP(i32*, i64) #1

declare dso_local i64 @RecvFrom(%struct.TYPE_31__*, i32*, i64*, i8*, i32) #1

declare dso_local i32 @Debug(i8*) #1

declare dso_local %struct.TYPE_29__* @IcmpParseResult(i32*, i32, i32, i8*, i64) #1

declare dso_local i64 @CmpIpAddr(i32*, i32*) #1

declare dso_local i8* @Malloc(i64) #1

declare dso_local i32 @Copy(i8*, i8*, i64) #1

declare dso_local %struct.TYPE_30__* @NewBlock(i8*, i64, i32) #1

declare dso_local i32 @IcmpFreeResult(%struct.TYPE_29__*) #1

declare dso_local i32 @SetTtl(%struct.TYPE_31__*, i32) #1

declare dso_local i64 @SendTo(%struct.TYPE_31__*, i32*, i64, i32, i32) #1

declare dso_local i32 @FreeBlock(%struct.TYPE_30__*) #1

declare dso_local i32 @Disconnect(%struct.TYPE_31__*) #1

declare dso_local i32 @ReleaseSock(%struct.TYPE_31__*) #1

declare dso_local i32 @WaitThread(i32*, i32) #1

declare dso_local i32 @ReleaseThread(i32*) #1

declare dso_local i32 @DeleteNatIcmp(%struct.TYPE_25__*, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
