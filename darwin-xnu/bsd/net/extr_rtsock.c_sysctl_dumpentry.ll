; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_rtsock.c_sysctl_dumpentry.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_rtsock.c_sysctl_dumpentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.radix_node = type { i32 }
%struct.walkarg = type { i64, i32, i32*, i32* }
%struct.rtentry = type { i32, %struct.TYPE_3__*, i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.rt_addrinfo = type { i32, i32* }
%struct.rt_msghdr = type { i32, i32, i64, i64, i64, i32, i32, i32 }
%struct.rt_msghdr2 = type { i32, i32, i64, i64, i32, i32, i32, i32 }

@NET_RT_FLAGS = common dso_local global i64 0, align 8
@NET_RT_FLAGS_PRIV = common dso_local global i64 0, align 8
@RTF_LLINFO = common dso_local global i32 0, align 4
@lo_ifp = common dso_local global %struct.TYPE_4__* null, align 8
@ROUTE_OP_READ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@RTAX_DST = common dso_local global i64 0, align 8
@RTAX_GATEWAY = common dso_local global i64 0, align 8
@RTAX_NETMASK = common dso_local global i64 0, align 8
@RTAX_GENMASK = common dso_local global i64 0, align 8
@NET_RT_DUMP2 = common dso_local global i64 0, align 8
@RTM_GET = common dso_local global i32 0, align 4
@RTM_GET2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radix_node*, i8*)* @sysctl_dumpentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctl_dumpentry(%struct.radix_node* %0, i8* %1) #0 {
  %3 = alloca %struct.radix_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.walkarg*, align 8
  %6 = alloca %struct.rtentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rt_addrinfo, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.rt_msghdr*, align 8
  %13 = alloca %struct.rt_msghdr2*, align 8
  store %struct.radix_node* %0, %struct.radix_node** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.walkarg*
  store %struct.walkarg* %15, %struct.walkarg** %5, align 8
  %16 = load %struct.radix_node*, %struct.radix_node** %3, align 8
  %17 = bitcast %struct.radix_node* %16 to %struct.rtentry*
  store %struct.rtentry* %17, %struct.rtentry** %6, align 8
  store i32 0, i32* %7, align 4
  %18 = call i32 (...) @current_proc()
  %19 = call i32 @kauth_cred_proc_ref(i32 %18)
  store i32 %19, i32* %10, align 4
  store i32* %10, i32** %11, align 8
  %20 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %21 = call i32 @RT_LOCK(%struct.rtentry* %20)
  %22 = load %struct.walkarg*, %struct.walkarg** %5, align 8
  %23 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NET_RT_FLAGS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %2
  %28 = load %struct.walkarg*, %struct.walkarg** %5, align 8
  %29 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NET_RT_FLAGS_PRIV, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %27, %2
  %34 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %35 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.walkarg*, %struct.walkarg** %5, align 8
  %38 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  br label %240

