; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_rtsock.c_rt_setif.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_rtsock.c_rt_setif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i32, %struct.ifaddr*, %struct.ifnet*, %struct.TYPE_6__, i32 (%struct.ifnet*, i32)*, i32 (%struct.rtentry*)* }
%struct.ifaddr = type { void (i32, %struct.rtentry*, %struct.sockaddr*)*, %struct.ifnet* }
%struct.ifnet = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_7__ = type { i64 }

@rnh_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@RTF_CONDEMNED = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@RTM_DELETE = common dso_local global i32 0, align 4
@RTV_MTU = common dso_local global i32 0, align 4
@CLAT46_HDR_EXPANSION_OVERHD = common dso_local global i64 0, align 8
@RTM_ADD = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@RTF_HOST = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtentry*, %struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*, i32)* @rt_setif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt_setif(%struct.rtentry* %0, %struct.sockaddr* %1, %struct.sockaddr* %2, %struct.sockaddr* %3, i32 %4) #0 {
  %6 = alloca %struct.rtentry*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ifaddr*, align 8
  %12 = alloca %struct.ifnet*, align 8
  %13 = alloca void (i32, %struct.rtentry*, %struct.sockaddr*)*, align 8
  %14 = alloca %struct.ifaddr*, align 8
  store %struct.rtentry* %0, %struct.rtentry** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %9, align 8
  store i32 %4, i32* %10, align 4
  store %struct.ifaddr* null, %struct.ifaddr** %11, align 8
  store %struct.ifnet* null, %struct.ifnet** %12, align 8
  %15 = load i32, i32* @rnh_lock, align 4
  %16 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %17 = call i32 @LCK_MTX_ASSERT(i32 %15, i32 %16)
  %18 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %19 = call i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry* %18)
  %20 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %21 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @RTF_CONDEMNED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  br label %403

27:                                               ; preds = %5
  %28 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %29 = call i32 @RT_ADDREF_LOCKED(%struct.rtentry* %28)
  %30 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %31 = call i32 @RT_CONVERT_LOCK(%struct.rtentry* %30)
  %32 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %33 = icmp ne %struct.sockaddr* %32, null
  br i1 %33, label %34, label %63

34:                                               ; preds = %27
  %35 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call %struct.ifaddr* @ifa_ifwithnet_scoped(%struct.sockaddr* %35, i32 %36)
  store %struct.ifaddr* %37, %struct.ifaddr** %11, align 8
  %38 = icmp ne %struct.ifaddr* %37, null
  br i1 %38, label %39, label %63

39:                                               ; preds = %34
  %40 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %41 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %40, i32 0, i32 1
  %42 = load %struct.ifnet*, %struct.ifnet** %41, align 8
  store %struct.ifnet* %42, %struct.ifnet** %12, align 8
  %43 = icmp ne %struct.ifnet* %42, null
  br i1 %43, label %44, label %63

44:                                               ; preds = %39
  %45 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %46 = icmp ne %struct.sockaddr* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %49 = icmp ne %struct.sockaddr* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %47, %44
  %51 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %52 = call i32 @IFA_REMREF(%struct.ifaddr* %51)
  %53 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %54 = icmp ne %struct.sockaddr* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  br label %59

57:                                               ; preds = %50
  %58 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi %struct.sockaddr* [ %56, %55 ], [ %58, %57 ]
  %61 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %62 = call %struct.ifaddr* @ifaof_ifpforaddr(%struct.sockaddr* %60, %struct.ifnet* %61)
  store %struct.ifaddr* %62, %struct.ifaddr** %11, align 8
  br label %151

63:                                               ; preds = %47, %39, %34, %27
  %64 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %65 = icmp ne %struct.ifaddr* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %68 = call i32 @IFA_REMREF(%struct.ifaddr* %67)
  store %struct.ifaddr* null, %struct.ifaddr** %11, align 8
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %71 = icmp ne %struct.sockaddr* %70, null
  br i1 %71, label %72, label %98

