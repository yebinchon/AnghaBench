; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_net_tuntests.c_create_tunsock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_net_tuntests.c_create_tunsock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_info = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.sockaddr_ctl = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@T_QUIET = common dso_local global i32 0, align 4
@PF_SYSTEM = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SYSPROTO_CONTROL = common dso_local global i32 0, align 4
@g_CONTROL_NAME = common dso_local global i32 0, align 4
@T_WITH_ERRNO = common dso_local global i32 0, align 4
@CTLIOCGINFO = common dso_local global i32 0, align 4
@AF_SYSTEM = common dso_local global i32 0, align 4
@AF_SYS_CONTROL = common dso_local global i32 0, align 4
@g_OPT_ENABLE_NETIF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@g_OPT_ENABLE_FLOWSWITCH = common dso_local global i32 0, align 4
@g_OPT_ENABLE_CHANNEL = common dso_local global i32 0, align 4
@g_OPT_GET_CHANNEL_UUID = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"connect got EBUSY, sleeping 1 second before retry\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"connect()\00", align 1
@SK_FEATURE_NETNS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@g_is_ipsec_test = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @create_tunsock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_tunsock(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ctl_info, align 8
  %9 = alloca %struct.sockaddr_ctl, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %13

13:                                               ; preds = %136, %3
  %14 = load i32, i32* @T_QUIET, align 4
  %15 = load i32, i32* @PF_SYSTEM, align 4
  %16 = load i32, i32* @SOCK_DGRAM, align 4
  %17 = load i32, i32* @SYSPROTO_CONTROL, align 4
  %18 = call i32 @socket(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = call i32 @T_EXPECT_POSIX_SUCCESS(i32 %18, i32* null)
  %20 = bitcast %struct.ctl_info* %8 to %struct.sockaddr_ctl*
  %21 = call i32 @memset(%struct.sockaddr_ctl* %20, i32 0, i32 40)
  %22 = getelementptr inbounds %struct.ctl_info, %struct.ctl_info* %8, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @g_CONTROL_NAME, align 4
  %25 = call i32 @strlcpy(i32 %23, i32 %24, i32 4)
  %26 = load i32, i32* @T_QUIET, align 4
  %27 = load i32, i32* @T_WITH_ERRNO, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @CTLIOCGINFO, align 4
  %30 = bitcast %struct.ctl_info* %8 to %struct.sockaddr_ctl*
  %31 = call i32 @ioctl(i32 %28, i32 %29, %struct.sockaddr_ctl* %30)
  %32 = call i32 @T_EXPECT_POSIX_ZERO(i32 %31, i8* null)
  %33 = call i32 @memset(%struct.sockaddr_ctl* %9, i32 0, i32 40)
  %34 = getelementptr inbounds %struct.sockaddr_ctl, %struct.sockaddr_ctl* %9, i32 0, i32 0
  store i32 40, i32* %34, align 8
  %35 = load i32, i32* @AF_SYSTEM, align 4
  %36 = getelementptr inbounds %struct.sockaddr_ctl, %struct.sockaddr_ctl* %9, i32 0, i32 5
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @AF_SYS_CONTROL, align 4
  %38 = getelementptr inbounds %struct.sockaddr_ctl, %struct.sockaddr_ctl* %9, i32 0, i32 4
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.ctl_info, %struct.ctl_info* %8, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.sockaddr_ctl, %struct.sockaddr_ctl* %9, i32 0, i32 3
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.sockaddr_ctl, %struct.sockaddr_ctl* %9, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @T_QUIET, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @SYSPROTO_CONTROL, align 4
  %46 = load i32, i32* @g_OPT_ENABLE_NETIF, align 4
  %47 = call i32 @setsockopt(i32 %44, i32 %45, i32 %46, i32* %4, i32 4)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = call i32 @T_EXPECT_POSIX_FAILURE(i32 %47, i32 %48, i32* null)
  %50 = load i32, i32* @T_QUIET, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @SYSPROTO_CONTROL, align 4
  %53 = load i32, i32* @g_OPT_ENABLE_FLOWSWITCH, align 4
  %54 = call i32 @setsockopt(i32 %51, i32 %52, i32 %53, i32* %5, i32 4)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = call i32 @T_EXPECT_POSIX_FAILURE(i32 %54, i32 %55, i32* null)
  %57 = load i32, i32* @T_QUIET, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @SYSPROTO_CONTROL, align 4
  %60 = load i32, i32* @g_OPT_ENABLE_CHANNEL, align 4
  %61 = call i32 @setsockopt(i32 %58, i32 %59, i32 %60, i32* %6, i32 4)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = call i32 @T_EXPECT_POSIX_FAILURE(i32 %61, i32 %62, i32* null)
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @uuid_clear(i32 %64)
  store i32 4, i32* %11, align 4
  %66 = load i32, i32* @T_QUIET, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @SYSPROTO_CONTROL, align 4
  %69 = load i32, i32* @g_OPT_GET_CHANNEL_UUID, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @getsockopt(i32 %67, i32 %68, i32 %69, i32 %70, i32* %11)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = call i32 @T_EXPECT_POSIX_FAILURE(i32 %71, i32 %72, i32* null)
  %74 = load i32, i32* @T_QUIET, align 4
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = call i32 @T_EXPECT_EQ_ULONG(i64 %76, i32 4, i32* null)
  %78 = load i32, i32* @T_QUIET, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @uuid_is_null(i32 %79)
  %81 = call i32 @T_EXPECT_TRUE(i32 %80, i32* null)
  %82 = load i32, i32* @T_QUIET, align 4
  %83 = load i32, i32* @T_WITH_ERRNO, align 4
  %84 = load i32, i32* %7, align 4
  %85 = bitcast %struct.sockaddr_ctl* %9 to %struct.sockaddr*
  %86 = call i32 @bind(i32 %84, %struct.sockaddr* %85, i32 40)
  %87 = call i32 @T_EXPECT_POSIX_ZERO(i32 %86, i8* null)
  %88 = load i32, i32* @T_QUIET, align 4
  %89 = load i32, i32* @T_WITH_ERRNO, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @SYSPROTO_CONTROL, align 4
  %92 = load i32, i32* @g_OPT_ENABLE_NETIF, align 4
  %93 = call i32 @setsockopt(i32 %90, i32 %91, i32 %92, i32* %4, i32 4)
  %94 = call i32 @T_EXPECT_POSIX_ZERO(i32 %93, i8* null)
  %95 = load i32, i32* @T_QUIET, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @SYSPROTO_CONTROL, align 4
  %98 = load i32, i32* @g_OPT_ENABLE_FLOWSWITCH, align 4
  %99 = call i32 @setsockopt(i32 %96, i32 %97, i32 %98, i32* %5, i32 4)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = call i32 @T_EXPECT_POSIX_FAILURE(i32 %99, i32 %100, i32* null)
  %102 = load i32, i32* @T_QUIET, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @SYSPROTO_CONTROL, align 4
  %105 = load i32, i32* @g_OPT_ENABLE_CHANNEL, align 4
  %106 = call i32 @setsockopt(i32 %103, i32 %104, i32 %105, i32* %6, i32 4)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = call i32 @T_EXPECT_POSIX_FAILURE(i32 %106, i32 %107, i32* null)
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @uuid_clear(i32 %109)
  store i32 4, i32* %11, align 4
  %111 = load i32, i32* @T_QUIET, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @SYSPROTO_CONTROL, align 4
  %114 = load i32, i32* @g_OPT_GET_CHANNEL_UUID, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @getsockopt(i32 %112, i32 %113, i32 %114, i32 %115, i32* %11)
  %117 = load i32, i32* @ENXIO, align 4
  %118 = call i32 @T_EXPECT_POSIX_FAILURE(i32 %116, i32 %117, i32* null)
  %119 = load i32, i32* @T_QUIET, align 4
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = call i32 @T_EXPECT_EQ_ULONG(i64 %121, i32 4, i32* null)
  %123 = load i32, i32* @T_QUIET, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @uuid_is_null(i32 %124)
  %126 = call i32 @T_EXPECT_TRUE(i32 %125, i32* null)
  %127 = load i32, i32* %7, align 4
  %128 = bitcast %struct.sockaddr_ctl* %9 to %struct.sockaddr*
  %129 = call i32 @connect(i32 %127, %struct.sockaddr* %128, i32 40)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %132, label %141

132:                                              ; preds = %13
  %133 = load i64, i64* @errno, align 8
  %134 = load i64, i64* @EBUSY, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @close(i32 %137)
  %139 = call i32 @T_LOG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %140 = call i32 @sleep(i32 1)
  br label %13

141:                                              ; preds = %132, %13
  %142 = load i32, i32* @T_QUIET, align 4
  %143 = load i32, i32* @T_WITH_ERRNO, align 4
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @T_EXPECT_POSIX_ZERO(i32 %144, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %146 = load i32, i32* @T_QUIET, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @SYSPROTO_CONTROL, align 4
  %149 = load i32, i32* @g_OPT_ENABLE_NETIF, align 4
  %150 = call i32 @setsockopt(i32 %147, i32 %148, i32 %149, i32* %4, i32 4)
  %151 = load i32, i32* @EINVAL, align 4
  %152 = call i32 @T_EXPECT_POSIX_FAILURE(i32 %150, i32 %151, i32* null)
  %153 = call i32 (...) @get_skywalk_features()
  %154 = load i32, i32* @SK_FEATURE_NETNS, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %178

157:                                              ; preds = %141
  %158 = load i32, i32* %4, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %157
  %161 = load i32, i32* @T_QUIET, align 4
  %162 = load i32, i32* @T_WITH_ERRNO, align 4
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* @SYSPROTO_CONTROL, align 4
  %165 = load i32, i32* @g_OPT_ENABLE_FLOWSWITCH, align 4
  %166 = call i32 @setsockopt(i32 %163, i32 %164, i32 %165, i32* %5, i32 4)
  %167 = call i32 @T_EXPECT_POSIX_ZERO(i32 %166, i8* null)
  br label %177

168:                                              ; preds = %157
  %169 = load i32, i32* @T_QUIET, align 4
  %170 = load i32, i32* @T_WITH_ERRNO, align 4
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* @SYSPROTO_CONTROL, align 4
  %173 = load i32, i32* @g_OPT_ENABLE_FLOWSWITCH, align 4
  %174 = call i32 @setsockopt(i32 %171, i32 %172, i32 %173, i32* %5, i32 4)
  %175 = load i32, i32* @ENOENT, align 4
  %176 = call i32 @T_EXPECT_POSIX_FAILURE(i32 %174, i32 %175, i32* null)
  br label %177

177:                                              ; preds = %168, %160
  br label %187

178:                                              ; preds = %141
  %179 = load i32, i32* @T_QUIET, align 4
  %180 = load i32, i32* @T_WITH_ERRNO, align 4
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* @SYSPROTO_CONTROL, align 4
  %183 = load i32, i32* @g_OPT_ENABLE_FLOWSWITCH, align 4
  %184 = call i32 @setsockopt(i32 %181, i32 %182, i32 %183, i32* %5, i32 4)
  %185 = load i32, i32* @ENOTSUP, align 4
  %186 = call i32 @T_EXPECT_POSIX_FAILURE(i32 %184, i32 %185, i32* null)
  br label %187

187:                                              ; preds = %178, %177
  %188 = load i32, i32* %6, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %249

190:                                              ; preds = %187
  %191 = load i64, i64* @g_is_ipsec_test, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %222

193:                                              ; preds = %190
  %194 = load i32, i32* %4, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %222, label %196

196:                                              ; preds = %193
  %197 = load i32, i32* @T_QUIET, align 4
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* @SYSPROTO_CONTROL, align 4
  %200 = load i32, i32* @g_OPT_ENABLE_CHANNEL, align 4
  %201 = call i32 @setsockopt(i32 %198, i32 %199, i32 %200, i32* %6, i32 4)
  %202 = load i32, i32* @EOPNOTSUPP, align 4
  %203 = call i32 @T_EXPECT_POSIX_FAILURE(i32 %201, i32 %202, i32* null)
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @uuid_clear(i32 %204)
  store i32 4, i32* %11, align 4
  %206 = load i32, i32* @T_QUIET, align 4
  %207 = load i32, i32* %7, align 4
  %208 = load i32, i32* @SYSPROTO_CONTROL, align 4
  %209 = load i32, i32* @g_OPT_GET_CHANNEL_UUID, align 4
  %210 = load i32, i32* %10, align 4
  %211 = call i32 @getsockopt(i32 %207, i32 %208, i32 %209, i32 %210, i32* %11)
  %212 = load i32, i32* @ENXIO, align 4
  %213 = call i32 @T_EXPECT_POSIX_FAILURE(i32 %211, i32 %212, i32* null)
  %214 = load i32, i32* @T_QUIET, align 4
  %215 = load i32, i32* %11, align 4
  %216 = sext i32 %215 to i64
  %217 = call i32 @T_EXPECT_EQ_ULONG(i64 %216, i32 4, i32* null)
  %218 = load i32, i32* @T_QUIET, align 4
  %219 = load i32, i32* %10, align 4
  %220 = call i32 @uuid_is_null(i32 %219)
  %221 = call i32 @T_EXPECT_TRUE(i32 %220, i32* null)
  br label %248

222:                                              ; preds = %193, %190
  %223 = load i32, i32* @T_QUIET, align 4
  %224 = load i32, i32* @T_WITH_ERRNO, align 4
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* @SYSPROTO_CONTROL, align 4
  %227 = load i32, i32* @g_OPT_ENABLE_CHANNEL, align 4
  %228 = call i32 @setsockopt(i32 %225, i32 %226, i32 %227, i32* %6, i32 4)
  %229 = call i32 @T_EXPECT_POSIX_ZERO(i32 %228, i8* null)
  %230 = load i32, i32* %10, align 4
  %231 = call i32 @uuid_clear(i32 %230)
  store i32 4, i32* %11, align 4
  %232 = load i32, i32* @T_QUIET, align 4
  %233 = load i32, i32* @T_WITH_ERRNO, align 4
  %234 = load i32, i32* %7, align 4
  %235 = load i32, i32* @SYSPROTO_CONTROL, align 4
  %236 = load i32, i32* @g_OPT_GET_CHANNEL_UUID, align 4
  %237 = load i32, i32* %10, align 4
  %238 = call i32 @getsockopt(i32 %234, i32 %235, i32 %236, i32 %237, i32* %11)
  %239 = call i32 @T_EXPECT_POSIX_ZERO(i32 %238, i8* null)
  %240 = load i32, i32* @T_QUIET, align 4
  %241 = load i32, i32* %11, align 4
  %242 = sext i32 %241 to i64
  %243 = call i32 @T_EXPECT_EQ_ULONG(i64 %242, i32 4, i32* null)
  %244 = load i32, i32* @T_QUIET, align 4
  %245 = load i32, i32* %10, align 4
  %246 = call i32 @uuid_is_null(i32 %245)
  %247 = call i32 @T_EXPECT_FALSE(i32 %246, i32* null)
  br label %248

248:                                              ; preds = %222, %196
  br label %275

249:                                              ; preds = %187
  %250 = load i32, i32* @T_QUIET, align 4
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* @SYSPROTO_CONTROL, align 4
  %253 = load i32, i32* @g_OPT_ENABLE_CHANNEL, align 4
  %254 = call i32 @setsockopt(i32 %251, i32 %252, i32 %253, i32* %6, i32 4)
  %255 = load i32, i32* @ENXIO, align 4
  %256 = call i32 @T_EXPECT_POSIX_FAILURE(i32 %254, i32 %255, i32* null)
  %257 = load i32, i32* %10, align 4
  %258 = call i32 @uuid_clear(i32 %257)
  store i32 4, i32* %11, align 4
  %259 = load i32, i32* @T_QUIET, align 4
  %260 = load i32, i32* %7, align 4
  %261 = load i32, i32* @SYSPROTO_CONTROL, align 4
  %262 = load i32, i32* @g_OPT_GET_CHANNEL_UUID, align 4
  %263 = load i32, i32* %10, align 4
  %264 = call i32 @getsockopt(i32 %260, i32 %261, i32 %262, i32 %263, i32* %11)
  %265 = load i32, i32* @ENXIO, align 4
  %266 = call i32 @T_EXPECT_POSIX_FAILURE(i32 %264, i32 %265, i32* null)
  %267 = load i32, i32* @T_QUIET, align 4
  %268 = load i32, i32* %11, align 4
  %269 = sext i32 %268 to i64
  %270 = call i32 @T_EXPECT_EQ_ULONG(i64 %269, i32 4, i32* null)
  %271 = load i32, i32* @T_QUIET, align 4
  %272 = load i32, i32* %10, align 4
  %273 = call i32 @uuid_is_null(i32 %272)
  %274 = call i32 @T_EXPECT_TRUE(i32 %273, i32* null)
  br label %275

275:                                              ; preds = %249, %248
  %276 = load i32, i32* %7, align 4
  %277 = load i32, i32* %4, align 4
  %278 = load i32, i32* %5, align 4
  %279 = load i32, i32* %6, align 4
  %280 = load i32, i32* %10, align 4
  %281 = call i32 @check_enables(i32 %276, i32 %277, i32 %278, i32 %279, i32 %280)
  %282 = load i32, i32* %7, align 4
  ret i32 %282
}

declare dso_local i32 @T_EXPECT_POSIX_SUCCESS(i32, i32*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_ctl*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @T_EXPECT_POSIX_ZERO(i32, i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.sockaddr_ctl*) #1

declare dso_local i32 @T_EXPECT_POSIX_FAILURE(i32, i32, i32*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @uuid_clear(i32) #1

declare dso_local i32 @getsockopt(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @T_EXPECT_EQ_ULONG(i64, i32, i32*) #1

declare dso_local i32 @T_EXPECT_TRUE(i32, i32*) #1

declare dso_local i32 @uuid_is_null(i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @T_LOG(i8*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @get_skywalk_features(...) #1

declare dso_local i32 @T_EXPECT_FALSE(i32, i32*) #1

declare dso_local i32 @check_enables(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
