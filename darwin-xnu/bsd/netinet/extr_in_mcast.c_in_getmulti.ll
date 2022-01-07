; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_mcast.c_in_getmulti.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_mcast.c_in_getmulti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.in_addr = type { i32 }
%struct.in_multi = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__, i32, %struct.ifmultiaddr*, i32*, %struct.ifnet*, %struct.in_addr }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32 }
%struct.ifmultiaddr = type { %struct.in_multi*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.sockaddr_in = type { i32, %struct.in_addr, i64 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@IFD_ATTACHED = common dso_local global i32 0, align 4
@IFD_TRASHED = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IGMP_NOT_MEMBER = common dso_local global i32 0, align 4
@IGMP_MAX_STATE_CHANGES = common dso_local global i32 0, align 4
@MCAST_UNDEFINED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.in_addr*, %struct.in_multi**)* @in_getmulti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_getmulti(%struct.ifnet* %0, %struct.in_addr* %1, %struct.in_multi** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.in_addr*, align 8
  %7 = alloca %struct.in_multi**, align 8
  %8 = alloca %struct.sockaddr_in, align 8
  %9 = alloca %struct.ifmultiaddr*, align 8
  %10 = alloca %struct.in_multi*, align 8
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store %struct.in_addr* %1, %struct.in_addr** %6, align 8
  store %struct.in_multi** %2, %struct.in_multi*** %7, align 8
  %12 = call i32 (...) @in_multihead_lock_shared()
  %13 = load %struct.in_addr*, %struct.in_addr** %6, align 8
  %14 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %15 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %16 = call i32 @IN_LOOKUP_MULTI(%struct.in_addr* %13, %struct.ifnet* %14, %struct.in_multi* %15)
  %17 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %18 = icmp ne %struct.in_multi* %17, null
  br i1 %18, label %19, label %43

19:                                               ; preds = %3
  %20 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %21 = call i32 @INM_LOCK(%struct.in_multi* %20)
  %22 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %23 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %24, 1
  %26 = zext i1 %25 to i32
  %27 = call i32 @VERIFY(i32 %26)
  %28 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %29 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %33 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @VERIFY(i32 %36)
  %38 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %39 = load %struct.in_multi**, %struct.in_multi*** %7, align 8
  store %struct.in_multi* %38, %struct.in_multi** %39, align 8
  %40 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %41 = call i32 @INM_UNLOCK(%struct.in_multi* %40)
  %42 = call i32 (...) @in_multihead_lock_done()
  store i32 0, i32* %4, align 4
  br label %259

43:                                               ; preds = %3
  %44 = call i32 (...) @in_multihead_lock_done()
  %45 = call i32 @bzero(%struct.sockaddr_in* %8, i32 16)
  %46 = load i64, i64* @AF_INET, align 8
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  store i64 %46, i64* %47, align 8
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i32 16, i32* %48, align 8
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  %50 = load %struct.in_addr*, %struct.in_addr** %6, align 8
  %51 = bitcast %struct.in_addr* %49 to i8*
  %52 = bitcast %struct.in_addr* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 4, i1 false)
  %53 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %54 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %55 = call i32 @if_addmulti(%struct.ifnet* %53, %struct.sockaddr* %54, %struct.ifmultiaddr** %9)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %43
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %4, align 4
  br label %259

60:                                               ; preds = %43
  %61 = call i32 (...) @in_multihead_lock_exclusive()
  %62 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %63 = call i32 @IFMA_LOCK(%struct.ifmultiaddr* %62)
  %64 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %65 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %64, i32 0, i32 0
  %66 = load %struct.in_multi*, %struct.in_multi** %65, align 8
  store %struct.in_multi* %66, %struct.in_multi** %10, align 8
  %67 = icmp ne %struct.in_multi* %66, null
  br i1 %67, label %68, label %164

68:                                               ; preds = %60
  %69 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %70 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = icmp ne %struct.TYPE_4__* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i32 @VERIFY(i32 %73)
  %75 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %76 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @AF_INET, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @VERIFY(i32 %82)
  %84 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %85 = call i32 @INM_ADDREF(%struct.in_multi* %84)
  %86 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %87 = call i32 @IFMA_UNLOCK(%struct.ifmultiaddr* %86)
  %88 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %89 = call i32 @INM_LOCK(%struct.in_multi* %88)
  %90 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %91 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %90, i32 0, i32 6
  %92 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %91, align 8
  %93 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %94 = icmp eq %struct.ifmultiaddr* %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @VERIFY(i32 %95)
  %97 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %98 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %97, i32 0, i32 8
  %99 = load %struct.ifnet*, %struct.ifnet** %98, align 8
  %100 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %101 = icmp eq %struct.ifnet* %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @VERIFY(i32 %102)
  %104 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %105 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %104, i32 0, i32 9
  %106 = load %struct.in_addr*, %struct.in_addr** %6, align 8
  %107 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %105, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %106, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @in_hosteq(i32 %108, i32 %110)
  %112 = call i32 @VERIFY(i32 %111)
  %113 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %114 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @IFD_ATTACHED, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %143

119:                                              ; preds = %68
  %120 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %121 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp sge i32 %122, 1
  %124 = zext i1 %123 to i32
  %125 = call i32 @VERIFY(i32 %124)
  %126 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %127 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  %130 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %131 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i32
  %135 = call i32 @VERIFY(i32 %134)
  %136 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %137 = load %struct.in_multi**, %struct.in_multi*** %7, align 8
  store %struct.in_multi* %136, %struct.in_multi** %137, align 8
  %138 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %139 = call i32 @INM_UNLOCK(%struct.in_multi* %138)
  %140 = call i32 (...) @in_multihead_lock_done()
  %141 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %142 = call i32 @IFMA_REMREF(%struct.ifmultiaddr* %141)
  store i32 0, i32* %4, align 4
  br label %259

143:                                              ; preds = %68
  %144 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %145 = call i32 @in_multi_attach(%struct.in_multi* %144)
  %146 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %147 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @IFD_ATTACHED, align 4
  %150 = load i32, i32* @IFD_TRASHED, align 4
  %151 = or i32 %149, %150
  %152 = and i32 %148, %151
  %153 = load i32, i32* @IFD_ATTACHED, align 4
  %154 = icmp eq i32 %152, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 @VERIFY(i32 %155)
  %157 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %158 = load %struct.in_multi**, %struct.in_multi*** %7, align 8
  store %struct.in_multi* %157, %struct.in_multi** %158, align 8
  %159 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %160 = call i32 @INM_UNLOCK(%struct.in_multi* %159)
  %161 = call i32 (...) @in_multihead_lock_done()
  %162 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %163 = call i32 @IFMA_REMREF(%struct.ifmultiaddr* %162)
  store i32 0, i32* %4, align 4
  br label %259

164:                                              ; preds = %60
  %165 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %166 = call i32 @IFMA_UNLOCK(%struct.ifmultiaddr* %165)
  %167 = load i32, i32* @M_WAITOK, align 4
  %168 = call %struct.in_multi* @in_multi_alloc(i32 %167)
  store %struct.in_multi* %168, %struct.in_multi** %10, align 8
  %169 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %170 = icmp eq %struct.in_multi* %169, null
  br i1 %170, label %171, label %176

171:                                              ; preds = %164
  %172 = call i32 (...) @in_multihead_lock_done()
  %173 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %174 = call i32 @IFMA_REMREF(%struct.ifmultiaddr* %173)
  %175 = load i32, i32* @ENOMEM, align 4
  store i32 %175, i32* %4, align 4
  br label %259

176:                                              ; preds = %164
  %177 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %178 = call i32 @INM_LOCK(%struct.in_multi* %177)
  %179 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %180 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %179, i32 0, i32 9
  %181 = load %struct.in_addr*, %struct.in_addr** %6, align 8
  %182 = bitcast %struct.in_addr* %180 to i8*
  %183 = bitcast %struct.in_addr* %181 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %182, i8* align 4 %183, i64 4, i1 false)
  %184 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %185 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %186 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %185, i32 0, i32 8
  store %struct.ifnet* %184, %struct.ifnet** %186, align 8
  %187 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %188 = call i32* @IGMP_IFINFO(%struct.ifnet* %187)
  %189 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %190 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %189, i32 0, i32 7
  store i32* %188, i32** %190, align 8
  %191 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %192 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %191, i32 0, i32 7
  %193 = load i32*, i32** %192, align 8
  %194 = icmp ne i32* %193, null
  %195 = zext i1 %194 to i32
  %196 = call i32 @VERIFY(i32 %195)
  %197 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %198 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %197, i32 0, i32 7
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @IGI_ADDREF(i32* %199)
  %201 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %202 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %203 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %202, i32 0, i32 6
  store %struct.ifmultiaddr* %201, %struct.ifmultiaddr** %203, align 8
  %204 = load i32, i32* @IGMP_NOT_MEMBER, align 4
  %205 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %206 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %205, i32 0, i32 5
  store i32 %204, i32* %206, align 4
  %207 = load i32, i32* @IGMP_MAX_STATE_CHANGES, align 4
  %208 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %209 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %208, i32 0, i32 4
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  store i32 %207, i32* %210, align 8
  %211 = load i8*, i8** @MCAST_UNDEFINED, align 8
  %212 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %213 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %212, i32 0, i32 3
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i64 0
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  store i8* %211, i8** %216, align 8
  %217 = load i8*, i8** @MCAST_UNDEFINED, align 8
  %218 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %219 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %218, i32 0, i32 3
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i64 1
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 0
  store i8* %217, i8** %222, align 8
  %223 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %224 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %223, i32 0, i32 2
  %225 = call i32 @RB_INIT(i32* %224)
  %226 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %227 = load %struct.in_multi**, %struct.in_multi*** %7, align 8
  store %struct.in_multi* %226, %struct.in_multi** %227, align 8
  %228 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %229 = call i32 @in_multi_attach(%struct.in_multi* %228)
  %230 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %231 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @IFD_ATTACHED, align 4
  %234 = load i32, i32* @IFD_TRASHED, align 4
  %235 = or i32 %233, %234
  %236 = and i32 %232, %235
  %237 = load i32, i32* @IFD_ATTACHED, align 4
  %238 = icmp eq i32 %236, %237
  %239 = zext i1 %238 to i32
  %240 = call i32 @VERIFY(i32 %239)
  %241 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %242 = call i32 @INM_ADDREF_LOCKED(%struct.in_multi* %241)
  %243 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %244 = call i32 @INM_UNLOCK(%struct.in_multi* %243)
  %245 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %246 = call i32 @IFMA_LOCK(%struct.ifmultiaddr* %245)
  %247 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %248 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %247, i32 0, i32 0
  %249 = load %struct.in_multi*, %struct.in_multi** %248, align 8
  %250 = icmp eq %struct.in_multi* %249, null
  %251 = zext i1 %250 to i32
  %252 = call i32 @VERIFY(i32 %251)
  %253 = load %struct.in_multi*, %struct.in_multi** %10, align 8
  %254 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %255 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %254, i32 0, i32 0
  store %struct.in_multi* %253, %struct.in_multi** %255, align 8
  %256 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %257 = call i32 @IFMA_UNLOCK(%struct.ifmultiaddr* %256)
  %258 = call i32 (...) @in_multihead_lock_done()
  store i32 0, i32* %4, align 4
  br label %259

