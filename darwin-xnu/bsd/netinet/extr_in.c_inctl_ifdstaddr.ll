; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in.c_inctl_ifdstaddr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in.c_inctl_ifdstaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32 }
%struct.in_ifaddr = type { i32, %struct.TYPE_13__, %struct.sockaddr_in, i32, i32, i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { %struct.sockaddr* }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.ifreq = type { %struct.sockaddr_in }
%struct.kev_in_data = type { %struct.TYPE_12__*, %struct.TYPE_11__, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.kev_msg* }
%struct.kev_msg = type { %struct.TYPE_12__*, %struct.TYPE_11__, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32* }

@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@KEV_VENDOR_APPLE = common dso_local global i32 0, align 4
@KEV_NETWORK_CLASS = common dso_local global i32 0, align 4
@KEV_INET_SUBCLASS = common dso_local global i32 0, align 4
@KEV_INET_SIFDSTADDR = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@rnh_lock = common dso_local global i32 0, align 4
@IFA_ROUTE = common dso_local global i32 0, align 4
@RTM_DELETE = common dso_local global i64 0, align 8
@RTF_HOST = common dso_local global i32 0, align 4
@RTM_ADD = common dso_local global i64 0, align 8
@RTF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.in_ifaddr*, i32, %struct.ifreq*)* @inctl_ifdstaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inctl_ifdstaddr(%struct.ifnet* %0, %struct.in_ifaddr* %1, i32 %2, %struct.ifreq* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.in_ifaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ifreq*, align 8
  %10 = alloca %struct.kev_in_data, align 8
  %11 = alloca %struct.kev_msg, align 8
  %12 = alloca %struct.sockaddr_in, align 4
  %13 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store %struct.in_ifaddr* %1, %struct.in_ifaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ifreq* %3, %struct.ifreq** %9, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %15 = icmp ne %struct.ifnet* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @VERIFY(i32 %16)
  %18 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IFF_POINTOPOINT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %5, align 4
  br label %252

26:                                               ; preds = %4
  %27 = bitcast %struct.kev_in_data* %10 to %struct.kev_msg*
  %28 = call i32 @bzero(%struct.kev_msg* %27, i32 72)
  %29 = call i32 @bzero(%struct.kev_msg* %11, i32 72)
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %248 [
    i32 129, label %31
    i32 128, label %48
  ]

31:                                               ; preds = %26
  %32 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %33 = icmp eq %struct.in_ifaddr* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %35, i32* %13, align 4
  br label %250

36:                                               ; preds = %31
  %37 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %38 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %37, i32 0, i32 1
  %39 = call i32 @IFA_LOCK(%struct.TYPE_13__* %38)
  %40 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %41 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %40, i32 0, i32 2
  %42 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %43 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %42, i32 0, i32 0
  %44 = call i32 @bcopy(%struct.sockaddr_in* %41, %struct.sockaddr_in* %43, i32 12)
  %45 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %46 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %45, i32 0, i32 1
  %47 = call i32 @IFA_UNLOCK(%struct.TYPE_13__* %46)
  br label %250

48:                                               ; preds = %26
  %49 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %50 = icmp ne %struct.in_ifaddr* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @VERIFY(i32 %51)
  %53 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %54 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %53, i32 0, i32 1
  %55 = call i32 @IFA_LOCK(%struct.TYPE_13__* %54)
  %56 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %57 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %56, i32 0, i32 2
  %58 = bitcast %struct.sockaddr_in* %12 to i8*
  %59 = bitcast %struct.sockaddr_in* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 8 %59, i64 12, i1 false)
  %60 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %61 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %60, i32 0, i32 0
  %62 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %63 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %62, i32 0, i32 2
  %64 = call i32 @bcopy(%struct.sockaddr_in* %61, %struct.sockaddr_in* %63, i32 12)
  %65 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %66 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @AF_INET, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %48
  %72 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %73 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %73, i32 0, i32 0
  store i32 12, i32* %74, align 8
  br label %75

