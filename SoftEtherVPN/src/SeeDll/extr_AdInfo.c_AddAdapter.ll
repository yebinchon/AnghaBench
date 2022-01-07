; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/SeeDll/extr_AdInfo.c_AddAdapter.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/SeeDll/extr_AdInfo.c_AddAdapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_10__*, i64, %struct.TYPE_10__*, i64, i32, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [12 x i8] c"AddAdapter\0A\00", align 1
@AdaptersInfoMutex = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@AdaptersInfoList = common dso_local global %struct.TYPE_10__* null, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"AddAdapter: Adapter already present in the list\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@INFO_FLAG_DONT_EXPORT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@GMEM_ZEROINIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"AddAdapter: GlobalAlloc Failed\0A\00", align 1
@OID_GEN_VENDOR_DESCRIPTION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [75 x i8] c"AddAdapter: unable to get a valid adapter description from the NIC driver\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Adapter Description=%s\0A\0A\00", align 1
@OID_802_3_CURRENT_ADDRESS = common dso_local global i32 0, align 4
@MAX_NETWORK_ADDRESSES = common dso_local global i32 0, align 4
@INFO_FLAG_NDIS_ADAPTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AddAdapter(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %14 = call i32 @ODS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @AdaptersInfoMutex, align 4
  %16 = load i32, i32* @INFINITE, align 4
  %17 = call i32 @WaitForSingleObject(i32 %15, i32 %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @AdaptersInfoList, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %12, align 8
  br label %19

19:                                               ; preds = %35, %2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %21 = icmp ne %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @strcmp(i64 %23, i64 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = call i32 @ODS(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @AdaptersInfoMutex, align 4
  %32 = call i32 @ReleaseMutex(i32 %31)
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %3, align 4
  br label %254

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %12, align 8
  br label %19

39:                                               ; preds = %19
  %40 = load i64, i64* %4, align 8
  %41 = call %struct.TYPE_10__* @SChar2WChar(i64 %40)
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %13, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @INFO_FLAG_DONT_EXPORT, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %39
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %47 = ptrtoint %struct.TYPE_10__* %46 to i64
  %48 = call i32* @PacketOpenAdapterNPF(i64 %47)
  store i32* %48, i32** %8, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %50 = call i32 @GlobalFreePtr(%struct.TYPE_10__* %49)
  %51 = load i32*, i32** %8, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load i32, i32* @AdaptersInfoMutex, align 4
  %55 = call i32 @ReleaseMutex(i32 %54)
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %3, align 4
  br label %254

57:                                               ; preds = %45
  %58 = load i32, i32* @GMEM_MOVEABLE, align 4
  %59 = load i32, i32* @GMEM_ZEROINIT, align 4
  %60 = or i32 %58, %59
  %61 = call i8* @GlobalAllocPtr(i32 %60, i32 512)
  %62 = bitcast i8* %61 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %62, %struct.TYPE_10__** %9, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %64 = icmp eq %struct.TYPE_10__* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = call i32 @ODS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @PacketCloseAdapter(i32* %67)
  %69 = load i32, i32* @AdaptersInfoMutex, align 4
  %70 = call i32 @ReleaseMutex(i32 %69)
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %3, align 4
  br label %254

72:                                               ; preds = %57
  br label %73

73:                                               ; preds = %72, %39
  %74 = load i32, i32* @GMEM_MOVEABLE, align 4
  %75 = load i32, i32* @GMEM_ZEROINIT, align 4
  %76 = or i32 %74, %75
  %77 = call i8* @GlobalAllocPtr(i32 %76, i32 4)
  %78 = bitcast i8* %77 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %11, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %80 = icmp eq %struct.TYPE_10__* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %73
  %82 = call i32 @ODS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %84 = call i32 @GlobalFreePtr(%struct.TYPE_10__* %83)
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @PacketCloseAdapter(i32* %85)
  %87 = load i32, i32* @AdaptersInfoMutex, align 4
  %88 = call i32 @ReleaseMutex(i32 %87)
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %3, align 4
  br label %254

90:                                               ; preds = %73
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 6
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %4, align 8
  %95 = call i32 @strcpy(i64 %93, i64 %94)
  %96 = load i64, i64* %5, align 8
  %97 = load i64, i64* @INFO_FLAG_DONT_EXPORT, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %242

99:                                               ; preds = %90
  %100 = load i32, i32* @OID_GEN_VENDOR_DESCRIPTION, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 9
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  store i32 256, i32* %104, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 8
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @ZeroMemory(i64 %107, i32 256)
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* @FALSE, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %112 = call i32 @PacketRequest(i32* %109, i32 %110, %struct.TYPE_10__* %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %124, label %115

115:                                              ; preds = %99
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 8
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to i8*
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %115, %99
  %125 = call i32 @ODS(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %115
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 8
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @ODSEx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %129)
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 11
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 8
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @strcpy(i64 %133, i64 %136)
  %138 = load i32*, i32** %8, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 10
  %141 = call i32 @PacketGetLinkLayerFromRegistry(i32* %138, i32* %140)
  %142 = load i32, i32* @OID_802_3_CURRENT_ADDRESS, align 4
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 9
  store i32 %142, i32* %144, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  store i32 256, i32* %146, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 8
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @ZeroMemory(i64 %149, i32 256)
  %151 = load i32*, i32** %8, align 8
  %152 = load i32, i32* @FALSE, align 4
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %154 = call i32 @PacketRequest(i32* %151, i32 %152, %struct.TYPE_10__* %153)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %126
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 7
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 8
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @memcpy(i32 %160, i64 %163, i32 6)
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  store i32 6, i32* %166, align 4
  br label %174

167:                                              ; preds = %126
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @memset(i32 %170, i32 0, i32 6)
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 1
  store i32 0, i32* %173, align 4
  br label %174

174:                                              ; preds = %167, %157
  %175 = load i32, i32* @GMEM_MOVEABLE, align 4
  %176 = load i32, i32* @GMEM_ZEROINIT, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @MAX_NETWORK_ADDRESSES, align 4
  %179 = sext i32 %178 to i64
  %180 = mul i64 %179, 4
  %181 = trunc i64 %180 to i32
  %182 = call i8* @GlobalAllocPtr(i32 %177, i32 %181)
  %183 = bitcast i8* %182 to %struct.TYPE_10__*
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 5
  store %struct.TYPE_10__* %183, %struct.TYPE_10__** %185, align 8
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 5
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = icmp eq %struct.TYPE_10__* %188, null
  br i1 %189, label %190, label %201

190:                                              ; preds = %174
  %191 = call i32 @ODS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %192 = load i32*, i32** %8, align 8
  %193 = call i32 @PacketCloseAdapter(i32* %192)
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %195 = call i32 @GlobalFreePtr(%struct.TYPE_10__* %194)
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %197 = call i32 @GlobalFreePtr(%struct.TYPE_10__* %196)
  %198 = load i32, i32* @AdaptersInfoMutex, align 4
  %199 = call i32 @ReleaseMutex(i32 %198)
  %200 = load i32, i32* @FALSE, align 4
  store i32 %200, i32* %3, align 4
  br label %254

201:                                              ; preds = %174
  %202 = load i32, i32* @MAX_NETWORK_ADDRESSES, align 4
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 2
  store i32 %202, i32* %204, align 8
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 6
  %207 = load i64, i64* %206, align 8
  %208 = trunc i64 %207 to i32
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 5
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %210, align 8
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 2
  %214 = call i32 @PacketGetAddressesFromRegistry(i32 %208, %struct.TYPE_10__* %211, i32* %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %232, label %216

216:                                              ; preds = %201
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 2
  store i32 0, i32* %218, align 8
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %220 = call i32 @PacketAddIP6Addresses(%struct.TYPE_10__* %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %231, label %222

222:                                              ; preds = %216
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 5
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %224, align 8
  %226 = call i32 @GlobalFreePtr(%struct.TYPE_10__* %225)
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 5
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %228, align 8
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 2
  store i32 0, i32* %230, align 8
  br label %231

231:                                              ; preds = %222, %216
  br label %232

232:                                              ; preds = %231, %201
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %234 = call i32 @PacketAddIP6Addresses(%struct.TYPE_10__* %233)
  %235 = load i64, i64* @INFO_FLAG_NDIS_ADAPTER, align 8
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 4
  store i64 %235, i64* %237, align 8
  %238 = load i32*, i32** %8, align 8
  %239 = call i32 @PacketCloseAdapter(i32* %238)
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %241 = call i32 @GlobalFreePtr(%struct.TYPE_10__* %240)
  br label %246

242:                                              ; preds = %90
  %243 = load i64, i64* @INFO_FLAG_DONT_EXPORT, align 8
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 4
  store i64 %243, i64* %245, align 8
  br label %246

246:                                              ; preds = %242, %232
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** @AdaptersInfoList, align 8
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 3
  store %struct.TYPE_10__* %247, %struct.TYPE_10__** %249, align 8
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %250, %struct.TYPE_10__** @AdaptersInfoList, align 8
  %251 = load i32, i32* @AdaptersInfoMutex, align 4
  %252 = call i32 @ReleaseMutex(i32 %251)
  %253 = load i32, i32* @TRUE, align 4
  store i32 %253, i32* %3, align 4
  br label %254

254:                                              ; preds = %246, %190, %81, %65, %53, %29
  %255 = load i32, i32* %3, align 4
  ret i32 %255
}

declare dso_local i32 @ODS(i8*) #1

declare dso_local i32 @WaitForSingleObject(i32, i32) #1

declare dso_local i64 @strcmp(i64, i64) #1

declare dso_local i32 @ReleaseMutex(i32) #1

declare dso_local %struct.TYPE_10__* @SChar2WChar(i64) #1

declare dso_local i32* @PacketOpenAdapterNPF(i64) #1

declare dso_local i32 @GlobalFreePtr(%struct.TYPE_10__*) #1

declare dso_local i8* @GlobalAllocPtr(i32, i32) #1

declare dso_local i32 @PacketCloseAdapter(i32*) #1

declare dso_local i32 @strcpy(i64, i64) #1

declare dso_local i32 @ZeroMemory(i64, i32) #1

declare dso_local i32 @PacketRequest(i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ODSEx(i8*, i64) #1

declare dso_local i32 @PacketGetLinkLayerFromRegistry(i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @PacketGetAddressesFromRegistry(i32, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @PacketAddIP6Addresses(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
