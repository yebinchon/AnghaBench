; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vchiq_arm/extr_vchiq_lib.c_create_service.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vchiq_arm/extr_vchiq_lib.c_create_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, i64, i32, i32, i8*, i32*, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_11__*, i32 }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { i32, i8*, i32, %struct.TYPE_12__ }

@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@VCHIQ_ERROR = common dso_local global i64 0, align 8
@VCHIQ_SERVICE_HANDLE_INVALID = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"service %x already using fourcc 0x%x\00", align 1
@VCHIQ_MAX_INSTANCE_SERVICES = common dso_local global i32 0, align 4
@handle_seq = common dso_local global i32 0, align 4
@VCHIQ_IOC_CREATE_SERVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"service handle %x lib_handle %x using fourcc 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, %struct.TYPE_12__*, i64, i32, i32*)* @create_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_service(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca %struct.TYPE_14__, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %12, align 8
  %18 = load i64, i64* @VCHIQ_SUCCESS, align 8
  store i64 %18, i64* %13, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %20 = call i32 @is_valid_instance(%struct.TYPE_13__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %5
  %23 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %23, i64* %6, align 8
  br label %288

24:                                               ; preds = %5
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = call i32 @vcos_mutex_lock(i32* %26)
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %24
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %56, %30
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %31
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** @VCHIQ_SERVICE_HANDLE_INVALID, align 8
  %47 = icmp eq i8* %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %37
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i64 %53
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %12, align 8
  br label %59

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %14, align 4
  br label %31

59:                                               ; preds = %48, %31
  br label %121

60:                                               ; preds = %24
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %117, %60
  %66 = load i32, i32* %14, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %120

68:                                               ; preds = %65
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i64 %73
  store %struct.TYPE_11__* %74, %struct.TYPE_11__** %15, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** @VCHIQ_SERVICE_HANDLE_INVALID, align 8
  %79 = icmp eq i8* %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %68
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %81, %struct.TYPE_11__** %12, align 8
  br label %116

82:                                               ; preds = %68
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 7
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %86, %89
  br i1 %90, label %91, label %115

91:                                               ; preds = %82
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 7
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %95, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %91
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %9, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %100, %91
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i8*, i8*, i32, ...) @vcos_log_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %109, i32 %112)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %12, align 8
  %114 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %114, i64* %13, align 8
  br label %120

115:                                              ; preds = %100, %82
  br label %116

116:                                              ; preds = %115, %80
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %14, align 4
  br label %65

120:                                              ; preds = %106, %65
  br label %121

121:                                              ; preds = %120, %59
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %123 = icmp ne %struct.TYPE_11__* %122, null
  br i1 %123, label %147, label %124

124:                                              ; preds = %121
  %125 = load i64, i64* %13, align 8
  %126 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %147

128:                                              ; preds = %124
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @VCHIQ_MAX_INSTANCE_SERVICES, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %128
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i64 %142
  store %struct.TYPE_11__* %143, %struct.TYPE_11__** %12, align 8
  br label %146

144:                                              ; preds = %128
  %145 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %145, i64* %13, align 8
  br label %146

146:                                              ; preds = %144, %134
  br label %147

147:                                              ; preds = %146, %124, %121
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %149 = icmp ne %struct.TYPE_11__* %148, null
  br i1 %149, label %150, label %173

150:                                              ; preds = %147
  %151 = load i32, i32* @handle_seq, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* @VCHIQ_MAX_INSTANCE_SERVICES, align 4
  store i32 %154, i32* @handle_seq, align 4
  br label %155

155:                                              ; preds = %153, %150
  %156 = load i32, i32* @handle_seq, align 4
  %157 = sext i32 %156 to i64
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 3
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = ptrtoint %struct.TYPE_11__* %158 to i64
  %163 = ptrtoint %struct.TYPE_11__* %161 to i64
  %164 = sub i64 %162, %163
  %165 = sdiv exact i64 %164, 72
  %166 = or i64 %157, %165
  %167 = inttoptr i64 %166 to i8*
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  store i8* %167, i8** %169, align 8
  %170 = load i32, i32* @VCHIQ_MAX_INSTANCE_SERVICES, align 4
  %171 = load i32, i32* @handle_seq, align 4
  %172 = add nsw i32 %171, %170
  store i32 %172, i32* @handle_seq, align 4
  br label %173