75:                                               ; preds = %71, %48
  %76 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %77 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %76, i32 0, i32 1
  %78 = call i32 @IFA_UNLOCK(%struct.TYPE_13__* %77)
  %79 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %80 = load i32, i32* @PF_INET, align 4
  %81 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %82 = call i32 @ifnet_ioctl(%struct.ifnet* %79, i32 %80, i32 128, %struct.in_ifaddr* %81)
  store i32 %82, i32* %13, align 4
  %83 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %84 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %83, i32 0, i32 1
  %85 = call i32 @IFA_LOCK(%struct.TYPE_13__* %84)
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @EOPNOTSUPP, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %75
  store i32 0, i32* %13, align 4
  br label %90

90:                                               ; preds = %89, %75
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %95 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %94, i32 0, i32 2
  %96 = bitcast %struct.sockaddr_in* %95 to i8*
  %97 = bitcast %struct.sockaddr_in* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 4 %97, i64 12, i1 false)
  %98 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %99 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %98, i32 0, i32 1
  %100 = call i32 @IFA_UNLOCK(%struct.TYPE_13__* %99)
  br label %250

101:                                              ; preds = %90
  %102 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %103 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %102, i32 0, i32 1
  %104 = call i32 @IFA_LOCK_ASSERT_HELD(%struct.TYPE_13__* %103)
  %105 = load i32, i32* @KEV_VENDOR_APPLE, align 4
  %106 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %11, i32 0, i32 12
  store i32 %105, i32* %106, align 8
  %107 = load i32, i32* @KEV_NETWORK_CLASS, align 4
  %108 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %11, i32 0, i32 11
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* @KEV_INET_SUBCLASS, align 4
  %110 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %11, i32 0, i32 10
  store i32 %109, i32* %110, align 8
  %111 = load i32, i32* @KEV_INET_SIFDSTADDR, align 4
  %112 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %11, i32 0, i32 9
  store i32 %111, i32* %112, align 4
  %113 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %114 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load %struct.sockaddr*, %struct.sockaddr** %115, align 8
  %117 = icmp ne %struct.sockaddr* %116, null
  br i1 %117, label %118, label %129

118:                                              ; preds = %101
  %119 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %10, i32 0, i32 8
  %120 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %121 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load %struct.sockaddr*, %struct.sockaddr** %122, align 8
  %124 = bitcast %struct.sockaddr* %123 to i8*
  %125 = bitcast i8* %124 to %struct.sockaddr_in*
  %126 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %125, i32 0, i32 1
  %127 = bitcast %struct.TYPE_9__* %119 to i8*
  %128 = bitcast %struct.TYPE_9__* %126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %127, i8* align 4 %128, i64 4, i1 false)
  br label %133

129:                                              ; preds = %101
  %130 = load i32, i32* @INADDR_ANY, align 4
  %131 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %10, i32 0, i32 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %129, %118
  %134 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %135 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %134, i32 0, i32 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %10, i32 0, i32 7
  store i32 %137, i32* %138, align 4
  %139 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %140 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %10, i32 0, i32 6
  store i32 %141, i32* %142, align 8
  %143 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %144 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %10, i32 0, i32 5
  store i32 %145, i32* %146, align 4
  %147 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %148 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %10, i32 0, i32 4
  store i32 %149, i32* %150, align 8
  %151 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %152 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %10, i32 0, i32 3
  store i32 %153, i32* %154, align 4
  %155 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %156 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %10, i32 0, i32 2
  store i32 %157, i32* %158, align 8
  %159 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %160 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %159, i32 0, i32 1
  %161 = call i32 @IFA_UNLOCK(%struct.TYPE_13__* %160)
  %162 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %10, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %167 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @IFNAMSIZ, align 4
  %170 = call i32 @strlcpy(i32* %165, i32 %168, i32 %169)
  %171 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %172 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %10, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  %176 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %177 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %10, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  %181 = bitcast %struct.kev_in_data* %10 to %struct.kev_msg*
  %182 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %11, i32 0, i32 0
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i64 0
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 1
  store %struct.kev_msg* %181, %struct.kev_msg** %185, align 8
  %186 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %11, i32 0, i32 0
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i64 0
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  store i32 72, i32* %189, align 8
  %190 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %11, i32 0, i32 0
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i64 1
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  store i32 0, i32* %193, align 8
  %194 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %195 = call i32 @dlil_post_complete_msg(%struct.ifnet* %194, %struct.kev_msg* %11)
  %196 = load i32, i32* @rnh_lock, align 4
  %197 = call i32 @lck_mtx_lock(i32 %196)
  %198 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %199 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %198, i32 0, i32 1
  %200 = call i32 @IFA_LOCK(%struct.TYPE_13__* %199)
  %201 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %202 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @IFA_ROUTE, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %241

