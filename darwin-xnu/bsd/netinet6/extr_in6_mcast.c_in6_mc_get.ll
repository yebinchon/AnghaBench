; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_in6_mc_get.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_in6_mc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.in6_addr = type { i32 }
%struct.in6_multi = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__, i32, %struct.ifmultiaddr*, i32*, %struct.ifnet*, %struct.in6_addr }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32 }
%struct.ifmultiaddr = type { %struct.in6_multi*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.sockaddr_in6 = type { i32, %struct.in6_addr, i64 }
%struct.sockaddr = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@IFD_ATTACHED = common dso_local global i32 0, align 4
@IFD_TRASHED = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLD_NOT_MEMBER = common dso_local global i32 0, align 4
@MLD_MAX_STATE_CHANGES = common dso_local global i32 0, align 4
@MCAST_UNDEFINED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.in6_addr*, %struct.in6_multi**)* @in6_mc_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in6_mc_get(%struct.ifnet* %0, %struct.in6_addr* %1, %struct.in6_multi** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.in6_multi**, align 8
  %8 = alloca %struct.sockaddr_in6, align 8
  %9 = alloca %struct.ifmultiaddr*, align 8
  %10 = alloca %struct.in6_multi*, align 8
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %6, align 8
  store %struct.in6_multi** %2, %struct.in6_multi*** %7, align 8
  %12 = load %struct.in6_multi**, %struct.in6_multi*** %7, align 8
  store %struct.in6_multi* null, %struct.in6_multi** %12, align 8
  %13 = call i32 (...) @in6_multihead_lock_shared()
  %14 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %15 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %16 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %17 = call i32 @IN6_LOOKUP_MULTI(%struct.in6_addr* %14, %struct.ifnet* %15, %struct.in6_multi* %16)
  %18 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %19 = icmp ne %struct.in6_multi* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %3
  %21 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %22 = call i32 @IN6M_LOCK(%struct.in6_multi* %21)
  %23 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %24 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %25, 1
  %27 = zext i1 %26 to i32
  %28 = call i32 @VERIFY(i32 %27)
  %29 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %30 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %34 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @VERIFY(i32 %37)
  %39 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %40 = load %struct.in6_multi**, %struct.in6_multi*** %7, align 8
  store %struct.in6_multi* %39, %struct.in6_multi** %40, align 8
  %41 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %42 = call i32 @IN6M_UNLOCK(%struct.in6_multi* %41)
  %43 = call i32 (...) @in6_multihead_lock_done()
  store i32 0, i32* %4, align 4
  br label %256

44:                                               ; preds = %3
  %45 = call i32 (...) @in6_multihead_lock_done()
  %46 = call i32 @memset(%struct.sockaddr_in6* %8, i32 0, i32 16)
  %47 = load i64, i64* @AF_INET6, align 8
  %48 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 2
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 0
  store i32 16, i32* %49, align 8
  %50 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 1
  %51 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %52 = bitcast %struct.in6_addr* %50 to i8*
  %53 = bitcast %struct.in6_addr* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %55 = bitcast %struct.sockaddr_in6* %8 to %struct.sockaddr*
  %56 = call i32 @if_addmulti(%struct.ifnet* %54, %struct.sockaddr* %55, %struct.ifmultiaddr** %9)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %44
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %256

61:                                               ; preds = %44
  %62 = call i32 (...) @in6_multihead_lock_exclusive()
  %63 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %64 = call i32 @IFMA_LOCK(%struct.ifmultiaddr* %63)
  %65 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %66 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %65, i32 0, i32 0
  %67 = load %struct.in6_multi*, %struct.in6_multi** %66, align 8
  store %struct.in6_multi* %67, %struct.in6_multi** %10, align 8
  %68 = icmp ne %struct.in6_multi* %67, null
  br i1 %68, label %69, label %161

69:                                               ; preds = %61
  %70 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %71 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = icmp ne %struct.TYPE_4__* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 @VERIFY(i32 %74)
  %76 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %77 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @AF_INET6, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @VERIFY(i32 %83)
  %85 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %86 = call i32 @IN6M_ADDREF(%struct.in6_multi* %85)
  %87 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %88 = call i32 @IFMA_UNLOCK(%struct.ifmultiaddr* %87)
  %89 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %90 = call i32 @IN6M_LOCK(%struct.in6_multi* %89)
  %91 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %92 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %91, i32 0, i32 6
  %93 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %92, align 8
  %94 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %95 = icmp eq %struct.ifmultiaddr* %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @VERIFY(i32 %96)
  %98 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %99 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %98, i32 0, i32 8
  %100 = load %struct.ifnet*, %struct.ifnet** %99, align 8
  %101 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %102 = icmp eq %struct.ifnet* %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @VERIFY(i32 %103)
  %105 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %106 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %105, i32 0, i32 9
  %107 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %108 = call i32 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr* %106, %struct.in6_addr* %107)
  %109 = call i32 @VERIFY(i32 %108)
  %110 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %111 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @IFD_ATTACHED, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %140

