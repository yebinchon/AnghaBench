; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/SeeDll/extr_AdInfo.c_PacketGetAddressesFromRegistry.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/SeeDll/extr_AdInfo.c_PacketGetAddressesFromRegistry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.sockaddr_in = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [5 x i32] [i32 83, i32 69, i32 69, i32 95, i32 0], align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"SYSTEM\\CurrentControlSet\\Services\\Tcpip\\Parameters\\Interfaces\00", align 1
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"SYSTEM\\CurrentControlSet\\Services\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Parameters\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"TcpIp\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"UseZeroBroadcast\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"EnableDHCP\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"DhcpIPAddress\00", align 1
@AF_INET = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"DhcpSubnetMask\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"IPAddress\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"SubnetMask\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PacketGetAddressesFromRegistry(i64* %0, %struct.TYPE_7__* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca [1025 x i64], align 16
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.sockaddr_in*, align 8
  %22 = alloca %struct.sockaddr_in*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i64* %2, i64** %7, align 8
  %27 = load i64*, i64** %5, align 8
  %28 = bitcast i64* %27 to i8*
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load i8*, i8** %8, align 8
  %36 = call i64* @SChar2WChar(i8* %35)
  store i64* %36, i64** %9, align 8
  %37 = load i64*, i64** %9, align 8
  store i64* %37, i64** %5, align 8
  br label %39

38:                                               ; preds = %3
  store i64* null, i64** %9, align 8
  br label %39

39:                                               ; preds = %38, %34
  %40 = load i64*, i64** %5, align 8
  %41 = call i64* @wcsrchr(i64* %40, i8 signext 92)
  store i64* %41, i64** %10, align 8
  %42 = load i64*, i64** %10, align 8
  %43 = icmp eq i64* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i64*, i64** %5, align 8
  store i64* %45, i64** %10, align 8
  br label %49

46:                                               ; preds = %39
  %47 = load i64*, i64** %10, align 8
  %48 = getelementptr inbounds i64, i64* %47, i32 1
  store i64* %48, i64** %10, align 8
  br label %49

49:                                               ; preds = %46, %44
  %50 = load i64*, i64** %10, align 8
  %51 = call i64 @wcsncmp(i64* %50, i8* bitcast ([5 x i32]* @.str to i8*), i32 4)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i64*, i64** %10, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 4
  store i64* %55, i64** %10, align 8
  br label %56