207:                                              ; preds = %133
  %208 = bitcast %struct.sockaddr_in* %12 to %struct.sockaddr*
  %209 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %210 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  store %struct.sockaddr* %208, %struct.sockaddr** %211, align 8
  %212 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %213 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %212, i32 0, i32 1
  %214 = call i32 @IFA_UNLOCK(%struct.TYPE_13__* %213)
  %215 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %216 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %215, i32 0, i32 1
  %217 = load i64, i64* @RTM_DELETE, align 8
  %218 = trunc i64 %217 to i32
  %219 = load i32, i32* @RTF_HOST, align 4
  %220 = call i32 @rtinit_locked(%struct.TYPE_13__* %216, i32 %218, i32 %219)
  %221 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %222 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %221, i32 0, i32 1
  %223 = call i32 @IFA_LOCK(%struct.TYPE_13__* %222)
  %224 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %225 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %224, i32 0, i32 2
  %226 = bitcast %struct.sockaddr_in* %225 to %struct.sockaddr*
  %227 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %228 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 0
  store %struct.sockaddr* %226, %struct.sockaddr** %229, align 8
  %230 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %231 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %230, i32 0, i32 1
  %232 = call i32 @IFA_UNLOCK(%struct.TYPE_13__* %231)
  %233 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %234 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %233, i32 0, i32 1
  %235 = load i64, i64* @RTM_ADD, align 8
  %236 = trunc i64 %235 to i32
  %237 = load i32, i32* @RTF_HOST, align 4
  %238 = load i32, i32* @RTF_UP, align 4
  %239 = or i32 %237, %238
  %240 = call i32 @rtinit_locked(%struct.TYPE_13__* %234, i32 %236, i32 %239)
  br label %245

241:                                              ; preds = %133
  %242 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %243 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %242, i32 0, i32 1
  %244 = call i32 @IFA_UNLOCK(%struct.TYPE_13__* %243)
  br label %245

245:                                              ; preds = %241, %207
  %246 = load i32, i32* @rnh_lock, align 4
  %247 = call i32 @lck_mtx_unlock(i32 %246)
  br label %250

248:                                              ; preds = %26
  %249 = call i32 @VERIFY(i32 0)
  br label %250

250:                                              ; preds = %248, %245, %93, %36, %34
  %251 = load i32, i32* %13, align 4
  store i32 %251, i32* %5, align 4
  br label %252

252:                                              ; preds = %250, %24
  %253 = load i32, i32* %5, align 4
  ret i32 %253
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @bzero(%struct.kev_msg*, i32) #1

declare dso_local i32 @IFA_LOCK(%struct.TYPE_13__*) #1

declare dso_local i32 @bcopy(%struct.sockaddr_in*, %struct.sockaddr_in*, i32) #1

declare dso_local i32 @IFA_UNLOCK(%struct.TYPE_13__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ifnet_ioctl(%struct.ifnet*, i32, i32, %struct.in_ifaddr*) #1

declare dso_local i32 @IFA_LOCK_ASSERT_HELD(%struct.TYPE_13__*) #1

declare dso_local i32 @strlcpy(i32*, i32, i32) #1

declare dso_local i32 @dlil_post_complete_msg(%struct.ifnet*, %struct.kev_msg*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @rtinit_locked(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
