; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vchiq_arm/extr_vchiq_test.c_vchiq_ping_test.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vchiq_arm/extr_vchiq_test.c_vchiq_ping_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@vchiq_ping_test.sizes = internal global [4 x i32] [i32 0, i32 1024, i32 2048, i32 128], align 16
@g_servname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"Ping test - service:%s, iters:%d, version %d\0A\00", align 1
@g_params = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@VCHIQ_TEST_VER = common dso_local global i32 0, align 4
@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"* failed to open vchiq instance\0A\00", align 1
@VCHIQ_ERROR = common dso_local global i64 0, align 8
@vchi_clnt_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"* failed to open service - already in use?\0A\00", align 1
@clnt_callback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"clnt userdata\00", align 1
@g_timeout_ms = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @vchiq_ping_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vchiq_ping_test() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i8*, i8** @g_servname, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = load i8*, i8** @g_servname, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = load i8*, i8** @g_servname, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 2
  %19 = load i8, i8* %18, align 1
  %20 = load i8*, i8** @g_servname, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 3
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @VCHIQ_MAKE_FOURCC(i8 signext %13, i8 signext %16, i8 signext %19, i8 signext %22)
  store i32 %23, i32* %7, align 4
  %24 = load i8*, i8** @g_servname, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_params, i32 0, i32 0), align 4
  %26 = load i32, i32* @VCHIQ_TEST_VER, align 4
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %25, i32 %26)
  %28 = call i64 @vchiq_initialise(i64* %2)
  %29 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %0
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %33, i64* %1, align 8
  br label %412

34:                                               ; preds = %0
  %35 = load i64, i64* %2, align 8
  %36 = call i32 @vchiq_connect(i64 %35)
  %37 = call i32 @memset(%struct.TYPE_7__* %5, i32 0, i32 32)
  %38 = load i32, i32* @VCHIQ_TEST_VER, align 4
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = load i32, i32* @vchi_clnt_callback, align 4
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i32* %4, i32** %47, align 8
  %48 = load i64, i64* %2, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i64 @vchi_service_open(i32 %49, %struct.TYPE_7__* %5, i32* %4)
  %51 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %34
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %55, i64* %1, align 8
  br label %412

56:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %222, %56
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = icmp ult i64 %59, 4
  br i1 %60, label %61, label %225

