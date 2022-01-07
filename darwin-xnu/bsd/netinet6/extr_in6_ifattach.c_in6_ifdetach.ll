; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_ifattach.c_in6_ifdetach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_ifattach.c_in6_ifdetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_ifaddr = type { i32, %struct.ifaddr, %struct.in6_ifaddr*, i32, i32, %struct.TYPE_5__ }
%struct.ifaddr = type { %struct.TYPE_7__*, %struct.ifnet* }
%struct.TYPE_7__ = type { i64 }
%struct.ifnet = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.in6_multi_mship* }
%struct.in6_multi_mship = type { i32 }
%struct.TYPE_8__ = type { i32* }
%struct.rtentry = type { i32, %struct.sockaddr*, %struct.ifnet* }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { i32, %struct.TYPE_8__, i64 }
%struct.TYPE_6__ = type { i32 }

@nd6_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4
@in6_ifaddr_rwlock = common dso_local global i32 0, align 4
@in6_ifaddrs = common dso_local global %struct.in6_ifaddr* null, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@ifa_list = common dso_local global i32 0, align 4
@i6mm_chain = common dso_local global i32 0, align 4
@IFA_ROUTE = common dso_local global i32 0, align 4
@RTM_DELETE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s: didn't unlink in6ifaddr from list\0A\00", align 1
@in6addr_linklocal_allnodes = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@RTF_CONDEMNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in6_ifdetach(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.in6_ifaddr*, align 8
  %4 = alloca %struct.in6_ifaddr*, align 8
  %5 = alloca %struct.ifaddr*, align 8
  %6 = alloca %struct.rtentry*, align 8
  %7 = alloca %struct.sockaddr_in6, align 8
  %8 = alloca %struct.in6_multi_mship*, align 8
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %10 = load i32, i32* @nd6_mutex, align 4
  %11 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %12 = call i32 @LCK_MTX_ASSERT(i32 %10, i32 %11)
  %13 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %14 = call i32 @nd6_purge(%struct.ifnet* %13)
  %15 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %16 = call i64 @LLTABLE6(%struct.ifnet* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %20 = call i64 @LLTABLE6(%struct.ifnet* %19)
  %21 = call i32 @lltable_free(i64 %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = call i32 @lck_rw_lock_exclusive(i32* @in6_ifaddr_rwlock)
  %24 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** @in6_ifaddrs, align 8
  store %struct.in6_ifaddr* %24, %struct.in6_ifaddr** %3, align 8
  br label %25

25:                                               ; preds = %39, %35, %22
  %26 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %27 = icmp ne %struct.in6_ifaddr* %26, null
  br i1 %27, label %28, label %52

28:                                               ; preds = %25
  %29 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %30 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %30, i32 0, i32 1
  %32 = load %struct.ifnet*, %struct.ifnet** %31, align 8
  %33 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %34 = icmp ne %struct.ifnet* %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %37 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %36, i32 0, i32 2
  %38 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %37, align 8
  store %struct.in6_ifaddr* %38, %struct.in6_ifaddr** %3, align 8
  br label %25

39:                                               ; preds = %28
  %40 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %41 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %40, i32 0, i32 1
  %42 = call i32 @IFA_ADDREF(%struct.ifaddr* %41)
  %43 = call i32 @lck_rw_done(i32* @in6_ifaddr_rwlock)
  %44 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %45 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %44, i32 0, i32 1
  %46 = call i32 @in6_purgeaddr(%struct.ifaddr* %45)
  %47 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %48 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %47, i32 0, i32 1
  %49 = call i32 @IFA_REMREF(%struct.ifaddr* %48)
  %50 = call i32 @lck_rw_lock_exclusive(i32* @in6_ifaddr_rwlock)
  %51 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** @in6_ifaddrs, align 8
  store %struct.in6_ifaddr* %51, %struct.in6_ifaddr** %3, align 8
  br label %25

52:                                               ; preds = %25
  %53 = call i32 @lck_rw_done(i32* @in6_ifaddr_rwlock)
  %54 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %55 = call i32 @ifnet_lock_exclusive(%struct.ifnet* %54)
  %56 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 1
  %58 = call %struct.ifaddr* @TAILQ_FIRST(i32* %57)
  store %struct.ifaddr* %58, %struct.ifaddr** %5, align 8
  br label %59

59:                                               ; preds = %206, %79, %52
  %60 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %61 = icmp ne %struct.ifaddr* %60, null
  br i1 %61, label %62, label %214

62:                                               ; preds = %59
  %63 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %64 = call i32 @IFA_LOCK(%struct.ifaddr* %63)
  %65 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %66 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @AF_INET6, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %79, label %72

72:                                               ; preds = %62
  %73 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %74 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %73, i32 0, i32 0
  %75 = call %struct.TYPE_6__* @satosin6(%struct.TYPE_7__** %74)
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = call i32 @IN6_IS_ADDR_LINKLOCAL(i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %72, %62
  %80 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %81 = call i32 @IFA_UNLOCK(%struct.ifaddr* %80)
  %82 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %83 = load i32, i32* @ifa_list, align 4
  %84 = call %struct.ifaddr* @TAILQ_NEXT(%struct.ifaddr* %82, i32 %83)
  store %struct.ifaddr* %84, %struct.ifaddr** %5, align 8
  br label %59

85:                                               ; preds = %72
  %86 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %87 = bitcast %struct.ifaddr* %86 to %struct.in6_ifaddr*
  store %struct.in6_ifaddr* %87, %struct.in6_ifaddr** %3, align 8
  %88 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %89 = call i32 @IFA_ADDREF_LOCKED(%struct.ifaddr* %88)
  %90 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %91 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %92 = call i32 @if_detach_ifa(%struct.ifnet* %90, %struct.ifaddr* %91)
  %93 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %94 = call i32 @IFA_UNLOCK(%struct.ifaddr* %93)
  %95 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %96 = call i32 @ifnet_lock_done(%struct.ifnet* %95)
  %97 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %98 = call i32 @IFA_LOCK(%struct.ifaddr* %97)
  br label %99

99:                                               ; preds = %105, %85
  %100 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %101 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load %struct.in6_multi_mship*, %struct.in6_multi_mship** %102, align 8
  store %struct.in6_multi_mship* %103, %struct.in6_multi_mship** %8, align 8
  %104 = icmp ne %struct.in6_multi_mship* %103, null
  br i1 %104, label %105, label %115

105:                                              ; preds = %99
  %106 = load %struct.in6_multi_mship*, %struct.in6_multi_mship** %8, align 8
  %107 = load i32, i32* @i6mm_chain, align 4
  %108 = call i32 @LIST_REMOVE(%struct.in6_multi_mship* %106, i32 %107)
  %109 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %110 = call i32 @IFA_UNLOCK(%struct.ifaddr* %109)
  %111 = load %struct.in6_multi_mship*, %struct.in6_multi_mship** %8, align 8
  %112 = call i32 @in6_leavegroup(%struct.in6_multi_mship* %111)
  %113 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %114 = call i32 @IFA_LOCK(%struct.ifaddr* %113)
  br label %99

115:                                              ; preds = %99
  %116 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %117 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @IFA_ROUTE, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %149

122:                                              ; preds = %115
  %123 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %124 = call i32 @IFA_UNLOCK(%struct.ifaddr* %123)
  %125 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %126 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %125, i32 0, i32 4
  %127 = bitcast i32* %126 to %struct.sockaddr*
  %128 = call %struct.rtentry* @rtalloc1(%struct.sockaddr* %127, i32 0, i32 0)
  store %struct.rtentry* %128, %struct.rtentry** %6, align 8
  %129 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %130 = icmp ne %struct.rtentry* %129, null
  br i1 %130, label %131, label %148

131:                                              ; preds = %122
  %132 = load i32, i32* @RTM_DELETE, align 4
  %133 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %134 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %133, i32 0, i32 4
  %135 = bitcast i32* %134 to %struct.sockaddr*
  %136 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %137 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %136, i32 0, i32 4
  %138 = bitcast i32* %137 to %struct.sockaddr*
  %139 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %140 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %139, i32 0, i32 3
  %141 = bitcast i32* %140 to %struct.sockaddr*
  %142 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %143 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @rtrequest(i32 %132, %struct.sockaddr* %135, %struct.sockaddr* %138, %struct.sockaddr* %141, i32 %144, %struct.rtentry** null)
  %146 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %147 = call i32 @rtfree(%struct.rtentry* %146)
  br label %148

148:                                              ; preds = %131, %122
  br label %152

149:                                              ; preds = %115
  %150 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %151 = call i32 @IFA_UNLOCK(%struct.ifaddr* %150)
  br label %152

152:                                              ; preds = %149, %148
  store i32 1, i32* %9, align 4
  %153 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  store %struct.in6_ifaddr* %153, %struct.in6_ifaddr** %4, align 8
  %154 = call i32 @lck_rw_lock_exclusive(i32* @in6_ifaddr_rwlock)
  %155 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %156 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** @in6_ifaddrs, align 8
  store %struct.in6_ifaddr* %156, %struct.in6_ifaddr** %3, align 8
  %157 = icmp eq %struct.in6_ifaddr* %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %160 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %159, i32 0, i32 2
  %161 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %160, align 8
  store %struct.in6_ifaddr* %161, %struct.in6_ifaddr** @in6_ifaddrs, align 8
  br label %197

162:                                              ; preds = %152
  br label %163

163:                                              ; preds = %176, %162
  %164 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %165 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %164, i32 0, i32 2
  %166 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %165, align 8
  %167 = icmp ne %struct.in6_ifaddr* %166, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %170 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %169, i32 0, i32 2
  %171 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %170, align 8
  %172 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %173 = icmp ne %struct.in6_ifaddr* %171, %172
  br label %174

174:                                              ; preds = %168, %163
  %175 = phi i1 [ false, %163 ], [ %173, %168 ]
  br i1 %175, label %176, label %180

176:                                              ; preds = %174
  %177 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %178 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %177, i32 0, i32 2
  %179 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %178, align 8
  store %struct.in6_ifaddr* %179, %struct.in6_ifaddr** %3, align 8
  br label %163

180:                                              ; preds = %174
  %181 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %182 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %181, i32 0, i32 2
  %183 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %182, align 8
  %184 = icmp ne %struct.in6_ifaddr* %183, null
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %187 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %186, i32 0, i32 2
  %188 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %187, align 8
  %189 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %190 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %189, i32 0, i32 2
  store %struct.in6_ifaddr* %188, %struct.in6_ifaddr** %190, align 8
  br label %196

191:                                              ; preds = %180
  %192 = load i32, i32* @LOG_ERR, align 4
  %193 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %194 = call i32 @if_name(%struct.ifnet* %193)
  %195 = call i32 @nd6log(i32 %194)
  store i32 0, i32* %9, align 4
  br label %196

196:                                              ; preds = %191, %185
  br label %197

197:                                              ; preds = %196, %158
  %198 = call i32 @lck_rw_done(i32* @in6_ifaddr_rwlock)
  %199 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %200 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %199, i32 0, i32 1
  store %struct.ifaddr* %200, %struct.ifaddr** %5, align 8
  %201 = load i32, i32* %9, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %197
  %204 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %205 = call i32 @IFA_REMREF(%struct.ifaddr* %204)
  br label %206

206:                                              ; preds = %203, %197
  %207 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %208 = call i32 @IFA_REMREF(%struct.ifaddr* %207)
  %209 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %210 = call i32 @ifnet_lock_exclusive(%struct.ifnet* %209)
  %211 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %212 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %211, i32 0, i32 1
  %213 = call %struct.ifaddr* @TAILQ_FIRST(i32* %212)
  store %struct.ifaddr* %213, %struct.ifaddr** %5, align 8
  br label %59

214:                                              ; preds = %59
  %215 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %216 = call i32 @ifnet_lock_done(%struct.ifnet* %215)
  %217 = call i32 (...) @routegenid_inet6_update()
  %218 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %219 = call i32 @nd6_purge(%struct.ifnet* %218)
  %220 = call i32 @bzero(%struct.sockaddr_in6* %7, i32 24)
  %221 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 0
  store i32 24, i32* %221, align 8
  %222 = load i64, i64* @AF_INET6, align 8
  %223 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 2
  store i64 %222, i64* %223, align 8
  %224 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 1
  %225 = bitcast %struct.TYPE_8__* %224 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %225, i8* align 8 bitcast (%struct.TYPE_8__* @in6addr_linklocal_allnodes to i8*), i64 8, i1 false)
  %226 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %227 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @htons(i32 %228)
  %230 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 1
  store i32 %229, i32* %233, align 4
  %234 = bitcast %struct.sockaddr_in6* %7 to %struct.sockaddr*
  %235 = call %struct.rtentry* @rtalloc1(%struct.sockaddr* %234, i32 0, i32 0)
  store %struct.rtentry* %235, %struct.rtentry** %6, align 8
  %236 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %237 = icmp ne %struct.rtentry* %236, null
  br i1 %237, label %238, label %272

238:                                              ; preds = %214
  %239 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %240 = call i32 @RT_LOCK(%struct.rtentry* %239)
  %241 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %242 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %241, i32 0, i32 2
  %243 = load %struct.ifnet*, %struct.ifnet** %242, align 8
  %244 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %245 = icmp eq %struct.ifnet* %243, %244
  br i1 %245, label %246, label %266

246:                                              ; preds = %238
  %247 = load i32, i32* @RTF_CONDEMNED, align 4
  %248 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %249 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = or i32 %250, %247
  store i32 %251, i32* %249, align 8
  %252 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %253 = call i32 @RT_UNLOCK(%struct.rtentry* %252)
  %254 = load i32, i32* @RTM_DELETE, align 4
  %255 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %256 = call %struct.sockaddr* @rt_key(%struct.rtentry* %255)
  %257 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %258 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %257, i32 0, i32 1
  %259 = load %struct.sockaddr*, %struct.sockaddr** %258, align 8
  %260 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %261 = call %struct.sockaddr* @rt_mask(%struct.rtentry* %260)
  %262 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %263 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @rtrequest(i32 %254, %struct.sockaddr* %256, %struct.sockaddr* %259, %struct.sockaddr* %261, i32 %264, %struct.rtentry** null)
  br label %269

266:                                              ; preds = %238
  %267 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %268 = call i32 @RT_UNLOCK(%struct.rtentry* %267)
  br label %269

269:                                              ; preds = %266, %246
  %270 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %271 = call i32 @rtfree(%struct.rtentry* %270)
  br label %272

272:                                              ; preds = %269, %214
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @nd6_purge(%struct.ifnet*) #1

declare dso_local i64 @LLTABLE6(%struct.ifnet*) #1

declare dso_local i32 @lltable_free(i64) #1

declare dso_local i32 @lck_rw_lock_exclusive(i32*) #1

declare dso_local i32 @IFA_ADDREF(%struct.ifaddr*) #1

declare dso_local i32 @lck_rw_done(i32*) #1

declare dso_local i32 @in6_purgeaddr(%struct.ifaddr*) #1

declare dso_local i32 @IFA_REMREF(%struct.ifaddr*) #1

declare dso_local i32 @ifnet_lock_exclusive(%struct.ifnet*) #1

declare dso_local %struct.ifaddr* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @IFA_LOCK(%struct.ifaddr*) #1

declare dso_local i32 @IN6_IS_ADDR_LINKLOCAL(i32*) #1

declare dso_local %struct.TYPE_6__* @satosin6(%struct.TYPE_7__**) #1

declare dso_local i32 @IFA_UNLOCK(%struct.ifaddr*) #1

declare dso_local %struct.ifaddr* @TAILQ_NEXT(%struct.ifaddr*, i32) #1

declare dso_local i32 @IFA_ADDREF_LOCKED(%struct.ifaddr*) #1

declare dso_local i32 @if_detach_ifa(%struct.ifnet*, %struct.ifaddr*) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

declare dso_local i32 @LIST_REMOVE(%struct.in6_multi_mship*, i32) #1

declare dso_local i32 @in6_leavegroup(%struct.in6_multi_mship*) #1

declare dso_local %struct.rtentry* @rtalloc1(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @rtrequest(i32, %struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*, i32, %struct.rtentry**) #1

declare dso_local i32 @rtfree(%struct.rtentry*) #1

declare dso_local i32 @nd6log(i32) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

declare dso_local i32 @routegenid_inet6_update(...) #1

declare dso_local i32 @bzero(%struct.sockaddr_in6*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local %struct.sockaddr* @rt_key(%struct.rtentry*) #1

declare dso_local %struct.sockaddr* @rt_mask(%struct.rtentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