72:                                               ; preds = %69
  %73 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %74 = call %struct.ifnet* @if_withname(%struct.sockaddr* %73)
  store %struct.ifnet* %74, %struct.ifnet** %12, align 8
  %75 = icmp ne %struct.ifnet* %74, null
  br i1 %75, label %76, label %98

76:                                               ; preds = %72
  %77 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %78 = icmp ne %struct.sockaddr* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %81 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %82 = call %struct.ifaddr* @ifaof_ifpforaddr(%struct.sockaddr* %80, %struct.ifnet* %81)
  store %struct.ifaddr* %82, %struct.ifaddr** %11, align 8
  br label %97

83:                                               ; preds = %76
  %84 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %85 = call i32 @ifnet_lock_shared(%struct.ifnet* %84)
  %86 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %87 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %86, i32 0, i32 3
  %88 = call %struct.ifaddr* @TAILQ_FIRST(i32* %87)
  store %struct.ifaddr* %88, %struct.ifaddr** %11, align 8
  %89 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %90 = icmp ne %struct.ifaddr* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %93 = call i32 @IFA_ADDREF(%struct.ifaddr* %92)
  br label %94

94:                                               ; preds = %91, %83
  %95 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %96 = call i32 @ifnet_lock_done(%struct.ifnet* %95)
  br label %97

97:                                               ; preds = %94, %79
  br label %150

98:                                               ; preds = %72, %69
  %99 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %100 = icmp ne %struct.sockaddr* %99, null
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call %struct.ifaddr* @ifa_ifwithaddr_scoped(%struct.sockaddr* %102, i32 %103)
  store %struct.ifaddr* %104, %struct.ifaddr** %11, align 8
  %105 = icmp ne %struct.ifaddr* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %108 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %107, i32 0, i32 1
  %109 = load %struct.ifnet*, %struct.ifnet** %108, align 8
  store %struct.ifnet* %109, %struct.ifnet** %12, align 8
  br label %149

110:                                              ; preds = %101, %98
  %111 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %112 = icmp ne %struct.sockaddr* %111, null
  br i1 %112, label %113, label %148

113:                                              ; preds = %110
  %114 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %115 = call i32 @RT_UNLOCK(%struct.rtentry* %114)
  %116 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %117 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %120 = call %struct.TYPE_7__* @rt_key(%struct.rtentry* %119)
  %121 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %122 = load i32, i32* %10, align 4
  %123 = call %struct.ifaddr* @ifa_ifwithroute_scoped_locked(i32 %118, %struct.TYPE_7__* %120, %struct.sockaddr* %121, i32 %122)
  store %struct.ifaddr* %123, %struct.ifaddr** %11, align 8
  %124 = icmp ne %struct.ifaddr* %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %113
  %126 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %127 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %126, i32 0, i32 1
  %128 = load %struct.ifnet*, %struct.ifnet** %127, align 8
  store %struct.ifnet* %128, %struct.ifnet** %12, align 8
  br label %129

129:                                              ; preds = %125, %113
  %130 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %131 = call i32 @RT_LOCK(%struct.rtentry* %130)
  %132 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %133 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @RTF_CONDEMNED, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %129
  %139 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %140 = icmp ne %struct.ifaddr* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %143 = call i32 @IFA_REMREF(%struct.ifaddr* %142)
  br label %144

144:                                              ; preds = %141, %138
  %145 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %146 = call i32 @RT_REMREF_LOCKED(%struct.rtentry* %145)
  br label %403

147:                                              ; preds = %129
  br label %148

148:                                              ; preds = %147, %110
  br label %149

149:                                              ; preds = %148, %106
  br label %150

150:                                              ; preds = %149, %97
  br label %151

151:                                              ; preds = %150, %59
  %152 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %153 = call %struct.TYPE_7__* @rt_key(%struct.rtentry* %152)
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @AF_INET, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %151
  %159 = call i32 (...) @routegenid_inet_update()
  br label %160