116:                                              ; preds = %69
  %117 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %118 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp sge i32 %119, 1
  %121 = zext i1 %120 to i32
  %122 = call i32 @VERIFY(i32 %121)
  %123 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %124 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 8
  %127 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %128 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i32 @VERIFY(i32 %131)
  %133 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %134 = load %struct.in6_multi**, %struct.in6_multi*** %7, align 8
  store %struct.in6_multi* %133, %struct.in6_multi** %134, align 8
  %135 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %136 = call i32 @IN6M_UNLOCK(%struct.in6_multi* %135)
  %137 = call i32 (...) @in6_multihead_lock_done()
  %138 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %139 = call i32 @IFMA_REMREF(%struct.ifmultiaddr* %138)
  store i32 0, i32* %4, align 4
  br label %256

140:                                              ; preds = %69
  %141 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %142 = call i32 @in6_multi_attach(%struct.in6_multi* %141)
  %143 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %144 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @IFD_ATTACHED, align 4
  %147 = load i32, i32* @IFD_TRASHED, align 4
  %148 = or i32 %146, %147
  %149 = and i32 %145, %148
  %150 = load i32, i32* @IFD_ATTACHED, align 4
  %151 = icmp eq i32 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @VERIFY(i32 %152)
  %154 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %155 = load %struct.in6_multi**, %struct.in6_multi*** %7, align 8
  store %struct.in6_multi* %154, %struct.in6_multi** %155, align 8
  %156 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %157 = call i32 @IN6M_UNLOCK(%struct.in6_multi* %156)
  %158 = call i32 (...) @in6_multihead_lock_done()
  %159 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %160 = call i32 @IFMA_REMREF(%struct.ifmultiaddr* %159)
  store i32 0, i32* %4, align 4
  br label %256

161:                                              ; preds = %61
  %162 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %163 = call i32 @IFMA_UNLOCK(%struct.ifmultiaddr* %162)
  %164 = load i32, i32* @M_WAITOK, align 4
  %165 = call %struct.in6_multi* @in6_multi_alloc(i32 %164)
  store %struct.in6_multi* %165, %struct.in6_multi** %10, align 8
  %166 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %167 = icmp eq %struct.in6_multi* %166, null
  br i1 %167, label %168, label %173

168:                                              ; preds = %161
  %169 = call i32 (...) @in6_multihead_lock_done()
  %170 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %171 = call i32 @IFMA_REMREF(%struct.ifmultiaddr* %170)
  %172 = load i32, i32* @ENOMEM, align 4
  store i32 %172, i32* %4, align 4
  br label %256