259:                                              ; preds = %176, %171, %143, %119, %58, %19
  %260 = load i32, i32* %4, align 4
  ret i32 %260
}

declare dso_local i32 @in_multihead_lock_shared(...) #1

declare dso_local i32 @IN_LOOKUP_MULTI(%struct.in_addr*, %struct.ifnet*, %struct.in_multi*) #1

declare dso_local i32 @INM_LOCK(%struct.in_multi*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @INM_UNLOCK(%struct.in_multi*) #1

declare dso_local i32 @in_multihead_lock_done(...) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @if_addmulti(%struct.ifnet*, %struct.sockaddr*, %struct.ifmultiaddr**) #1

declare dso_local i32 @in_multihead_lock_exclusive(...) #1

declare dso_local i32 @IFMA_LOCK(%struct.ifmultiaddr*) #1

declare dso_local i32 @INM_ADDREF(%struct.in_multi*) #1

declare dso_local i32 @IFMA_UNLOCK(%struct.ifmultiaddr*) #1

declare dso_local i32 @in_hosteq(i32, i32) #1

declare dso_local i32 @IFMA_REMREF(%struct.ifmultiaddr*) #1

declare dso_local i32 @in_multi_attach(%struct.in_multi*) #1

declare dso_local %struct.in_multi* @in_multi_alloc(i32) #1

declare dso_local i32* @IGMP_IFINFO(%struct.ifnet*) #1

declare dso_local i32 @IGI_ADDREF(i32*) #1

declare dso_local i32 @RB_INIT(i32*) #1

declare dso_local i32 @INM_ADDREF_LOCKED(%struct.in_multi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