160:                                              ; preds = %158, %151
  %161 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %162 = icmp ne %struct.ifaddr* %161, null
  br i1 %162, label %163, label %327

163:                                              ; preds = %160
  %164 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %165 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %164, i32 0, i32 1
  %166 = load %struct.ifaddr*, %struct.ifaddr** %165, align 8
  store %struct.ifaddr* %166, %struct.ifaddr** %14, align 8
  %167 = load %struct.ifaddr*, %struct.ifaddr** %14, align 8
  %168 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %169 = icmp ne %struct.ifaddr* %167, %168
  br i1 %169, label %170, label %324

170:                                              ; preds = %163
  %171 = load %struct.ifaddr*, %struct.ifaddr** %14, align 8
  %172 = icmp ne %struct.ifaddr* %171, null
  br i1 %172, label %173, label %189

173:                                              ; preds = %170
  %174 = load %struct.ifaddr*, %struct.ifaddr** %14, align 8
  %175 = call i32 @IFA_LOCK_SPIN(%struct.ifaddr* %174)
  %176 = load %struct.ifaddr*, %struct.ifaddr** %14, align 8
  %177 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %176, i32 0, i32 0
  %178 = load void (i32, %struct.rtentry*, %struct.sockaddr*)*, void (i32, %struct.rtentry*, %struct.sockaddr*)** %177, align 8
  store void (i32, %struct.rtentry*, %struct.sockaddr*)* %178, void (i32, %struct.rtentry*, %struct.sockaddr*)** %13, align 8
  %179 = load %struct.ifaddr*, %struct.ifaddr** %14, align 8
  %180 = call i32 @IFA_UNLOCK(%struct.ifaddr* %179)
  %181 = load void (i32, %struct.rtentry*, %struct.sockaddr*)*, void (i32, %struct.rtentry*, %struct.sockaddr*)** %13, align 8
  %182 = icmp ne void (i32, %struct.rtentry*, %struct.sockaddr*)* %181, null
  br i1 %182, label %183, label %188

183:                                              ; preds = %173
  %184 = load void (i32, %struct.rtentry*, %struct.sockaddr*)*, void (i32, %struct.rtentry*, %struct.sockaddr*)** %13, align 8
  %185 = load i32, i32* @RTM_DELETE, align 4
  %186 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %187 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  call void %184(i32 %185, %struct.rtentry* %186, %struct.sockaddr* %187)
  br label %188

188:                                              ; preds = %183, %173
  br label %189

189:                                              ; preds = %188, %170
  %190 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %191 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %192 = call i32 @rtsetifa(%struct.rtentry* %190, %struct.ifaddr* %191)
  %193 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %194 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %193, i32 0, i32 2
  %195 = load %struct.ifnet*, %struct.ifnet** %194, align 8
  %196 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %197 = icmp ne %struct.ifnet* %195, %196
  br i1 %197, label %198, label %228

198:                                              ; preds = %189
  %199 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %200 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %199, i32 0, i32 5
  %201 = load i32 (%struct.rtentry*)*, i32 (%struct.rtentry*)** %200, align 8
  %202 = icmp ne i32 (%struct.rtentry*)* %201, null
  br i1 %202, label %203, label %209

203:                                              ; preds = %198
  %204 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %205 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %204, i32 0, i32 5
  %206 = load i32 (%struct.rtentry*)*, i32 (%struct.rtentry*)** %205, align 8
  %207 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %208 = call i32 %206(%struct.rtentry* %207)
  br label %209

209:                                              ; preds = %203, %198
  %210 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %211 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %210, i32 0, i32 4
  %212 = load i32 (%struct.ifnet*, i32)*, i32 (%struct.ifnet*, i32)** %211, align 8
  %213 = icmp ne i32 (%struct.ifnet*, i32)* %212, null
  br i1 %213, label %214, label %227