173:                                              ; preds = %161
  %174 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %175 = call i32 @IN6M_LOCK(%struct.in6_multi* %174)
  %176 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %177 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %176, i32 0, i32 9
  %178 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %179 = bitcast %struct.in6_addr* %177 to i8*
  %180 = bitcast %struct.in6_addr* %178 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %179, i8* align 4 %180, i64 4, i1 false)
  %181 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %182 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %183 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %182, i32 0, i32 8
  store %struct.ifnet* %181, %struct.ifnet** %183, align 8
  %184 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %185 = call i32* @MLD_IFINFO(%struct.ifnet* %184)
  %186 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %187 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %186, i32 0, i32 7
  store i32* %185, i32** %187, align 8
  %188 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %189 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %188, i32 0, i32 7
  %190 = load i32*, i32** %189, align 8
  %191 = icmp ne i32* %190, null
  %192 = zext i1 %191 to i32
  %193 = call i32 @VERIFY(i32 %192)
  %194 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %195 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %194, i32 0, i32 7
  %196 = load i32*, i32** %195, align 8
  %197 = call i32 @MLI_ADDREF(i32* %196)
  %198 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %199 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %200 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %199, i32 0, i32 6
  store %struct.ifmultiaddr* %198, %struct.ifmultiaddr** %200, align 8
  %201 = load i32, i32* @MLD_NOT_MEMBER, align 4
  %202 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %203 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %202, i32 0, i32 5
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* @MLD_MAX_STATE_CHANGES, align 4
  %205 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %206 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %205, i32 0, i32 4
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  store i32 %204, i32* %207, align 8
  %208 = load i8*, i8** @MCAST_UNDEFINED, align 8
  %209 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %210 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %209, i32 0, i32 3
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i64 0
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  store i8* %208, i8** %213, align 8
  %214 = load i8*, i8** @MCAST_UNDEFINED, align 8
  %215 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %216 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %215, i32 0, i32 3
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i64 1
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  store i8* %214, i8** %219, align 8
  %220 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %221 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %220, i32 0, i32 2
  %222 = call i32 @RB_INIT(i32* %221)
  %223 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %224 = load %struct.in6_multi**, %struct.in6_multi*** %7, align 8
  store %struct.in6_multi* %223, %struct.in6_multi** %224, align 8
  %225 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %226 = call i32 @in6_multi_attach(%struct.in6_multi* %225)
  %227 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %228 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @IFD_ATTACHED, align 4
  %231 = load i32, i32* @IFD_TRASHED, align 4
  %232 = or i32 %230, %231
  %233 = and i32 %229, %232
  %234 = load i32, i32* @IFD_ATTACHED, align 4
  %235 = icmp eq i32 %233, %234
  %236 = zext i1 %235 to i32
  %237 = call i32 @VERIFY(i32 %236)
  %238 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %239 = call i32 @IN6M_ADDREF_LOCKED(%struct.in6_multi* %238)
  %240 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %241 = call i32 @IN6M_UNLOCK(%struct.in6_multi* %240)
  %242 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %243 = call i32 @IFMA_LOCK(%struct.ifmultiaddr* %242)
  %244 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %245 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %244, i32 0, i32 0
  %246 = load %struct.in6_multi*, %struct.in6_multi** %245, align 8
  %247 = icmp eq %struct.in6_multi* %246, null
  %248 = zext i1 %247 to i32
  %249 = call i32 @VERIFY(i32 %248)
  %250 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %251 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %252 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %251, i32 0, i32 0
  store %struct.in6_multi* %250, %struct.in6_multi** %252, align 8
  %253 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %254 = call i32 @IFMA_UNLOCK(%struct.ifmultiaddr* %253)
  %255 = call i32 (...) @in6_multihead_lock_done()
  store i32 0, i32* %4, align 4
  br label %256

256:                                              ; preds = %173, %168, %140, %116, %59, %20
  %257 = load i32, i32* %4, align 4
  ret i32 %257
}

declare dso_local i32 @in6_multihead_lock_shared(...) #1

declare dso_local i32 @IN6_LOOKUP_MULTI(%struct.in6_addr*, %struct.ifnet*, %struct.in6_multi*) #1

declare dso_local i32 @IN6M_LOCK(%struct.in6_multi*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @IN6M_UNLOCK(%struct.in6_multi*) #1

declare dso_local i32 @in6_multihead_lock_done(...) #1

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @if_addmulti(%struct.ifnet*, %struct.sockaddr*, %struct.ifmultiaddr**) #1

declare dso_local i32 @in6_multihead_lock_exclusive(...) #1

declare dso_local i32 @IFMA_LOCK(%struct.ifmultiaddr*) #1

declare dso_local i32 @IN6M_ADDREF(%struct.in6_multi*) #1

declare dso_local i32 @IFMA_UNLOCK(%struct.ifmultiaddr*) #1

declare dso_local i32 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i32 @IFMA_REMREF(%struct.ifmultiaddr*) #1

declare dso_local i32 @in6_multi_attach(%struct.in6_multi*) #1

declare dso_local %struct.in6_multi* @in6_multi_alloc(i32) #1

declare dso_local i32* @MLD_IFINFO(%struct.ifnet*) #1

declare dso_local i32 @MLI_ADDREF(i32*) #1

declare dso_local i32 @RB_INIT(i32*) #1

declare dso_local i32 @IN6M_ADDREF_LOCKED(%struct.in6_multi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
