; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_addmulti_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_addmulti_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i64 }
%struct.sockaddr = type { i64 }
%struct.ifmultiaddr = type { %struct.sockaddr*, %struct.ifnet*, %struct.ifmultiaddr* }
%struct.sockaddr_storage = type { i64 }

@AF_UNSPEC = common dso_local global i64 0, align 8
@AF_LINK = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@M_IFADDR = common dso_local global i32 0, align 4
@RTM_NEWMADDR = common dso_local global i32 0, align 4
@SIOCADDMULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.sockaddr*, %struct.ifmultiaddr**, i32)* @if_addmulti_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_addmulti_common(%struct.ifnet* %0, %struct.sockaddr* %1, %struct.ifmultiaddr** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.ifmultiaddr**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_storage, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ifmultiaddr*, align 8
  %17 = alloca %struct.ifmultiaddr*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store %struct.ifmultiaddr** %2, %struct.ifmultiaddr*** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.sockaddr* null, %struct.sockaddr** %11, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store %struct.ifmultiaddr* null, %struct.ifmultiaddr** %16, align 8
  store %struct.ifmultiaddr* null, %struct.ifmultiaddr** %17, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %4
  %21 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %22 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AF_UNSPEC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %28 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AF_LINK, align 8
  %31 = icmp eq i64 %29, %30
  br label %32

32:                                               ; preds = %26, %20, %4
  %33 = phi i1 [ true, %20 ], [ true, %4 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @VERIFY(i32 %34)
  %36 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %37 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AF_LINK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %32
  %42 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %43 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AF_UNSPEC, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41, %32
  %48 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %49 = call %struct.sockaddr* @copy_and_normalize(%struct.sockaddr* %48)
  store %struct.sockaddr* %49, %struct.sockaddr** %12, align 8
  %50 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %51 = icmp eq %struct.sockaddr* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @ENOMEM, align 4
  store i32 %53, i32* %13, align 4
  br label %277

54:                                               ; preds = %47
  %55 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  store %struct.sockaddr* %55, %struct.sockaddr** %7, align 8
  br label %56

56:                                               ; preds = %54, %41
  %57 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %58 = call i32 @ifnet_lock_exclusive(%struct.ifnet* %57)
  %59 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %60 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IFF_MULTICAST, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %66, i32* %13, align 4
  %67 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %68 = call i32 @ifnet_lock_done(%struct.ifnet* %67)
  br label %277

69:                                               ; preds = %56
  %70 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %71 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %72 = load %struct.ifmultiaddr**, %struct.ifmultiaddr*** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @if_addmulti_doesexist(%struct.ifnet* %70, %struct.sockaddr* %71, %struct.ifmultiaddr** %72, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %76 = call i32 @ifnet_lock_done(%struct.ifnet* %75)
  %77 = load i32, i32* %13, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  br label %277

80:                                               ; preds = %69
  %81 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %82 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %83 = bitcast %struct.sockaddr_storage* %10 to %struct.sockaddr*
  %84 = call i32 @dlil_resolve_multi(%struct.ifnet* %81, %struct.sockaddr* %82, %struct.sockaddr* %83, i32 8)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %10, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %87
  %92 = bitcast %struct.sockaddr_storage* %10 to %struct.sockaddr*
  %93 = call %struct.sockaddr* @copy_and_normalize(%struct.sockaddr* %92)
  store %struct.sockaddr* %93, %struct.sockaddr** %11, align 8
  %94 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %95 = icmp eq %struct.sockaddr* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* @ENOMEM, align 4
  store i32 %97, i32* %13, align 4
  br label %277

98:                                               ; preds = %91
  %99 = load i32, i32* @M_WAITOK, align 4
  %100 = call %struct.ifmultiaddr* @ifma_alloc(i32 %99)
  store %struct.ifmultiaddr* %100, %struct.ifmultiaddr** %17, align 8
  %101 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %17, align 8
  %102 = icmp eq %struct.ifmultiaddr* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* @ENOMEM, align 4
  store i32 %104, i32* %13, align 4
  br label %277

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %105, %87, %80
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @EOPNOTSUPP, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 0, i32* %13, align 4
  br label %116

111:                                              ; preds = %106
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  br label %277

115:                                              ; preds = %111
  br label %116

116:                                              ; preds = %115, %110
  %117 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %118 = icmp eq %struct.sockaddr* %117, null
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %121 = call %struct.sockaddr* @copy_and_normalize(%struct.sockaddr* %120)
  store %struct.sockaddr* %121, %struct.sockaddr** %12, align 8
  %122 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %123 = icmp eq %struct.sockaddr* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i32, i32* @ENOMEM, align 4
  store i32 %125, i32* %13, align 4
  br label %277

126:                                              ; preds = %119
  br label %127

127:                                              ; preds = %126, %116
  %128 = load i32, i32* @M_WAITOK, align 4
  %129 = call %struct.ifmultiaddr* @ifma_alloc(i32 %128)
  store %struct.ifmultiaddr* %129, %struct.ifmultiaddr** %16, align 8
  %130 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %16, align 8
  %131 = icmp eq %struct.ifmultiaddr* %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i32, i32* @ENOMEM, align 4
  store i32 %133, i32* %13, align 4
  br label %277

134:                                              ; preds = %127
  %135 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %136 = call i32 @ifnet_lock_exclusive(%struct.ifnet* %135)
  %137 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %138 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %139 = load %struct.ifmultiaddr**, %struct.ifmultiaddr*** %8, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @if_addmulti_doesexist(%struct.ifnet* %137, %struct.sockaddr* %138, %struct.ifmultiaddr** %139, i32 %140)
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %134
  %145 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %146 = call i32 @ifnet_lock_done(%struct.ifnet* %145)
  br label %277

147:                                              ; preds = %134
  %148 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %17, align 8
  %149 = icmp ne %struct.ifmultiaddr* %148, null
  br i1 %149, label %150, label %197

150:                                              ; preds = %147
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = call i32 @VERIFY(i32 %154)
  %156 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %157 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %158 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %16, align 8
  %159 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %158, i32 0, i32 2
  %160 = call i32 @if_addmulti_doesexist(%struct.ifnet* %156, %struct.sockaddr* %157, %struct.ifmultiaddr** %159, i32 0)
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %177

162:                                              ; preds = %150
  %163 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %164 = load i32, i32* @M_IFADDR, align 4
  %165 = call i32 @FREE(%struct.sockaddr* %163, i32 %164)
  store %struct.sockaddr* null, %struct.sockaddr** %11, align 8
  %166 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %17, align 8
  %167 = call i32 @ifma_free(%struct.ifmultiaddr* %166)
  store %struct.ifmultiaddr* null, %struct.ifmultiaddr** %17, align 8
  %168 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %16, align 8
  %169 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %168, i32 0, i32 2
  %170 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %169, align 8
  %171 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %170, i32 0, i32 1
  %172 = load %struct.ifnet*, %struct.ifnet** %171, align 8
  %173 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %174 = icmp eq %struct.ifnet* %172, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 @VERIFY(i32 %175)
  br label %196

177:                                              ; preds = %150
  store i32 1, i32* %14, align 4
  %178 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %179 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %17, align 8
  %180 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %179, i32 0, i32 0
  store %struct.sockaddr* %178, %struct.sockaddr** %180, align 8
  %181 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %182 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %17, align 8
  %183 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %182, i32 0, i32 1
  store %struct.ifnet* %181, %struct.ifnet** %183, align 8
  %184 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %17, align 8
  %185 = call i32 @IFMA_LOCK(%struct.ifmultiaddr* %184)
  %186 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %187 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %17, align 8
  %188 = call i32 @if_attach_ifma(%struct.ifnet* %186, %struct.ifmultiaddr* %187, i32 0)
  %189 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %17, align 8
  %190 = call i32 @IFMA_ADDREF_LOCKED(%struct.ifmultiaddr* %189)
  %191 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %17, align 8
  %192 = call i32 @IFMA_UNLOCK(%struct.ifmultiaddr* %191)
  %193 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %17, align 8
  %194 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %16, align 8
  %195 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %194, i32 0, i32 2
  store %struct.ifmultiaddr* %193, %struct.ifmultiaddr** %195, align 8
  br label %196

196:                                              ; preds = %177, %162
  br label %197

197:                                              ; preds = %196, %147
  %198 = load i32, i32* %9, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %197
  %201 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %16, align 8
  %202 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %201, i32 0, i32 2
  %203 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %202, align 8
  %204 = icmp eq %struct.ifmultiaddr* %203, null
  br label %205

205:                                              ; preds = %200, %197
  %206 = phi i1 [ true, %197 ], [ %204, %200 ]
  %207 = zext i1 %206 to i32
  %208 = call i32 @VERIFY(i32 %207)
  %209 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %210 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %16, align 8
  %211 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %210, i32 0, i32 0
  store %struct.sockaddr* %209, %struct.sockaddr** %211, align 8
  %212 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %213 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %16, align 8
  %214 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %213, i32 0, i32 1
  store %struct.ifnet* %212, %struct.ifnet** %214, align 8
  %215 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %16, align 8
  %216 = call i32 @IFMA_LOCK(%struct.ifmultiaddr* %215)
  %217 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %218 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %16, align 8
  %219 = load i32, i32* %9, align 4
  %220 = call i32 @if_attach_ifma(%struct.ifnet* %217, %struct.ifmultiaddr* %218, i32 %219)
  %221 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %16, align 8
  %222 = call i32 @IFMA_ADDREF_LOCKED(%struct.ifmultiaddr* %221)
  %223 = load %struct.ifmultiaddr**, %struct.ifmultiaddr*** %8, align 8
  %224 = icmp ne %struct.ifmultiaddr** %223, null
  br i1 %224, label %225, label %231

225:                                              ; preds = %205
  %226 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %16, align 8
  %227 = load %struct.ifmultiaddr**, %struct.ifmultiaddr*** %8, align 8
  store %struct.ifmultiaddr* %226, %struct.ifmultiaddr** %227, align 8
  %228 = load %struct.ifmultiaddr**, %struct.ifmultiaddr*** %8, align 8
  %229 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %228, align 8
  %230 = call i32 @IFMA_ADDREF_LOCKED(%struct.ifmultiaddr* %229)
  br label %231

231:                                              ; preds = %225, %205
  %232 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %16, align 8
  %233 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %232, i32 0, i32 0
  %234 = load %struct.sockaddr*, %struct.sockaddr** %233, align 8
  %235 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @AF_UNSPEC, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %247, label %239

239:                                              ; preds = %231
  %240 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %16, align 8
  %241 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %240, i32 0, i32 0
  %242 = load %struct.sockaddr*, %struct.sockaddr** %241, align 8
  %243 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @AF_LINK, align 8
  %246 = icmp eq i64 %244, %245
  br label %247

247:                                              ; preds = %239, %231
  %248 = phi i1 [ true, %231 ], [ %246, %239 ]
  %249 = zext i1 %248 to i32
  store i32 %249, i32* %15, align 4
  %250 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %16, align 8
  %251 = call i32 @IFMA_UNLOCK(%struct.ifmultiaddr* %250)
  %252 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %253 = call i32 @ifnet_lock_done(%struct.ifnet* %252)
  %254 = load i32, i32* @RTM_NEWMADDR, align 4
  %255 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %16, align 8
  %256 = call i32 @rt_newmaddrmsg(i32 %254, %struct.ifmultiaddr* %255)
  %257 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %16, align 8
  %258 = call i32 @IFMA_REMREF(%struct.ifmultiaddr* %257)
  %259 = load i32, i32* %15, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %247
  %262 = load i32, i32* %14, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %261, %247
  %265 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %266 = load i32, i32* @SIOCADDMULTI, align 4
  %267 = call i32 @ifnet_ioctl(%struct.ifnet* %265, i32 0, i32 %266, i32* null)
  br label %268

268:                                              ; preds = %264, %261
  %269 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %270 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = icmp sgt i64 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %268
  %274 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %275 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %274, i32 0, i32 1
  store i64 0, i64* %275, align 8
  br label %276

276:                                              ; preds = %273, %268
  store i32 0, i32* %5, align 4
  br label %305

277:                                              ; preds = %144, %132, %124, %114, %103, %96, %79, %65, %52
  %278 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %16, align 8
  %279 = icmp ne %struct.ifmultiaddr* %278, null
  br i1 %279, label %280, label %283

280:                                              ; preds = %277
  %281 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %16, align 8
  %282 = call i32 @ifma_free(%struct.ifmultiaddr* %281)
  br label %283

283:                                              ; preds = %280, %277
  %284 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %285 = icmp ne %struct.sockaddr* %284, null
  br i1 %285, label %286, label %290

286:                                              ; preds = %283
  %287 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %288 = load i32, i32* @M_IFADDR, align 4
  %289 = call i32 @FREE(%struct.sockaddr* %287, i32 %288)
  br label %290

290:                                              ; preds = %286, %283
  %291 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %17, align 8
  %292 = icmp ne %struct.ifmultiaddr* %291, null
  br i1 %292, label %293, label %296

293:                                              ; preds = %290
  %294 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %17, align 8
  %295 = call i32 @ifma_free(%struct.ifmultiaddr* %294)
  br label %296

296:                                              ; preds = %293, %290
  %297 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %298 = icmp ne %struct.sockaddr* %297, null
  br i1 %298, label %299, label %303

299:                                              ; preds = %296
  %300 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %301 = load i32, i32* @M_IFADDR, align 4
  %302 = call i32 @FREE(%struct.sockaddr* %300, i32 %301)
  br label %303

303:                                              ; preds = %299, %296
  %304 = load i32, i32* %13, align 4
  store i32 %304, i32* %5, align 4
  br label %305

305:                                              ; preds = %303, %276
  %306 = load i32, i32* %5, align 4
  ret i32 %306
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local %struct.sockaddr* @copy_and_normalize(%struct.sockaddr*) #1

declare dso_local i32 @ifnet_lock_exclusive(%struct.ifnet*) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

declare dso_local i32 @if_addmulti_doesexist(%struct.ifnet*, %struct.sockaddr*, %struct.ifmultiaddr**, i32) #1

declare dso_local i32 @dlil_resolve_multi(%struct.ifnet*, %struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local %struct.ifmultiaddr* @ifma_alloc(i32) #1

declare dso_local i32 @FREE(%struct.sockaddr*, i32) #1

declare dso_local i32 @ifma_free(%struct.ifmultiaddr*) #1

declare dso_local i32 @IFMA_LOCK(%struct.ifmultiaddr*) #1

declare dso_local i32 @if_attach_ifma(%struct.ifnet*, %struct.ifmultiaddr*, i32) #1

declare dso_local i32 @IFMA_ADDREF_LOCKED(%struct.ifmultiaddr*) #1

declare dso_local i32 @IFMA_UNLOCK(%struct.ifmultiaddr*) #1

declare dso_local i32 @rt_newmaddrmsg(i32, %struct.ifmultiaddr*) #1

declare dso_local i32 @IFMA_REMREF(%struct.ifmultiaddr*) #1

declare dso_local i32 @ifnet_ioctl(%struct.ifnet*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