61:                                               ; preds = %57
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_params, i32 0, i32 0), align 4
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %8, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @do_vchi_ping_test(i32 %63, i32 %67, i32 0, i32 0, i32 %68)
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %8, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @do_vchi_ping_test(i32 %70, i32 %74, i32 0, i32 0, i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %8, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @do_vchi_ping_test(i32 %77, i32 %81, i32 1, i32 0, i32 %82)
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %8, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @do_vchi_ping_test(i32 %84, i32 %88, i32 2, i32 0, i32 %89)
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @do_vchi_ping_test(i32 %91, i32 %95, i32 10, i32 0, i32 %96)
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* %8, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @do_vchi_ping_test(i32 %98, i32 %102, i32 0, i32 1, i32 %103)
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %8, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @do_vchi_ping_test(i32 %105, i32 %109, i32 0, i32 2, i32 %110)
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* %8, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @do_vchi_ping_test(i32 %112, i32 %116, i32 0, i32 10, i32 %117)
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* %8, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @do_vchi_ping_test(i32 %119, i32 %123, i32 10, i32 10, i32 %124)
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* %8, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %9, align 4
  %132 = sdiv i32 %131, 10
  %133 = call i32 @do_vchi_ping_test(i32 %126, i32 %130, i32 100, i32 0, i32 %132)
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* %8, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %9, align 4
  %140 = sdiv i32 %139, 10
  %141 = call i32 @do_vchi_ping_test(i32 %134, i32 %138, i32 0, i32 100, i32 %140)
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* %8, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %9, align 4
  %148 = sdiv i32 %147, 10
  %149 = call i32 @do_vchi_ping_test(i32 %142, i32 %146, i32 100, i32 100, i32 %148)
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* %8, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %9, align 4
  %156 = sdiv i32 %155, 10
  %157 = call i32 @do_vchi_ping_test(i32 %150, i32 %154, i32 200, i32 0, i32 %156)
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* %8, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %9, align 4
  %164 = sdiv i32 %163, 10
  %165 = call i32 @do_vchi_ping_test(i32 %158, i32 %162, i32 0, i32 200, i32 %164)
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* %8, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %9, align 4
  %172 = sdiv i32 %171, 10
  %173 = call i32 @do_vchi_ping_test(i32 %166, i32 %170, i32 200, i32 200, i32 %172)
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* %8, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %9, align 4
  %180 = sdiv i32 %179, 20
  %181 = call i32 @do_vchi_ping_test(i32 %174, i32 %178, i32 400, i32 0, i32 %180)
  %182 = load i32, i32* %4, align 4
  %183 = load i32, i32* %8, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %9, align 4
  %188 = sdiv i32 %187, 20
  %189 = call i32 @do_vchi_ping_test(i32 %182, i32 %186, i32 0, i32 400, i32 %188)
  %190 = load i32, i32* %4, align 4
  %191 = load i32, i32* %8, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %9, align 4
  %196 = sdiv i32 %195, 20
  %197 = call i32 @do_vchi_ping_test(i32 %190, i32 %194, i32 400, i32 400, i32 %196)
  %198 = load i32, i32* %4, align 4
  %199 = load i32, i32* %8, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %9, align 4
  %204 = sdiv i32 %203, 50
  %205 = call i32 @do_vchi_ping_test(i32 %198, i32 %202, i32 1000, i32 0, i32 %204)
  %206 = load i32, i32* %4, align 4
  %207 = load i32, i32* %8, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %9, align 4
  %212 = sdiv i32 %211, 50
  %213 = call i32 @do_vchi_ping_test(i32 %206, i32 %210, i32 0, i32 1000, i32 %212)
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* %8, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %9, align 4
  %220 = sdiv i32 %219, 50
  %221 = call i32 @do_vchi_ping_test(i32 %214, i32 %218, i32 1000, i32 1000, i32 %220)
  br label %222

222:                                              ; preds = %61
  %223 = load i32, i32* %8, align 4
  %224 = add i32 %223, 1
  store i32 %224, i32* %8, align 4
  br label %57

225:                                              ; preds = %57
  %226 = load i32, i32* %4, align 4
  %227 = call i32 @vchi_service_close(i32 %226)
  %228 = load i32, i32* %7, align 4
  %229 = load i32, i32* @clnt_callback, align 4
  %230 = load i32, i32* @VCHIQ_TEST_VER, align 4
  %231 = call i32 @INIT_PARAMS(i32* %6, i32 %228, i32 %229, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %230)
  %232 = load i64, i64* %2, align 8
  %233 = call i64 @vchiq_open_service(i64 %232, i32* %6, i32* %3)
  %234 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %225
  %237 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %238 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %238, i64* %1, align 8
  br label %412

239:                                              ; preds = %225
  store i32 0, i32* %8, align 4
  br label %240

240:                                              ; preds = %405, %239
  %241 = load i32, i32* %8, align 4
  %242 = zext i32 %241 to i64
  %243 = icmp ult i64 %242, 4
  br i1 %243, label %244, label %408

244:                                              ; preds = %240
  %245 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_params, i32 0, i32 0), align 4
  store i32 %245, i32* %10, align 4
  %246 = load i32, i32* %3, align 4
  %247 = load i32, i32* %8, align 4
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %10, align 4
  %252 = call i32 @do_ping_test(i32 %246, i32 %250, i32 0, i32 0, i32 %251)
  %253 = load i32, i32* %3, align 4
  %254 = load i32, i32* %8, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %10, align 4
  %259 = call i32 @do_ping_test(i32 %253, i32 %257, i32 0, i32 0, i32 %258)
  %260 = load i32, i32* %3, align 4
  %261 = load i32, i32* %8, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %10, align 4
  %266 = call i32 @do_ping_test(i32 %260, i32 %264, i32 1, i32 0, i32 %265)
  %267 = load i32, i32* %3, align 4
  %268 = load i32, i32* %8, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* %10, align 4
  %273 = call i32 @do_ping_test(i32 %267, i32 %271, i32 2, i32 0, i32 %272)
  %274 = load i32, i32* %3, align 4
  %275 = load i32, i32* %8, align 4
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* %10, align 4
  %280 = call i32 @do_ping_test(i32 %274, i32 %278, i32 10, i32 0, i32 %279)
  %281 = load i32, i32* %3, align 4
  %282 = load i32, i32* %8, align 4
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* %10, align 4
  %287 = call i32 @do_ping_test(i32 %281, i32 %285, i32 0, i32 1, i32 %286)
  %288 = load i32, i32* %3, align 4
  %289 = load i32, i32* %8, align 4
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* %10, align 4
  %294 = call i32 @do_ping_test(i32 %288, i32 %292, i32 0, i32 2, i32 %293)
  %295 = load i32, i32* %3, align 4
  %296 = load i32, i32* %8, align 4
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* %10, align 4
  %301 = call i32 @do_ping_test(i32 %295, i32 %299, i32 0, i32 10, i32 %300)
  %302 = load i32, i32* %3, align 4
  %303 = load i32, i32* %8, align 4
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* %10, align 4
  %308 = call i32 @do_ping_test(i32 %302, i32 %306, i32 10, i32 10, i32 %307)
  %309 = load i32, i32* %3, align 4
  %310 = load i32, i32* %8, align 4
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %10, align 4
  %315 = sdiv i32 %314, 10
  %316 = call i32 @do_ping_test(i32 %309, i32 %313, i32 100, i32 0, i32 %315)
  %317 = load i32, i32* %3, align 4
  %318 = load i32, i32* %8, align 4
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* %10, align 4
  %323 = sdiv i32 %322, 10
  %324 = call i32 @do_ping_test(i32 %317, i32 %321, i32 0, i32 100, i32 %323)
  %325 = load i32, i32* %3, align 4
  %326 = load i32, i32* %8, align 4
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* %10, align 4
  %331 = sdiv i32 %330, 10
  %332 = call i32 @do_ping_test(i32 %325, i32 %329, i32 100, i32 100, i32 %331)
  %333 = load i32, i32* %3, align 4
  %334 = load i32, i32* %8, align 4
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* %10, align 4
  %339 = sdiv i32 %338, 10
  %340 = call i32 @do_ping_test(i32 %333, i32 %337, i32 200, i32 0, i32 %339)
  %341 = load i32, i32* %3, align 4
  %342 = load i32, i32* %8, align 4
  %343 = zext i32 %342 to i64
  %344 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* %10, align 4
  %347 = sdiv i32 %346, 10
  %348 = call i32 @do_ping_test(i32 %341, i32 %345, i32 0, i32 200, i32 %347)
  %349 = load i32, i32* %3, align 4
  %350 = load i32, i32* %8, align 4
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* %10, align 4
  %355 = sdiv i32 %354, 10
  %356 = call i32 @do_ping_test(i32 %349, i32 %353, i32 200, i32 200, i32 %355)
  %357 = load i32, i32* %3, align 4
  %358 = load i32, i32* %8, align 4
  %359 = zext i32 %358 to i64
  %360 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* %10, align 4
  %363 = sdiv i32 %362, 20
  %364 = call i32 @do_ping_test(i32 %357, i32 %361, i32 400, i32 0, i32 %363)
  %365 = load i32, i32* %3, align 4
  %366 = load i32, i32* %8, align 4
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* %10, align 4
  %371 = sdiv i32 %370, 20
  %372 = call i32 @do_ping_test(i32 %365, i32 %369, i32 0, i32 400, i32 %371)
  %373 = load i32, i32* %3, align 4
  %374 = load i32, i32* %8, align 4
  %375 = zext i32 %374 to i64
  %376 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* %10, align 4
  %379 = sdiv i32 %378, 20
  %380 = call i32 @do_ping_test(i32 %373, i32 %377, i32 400, i32 400, i32 %379)
  %381 = load i32, i32* %3, align 4
  %382 = load i32, i32* %8, align 4
  %383 = zext i32 %382 to i64
  %384 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = load i32, i32* %10, align 4
  %387 = sdiv i32 %386, 50
  %388 = call i32 @do_ping_test(i32 %381, i32 %385, i32 1000, i32 0, i32 %387)
  %389 = load i32, i32* %3, align 4
  %390 = load i32, i32* %8, align 4
  %391 = zext i32 %390 to i64
  %392 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = load i32, i32* %10, align 4
  %395 = sdiv i32 %394, 50
  %396 = call i32 @do_ping_test(i32 %389, i32 %393, i32 0, i32 1000, i32 %395)
  %397 = load i32, i32* %3, align 4
  %398 = load i32, i32* %8, align 4
  %399 = zext i32 %398 to i64
  %400 = getelementptr inbounds [4 x i32], [4 x i32]* @vchiq_ping_test.sizes, i64 0, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = load i32, i32* %10, align 4
  %403 = sdiv i32 %402, 50
  %404 = call i32 @do_ping_test(i32 %397, i32 %401, i32 1000, i32 1000, i32 %403)
  br label %405

405:                                              ; preds = %244
  %406 = load i32, i32* %8, align 4
  %407 = add i32 %406, 1
  store i32 %407, i32* %8, align 4
  br label %240

408:                                              ; preds = %240
  %409 = load i32, i32* %3, align 4
  %410 = call i32 @vchiq_close_service(i32 %409)
  %411 = load i64, i64* @VCHIQ_SUCCESS, align 8
  store i64 %411, i64* %1, align 8
  br label %412

412:                                              ; preds = %408, %236, %53, %31
  %413 = load i64, i64* %1, align 8
  ret i64 %413
}

declare dso_local i32 @VCHIQ_MAKE_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @vchiq_initialise(i64*) #1

declare dso_local i32 @vchiq_connect(i64) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @vchi_service_open(i32, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @do_vchi_ping_test(i32, i32, i32, i32, i32) #1

declare dso_local i32 @vchi_service_close(i32) #1

declare dso_local i32 @INIT_PARAMS(i32*, i32, i32, i8*, i32) #1

declare dso_local i64 @vchiq_open_service(i64, i32*, i32*) #1

declare dso_local i32 @do_ping_test(i32, i32, i32, i32, i32) #1

declare dso_local i32 @vchiq_close_service(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
