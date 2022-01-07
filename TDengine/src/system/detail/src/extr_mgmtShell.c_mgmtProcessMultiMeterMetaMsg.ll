; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtShell.c_mgmtProcessMultiMeterMetaMsg.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtShell.c_mgmtProcessMultiMeterMetaMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_34__ = type { i32, i64, i32, i8*, %struct.TYPE_29__, i32, i32 }
%struct.TYPE_29__ = type { i64, i64 }
%struct.TYPE_32__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64, i32 }
%struct.TYPE_35__ = type { i8*, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i64, %struct.TYPE_27__*, i32, i8*, i32, i8*, i8*, i8*, i32 }
%struct.TYPE_27__ = type { i8*, i32 }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_24__ = type { i64 }

@TSDB_MSG_TYPE_MULTI_METERINFO_RSP = common dso_local global i32 0, align 4
@TSDB_CODE_SERV_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@TSDB_METER_ID_LEN = common dso_local global i32 0, align 4
@MAX_LEN_OF_METER_META = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%s, uid:%lld sversion:%d meter meta is retrieved\00", align 1
@TSDB_CODE_INVALID_TABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"%s, uid:%lld sversion:%d vgId:%d pVgroup is NULL\00", align 1
@TSDB_VNODES_SUPPORT = common dso_local global i32 0, align 4
@TSDB_IE_TYPE_META = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtProcessMultiMeterMetaMsg(i8* %0, i32 %1, %struct.TYPE_26__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_34__*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca %struct.TYPE_35__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_33__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_24__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.TYPE_34__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_24__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %8, align 8
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %9, align 8
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %10, align 8
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %11, align 8
  store i32* null, i32** %12, align 8
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %13, align 8
  store i8* null, i8** %14, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %34, %struct.TYPE_24__** %15, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 8
  store i8* %36, i8** %16, align 8
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i8* @htonl(i64 %39)
  %41 = ptrtoint i8* %40 to i64
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  store i32 4194304, i32* %17, align 4
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %45 = load i32, i32* %17, align 4
  %46 = call i8* @mgmtForMultiAllocMsg(%struct.TYPE_26__* %44, i32 %45, i8** %18, %struct.TYPE_33__** %13)
  store i8* %46, i8** %14, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %3
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @TSDB_MSG_TYPE_MULTI_METERINFO_RSP, align 4
  %53 = load i32, i32* @TSDB_CODE_SERV_OUT_OF_MEMORY, align 4
  %54 = call i32 @taosSendSimpleRsp(i32 %51, i32 %52, i32 %53)
  store i32 0, i32* %4, align 4
  br label %417

55:                                               ; preds = %3
  store i64 0, i64* %19, align 8
  %56 = load i32, i32* @TSDB_METER_ID_LEN, align 4
  %57 = zext i32 %56 to i64
  %58 = call i8* @llvm.stacksave()
  store i8* %58, i8** %20, align 8
  %59 = alloca i8, i64 %57, align 16
  store i64 %57, i64* %21, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 8
  %62 = getelementptr inbounds i8, i8* %61, i64 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8* %63, i8** %23, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  store i8* %67, i8** %24, align 8
  br label %68

68:                                               ; preds = %378, %156, %55
  %69 = load i8*, i8** %16, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp slt i64 %73, %75
  br i1 %76, label %77, label %379

77:                                               ; preds = %68
  %78 = load i8*, i8** %16, align 8
  %79 = call i8* @strchr(i8* %78, i8 signext 44)
  store i8* %79, i8** %22, align 8
  %80 = load i8*, i8** %22, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %379

83:                                               ; preds = %77
  %84 = load i8*, i8** %16, align 8
  %85 = load i8*, i8** %22, align 8
  %86 = load i8*, i8** %16, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = trunc i64 %89 to i32
  %91 = call i32 @memcpy(i8* %59, i8* %84, i32 %90)
  %92 = load i8*, i8** %22, align 8
  %93 = load i8*, i8** %16, align 8
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = getelementptr inbounds i8, i8* %59, i64 %96
  store i8 0, i8* %97, align 1
  %98 = load i8*, i8** %22, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  store i8* %99, i8** %16, align 8
  %100 = load i8*, i8** %24, align 8
  %101 = load i8*, i8** %23, align 8
  %102 = ptrtoint i8* %100 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = load i32, i32* @MAX_LEN_OF_METER_META, align 4
  %106 = sext i32 %105 to i64
  %107 = icmp slt i64 %104, %106
  br i1 %107, label %108, label %148

108:                                              ; preds = %83
  %109 = load i8*, i8** %14, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 -4
  store i8* %110, i8** %25, align 8
  %111 = load i32, i32* %17, align 4
  %112 = mul nsw i32 %111, 2
  store i32 %112, i32* %17, align 4
  %113 = load i8*, i8** %25, align 8
  %114 = load i32, i32* %17, align 4
  %115 = call i64 @realloc(i8* %113, i32 %114)
  %116 = inttoptr i64 %115 to i8*
  store i8* %116, i8** %25, align 8
  %117 = load i8*, i8** %25, align 8
  %118 = icmp eq i8* null, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %108
  %120 = load i8*, i8** %14, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 -4
  store i8* %121, i8** %26, align 8
  %122 = load i8*, i8** %26, align 8
  %123 = call i32 @tfree(i8* %122)
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @TSDB_MSG_TYPE_MULTI_METERINFO_RSP, align 4
  %128 = load i32, i32* @TSDB_CODE_SERV_OUT_OF_MEMORY, align 4
  %129 = call i32 @taosSendSimpleRsp(i32 %126, i32 %127, i32 %128)
  br label %379

130:                                              ; preds = %108
  %131 = load i8*, i8** %25, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 4
  %133 = load i8*, i8** %23, align 8
  %134 = load i8*, i8** %14, align 8
  %135 = ptrtoint i8* %133 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  %138 = getelementptr inbounds i8, i8* %132, i64 %137
  store i8* %138, i8** %23, align 8
  %139 = load i8*, i8** %25, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 4
  store i8* %140, i8** %14, align 8
  %141 = load i8*, i8** %14, align 8
  store i8* %141, i8** %18, align 8
  %142 = load i8*, i8** %14, align 8
  %143 = bitcast i8* %142 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %143, %struct.TYPE_33__** %13, align 8
  %144 = load i8*, i8** %25, align 8
  %145 = load i32, i32* %17, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  store i8* %147, i8** %24, align 8
  br label %148

148:                                              ; preds = %130, %83
  %149 = call %struct.TYPE_34__* @mgmtGetMeter(i8* %59)
  store %struct.TYPE_34__* %149, %struct.TYPE_34__** %9, align 8
  %150 = call %struct.TYPE_25__* @mgmtGetDbByMeterId(i8* %59)
  store %struct.TYPE_25__* %150, %struct.TYPE_25__** %8, align 8
  %151 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %152 = icmp eq %struct.TYPE_34__* %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %155 = icmp eq %struct.TYPE_25__* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %153, %148
  br label %68

157:                                              ; preds = %153
  %158 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @mTrace(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %59, i32 %160, i32 %163)
  %165 = load i8*, i8** %23, align 8
  %166 = bitcast i8* %165 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %166, %struct.TYPE_35__** %11, align 8
  %167 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @strlen(i8* %59)
  %171 = call i32 @memcpy(i8* %169, i8* %59, i32 %170)
  %172 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @htobe64(i32 %174)
  %176 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %177, i32 0, i32 8
  store i32 %175, i32* %178, align 8
  %179 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i8* @htonl(i64 %182)
  %184 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %185, i32 0, i32 7
  store i8* %183, i8** %186, align 8
  %187 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = call i8* @htonl(i64 %190)
  %192 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %193, i32 0, i32 6
  store i8* %191, i8** %194, align 8
  %195 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i8* @htons(i32 %197)
  %199 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %200, i32 0, i32 5
  store i8* %198, i8** %201, align 8
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %207, i32 0, i32 4
  store i32 %205, i32* %208, align 8
  %209 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %213, i32 0, i32 0
  store i64 %211, i64* %214, align 8
  %215 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = call i8* @htons(i32 %217)
  %219 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %220, i32 0, i32 3
  store i8* %218, i8** %221, align 8
  %222 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %226 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %226, i32 0, i32 2
  store i32 %224, i32* %227, align 8
  %228 = load i8*, i8** %23, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 80
  store i8* %229, i8** %23, align 8
  %230 = load i8*, i8** %23, align 8
  %231 = bitcast i8* %230 to i32*
  store i32* %231, i32** %12, align 8
  %232 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %233 = call i64 @mgmtMeterCreateFromMetric(%struct.TYPE_34__* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %276

235:                                              ; preds = %157
  %236 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = icmp eq i64 %238, 0
  %240 = zext i1 %239 to i32
  %241 = call i32 @assert(i32 %240)
  %242 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %242, i32 0, i32 3
  %244 = load i8*, i8** %243, align 8
  %245 = call %struct.TYPE_34__* @mgmtGetMeter(i8* %244)
  store %struct.TYPE_34__* %245, %struct.TYPE_34__** %27, align 8
  %246 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %247 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = trunc i64 %248 to i32
  %250 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %251 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = add nsw i32 %249, %252
  store i32 %253, i32* %28, align 4
  %254 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %255 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %258 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %258, i32 0, i32 0
  store i64 %256, i64* %259, align 8
  %260 = load i32*, i32** %12, align 8
  %261 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %262 = load i32, i32* %28, align 4
  %263 = call i32 @mgmtSetSchemaFromMeters(i32* %260, %struct.TYPE_34__* %261, i32 %262)
  %264 = load i32, i32* %28, align 4
  %265 = sext i32 %264 to i64
  %266 = mul i64 %265, 4
  %267 = load i8*, i8** %23, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 %266
  store i8* %268, i8** %23, align 8
  %269 = load i8*, i8** %23, align 8
  %270 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %271 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %272 = call i64 @mgmtSetMeterTagValue(i8* %269, %struct.TYPE_34__* %270, %struct.TYPE_34__* %271)
  store i64 %272, i64* %29, align 8
  %273 = load i64, i64* %29, align 8
  %274 = load i8*, i8** %23, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 %273
  store i8* %275, i8** %23, align 8
  br label %294

276:                                              ; preds = %157
  %277 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %278 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = trunc i64 %279 to i32
  %281 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = add nsw i32 %280, %283
  store i32 %284, i32* %30, align 4
  %285 = load i32*, i32** %12, align 8
  %286 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %287 = load i32, i32* %30, align 4
  %288 = call i32 @mgmtSetSchemaFromMeters(i32* %285, %struct.TYPE_34__* %286, i32 %287)
  %289 = load i32, i32* %30, align 4
  %290 = sext i32 %289 to i64
  %291 = mul i64 %290, 4
  %292 = load i8*, i8** %23, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 %291
  store i8* %293, i8** %23, align 8
  br label %294

294:                                              ; preds = %276, %235
  %295 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %296 = call i64 @mgmtIsNormalMeter(%struct.TYPE_34__* %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %366

298:                                              ; preds = %294
  %299 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %300 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %299, i32 0, i32 4
  %301 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = call %struct.TYPE_32__* @mgmtGetVgroup(i64 %302)
  store %struct.TYPE_32__* %303, %struct.TYPE_32__** %10, align 8
  %304 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %305 = icmp eq %struct.TYPE_32__* %304, null
  br i1 %305, label %306, label %323

306:                                              ; preds = %298
  %307 = load i64, i64* @TSDB_CODE_INVALID_TABLE, align 8
  %308 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %309 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %308, i32 0, i32 0
  store i64 %307, i64* %309, align 8
  %310 = load i8*, i8** %18, align 8
  %311 = getelementptr inbounds i8, i8* %310, i32 1
  store i8* %311, i8** %18, align 8
  %312 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %313 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %312, i32 0, i32 5
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %316 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %319 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %318, i32 0, i32 4
  %320 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %319, i32 0, i32 1
  %321 = load i64, i64* %320, align 8
  %322 = call i32 @mError(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %59, i32 %314, i32 %317, i64 %321)
  br label %401

323:                                              ; preds = %298
  store i32 0, i32* %31, align 4
  br label %324

324:                                              ; preds = %362, %323
  %325 = load i32, i32* %31, align 4
  %326 = load i32, i32* @TSDB_VNODES_SUPPORT, align 4
  %327 = icmp slt i32 %325, %326
  br i1 %327, label %328, label %365

328:                                              ; preds = %324
  %329 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %330 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %329, i32 0, i32 0
  %331 = load %struct.TYPE_28__*, %struct.TYPE_28__** %330, align 8
  %332 = load i32, i32* %31, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 8
  %337 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %338 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %338, i32 0, i32 1
  %340 = load %struct.TYPE_27__*, %struct.TYPE_27__** %339, align 8
  %341 = load i32, i32* %31, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %340, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %343, i32 0, i32 1
  store i32 %336, i32* %344, align 8
  %345 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %346 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %345, i32 0, i32 0
  %347 = load %struct.TYPE_28__*, %struct.TYPE_28__** %346, align 8
  %348 = load i32, i32* %31, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %347, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = call i8* @htonl(i64 %352)
  %354 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %355 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %355, i32 0, i32 1
  %357 = load %struct.TYPE_27__*, %struct.TYPE_27__** %356, align 8
  %358 = load i32, i32* %31, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %360, i32 0, i32 0
  store i8* %353, i8** %361, align 8
  br label %362

362:                                              ; preds = %328
  %363 = load i32, i32* %31, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %31, align 4
  br label %324

365:                                              ; preds = %324
  br label %366

366:                                              ; preds = %365, %294
  br label %367

367:                                              ; preds = %366
  %368 = load i64, i64* %19, align 8
  %369 = add nsw i64 %368, 1
  store i64 %369, i64* %19, align 8
  %370 = load i64, i64* %19, align 8
  %371 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %372 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = icmp sgt i64 %370, %373
  br i1 %374, label %375, label %378

375:                                              ; preds = %367
  %376 = load i8*, i8** %18, align 8
  %377 = getelementptr inbounds i8, i8* %376, i32 1
  store i8* %377, i8** %18, align 8
  br label %379

378:                                              ; preds = %367
  br label %68

379:                                              ; preds = %375, %119, %82, %68
  %380 = load i8*, i8** %23, align 8
  %381 = load i8*, i8** %18, align 8
  %382 = ptrtoint i8* %380 to i64
  %383 = ptrtoint i8* %381 to i64
  %384 = sub i64 %382, %383
  %385 = trunc i64 %384 to i32
  store i32 %385, i32* %6, align 4
  %386 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %387 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %386, i32 0, i32 0
  store i64 0, i64* %387, align 8
  %388 = load i8*, i8** %18, align 8
  %389 = getelementptr inbounds i8, i8* %388, i64 8
  store i8* %389, i8** %18, align 8
  %390 = load i8, i8* @TSDB_IE_TYPE_META, align 1
  %391 = load i8*, i8** %18, align 8
  store i8 %390, i8* %391, align 1
  %392 = load i8*, i8** %18, align 8
  %393 = getelementptr inbounds i8, i8* %392, i32 1
  store i8* %393, i8** %18, align 8
  %394 = load i8*, i8** %18, align 8
  %395 = bitcast i8* %394 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %395, %struct.TYPE_24__** %32, align 8
  %396 = load i64, i64* %19, align 8
  %397 = call i8* @htonl(i64 %396)
  %398 = ptrtoint i8* %397 to i64
  %399 = load %struct.TYPE_24__*, %struct.TYPE_24__** %32, align 8
  %400 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %399, i32 0, i32 0
  store i64 %398, i64* %400, align 8
  br label %408

401:                                              ; preds = %306
  %402 = load i8*, i8** %18, align 8
  %403 = load i8*, i8** %14, align 8
  %404 = ptrtoint i8* %402 to i64
  %405 = ptrtoint i8* %403 to i64
  %406 = sub i64 %404, %405
  %407 = trunc i64 %406 to i32
  store i32 %407, i32* %6, align 4
  br label %408

408:                                              ; preds = %401, %379
  %409 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %410 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 4
  %412 = load i8*, i8** %14, align 8
  %413 = load i32, i32* %6, align 4
  %414 = call i32 @taosSendMsgToPeer(i32 %411, i8* %412, i32 %413)
  %415 = load i32, i32* %6, align 4
  store i32 %415, i32* %4, align 4
  %416 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %416)
  br label %417

417:                                              ; preds = %408, %48
  %418 = load i32, i32* %4, align 4
  ret i32 %418
}

declare dso_local i8* @htonl(i64) #1

declare dso_local i8* @mgmtForMultiAllocMsg(%struct.TYPE_26__*, i32, i8**, %struct.TYPE_33__**) #1

declare dso_local i32 @taosSendSimpleRsp(i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @realloc(i8*, i32) #1

declare dso_local i32 @tfree(i8*) #1

declare dso_local %struct.TYPE_34__* @mgmtGetMeter(i8*) #1

declare dso_local %struct.TYPE_25__* @mgmtGetDbByMeterId(i8*) #1

declare dso_local i32 @mTrace(i8*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @htobe64(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i64 @mgmtMeterCreateFromMetric(%struct.TYPE_34__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mgmtSetSchemaFromMeters(i32*, %struct.TYPE_34__*, i32) #1

declare dso_local i64 @mgmtSetMeterTagValue(i8*, %struct.TYPE_34__*, %struct.TYPE_34__*) #1

declare dso_local i64 @mgmtIsNormalMeter(%struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_32__* @mgmtGetVgroup(i64) #1

declare dso_local i32 @mError(i8*, i8*, i32, i32, i64) #1

declare dso_local i32 @taosSendMsgToPeer(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