56:                                               ; preds = %53, %49
  %57 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %58 = call i64* @TEXT(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @KEY_READ, align 4
  %60 = call i64 @RegOpenKeyEx(i32 %57, i64* %58, i32 0, i32 %59, i32* %15)
  %61 = load i64, i64* @ERROR_SUCCESS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %56
  %64 = load i32, i32* %15, align 4
  %65 = load i64*, i64** %10, align 8
  %66 = load i32, i32* @KEY_READ, align 4
  %67 = call i64 @RegOpenKeyEx(i32 %64, i64* %65, i32 0, i32 %66, i32* %14)
  store i64 %67, i64* %16, align 8
  %68 = load i64, i64* %16, align 8
  %69 = load i64, i64* @ERROR_SUCCESS, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @RegCloseKey(i32 %72)
  br label %505

74:                                               ; preds = %63
  br label %130

75:                                               ; preds = %56
  %76 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %77 = call i64* @TEXT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @KEY_READ, align 4
  %79 = call i64 @RegOpenKeyEx(i32 %76, i64* %77, i32 0, i32 %78, i32* %11)
  store i64 %79, i64* %16, align 8
  %80 = load i64, i64* %16, align 8
  %81 = load i64, i64* @ERROR_SUCCESS, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %505

84:                                               ; preds = %75
  %85 = load i32, i32* %11, align 4
  %86 = load i64*, i64** %10, align 8
  %87 = load i32, i32* @KEY_READ, align 4
  %88 = call i64 @RegOpenKeyEx(i32 %85, i64* %86, i32 0, i32 %87, i32* %12)
  store i64 %88, i64* %16, align 8
  %89 = load i64, i64* %16, align 8
  %90 = load i64, i64* @ERROR_SUCCESS, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %84
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @RegCloseKey(i32 %93)
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @RegCloseKey(i32 %95)
  br label %505

97:                                               ; preds = %84
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @RegCloseKey(i32 %98)
  %100 = load i32, i32* %12, align 4
  %101 = call i64* @TEXT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32, i32* @KEY_READ, align 4
  %103 = call i64 @RegOpenKeyEx(i32 %100, i64* %101, i32 0, i32 %102, i32* %13)
  store i64 %103, i64* %16, align 8
  %104 = load i64, i64* %16, align 8
  %105 = load i64, i64* @ERROR_SUCCESS, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %97
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @RegCloseKey(i32 %108)
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @RegCloseKey(i32 %110)
  br label %505

112:                                              ; preds = %97
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @RegCloseKey(i32 %113)
  %115 = load i32, i32* %13, align 4
  %116 = call i64* @TEXT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %117 = load i32, i32* @KEY_READ, align 4
  %118 = call i64 @RegOpenKeyEx(i32 %115, i64* %116, i32 0, i32 %117, i32* %14)
  store i64 %118, i64* %16, align 8
  %119 = load i64, i64* %16, align 8
  %120 = load i64, i64* @ERROR_SUCCESS, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %112
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @RegCloseKey(i32 %123)
  %125 = load i32, i32* %15, align 4
  %126 = call i32 @RegCloseKey(i32 %125)
  br label %505

127:                                              ; preds = %112
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @RegCloseKey(i32 %128)
  store i64 8200, i64* %19, align 8
  br label %130

130:                                              ; preds = %127, %74
  store i64 4, i64* %19, align 8
  %131 = load i32, i32* %14, align 4
  %132 = call i64* @TEXT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %133 = ptrtoint i64* %26 to i32
  %134 = call i64 @RegQueryValueEx(i32 %131, i64* %132, i32* null, i64* %18, i32 %133, i64* %19)
  store i64 %134, i64* %16, align 8
  %135 = load i64, i64* %16, align 8
  %136 = load i64, i64* @ERROR_SUCCESS, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  store i64 0, i64* %26, align 8
  br label %139

139:                                              ; preds = %138, %130
  store i64 4, i64* %19, align 8
  %140 = load i32, i32* %14, align 4
  %141 = call i64* @TEXT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %142 = ptrtoint i64* %20 to i32
  %143 = call i64 @RegQueryValueEx(i32 %140, i64* %141, i32* null, i64* %18, i32 %142, i64* %19)
  store i64 %143, i64* %16, align 8
  %144 = load i64, i64* %16, align 8
  %145 = load i64, i64* @ERROR_SUCCESS, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  store i64 0, i64* %20, align 8
  br label %148

148:                                              ; preds = %147, %139
  %149 = load i64, i64* %20, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %318

151:                                              ; preds = %148
  store i64 8200, i64* %19, align 8
  %152 = load i32, i32* %14, align 4
  %153 = call i64* @TEXT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %154 = getelementptr inbounds [1025 x i64], [1025 x i64]* %17, i64 0, i64 0
  %155 = ptrtoint i64* %154 to i32
  %156 = call i64 @RegQueryValueEx(i32 %152, i64* %153, i32* null, i64* %18, i32 %155, i64* %19)
  store i64 %156, i64* %16, align 8
  %157 = load i64, i64* %16, align 8
  %158 = load i64, i64* @ERROR_SUCCESS, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %151
  %161 = load i32, i32* %14, align 4
  %162 = call i32 @RegCloseKey(i32 %161)
  %163 = load i32, i32* %15, align 4
  %164 = call i32 @RegCloseKey(i32 %163)
  br label %505

165:                                              ; preds = %151
  store i64 0, i64* %25, align 8
  store i64 0, i64* %23, align 8
  br label %166

166:                                              ; preds = %237, %165
  %167 = load i64, i64* %23, align 8
  %168 = load i64*, i64** %7, align 8
  %169 = load i64, i64* %168, align 8
  %170 = icmp slt i64 %167, %169
  br i1 %170, label %171, label %240

171:                                              ; preds = %166
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %173 = load i64, i64* %23, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 2
  %176 = bitcast i32* %175 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %176, %struct.sockaddr_in** %21, align 8
  %177 = getelementptr inbounds [1025 x i64], [1025 x i64]* %17, i64 0, i64 0
  %178 = load i64, i64* %25, align 8
  %179 = getelementptr inbounds i64, i64* %177, i64 %178
  %180 = call i32 @inet_addrU(i64* %179)
  %181 = load %struct.sockaddr_in*, %struct.sockaddr_in** %21, align 8
  %182 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  store i32 %180, i32* %184, align 8
  %185 = icmp ne i32 %180, -1
  br i1 %185, label %186, label %235

186:                                              ; preds = %171
  %187 = load i8*, i8** @AF_INET, align 8
  %188 = load %struct.sockaddr_in*, %struct.sockaddr_in** %21, align 8
  %189 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %188, i32 0, i32 0
  store i8* %187, i8** %189, align 8
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %191 = load i64, i64* %23, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 1
  %194 = bitcast i32* %193 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %194, %struct.sockaddr_in** %22, align 8
  %195 = load i8*, i8** @AF_INET, align 8
  %196 = load %struct.sockaddr_in*, %struct.sockaddr_in** %22, align 8
  %197 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %196, i32 0, i32 0
  store i8* %195, i8** %197, align 8
  %198 = load i64, i64* %26, align 8
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %186
  %201 = load %struct.sockaddr_in*, %struct.sockaddr_in** %22, align 8
  %202 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  store i32 -1, i32* %204, align 8
  br label %210

205:                                              ; preds = %186
  %206 = load %struct.sockaddr_in*, %struct.sockaddr_in** %22, align 8
  %207 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  store i32 0, i32* %209, align 8
  br label %210

210:                                              ; preds = %205, %200
  br label %211

211:                                              ; preds = %217, %210
  %212 = getelementptr inbounds [1025 x i64], [1025 x i64]* %17, i64 0, i64 0
  %213 = load i64, i64* %25, align 8
  %214 = getelementptr inbounds i64, i64* %212, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %211
  %218 = load i64, i64* %25, align 8
  %219 = add nsw i64 %218, 1
  store i64 %219, i64* %25, align 8
  br label %211

220:                                              ; preds = %211
  %221 = load i64, i64* %25, align 8
  %222 = add nsw i64 %221, 1
  store i64 %222, i64* %25, align 8
  %223 = getelementptr inbounds [1025 x i64], [1025 x i64]* %17, i64 0, i64 0
  %224 = load i64, i64* %25, align 8
  %225 = getelementptr inbounds i64, i64* %223, i64 %224
  %226 = load i64, i64* %225, align 8
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %233, label %228

228:                                              ; preds = %220
  %229 = load i64, i64* %25, align 8
  %230 = mul i64 %229, 8
  %231 = load i64, i64* %19, align 8
  %232 = icmp uge i64 %230, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %228, %220
  br label %240

234:                                              ; preds = %228
  br label %236

235:                                              ; preds = %171
  br label %240

236:                                              ; preds = %234
  br label %237

237:                                              ; preds = %236
  %238 = load i64, i64* %23, align 8
  %239 = add nsw i64 %238, 1
  store i64 %239, i64* %23, align 8
  br label %166

240:                                              ; preds = %235, %233, %166
  store i64 8200, i64* %19, align 8
  %241 = load i32, i32* %14, align 4
  %242 = call i64* @TEXT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %243 = getelementptr inbounds [1025 x i64], [1025 x i64]* %17, i64 0, i64 0
  %244 = ptrtoint i64* %243 to i32
  %245 = call i64 @RegQueryValueEx(i32 %241, i64* %242, i32* null, i64* %18, i32 %244, i64* %19)
  store i64 %245, i64* %16, align 8
  %246 = load i64, i64* %16, align 8
  %247 = load i64, i64* @ERROR_SUCCESS, align 8
  %248 = icmp ne i64 %246, %247
  br i1 %248, label %249, label %254

249:                                              ; preds = %240
  %250 = load i32, i32* %14, align 4
  %251 = call i32 @RegCloseKey(i32 %250)
  %252 = load i32, i32* %15, align 4
  %253 = call i32 @RegCloseKey(i32 %252)
  br label %505

254:                                              ; preds = %240
  store i64 0, i64* %25, align 8
  store i64 0, i64* %24, align 8
  br label %255

255:                                              ; preds = %305, %254
  %256 = load i64, i64* %24, align 8
  %257 = load i64*, i64** %7, align 8
  %258 = load i64, i64* %257, align 8
  %259 = icmp slt i64 %256, %258
  br i1 %259, label %260, label %308

260:                                              ; preds = %255
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %262 = load i64, i64* %24, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 0
  %265 = bitcast i32* %264 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %265, %struct.sockaddr_in** %21, align 8
  %266 = getelementptr inbounds [1025 x i64], [1025 x i64]* %17, i64 0, i64 0
  %267 = load i64, i64* %25, align 8
  %268 = getelementptr inbounds i64, i64* %266, i64 %267
  %269 = call i32 @inet_addrU(i64* %268)
  %270 = load %struct.sockaddr_in*, %struct.sockaddr_in** %21, align 8
  %271 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 0
  store i32 %269, i32* %273, align 8
  %274 = icmp ne i32 %269, -1
  br i1 %274, label %275, label %303

275:                                              ; preds = %260
  %276 = load i8*, i8** @AF_INET, align 8
  %277 = load %struct.sockaddr_in*, %struct.sockaddr_in** %21, align 8
  %278 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %277, i32 0, i32 0
  store i8* %276, i8** %278, align 8
  br label %279

279:                                              ; preds = %285, %275
  %280 = getelementptr inbounds [1025 x i64], [1025 x i64]* %17, i64 0, i64 0
  %281 = load i64, i64* %25, align 8
  %282 = getelementptr inbounds i64, i64* %280, i64 %281
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %279
  %286 = load i64, i64* %25, align 8
  %287 = add nsw i64 %286, 1
  store i64 %287, i64* %25, align 8
  br label %279

288:                                              ; preds = %279
  %289 = load i64, i64* %25, align 8
  %290 = add nsw i64 %289, 1
  store i64 %290, i64* %25, align 8
  %291 = getelementptr inbounds [1025 x i64], [1025 x i64]* %17, i64 0, i64 0
  %292 = load i64, i64* %25, align 8
  %293 = getelementptr inbounds i64, i64* %291, i64 %292
  %294 = load i64, i64* %293, align 8
  %295 = icmp eq i64 %294, 0
  br i1 %295, label %301, label %296

296:                                              ; preds = %288
  %297 = load i64, i64* %25, align 8
  %298 = mul i64 %297, 8
  %299 = load i64, i64* %19, align 8
  %300 = icmp uge i64 %298, %299
  br i1 %300, label %301, label %302

301:                                              ; preds = %296, %288
  br label %308

302:                                              ; preds = %296
  br label %304

303:                                              ; preds = %260
  br label %308

304:                                              ; preds = %302
  br label %305

305:                                              ; preds = %304
  %306 = load i64, i64* %24, align 8
  %307 = add nsw i64 %306, 1
  store i64 %307, i64* %24, align 8
  br label %255

308:                                              ; preds = %303, %301, %255
  %309 = load i64, i64* %24, align 8
  %310 = load i64, i64* %23, align 8
  %311 = icmp ne i64 %309, %310
  br i1 %311, label %312, label %317

312:                                              ; preds = %308
  %313 = load i32, i32* %14, align 4
  %314 = call i32 @RegCloseKey(i32 %313)
  %315 = load i32, i32* %15, align 4
  %316 = call i32 @RegCloseKey(i32 %315)
  br label %505

317:                                              ; preds = %308
  br label %485

318:                                              ; preds = %148
  store i64 8200, i64* %19, align 8
  %319 = load i32, i32* %14, align 4
  %320 = call i64* @TEXT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %321 = getelementptr inbounds [1025 x i64], [1025 x i64]* %17, i64 0, i64 0
  %322 = ptrtoint i64* %321 to i32
  %323 = call i64 @RegQueryValueEx(i32 %319, i64* %320, i32* null, i64* %18, i32 %322, i64* %19)
  store i64 %323, i64* %16, align 8
  %324 = load i64, i64* %16, align 8
  %325 = load i64, i64* @ERROR_SUCCESS, align 8
  %326 = icmp ne i64 %324, %325
  br i1 %326, label %327, label %332

327:                                              ; preds = %318
  %328 = load i32, i32* %14, align 4
  %329 = call i32 @RegCloseKey(i32 %328)
  %330 = load i32, i32* %15, align 4
  %331 = call i32 @RegCloseKey(i32 %330)
  br label %505

332:                                              ; preds = %318
  store i64 0, i64* %25, align 8
  store i64 0, i64* %23, align 8
  br label %333

333:                                              ; preds = %404, %332
  %334 = load i64, i64* %23, align 8
  %335 = load i64*, i64** %7, align 8
  %336 = load i64, i64* %335, align 8
  %337 = icmp slt i64 %334, %336
  br i1 %337, label %338, label %407

338:                                              ; preds = %333
  %339 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %340 = load i64, i64* %23, align 8
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 0, i32 2
  %343 = bitcast i32* %342 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %343, %struct.sockaddr_in** %21, align 8
  %344 = getelementptr inbounds [1025 x i64], [1025 x i64]* %17, i64 0, i64 0
  %345 = load i64, i64* %25, align 8
  %346 = getelementptr inbounds i64, i64* %344, i64 %345
  %347 = call i32 @inet_addrU(i64* %346)
  %348 = load %struct.sockaddr_in*, %struct.sockaddr_in** %21, align 8
  %349 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i32 0, i32 0
  store i32 %347, i32* %351, align 8
  %352 = icmp ne i32 %347, -1
  br i1 %352, label %353, label %402

353:                                              ; preds = %338
  %354 = load i8*, i8** @AF_INET, align 8
  %355 = load %struct.sockaddr_in*, %struct.sockaddr_in** %21, align 8
  %356 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %355, i32 0, i32 0
  store i8* %354, i8** %356, align 8
  %357 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %358 = load i64, i64* %23, align 8
  %359 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %357, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %359, i32 0, i32 1
  %361 = bitcast i32* %360 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %361, %struct.sockaddr_in** %22, align 8
  %362 = load i8*, i8** @AF_INET, align 8
  %363 = load %struct.sockaddr_in*, %struct.sockaddr_in** %22, align 8
  %364 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %363, i32 0, i32 0
  store i8* %362, i8** %364, align 8
  %365 = load i64, i64* %26, align 8
  %366 = icmp eq i64 %365, 0
  br i1 %366, label %367, label %372

367:                                              ; preds = %353
  %368 = load %struct.sockaddr_in*, %struct.sockaddr_in** %22, align 8
  %369 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %370, i32 0, i32 0
  store i32 -1, i32* %371, align 8
  br label %377

372:                                              ; preds = %353
  %373 = load %struct.sockaddr_in*, %struct.sockaddr_in** %22, align 8
  %374 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i32 0, i32 0
  store i32 0, i32* %376, align 8
  br label %377

377:                                              ; preds = %372, %367
  br label %378

378:                                              ; preds = %384, %377
  %379 = getelementptr inbounds [1025 x i64], [1025 x i64]* %17, i64 0, i64 0
  %380 = load i64, i64* %25, align 8
  %381 = getelementptr inbounds i64, i64* %379, i64 %380
  %382 = load i64, i64* %381, align 8
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %387

384:                                              ; preds = %378
  %385 = load i64, i64* %25, align 8
  %386 = add nsw i64 %385, 1
  store i64 %386, i64* %25, align 8
  br label %378

387:                                              ; preds = %378
  %388 = load i64, i64* %25, align 8
  %389 = add nsw i64 %388, 1
  store i64 %389, i64* %25, align 8
  %390 = getelementptr inbounds [1025 x i64], [1025 x i64]* %17, i64 0, i64 0
  %391 = load i64, i64* %25, align 8
  %392 = getelementptr inbounds i64, i64* %390, i64 %391
  %393 = load i64, i64* %392, align 8
  %394 = icmp eq i64 %393, 0
  br i1 %394, label %400, label %395

395:                                              ; preds = %387
  %396 = load i64, i64* %25, align 8
  %397 = mul i64 %396, 8
  %398 = load i64, i64* %19, align 8
  %399 = icmp uge i64 %397, %398
  br i1 %399, label %400, label %401

400:                                              ; preds = %395, %387
  br label %407

401:                                              ; preds = %395
  br label %403

402:                                              ; preds = %338
  br label %407

403:                                              ; preds = %401
  br label %404

404:                                              ; preds = %403
  %405 = load i64, i64* %23, align 8
  %406 = add nsw i64 %405, 1
  store i64 %406, i64* %23, align 8
  br label %333

407:                                              ; preds = %402, %400, %333
  store i64 8200, i64* %19, align 8
  %408 = load i32, i32* %14, align 4
  %409 = call i64* @TEXT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %410 = getelementptr inbounds [1025 x i64], [1025 x i64]* %17, i64 0, i64 0
  %411 = ptrtoint i64* %410 to i32
  %412 = call i64 @RegQueryValueEx(i32 %408, i64* %409, i32* null, i64* %18, i32 %411, i64* %19)
  store i64 %412, i64* %16, align 8
  %413 = load i64, i64* %16, align 8
  %414 = load i64, i64* @ERROR_SUCCESS, align 8
  %415 = icmp ne i64 %413, %414
  br i1 %415, label %416, label %421

416:                                              ; preds = %407
  %417 = load i32, i32* %14, align 4
  %418 = call i32 @RegCloseKey(i32 %417)
  %419 = load i32, i32* %15, align 4
  %420 = call i32 @RegCloseKey(i32 %419)
  br label %505

421:                                              ; preds = %407
  store i64 0, i64* %25, align 8
  store i64 0, i64* %24, align 8
  br label %422

422:                                              ; preds = %472, %421
  %423 = load i64, i64* %24, align 8
  %424 = load i64*, i64** %7, align 8
  %425 = load i64, i64* %424, align 8
  %426 = icmp slt i64 %423, %425
  br i1 %426, label %427, label %475

427:                                              ; preds = %422
  %428 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %429 = load i64, i64* %24, align 8
  %430 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %428, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %430, i32 0, i32 0
  %432 = bitcast i32* %431 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %432, %struct.sockaddr_in** %21, align 8
  %433 = getelementptr inbounds [1025 x i64], [1025 x i64]* %17, i64 0, i64 0
  %434 = load i64, i64* %25, align 8
  %435 = getelementptr inbounds i64, i64* %433, i64 %434
  %436 = call i32 @inet_addrU(i64* %435)
  %437 = load %struct.sockaddr_in*, %struct.sockaddr_in** %21, align 8
  %438 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %437, i32 0, i32 1
  %439 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %439, i32 0, i32 0
  store i32 %436, i32* %440, align 8
  %441 = icmp ne i32 %436, -1
  br i1 %441, label %442, label %470

442:                                              ; preds = %427
  %443 = load i8*, i8** @AF_INET, align 8
  %444 = load %struct.sockaddr_in*, %struct.sockaddr_in** %21, align 8
  %445 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %444, i32 0, i32 0
  store i8* %443, i8** %445, align 8
  br label %446

446:                                              ; preds = %452, %442
  %447 = getelementptr inbounds [1025 x i64], [1025 x i64]* %17, i64 0, i64 0
  %448 = load i64, i64* %25, align 8
  %449 = getelementptr inbounds i64, i64* %447, i64 %448
  %450 = load i64, i64* %449, align 8
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %455

452:                                              ; preds = %446
  %453 = load i64, i64* %25, align 8
  %454 = add nsw i64 %453, 1
  store i64 %454, i64* %25, align 8
  br label %446

455:                                              ; preds = %446
  %456 = load i64, i64* %25, align 8
  %457 = add nsw i64 %456, 1
  store i64 %457, i64* %25, align 8
  %458 = getelementptr inbounds [1025 x i64], [1025 x i64]* %17, i64 0, i64 0
  %459 = load i64, i64* %25, align 8
  %460 = getelementptr inbounds i64, i64* %458, i64 %459
  %461 = load i64, i64* %460, align 8
  %462 = icmp eq i64 %461, 0
  br i1 %462, label %468, label %463

463:                                              ; preds = %455
  %464 = load i64, i64* %25, align 8
  %465 = mul i64 %464, 8
  %466 = load i64, i64* %19, align 8
  %467 = icmp uge i64 %465, %466
  br i1 %467, label %468, label %469

468:                                              ; preds = %463, %455
  br label %475

469:                                              ; preds = %463
  br label %471

470:                                              ; preds = %427
  br label %475

471:                                              ; preds = %469
  br label %472

472:                                              ; preds = %471
  %473 = load i64, i64* %24, align 8
  %474 = add nsw i64 %473, 1
  store i64 %474, i64* %24, align 8
  br label %422

475:                                              ; preds = %470, %468, %422
  %476 = load i64, i64* %24, align 8
  %477 = load i64, i64* %23, align 8
  %478 = icmp ne i64 %476, %477
  br i1 %478, label %479, label %484

479:                                              ; preds = %475
  %480 = load i32, i32* %14, align 4
  %481 = call i32 @RegCloseKey(i32 %480)
  %482 = load i32, i32* %15, align 4
  %483 = call i32 @RegCloseKey(i32 %482)
  br label %505

484:                                              ; preds = %475
  br label %485

485:                                              ; preds = %484, %317
  %486 = load i64, i64* %23, align 8
  %487 = add nsw i64 %486, 1
  %488 = load i64*, i64** %7, align 8
  store i64 %487, i64* %488, align 8
  %489 = load i32, i32* %14, align 4
  %490 = call i32 @RegCloseKey(i32 %489)
  %491 = load i32, i32* %15, align 4
  %492 = call i32 @RegCloseKey(i32 %491)
  %493 = load i64, i64* %16, align 8
  %494 = load i64, i64* @ERROR_SUCCESS, align 8
  %495 = icmp ne i64 %493, %494
  br i1 %495, label %496, label %497

496:                                              ; preds = %485
  br label %505

497:                                              ; preds = %485
  %498 = load i64*, i64** %9, align 8
  %499 = icmp ne i64* %498, null
  br i1 %499, label %500, label %503

500:                                              ; preds = %497
  %501 = load i64*, i64** %9, align 8
  %502 = call i32 @GlobalFreePtr(i64* %501)
  br label %503

503:                                              ; preds = %500, %497
  %504 = load i32, i32* @TRUE, align 4
  store i32 %504, i32* %4, align 4
  br label %513

505:                                              ; preds = %496, %479, %416, %327, %312, %249, %160, %122, %107, %92, %83, %71
  %506 = load i64*, i64** %9, align 8
  %507 = icmp ne i64* %506, null
  br i1 %507, label %508, label %511

508:                                              ; preds = %505
  %509 = load i64*, i64** %9, align 8
  %510 = call i32 @GlobalFreePtr(i64* %509)
  br label %511

511:                                              ; preds = %508, %505
  %512 = load i32, i32* @FALSE, align 4
  store i32 %512, i32* %4, align 4
  br label %513

513:                                              ; preds = %511, %503
  %514 = load i32, i32* %4, align 4
  ret i32 %514
}

declare dso_local i64* @SChar2WChar(i8*) #1

declare dso_local i64* @wcsrchr(i64*, i8 signext) #1

declare dso_local i64 @wcsncmp(i64*, i8*, i32) #1

declare dso_local i64 @RegOpenKeyEx(i32, i64*, i32, i32, i32*) #1

declare dso_local i64* @TEXT(i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @RegQueryValueEx(i32, i64*, i32*, i64*, i32, i64*) #1

declare dso_local i32 @inet_addrU(i64*) #1

declare dso_local i32 @GlobalFreePtr(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
