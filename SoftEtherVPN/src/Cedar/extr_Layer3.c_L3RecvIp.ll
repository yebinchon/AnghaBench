; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3RecvIp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3RecvIp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, i32 }
%struct.TYPE_25__ = type { i32, i64, i32*, %struct.TYPE_24__, %struct.TYPE_23__, i64, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64, i32, i64, i32, i8*, i64*, i8*, i8* }
%struct.TYPE_23__ = type { %struct.TYPE_28__* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_25__*, i64 }

@IP_PROTO_ICMPV4 = common dso_local global i8* null, align 8
@L4_ICMPV4 = common dso_local global i64 0, align 8
@ICMP_TYPE_ECHO_REQUEST = common dso_local global i64 0, align 8
@ICMP_TYPE_ECHO_RESPONSE = common dso_local global i64 0, align 8
@IP_WAIT_FOR_ARP_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @L3RecvIp(%struct.TYPE_27__* %0, %struct.TYPE_25__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_28__*, align 8
  %17 = alloca %struct.TYPE_28__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_25__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_28__*, align 8
  %25 = alloca %struct.TYPE_28__*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_25__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_28__*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %34 = icmp eq %struct.TYPE_27__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %3
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %37 = icmp eq %struct.TYPE_25__* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %3
  br label %437

39:                                               ; preds = %35
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %42, align 8
  store %struct.TYPE_28__* %43, %struct.TYPE_28__** %7, align 8
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %46, align 8
  %48 = call i32 @IPV4_GET_HEADER_LEN(%struct.TYPE_28__* %47)
  %49 = mul nsw i32 %48, 4
  store i32 %49, i32* %8, align 4
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %51 = call i32 @IpCheckChecksum(%struct.TYPE_28__* %50)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %39
  br label %430

54:                                               ; preds = %39
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @L3KnownArp(%struct.TYPE_27__* %55, i64 %58, i32 %61)
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %430

68:                                               ; preds = %54
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp sge i32 %71, 1
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %79

78:                                               ; preds = %68
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %78, %73
  %80 = load i32, i32* %12, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %187

82:                                               ; preds = %79
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %85, %88
  br i1 %89, label %90, label %186

90:                                               ; preds = %82
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = sub i64 %94, 4
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = add i64 136, %98
  %100 = add i64 %99, 8
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %14, align 4
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sub nsw i32 %104, %105
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 8
  %109 = call i32 @MIN(i32 %106, i32 %108)
  store i32 %109, i32* %20, align 4
  %110 = load i32, i32* %14, align 4
  %111 = call i8* @ZeroMalloc(i32 %110)
  %112 = bitcast i8* %111 to i32*
  store i32* %112, i32** %15, align 8
  %113 = load i32*, i32** %15, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 4
  %115 = bitcast i32* %114 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %115, %struct.TYPE_28__** %16, align 8
  %116 = load i32*, i32** %15, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 4
  %118 = getelementptr inbounds i32, i32* %117, i64 64
  %119 = bitcast i32* %118 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %119, %struct.TYPE_28__** %17, align 8
  %120 = load i32*, i32** %15, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 4
  %122 = getelementptr inbounds i32, i32* %121, i64 64
  %123 = getelementptr inbounds i32, i32* %122, i64 64
  %124 = getelementptr inbounds i32, i32* %123, i64 4
  store i32* %124, i32** %18, align 8
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %126 = call i32 @IPV4_SET_VERSION(%struct.TYPE_28__* %125, i32 4)
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %128 = call i32 @IPV4_SET_HEADER_LEN(%struct.TYPE_28__* %127, i32 16)
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = sub i64 %130, 4
  %132 = trunc i64 %131 to i32
  %133 = call i8* @Endian16(i32 %132)
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %134, i32 0, i32 7
  store i8* %133, i8** %135, align 8
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 1
  store i32 255, i32* %137, align 8
  %138 = load i8*, i8** @IP_PROTO_ICMPV4, align 8
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 6
  store i8* %138, i8** %140, align 8
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %150 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %149, i32 0, i32 2
  store i64 %148, i64* %150, align 8
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %152 = call i8* @IpChecksum(%struct.TYPE_28__* %151, i32 64)
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 4
  store i8* %152, i8** %154, align 8
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %155, i32 0, i32 3
  store i32 11, i32* %156, align 8
  %157 = load i32*, i32** %18, align 8
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %159 = load i32, i32* %20, align 4
  %160 = call i32 @Copy(i32* %157, %struct.TYPE_28__* %158, i32 %159)
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %162 = load i32, i32* %20, align 4
  %163 = sext i32 %162 to i64
  %164 = add i64 64, %163
  %165 = add i64 %164, 4
  %166 = trunc i64 %165 to i32
  %167 = call i8* @IpChecksum(%struct.TYPE_28__* %161, i32 %166)
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %169 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %168, i32 0, i32 4
  store i8* %167, i8** %169, align 8
  %170 = load i32*, i32** %15, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 12
  store i32 8, i32* %171, align 4
  %172 = load i32*, i32** %15, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 13
  store i32 0, i32* %173, align 4
  %174 = load i32*, i32** %15, align 8
  %175 = load i32, i32* %14, align 4
  %176 = call %struct.TYPE_25__* @ParsePacket(i32* %174, i32 %175)
  store %struct.TYPE_25__* %176, %struct.TYPE_25__** %19, align 8
  %177 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %178 = icmp eq %struct.TYPE_25__* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %90
  %180 = load i32*, i32** %15, align 8
  %181 = call i32 @Free(i32* %180)
  br label %185

182:                                              ; preds = %90
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  call void @L3RecvIp(%struct.TYPE_27__* %183, %struct.TYPE_25__* %184, i32 1)
  br label %185

185:                                              ; preds = %182, %179
  br label %430

186:                                              ; preds = %82
  br label %187

187:                                              ; preds = %186, %79
  %188 = load i32, i32* %12, align 4
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %192, i32 0, i32 1
  store i32 %188, i32* %193, align 8
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = call %struct.TYPE_27__* @L3GetNextIf(i32 %196, i64 %199, i32* %9)
  store %struct.TYPE_27__* %200, %struct.TYPE_27__** %10, align 8
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %202 = icmp eq %struct.TYPE_27__* %201, null
  br i1 %202, label %203, label %302

203:                                              ; preds = %187
  %204 = load i32, i32* %6, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %302

206:                                              ; preds = %203
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = sext i32 %209 to i64
  %211 = sub i64 %210, 4
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %21, align 4
  %213 = load i32, i32* %8, align 4
  %214 = sext i32 %213 to i64
  %215 = add i64 136, %214
  %216 = add i64 %215, 8
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %22, align 4
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* %8, align 4
  %222 = sub nsw i32 %220, %221
  %223 = load i32, i32* %8, align 4
  %224 = add nsw i32 %223, 8
  %225 = call i32 @MIN(i32 %222, i32 %224)
  store i32 %225, i32* %28, align 4
  %226 = load i32, i32* %22, align 4
  %227 = call i8* @ZeroMalloc(i32 %226)
  %228 = bitcast i8* %227 to i32*
  store i32* %228, i32** %23, align 8
  %229 = load i32*, i32** %23, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 4
  %231 = bitcast i32* %230 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %231, %struct.TYPE_28__** %24, align 8
  %232 = load i32*, i32** %23, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 4
  %234 = getelementptr inbounds i32, i32* %233, i64 64
  %235 = bitcast i32* %234 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %235, %struct.TYPE_28__** %25, align 8
  %236 = load i32*, i32** %23, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 4
  %238 = getelementptr inbounds i32, i32* %237, i64 64
  %239 = getelementptr inbounds i32, i32* %238, i64 64
  %240 = getelementptr inbounds i32, i32* %239, i64 4
  store i32* %240, i32** %26, align 8
  %241 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %242 = call i32 @IPV4_SET_VERSION(%struct.TYPE_28__* %241, i32 4)
  %243 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %244 = call i32 @IPV4_SET_HEADER_LEN(%struct.TYPE_28__* %243, i32 16)
  %245 = load i32, i32* %22, align 4
  %246 = sext i32 %245 to i64
  %247 = sub i64 %246, 4
  %248 = trunc i64 %247 to i32
  %249 = call i8* @Endian16(i32 %248)
  %250 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %251 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %250, i32 0, i32 7
  store i8* %249, i8** %251, align 8
  %252 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %253 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %252, i32 0, i32 1
  store i32 255, i32* %253, align 8
  %254 = load i8*, i8** @IP_PROTO_ICMPV4, align 8
  %255 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %256 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %255, i32 0, i32 6
  store i8* %254, i8** %256, align 8
  %257 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %261 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %260, i32 0, i32 0
  store i64 %259, i64* %261, align 8
  %262 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %266 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %265, i32 0, i32 2
  store i64 %264, i64* %266, align 8
  %267 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %268 = call i8* @IpChecksum(%struct.TYPE_28__* %267, i32 64)
  %269 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %270 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %269, i32 0, i32 4
  store i8* %268, i8** %270, align 8
  %271 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %272 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %271, i32 0, i32 3
  store i32 3, i32* %272, align 8
  %273 = load i32*, i32** %26, align 8
  %274 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %275 = load i32, i32* %28, align 4
  %276 = call i32 @Copy(i32* %273, %struct.TYPE_28__* %274, i32 %275)
  %277 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %278 = load i32, i32* %28, align 4
  %279 = sext i32 %278 to i64
  %280 = add i64 64, %279
  %281 = add i64 %280, 4
  %282 = trunc i64 %281 to i32
  %283 = call i8* @IpChecksum(%struct.TYPE_28__* %277, i32 %282)
  %284 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %285 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %284, i32 0, i32 4
  store i8* %283, i8** %285, align 8
  %286 = load i32*, i32** %23, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 12
  store i32 8, i32* %287, align 4
  %288 = load i32*, i32** %23, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 13
  store i32 0, i32* %289, align 4
  %290 = load i32*, i32** %23, align 8
  %291 = load i32, i32* %22, align 4
  %292 = call %struct.TYPE_25__* @ParsePacket(i32* %290, i32 %291)
  store %struct.TYPE_25__* %292, %struct.TYPE_25__** %27, align 8
  %293 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %294 = icmp eq %struct.TYPE_25__* %293, null
  br i1 %294, label %295, label %298

295:                                              ; preds = %206
  %296 = load i32*, i32** %23, align 8
  %297 = call i32 @Free(i32* %296)
  br label %301

298:                                              ; preds = %206
  %299 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %300 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  call void @L3RecvIp(%struct.TYPE_27__* %299, %struct.TYPE_25__* %300, i32 1)
  br label %301

301:                                              ; preds = %298, %295
  br label %430

302:                                              ; preds = %203, %187
  %303 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %304 = icmp ne %struct.TYPE_27__* %303, null
  br i1 %304, label %305, label %401

305:                                              ; preds = %302
  %306 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %310 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = icmp eq i64 %308, %311
  br i1 %312, label %313, label %401

313:                                              ; preds = %305
  store i32 1, i32* %29, align 4
  %314 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @L4_ICMPV4, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %319, label %396

319:                                              ; preds = %313
  %320 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %320, i32 0, i32 4
  %322 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %321, i32 0, i32 0
  %323 = load %struct.TYPE_28__*, %struct.TYPE_28__** %322, align 8
  store %struct.TYPE_28__* %323, %struct.TYPE_28__** %30, align 8
  %324 = load %struct.TYPE_28__*, %struct.TYPE_28__** %30, align 8
  %325 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %324, i32 0, i32 3
  %326 = load i32, i32* %325, align 8
  %327 = sext i32 %326 to i64
  %328 = load i64, i64* @ICMP_TYPE_ECHO_REQUEST, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %395

330:                                              ; preds = %319
  %331 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %331, i32 0, i32 3
  %333 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %332, i32 0, i32 0
  %334 = load %struct.TYPE_28__*, %struct.TYPE_28__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %334, i32 0, i32 2
  %336 = load i64, i64* %335, align 8
  %337 = trunc i64 %336 to i32
  store i32 %337, i32* %31, align 4
  %338 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %338, i32 0, i32 3
  %340 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %339, i32 0, i32 0
  %341 = load %struct.TYPE_28__*, %struct.TYPE_28__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = trunc i64 %343 to i32
  store i32 %344, i32* %32, align 4
  %345 = load i32, i32* %32, align 4
  %346 = sext i32 %345 to i64
  %347 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %347, i32 0, i32 3
  %349 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %348, i32 0, i32 0
  %350 = load %struct.TYPE_28__*, %struct.TYPE_28__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %350, i32 0, i32 2
  store i64 %346, i64* %351, align 8
  %352 = load i32, i32* %31, align 4
  %353 = sext i32 %352 to i64
  %354 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %354, i32 0, i32 3
  %356 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %355, i32 0, i32 0
  %357 = load %struct.TYPE_28__*, %struct.TYPE_28__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %357, i32 0, i32 0
  store i64 %353, i64* %358, align 8
  %359 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %360 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %359, i32 0, i32 1
  store i32 255, i32* %360, align 8
  %361 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %361, i32 0, i32 5
  %363 = load i64*, i64** %362, align 8
  %364 = getelementptr inbounds i64, i64* %363, i64 1
  store i64 0, i64* %364, align 8
  %365 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %366 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %365, i32 0, i32 5
  %367 = load i64*, i64** %366, align 8
  %368 = getelementptr inbounds i64, i64* %367, i64 0
  store i64 0, i64* %368, align 8
  %369 = load %struct.TYPE_28__*, %struct.TYPE_28__** %30, align 8
  %370 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %369, i32 0, i32 4
  store i8* null, i8** %370, align 8
  %371 = load i64, i64* @ICMP_TYPE_ECHO_RESPONSE, align 8
  %372 = trunc i64 %371 to i32
  %373 = load %struct.TYPE_28__*, %struct.TYPE_28__** %30, align 8
  %374 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %373, i32 0, i32 3
  store i32 %372, i32* %374, align 8
  %375 = load %struct.TYPE_28__*, %struct.TYPE_28__** %30, align 8
  %376 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = sext i32 %378 to i64
  %380 = sub i64 %379, 4
  %381 = load i32, i32* %8, align 4
  %382 = sext i32 %381 to i64
  %383 = sub i64 %380, %382
  %384 = trunc i64 %383 to i32
  %385 = call i8* @IpChecksum(%struct.TYPE_28__* %375, i32 %384)
  %386 = load %struct.TYPE_28__*, %struct.TYPE_28__** %30, align 8
  %387 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %386, i32 0, i32 4
  store i8* %385, i8** %387, align 8
  %388 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %389 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 8
  %391 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %392 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %391, i32 0, i32 2
  %393 = load i64, i64* %392, align 8
  %394 = call %struct.TYPE_27__* @L3GetNextIf(i32 %390, i64 %393, i32* %9)
  store %struct.TYPE_27__* %394, %struct.TYPE_27__** %10, align 8
  store i32 0, i32* %29, align 4
  br label %395

395:                                              ; preds = %330, %319
  br label %396

396:                                              ; preds = %395, %313
  %397 = load i32, i32* %29, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %400

399:                                              ; preds = %396
  br label %430

400:                                              ; preds = %396
  br label %401

401:                                              ; preds = %400, %305, %302
  %402 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %403 = icmp eq %struct.TYPE_27__* %402, null
  br i1 %403, label %404, label %405

404:                                              ; preds = %401
  br label %430

405:                                              ; preds = %401
  %406 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %407 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %406, i32 0, i32 4
  store i8* null, i8** %407, align 8
  %408 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %409 = load i32, i32* %8, align 4
  %410 = call i8* @IpChecksum(%struct.TYPE_28__* %408, i32 %409)
  %411 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %412 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %411, i32 0, i32 4
  store i8* %410, i8** %412, align 8
  %413 = call i8* @ZeroMalloc(i32 24)
  %414 = bitcast i8* %413 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %414, %struct.TYPE_26__** %11, align 8
  %415 = call i64 (...) @Tick64()
  %416 = load i64, i64* @IP_WAIT_FOR_ARP_TIMEOUT, align 8
  %417 = add nsw i64 %415, %416
  %418 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %419 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %418, i32 0, i32 2
  store i64 %417, i64* %419, align 8
  %420 = load i32, i32* %9, align 4
  %421 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %422 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %421, i32 0, i32 0
  store i32 %420, i32* %422, align 8
  %423 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %424 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %425 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %424, i32 0, i32 1
  store %struct.TYPE_25__* %423, %struct.TYPE_25__** %425, align 8
  %426 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %427 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %428 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %429 = call i32 @L3StoreIpPacketToIf(%struct.TYPE_27__* %426, %struct.TYPE_27__* %427, %struct.TYPE_26__* %428)
  br label %437

430:                                              ; preds = %404, %399, %301, %185, %67, %53
  %431 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %432 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %431, i32 0, i32 2
  %433 = load i32*, i32** %432, align 8
  %434 = call i32 @Free(i32* %433)
  %435 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %436 = call i32 @FreePacket(%struct.TYPE_25__* %435)
  br label %437

437:                                              ; preds = %430, %405, %38
  ret void
}

declare dso_local i32 @IPV4_GET_HEADER_LEN(%struct.TYPE_28__*) #1

declare dso_local i32 @IpCheckChecksum(%struct.TYPE_28__*) #1

declare dso_local i32 @L3KnownArp(%struct.TYPE_27__*, i64, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @IPV4_SET_VERSION(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @IPV4_SET_HEADER_LEN(%struct.TYPE_28__*, i32) #1

declare dso_local i8* @Endian16(i32) #1

declare dso_local i8* @IpChecksum(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @Copy(i32*, %struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_25__* @ParsePacket(i32*, i32) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local %struct.TYPE_27__* @L3GetNextIf(i32, i64, i32*) #1

declare dso_local i64 @Tick64(...) #1

declare dso_local i32 @L3StoreIpPacketToIf(%struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_26__*) #1

declare dso_local i32 @FreePacket(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