173:                                              ; preds = %155, %147
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 1
  %176 = call i32 @vcos_mutex_unlock(i32* %175)
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %178 = icmp ne %struct.TYPE_11__* %177, null
  br i1 %178, label %179, label %248

179:                                              ; preds = %173
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 7
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 2
  store i32 %182, i32* %185, align 8
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 7
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  store i64 %188, i64* %191, align 8
  %192 = load i64, i64* %9, align 8
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 1
  store i64 %192, i64* %194, align 8
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %196, align 8
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 7
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  store %struct.TYPE_11__* %197, %struct.TYPE_11__** %200, align 8
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 6
  store i32 %203, i32* %205, align 8
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 2
  store i32 -1, i32* %207, align 8
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 5
  store i32* null, i32** %209, align 8
  %210 = load i32, i32* %10, align 4
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 3
  store i32 %210, i32* %212, align 4
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 3
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %215 = bitcast %struct.TYPE_12__* %213 to i8*
  %216 = bitcast %struct.TYPE_12__* %214 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %215, i8* align 8 %216, i64 24, i1 false)
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 2
  store %struct.TYPE_11__* %217, %struct.TYPE_11__** %219, align 8
  %220 = load i32, i32* %10, align 4
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  store i32 %220, i32* %221, align 8
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = inttoptr i64 %224 to i8*
  %226 = icmp eq i8* %225, null
  %227 = zext i1 %226 to i32
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  store i32 %227, i32* %228, align 8
  %229 = load i8*, i8** @VCHIQ_SERVICE_HANDLE_INVALID, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  store i8* %229, i8** %230, align 8
  %231 = load i32, i32* %17, align 4
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @VCHIQ_IOC_CREATE_SERVICE, align 4
  %236 = call i32 @ioctl(i32 %234, i32 %235, %struct.TYPE_14__* %16)
  %237 = call i32 @RETRY(i32 %231, i32 %236)
  %238 = load i32, i32* %17, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %179
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %242 = load i8*, i8** %241, align 8
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 4
  store i8* %242, i8** %244, align 8
  br label %247

245:                                              ; preds = %179
  %246 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %246, i64* %13, align 8
  br label %247

247:                                              ; preds = %245, %240
  br label %248

248:                                              ; preds = %247, %173
  %249 = load i64, i64* %13, align 8
  %250 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %269

252:                                              ; preds = %248
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 0
  %255 = load i8*, i8** %254, align 8
  %256 = ptrtoint i8* %255 to i32
  %257 = load i32*, i32** %11, align 8
  store i32 %256, i32* %257, align 4
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 4
  %260 = load i8*, i8** %259, align 8
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 0
  %263 = load i8*, i8** %262, align 8
  %264 = ptrtoint i8* %263 to i32
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = call i32 (i8*, i8*, i32, ...) @vcos_log_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %260, i32 %264, i32 %267)
  br label %286

269:                                              ; preds = %248
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 1
  %272 = call i32 @vcos_mutex_lock(i32* %271)
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %274 = icmp ne %struct.TYPE_11__* %273, null
  br i1 %274, label %275, label %279

275:                                              ; preds = %269
  %276 = load i8*, i8** @VCHIQ_SERVICE_HANDLE_INVALID, align 8
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 0
  store i8* %276, i8** %278, align 8
  br label %279

279:                                              ; preds = %275, %269
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 1
  %282 = call i32 @vcos_mutex_unlock(i32* %281)
  %283 = load i8*, i8** @VCHIQ_SERVICE_HANDLE_INVALID, align 8
  %284 = ptrtoint i8* %283 to i32
  %285 = load i32*, i32** %11, align 8
  store i32 %284, i32* %285, align 4
  br label %286

286:                                              ; preds = %279, %252
  %287 = load i64, i64* %13, align 8
  store i64 %287, i64* %6, align 8
  br label %288

288:                                              ; preds = %286, %22
  %289 = load i64, i64* %6, align 8
  ret i64 %289
}

declare dso_local i32 @is_valid_instance(%struct.TYPE_13__*) #1

declare dso_local i32 @vcos_mutex_lock(i32*) #1

declare dso_local i32 @vcos_log_info(i8*, i8*, i32, ...) #1

declare dso_local i32 @vcos_mutex_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @RETRY(i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