43:                                               ; preds = %33, %27
  %44 = load %struct.walkarg*, %struct.walkarg** %5, align 8
  %45 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NET_RT_FLAGS_PRIV, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %43
  %50 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %51 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @RTF_LLINFO, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %49
  %57 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %58 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %57, i32 0, i32 3
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lo_ifp, align 8
  %61 = icmp ne %struct.TYPE_4__* %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @ROUTE_OP_READ, align 4
  %65 = load i32, i32* @TRUE, align 4
  %66 = call i64 @route_op_entitlement_check(i32* null, i32 %63, i32 %64, i32 %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32* null, i32** %11, align 8
  br label %69

69:                                               ; preds = %68, %62, %56
  br label %70

70:                                               ; preds = %69, %49, %43
  %71 = ptrtoint %struct.rt_addrinfo* %9 to i32
  %72 = call i32 @bzero(i32 %71, i32 16)
  %73 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %74 = call i32 @rt_key(%struct.rtentry* %73)
  %75 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %9, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @RTAX_DST, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32 %74, i32* %78, align 4
  %79 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %80 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %9, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @RTAX_GATEWAY, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32 %81, i32* %85, align 4
  %86 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %87 = call i32 @rt_mask(%struct.rtentry* %86)
  %88 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %9, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @RTAX_NETMASK, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 %87, i32* %91, align 4
  %92 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %93 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %9, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* @RTAX_GENMASK, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32 %94, i32* %98, align 4
  %99 = load %struct.walkarg*, %struct.walkarg** %5, align 8
  %100 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @NET_RT_DUMP2, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %163

104:                                              ; preds = %70
  %105 = load i32, i32* @RTM_GET, align 4
  %106 = load %struct.walkarg*, %struct.walkarg** %5, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = call i32 @rt_msg2(i32 %105, %struct.rt_addrinfo* %9, i32* null, %struct.walkarg* %106, i32* %107)
  store i32 %108, i32* %8, align 4
  %109 = load %struct.walkarg*, %struct.walkarg** %5, align 8
  %110 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %162

113:                                              ; preds = %104
  %114 = load %struct.walkarg*, %struct.walkarg** %5, align 8
  %115 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %162

118:                                              ; preds = %113
  %119 = load %struct.walkarg*, %struct.walkarg** %5, align 8
  %120 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = bitcast i32* %121 to i8*
  %123 = bitcast i8* %122 to %struct.rt_msghdr*
  store %struct.rt_msghdr* %123, %struct.rt_msghdr** %12, align 8
  %124 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %125 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.rt_msghdr*, %struct.rt_msghdr** %12, align 8
  %128 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %130 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.rt_msghdr*, %struct.rt_msghdr** %12, align 8
  %133 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %132, i32 0, i32 7
  store i32 %131, i32* %133, align 8
  %134 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %135 = load %struct.rt_msghdr*, %struct.rt_msghdr** %12, align 8
  %136 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %135, i32 0, i32 6
  %137 = call i32 @rt_getmetrics(%struct.rtentry* %134, i32* %136)
  %138 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %139 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %138, i32 0, i32 3
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.rt_msghdr*, %struct.rt_msghdr** %12, align 8
  %144 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %143, i32 0, i32 5
  store i32 %142, i32* %144, align 8
  %145 = load %struct.rt_msghdr*, %struct.rt_msghdr** %12, align 8
  %146 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %145, i32 0, i32 4
  store i64 0, i64* %146, align 8
  %147 = load %struct.rt_msghdr*, %struct.rt_msghdr** %12, align 8
  %148 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %147, i32 0, i32 3
  store i64 0, i64* %148, align 8
  %149 = load %struct.rt_msghdr*, %struct.rt_msghdr** %12, align 8
  %150 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %149, i32 0, i32 2
  store i64 0, i64* %150, align 8
  %151 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %9, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.rt_msghdr*, %struct.rt_msghdr** %12, align 8
  %154 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load %struct.walkarg*, %struct.walkarg** %5, align 8
  %156 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.rt_msghdr*, %struct.rt_msghdr** %12, align 8
  %159 = ptrtoint %struct.rt_msghdr* %158 to i32
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @SYSCTL_OUT(i32* %157, i32 %159, i32 %160)
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %118, %113, %104
  br label %239

163:                                              ; preds = %70
  %164 = load i32, i32* @RTM_GET2, align 4
  %165 = load %struct.walkarg*, %struct.walkarg** %5, align 8
  %166 = load i32*, i32** %11, align 8
  %167 = call i32 @rt_msg2(i32 %164, %struct.rt_addrinfo* %9, i32* null, %struct.walkarg* %165, i32* %166)
  store i32 %167, i32* %8, align 4
  %168 = load %struct.walkarg*, %struct.walkarg** %5, align 8
  %169 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %238

172:                                              ; preds = %163
  %173 = load %struct.walkarg*, %struct.walkarg** %5, align 8
  %174 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %173, i32 0, i32 3
  %175 = load i32*, i32** %174, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %177, label %238

177:                                              ; preds = %172
  %178 = load %struct.walkarg*, %struct.walkarg** %5, align 8
  %179 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %178, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = bitcast i32* %180 to i8*
  %182 = bitcast i8* %181 to %struct.rt_msghdr2*
  store %struct.rt_msghdr2* %182, %struct.rt_msghdr2** %13, align 8
  %183 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %184 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.rt_msghdr2*, %struct.rt_msghdr2** %13, align 8
  %187 = getelementptr inbounds %struct.rt_msghdr2, %struct.rt_msghdr2* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  %188 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %189 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.rt_msghdr2*, %struct.rt_msghdr2** %13, align 8
  %192 = getelementptr inbounds %struct.rt_msghdr2, %struct.rt_msghdr2* %191, i32 0, i32 7
  store i32 %190, i32* %192, align 4
  %193 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %194 = load %struct.rt_msghdr2*, %struct.rt_msghdr2** %13, align 8
  %195 = getelementptr inbounds %struct.rt_msghdr2, %struct.rt_msghdr2* %194, i32 0, i32 6
  %196 = call i32 @rt_getmetrics(%struct.rtentry* %193, i32* %195)
  %197 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %198 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %197, i32 0, i32 3
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.rt_msghdr2*, %struct.rt_msghdr2** %13, align 8
  %203 = getelementptr inbounds %struct.rt_msghdr2, %struct.rt_msghdr2* %202, i32 0, i32 5
  store i32 %201, i32* %203, align 4
  %204 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %205 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.rt_msghdr2*, %struct.rt_msghdr2** %13, align 8
  %208 = getelementptr inbounds %struct.rt_msghdr2, %struct.rt_msghdr2* %207, i32 0, i32 4
  store i32 %206, i32* %208, align 8
  %209 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %210 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %209, i32 0, i32 1
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %210, align 8
  %212 = icmp ne %struct.TYPE_3__* %211, null
  br i1 %212, label %213, label %221

213:                                              ; preds = %177
  %214 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %215 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %214, i32 0, i32 1
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.rt_msghdr2*, %struct.rt_msghdr2** %13, align 8
  %220 = getelementptr inbounds %struct.rt_msghdr2, %struct.rt_msghdr2* %219, i32 0, i32 3
  store i64 %218, i64* %220, align 8
  br label %224

221:                                              ; preds = %177
  %222 = load %struct.rt_msghdr2*, %struct.rt_msghdr2** %13, align 8
  %223 = getelementptr inbounds %struct.rt_msghdr2, %struct.rt_msghdr2* %222, i32 0, i32 3
  store i64 0, i64* %223, align 8
  br label %224

224:                                              ; preds = %221, %213
  %225 = load %struct.rt_msghdr2*, %struct.rt_msghdr2** %13, align 8
  %226 = getelementptr inbounds %struct.rt_msghdr2, %struct.rt_msghdr2* %225, i32 0, i32 2
  store i64 0, i64* %226, align 8
  %227 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %9, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.rt_msghdr2*, %struct.rt_msghdr2** %13, align 8
  %230 = getelementptr inbounds %struct.rt_msghdr2, %struct.rt_msghdr2* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 4
  %231 = load %struct.walkarg*, %struct.walkarg** %5, align 8
  %232 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %231, i32 0, i32 2
  %233 = load i32*, i32** %232, align 8
  %234 = load %struct.rt_msghdr2*, %struct.rt_msghdr2** %13, align 8
  %235 = ptrtoint %struct.rt_msghdr2* %234 to i32
  %236 = load i32, i32* %8, align 4
  %237 = call i32 @SYSCTL_OUT(i32* %233, i32 %235, i32 %236)
  store i32 %237, i32* %7, align 4
  br label %238

238:                                              ; preds = %224, %172, %163
  br label %239

239:                                              ; preds = %238, %162
  br label %240

240:                                              ; preds = %239, %42
  %241 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %242 = call i32 @RT_UNLOCK(%struct.rtentry* %241)
  %243 = call i32 @kauth_cred_unref(i32* %10)
  %244 = load i32, i32* %7, align 4
  ret i32 %244
}

declare dso_local i32 @kauth_cred_proc_ref(i32) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i64 @route_op_entitlement_check(i32*, i32, i32, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @rt_key(%struct.rtentry*) #1

declare dso_local i32 @rt_mask(%struct.rtentry*) #1

declare dso_local i32 @rt_msg2(i32, %struct.rt_addrinfo*, i32*, %struct.walkarg*, i32*) #1

declare dso_local i32 @rt_getmetrics(%struct.rtentry*, i32*) #1

declare dso_local i32 @SYSCTL_OUT(i32*, i32, i32) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
