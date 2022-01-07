; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnGetNextInterface.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnGetNextInterface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_20__*, %struct.TYPE_26__, i32, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i64, i64, i64, %struct.TYPE_26__*, i64, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_23__ = type { i64, i8** }

@MAX_SIZE = common dso_local global i32 0, align 4
@NN_NEXT_WAIT_TIME_FOR_DEVICE_ENUM = common dso_local global i32 0, align 4
@NN_NEXT_WAIT_TIME_MAX_FAIL_COUNT = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i64 0, align 8
@NN_NO_NATIVE_NAT_FILENAME = common dso_local global i32 0, align 4
@NN_HOSTNAME_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"IPCDhcpAllocateIP for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"DHCP: client_ip=%s, client_mask=%s, dhcp_ip=%s, gateway_ip=%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Connectivity OK.\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Connectivity Failed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"DHCP Failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_24__* @NnGetNextInterface(%struct.TYPE_25__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_26__, align 4
  %14 = alloca [64 x i8], align 16
  %15 = alloca [64 x i8], align 16
  %16 = alloca [64 x i8], align 16
  %17 = alloca [64 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %4, align 8
  %21 = load i32, i32* @MAX_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %8, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %26 = icmp eq %struct.TYPE_25__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %2, align 8
  store i32 1, i32* %12, align 4
  br label %322

28:                                               ; preds = %1
  %29 = load i32, i32* @NN_NEXT_WAIT_TIME_FOR_DEVICE_ENUM, align 4
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  %34 = load i32, i32* @NN_NEXT_WAIT_TIME_MAX_FAIL_COUNT, align 4
  %35 = call i32 @MIN(i64 %33, i32 %34)
  %36 = mul nsw i32 %29, %35
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 7
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %42, align 8
  %44 = icmp ne %struct.TYPE_21__* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %28
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 7
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %45, %28
  %55 = phi i1 [ false, %28 ], [ %53, %45 ]
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 7
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %61, align 8
  %63 = icmp ne %struct.TYPE_21__* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %54
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 7
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %64, %54
  %74 = phi i1 [ false, %54 ], [ %72, %64 ]
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call %struct.TYPE_23__* @GetEthListEx(i32* null, i32 %57, i32 %76)
  store %struct.TYPE_23__* %77, %struct.TYPE_23__** %6, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %79 = icmp eq %struct.TYPE_23__* %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %73
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80, %73
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %87 = call i32 @FreeToken(%struct.TYPE_23__* %86)
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %89, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %2, align 8
  store i32 1, i32* %12, align 4
  br label %322

92:                                               ; preds = %80
  %93 = call i64 (...) @GetEthDeviceHash()
  store i64 %93, i64* %5, align 8
  %94 = call i64 (...) @GetHostIPAddressHash32()
  store i64 %94, i64* %11, align 8
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %5, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %92
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %11, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %100, %92
  %107 = load i64, i64* @INFINITE, align 8
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 3
  store i64 %107, i64* %109, align 8
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 5
  store i64 0, i64* %111, align 8
  br label %112

112:                                              ; preds = %106, %100
  %113 = load i64, i64* %5, align 8
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  %116 = load i64, i64* %11, align 8
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 2
  store i64 %116, i64* %118, align 8
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @INFINITE, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %112
  store i64 0, i64* %7, align 8
  br label %137

125:                                              ; preds = %112
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %7, align 8
  %130 = load i64, i64* %7, align 8
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp sge i64 %130, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %125
  store i64 0, i64* %7, align 8
  br label %136

136:                                              ; preds = %135, %125
  br label %137

137:                                              ; preds = %136, %124
  %138 = load i64, i64* %7, align 8
  %139 = add nsw i64 %138, 1
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %139, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %137
  %145 = load i64, i64* @INFINITE, align 8
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 3
  store i64 %145, i64* %147, align 8
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %149, align 8
  br label %158

152:                                              ; preds = %137
  %153 = load i64, i64* %7, align 8
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 3
  store i64 %153, i64* %155, align 8
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 0
  store i32 0, i32* %157, align 8
  br label %158

158:                                              ; preds = %152, %144
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 1
  %161 = load i8**, i8*** %160, align 8
  %162 = load i64, i64* %7, align 8
  %163 = getelementptr inbounds i8*, i8** %161, i64 %162
  %164 = load i8*, i8** %163, align 8
  store i8* %164, i8** %10, align 8
  %165 = load i32, i32* @NN_NO_NATIVE_NAT_FILENAME, align 4
  %166 = load i8*, i8** %10, align 8
  %167 = call i32 @IsInLinesFile(i32 %165, i8* %166, i32 1)
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %318

169:                                              ; preds = %158
  %170 = trunc i64 %22 to i32
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 7
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @BinToStr(i8* %24, i32 %170, i32 %175, i32 6)
  %177 = load i8*, i8** %10, align 8
  %178 = call %struct.TYPE_24__* @NewNativeStack(i32* null, i8* %177, i8* %24)
  store %struct.TYPE_24__* %178, %struct.TYPE_24__** %4, align 8
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %180 = icmp ne %struct.TYPE_24__* %179, null
  br i1 %180, label %181, label %317

181:                                              ; preds = %169
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i32 0, i32 4
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %183, align 8
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %188, align 8
  %190 = call i32 @Copy(%struct.TYPE_26__* %184, %struct.TYPE_26__* %189, i32 6)
  %191 = call i32 @Zero(%struct.TYPE_26__* %13, i32 28)
  %192 = trunc i64 %22 to i32
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @BinToStr(i8* %24, i32 %192, i32 %195, i32 6)
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 2
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @NN_HOSTNAME_FORMAT, align 4
  %203 = call i32 @Format(i32 %201, i32 4, i32 %202, i8* %24)
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 2
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @StrLower(i32 %208)
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 4
  %213 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %212)
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %215, align 8
  %217 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %217, i32 0, i32 6
  %219 = load i32, i32* %218, align 8
  %220 = call i64 @IPCDhcpAllocateIP(%struct.TYPE_20__* %216, %struct.TYPE_26__* %13, i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %308

222:                                              ; preds = %181
  %223 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %224 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 5
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @IPToStr32(i8* %223, i32 64, i32 %225)
  %227 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 4
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @IPToStr32(i8* %227, i32 64, i32 %229)
  %231 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 6
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @IPToStr32(i8* %231, i32 64, i32 %233)
  %235 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %236 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @IPToStr32(i8* %235, i32 64, i32 %237)
  %239 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %240 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %241 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %242 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %243 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i8* %239, i8* %240, i8* %241, i8* %242)
  %244 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %244, i32 0, i32 3
  %246 = call i32 @Copy(%struct.TYPE_26__* %245, %struct.TYPE_26__* %13, i32 28)
  %247 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 5
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @UINTToIP(i32* %18, i32 %248)
  %250 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 4
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @UINTToIP(i32* %19, i32 %251)
  %253 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @UINTToIP(i32* %20, i32 %254)
  %256 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %256, i32 0, i32 2
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 3
  %260 = call i32 @IPCSetIPv4Parameters(%struct.TYPE_20__* %258, i32* %18, i32* %19, i32* %20, i32* %259)
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @UINTToIP(i32* %262, i32 %264)
  %266 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @UINTToIP(i32* %267, i32 %269)
  %271 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %271, i32 0, i32 1
  %273 = call i64 @IsZeroIP(i32* %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %222
  %276 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %276, i32 0, i32 1
  %278 = call i32 @SetIP(i32* %277, i32 8, i32 8, i32 8, i32 8)
  br label %279

279:                                              ; preds = %275, %222
  %280 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %280, i32 0, i32 0
  %282 = call i64 @IsZeroIP(i32* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %279
  %285 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %285, i32 0, i32 0
  %287 = call i32 @SetIP(i32* %286, i32 8, i32 8, i32 4, i32 4)
  br label %288

288:                                              ; preds = %284, %279
  %289 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %303

292:                                              ; preds = %288
  %293 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %294 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %294, i32 0, i32 6
  %296 = load i32, i32* %295, align 8
  %297 = call i64 @NnTestConnectivity(%struct.TYPE_24__* %293, i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %292
  %300 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %300, i32 0, i32 5
  store i64 0, i64* %301, align 8
  %302 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %307

303:                                              ; preds = %292, %288
  %304 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %305 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %306 = call i32 @FreeNativeStack(%struct.TYPE_24__* %305)
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %4, align 8
  br label %307

307:                                              ; preds = %303, %299
  br label %316

308:                                              ; preds = %181
  %309 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %310 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %311 = call i32 @FreeNativeStack(%struct.TYPE_24__* %310)
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %4, align 8
  %312 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %312, i32 0, i32 4
  %314 = load %struct.TYPE_26__*, %struct.TYPE_26__** %313, align 8
  %315 = call i32 @Zero(%struct.TYPE_26__* %314, i32 8)
  br label %316

316:                                              ; preds = %308, %307
  br label %317

317:                                              ; preds = %316, %169
  br label %318

318:                                              ; preds = %317, %158
  %319 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %320 = call i32 @FreeToken(%struct.TYPE_23__* %319)
  %321 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_24__* %321, %struct.TYPE_24__** %2, align 8
  store i32 1, i32* %12, align 4
  br label %322

322:                                              ; preds = %318, %85, %27
  %323 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %323)
  %324 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  ret %struct.TYPE_24__* %324
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MIN(i64, i32) #2

declare dso_local %struct.TYPE_23__* @GetEthListEx(i32*, i32, i32) #2

declare dso_local i32 @FreeToken(%struct.TYPE_23__*) #2

declare dso_local i64 @GetEthDeviceHash(...) #2

declare dso_local i64 @GetHostIPAddressHash32(...) #2

declare dso_local i32 @IsInLinesFile(i32, i8*, i32) #2

declare dso_local i32 @BinToStr(i8*, i32, i32, i32) #2

declare dso_local %struct.TYPE_24__* @NewNativeStack(i32*, i8*, i8*) #2

declare dso_local i32 @Copy(%struct.TYPE_26__*, %struct.TYPE_26__*, i32) #2

declare dso_local i32 @Zero(%struct.TYPE_26__*, i32) #2

declare dso_local i32 @Format(i32, i32, i32, i8*) #2

declare dso_local i32 @StrLower(i32) #2

declare dso_local i32 @Debug(i8*, ...) #2

declare dso_local i64 @IPCDhcpAllocateIP(%struct.TYPE_20__*, %struct.TYPE_26__*, i32) #2

declare dso_local i32 @IPToStr32(i8*, i32, i32) #2

declare dso_local i32 @UINTToIP(i32*, i32) #2

declare dso_local i32 @IPCSetIPv4Parameters(%struct.TYPE_20__*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @IsZeroIP(i32*) #2

declare dso_local i32 @SetIP(i32*, i32, i32, i32, i32) #2

declare dso_local i64 @NnTestConnectivity(%struct.TYPE_24__*, i32) #2

declare dso_local i32 @FreeNativeStack(%struct.TYPE_24__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