214:                                              ; preds = %209
  %215 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %216 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %215, i32 0, i32 4
  %217 = load i32 (%struct.ifnet*, i32)*, i32 (%struct.ifnet*, i32)** %216, align 8
  %218 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %219 = call i32 %217(%struct.ifnet* %218, i32 1)
  %220 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %221 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %220, i32 0, i32 4
  %222 = load i32 (%struct.ifnet*, i32)*, i32 (%struct.ifnet*, i32)** %221, align 8
  %223 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %224 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %223, i32 0, i32 2
  %225 = load %struct.ifnet*, %struct.ifnet** %224, align 8
  %226 = call i32 %222(%struct.ifnet* %225, i32 -1)
  br label %227

227:                                              ; preds = %214, %209
  br label %228

228:                                              ; preds = %227, %189
  %229 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %230 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %231 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %230, i32 0, i32 2
  store %struct.ifnet* %229, %struct.ifnet** %231, align 8
  %232 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %233 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %234 = call %struct.TYPE_7__* @rt_key(%struct.rtentry* %233)
  %235 = call i64 @rt_primary_default(%struct.rtentry* %232, %struct.TYPE_7__* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %248

237:                                              ; preds = %228
  %238 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %239 = call %struct.TYPE_7__* @rt_key(%struct.rtentry* %238)
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %243 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %242, i32 0, i32 2
  %244 = load %struct.ifnet*, %struct.ifnet** %243, align 8
  %245 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @set_primary_ifscope(i64 %241, i32 %246)
  br label %248

248:                                              ; preds = %237, %228
  %249 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %250 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %249, i32 0, i32 3
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @RTV_MTU, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %292, label %256

256:                                              ; preds = %248
  %257 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %258 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %257, i32 0, i32 2
  %259 = load %struct.ifnet*, %struct.ifnet** %258, align 8
  %260 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %263 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 1
  store i32 %261, i32* %264, align 4
  %265 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %266 = call %struct.TYPE_7__* @rt_key(%struct.rtentry* %265)
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @AF_INET, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %291

271:                                              ; preds = %256
  %272 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %273 = call i64 @INTF_ADJUST_MTU_FOR_CLAT46(%struct.ifnet* %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %291

275:                                              ; preds = %271
  %276 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %277 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %276, i32 0, i32 2
  %278 = load %struct.ifnet*, %struct.ifnet** %277, align 8
  %279 = call i32 @IN6_LINKMTU(%struct.ifnet* %278)
  %280 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %281 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %280, i32 0, i32 3
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 1
  store i32 %279, i32* %282, align 4
  %283 = load i64, i64* @CLAT46_HDR_EXPANSION_OVERHD, align 8
  %284 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %285 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %284, i32 0, i32 3
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = sext i32 %287 to i64
  %289 = sub nsw i64 %288, %283
  %290 = trunc i64 %289 to i32
  store i32 %290, i32* %286, align 4
  br label %291

291:                                              ; preds = %275, %271, %256
  br label %292

292:                                              ; preds = %291, %248
  %293 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %294 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %293, i32 0, i32 1
  %295 = load %struct.ifaddr*, %struct.ifaddr** %294, align 8
  %296 = icmp ne %struct.ifaddr* %295, null
  br i1 %296, label %297, label %319

297:                                              ; preds = %292
  %298 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %299 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %298, i32 0, i32 1
  %300 = load %struct.ifaddr*, %struct.ifaddr** %299, align 8
  %301 = call i32 @IFA_LOCK_SPIN(%struct.ifaddr* %300)
  %302 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %303 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %302, i32 0, i32 1
  %304 = load %struct.ifaddr*, %struct.ifaddr** %303, align 8
  %305 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %304, i32 0, i32 0
  %306 = load void (i32, %struct.rtentry*, %struct.sockaddr*)*, void (i32, %struct.rtentry*, %struct.sockaddr*)** %305, align 8
  store void (i32, %struct.rtentry*, %struct.sockaddr*)* %306, void (i32, %struct.rtentry*, %struct.sockaddr*)** %13, align 8
  %307 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %308 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %307, i32 0, i32 1
  %309 = load %struct.ifaddr*, %struct.ifaddr** %308, align 8
  %310 = call i32 @IFA_UNLOCK(%struct.ifaddr* %309)
  %311 = load void (i32, %struct.rtentry*, %struct.sockaddr*)*, void (i32, %struct.rtentry*, %struct.sockaddr*)** %13, align 8
  %312 = icmp ne void (i32, %struct.rtentry*, %struct.sockaddr*)* %311, null
  br i1 %312, label %313, label %318

313:                                              ; preds = %297
  %314 = load void (i32, %struct.rtentry*, %struct.sockaddr*)*, void (i32, %struct.rtentry*, %struct.sockaddr*)** %13, align 8
  %315 = load i32, i32* @RTM_ADD, align 4
  %316 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %317 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  call void %314(i32 %315, %struct.rtentry* %316, %struct.sockaddr* %317)
  br label %318

318:                                              ; preds = %313, %297
  br label %319

319:                                              ; preds = %318, %292
  %320 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %321 = call i32 @IFA_REMREF(%struct.ifaddr* %320)
  %322 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %323 = call i32 @RT_REMREF_LOCKED(%struct.rtentry* %322)
  br label %403

324:                                              ; preds = %163
  %325 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %326 = call i32 @IFA_REMREF(%struct.ifaddr* %325)
  store %struct.ifaddr* null, %struct.ifaddr** %11, align 8
  br label %327

327:                                              ; preds = %324, %160
  %328 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %329 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %328, i32 0, i32 1
  %330 = load %struct.ifaddr*, %struct.ifaddr** %329, align 8
  %331 = icmp ne %struct.ifaddr* %330, null
  br i1 %331, label %332, label %354

332:                                              ; preds = %327
  %333 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %334 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %333, i32 0, i32 1
  %335 = load %struct.ifaddr*, %struct.ifaddr** %334, align 8
  %336 = call i32 @IFA_LOCK_SPIN(%struct.ifaddr* %335)
  %337 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %338 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %337, i32 0, i32 1
  %339 = load %struct.ifaddr*, %struct.ifaddr** %338, align 8
  %340 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %339, i32 0, i32 0
  %341 = load void (i32, %struct.rtentry*, %struct.sockaddr*)*, void (i32, %struct.rtentry*, %struct.sockaddr*)** %340, align 8
  store void (i32, %struct.rtentry*, %struct.sockaddr*)* %341, void (i32, %struct.rtentry*, %struct.sockaddr*)** %13, align 8
  %342 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %343 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %342, i32 0, i32 1
  %344 = load %struct.ifaddr*, %struct.ifaddr** %343, align 8
  %345 = call i32 @IFA_UNLOCK(%struct.ifaddr* %344)
  %346 = load void (i32, %struct.rtentry*, %struct.sockaddr*)*, void (i32, %struct.rtentry*, %struct.sockaddr*)** %13, align 8
  %347 = icmp ne void (i32, %struct.rtentry*, %struct.sockaddr*)* %346, null
  br i1 %347, label %348, label %353

348:                                              ; preds = %332
  %349 = load void (i32, %struct.rtentry*, %struct.sockaddr*)*, void (i32, %struct.rtentry*, %struct.sockaddr*)** %13, align 8
  %350 = load i32, i32* @RTM_ADD, align 4
  %351 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %352 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  call void %349(i32 %350, %struct.rtentry* %351, %struct.sockaddr* %352)
  br label %353

353:                                              ; preds = %348, %332
  br label %354

354:                                              ; preds = %353, %327
  %355 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %356 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %355, i32 0, i32 2
  %357 = load %struct.ifnet*, %struct.ifnet** %356, align 8
  %358 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* @IFF_LOOPBACK, align 4
  %361 = and i32 %359, %360
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %400

363:                                              ; preds = %354
  %364 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %365 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* @RTF_HOST, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %400

370:                                              ; preds = %363
  %371 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %372 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %371, i32 0, i32 1
  %373 = load %struct.ifaddr*, %struct.ifaddr** %372, align 8
  %374 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %373, i32 0, i32 1
  %375 = load %struct.ifnet*, %struct.ifnet** %374, align 8
  %376 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %377 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %376, i32 0, i32 2
  %378 = load %struct.ifnet*, %struct.ifnet** %377, align 8
  %379 = icmp eq %struct.ifnet* %375, %378
  br i1 %379, label %380, label %400

380:                                              ; preds = %370
  %381 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %382 = call %struct.TYPE_7__* @rt_key(%struct.rtentry* %381)
  %383 = call %struct.ifaddr* @ifa_ifwithaddr(%struct.TYPE_7__* %382)
  store %struct.ifaddr* %383, %struct.ifaddr** %11, align 8
  %384 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %385 = icmp ne %struct.ifaddr* %384, null
  br i1 %385, label %386, label %399

386:                                              ; preds = %380
  %387 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %388 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %389 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %388, i32 0, i32 1
  %390 = load %struct.ifaddr*, %struct.ifaddr** %389, align 8
  %391 = icmp ne %struct.ifaddr* %387, %390
  br i1 %391, label %392, label %396

392:                                              ; preds = %386
  %393 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %394 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %395 = call i32 @rtsetifa(%struct.rtentry* %393, %struct.ifaddr* %394)
  br label %396

396:                                              ; preds = %392, %386
  %397 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %398 = call i32 @IFA_REMREF(%struct.ifaddr* %397)
  br label %399

399:                                              ; preds = %396, %380
  br label %400

400:                                              ; preds = %399, %370, %363, %354
  %401 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %402 = call i32 @RT_REMREF_LOCKED(%struct.rtentry* %401)
  br label %403

403:                                              ; preds = %400, %319, %144, %26
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry*) #1

declare dso_local i32 @RT_ADDREF_LOCKED(%struct.rtentry*) #1

declare dso_local i32 @RT_CONVERT_LOCK(%struct.rtentry*) #1

declare dso_local %struct.ifaddr* @ifa_ifwithnet_scoped(%struct.sockaddr*, i32) #1

declare dso_local i32 @IFA_REMREF(%struct.ifaddr*) #1

declare dso_local %struct.ifaddr* @ifaof_ifpforaddr(%struct.sockaddr*, %struct.ifnet*) #1

declare dso_local %struct.ifnet* @if_withname(%struct.sockaddr*) #1

declare dso_local i32 @ifnet_lock_shared(%struct.ifnet*) #1

declare dso_local %struct.ifaddr* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @IFA_ADDREF(%struct.ifaddr*) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

declare dso_local %struct.ifaddr* @ifa_ifwithaddr_scoped(%struct.sockaddr*, i32) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local %struct.ifaddr* @ifa_ifwithroute_scoped_locked(i32, %struct.TYPE_7__*, %struct.sockaddr*, i32) #1

declare dso_local %struct.TYPE_7__* @rt_key(%struct.rtentry*) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @RT_REMREF_LOCKED(%struct.rtentry*) #1

declare dso_local i32 @routegenid_inet_update(...) #1

declare dso_local i32 @IFA_LOCK_SPIN(%struct.ifaddr*) #1

declare dso_local i32 @IFA_UNLOCK(%struct.ifaddr*) #1

declare dso_local i32 @rtsetifa(%struct.rtentry*, %struct.ifaddr*) #1

declare dso_local i64 @rt_primary_default(%struct.rtentry*, %struct.TYPE_7__*) #1

declare dso_local i32 @set_primary_ifscope(i64, i32) #1

declare dso_local i64 @INTF_ADJUST_MTU_FOR_CLAT46(%struct.ifnet*) #1

declare dso_local i32 @IN6_LINKMTU(%struct.ifnet*) #1

declare dso_local %struct.ifaddr* @ifa_ifwithaddr(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
