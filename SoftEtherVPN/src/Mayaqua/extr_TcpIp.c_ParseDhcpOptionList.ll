; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_ParseDhcpOptionList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_ParseDhcpOptionList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32*, i32 }
%struct.TYPE_7__ = type { i32, i32* }

@DHCP_ID_MESSAGE_TYPE = common dso_local global i32 0, align 4
@DHCP_ID_REQUEST_IP_ADDRESS = common dso_local global i32 0, align 4
@DHCP_ID_HOST_NAME = common dso_local global i32 0, align 4
@DHCP_ID_SUBNET_MASK = common dso_local global i32 0, align 4
@DHCP_ID_LEASE_TIME = common dso_local global i32 0, align 4
@DHCP_ID_SERVER_ADDRESS = common dso_local global i32 0, align 4
@DHCP_ID_DOMAIN_NAME = common dso_local global i32 0, align 4
@DHCP_ID_GATEWAY_ADDR = common dso_local global i32 0, align 4
@DHCP_ID_DNS_ADDR = common dso_local global i32 0, align 4
@DHCP_ID_WINS_ADDR = common dso_local global i32 0, align 4
@DHCP_ID_CLASSLESS_ROUTE = common dso_local global i32 0, align 4
@DHCP_ID_MS_CLASSLESS_ROUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @ParseDhcpOptionList(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %284

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32* @ParseDhcpOptions(i8* %13, i32 %14)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %284

19:                                               ; preds = %12
  %20 = call %struct.TYPE_6__* @ZeroMalloc(i32 72)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @DHCP_ID_MESSAGE_TYPE, align 4
  %23 = call %struct.TYPE_7__* @GetDhcpOption(i32* %21, i32 %22)
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %8, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = icmp ne %struct.TYPE_7__* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %19
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %31, %26
  br label %39

39:                                               ; preds = %38, %19
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %280 [
    i32 130, label %43
    i32 128, label %43
    i32 129, label %86
    i32 131, label %86
  ]

43:                                               ; preds = %39, %39
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* @DHCP_ID_REQUEST_IP_ADDRESS, align 4
  %46 = call %struct.TYPE_7__* @GetDhcpOption(i32* %44, i32 %45)
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %8, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = icmp ne %struct.TYPE_7__* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 4
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 12
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @Copy(i32* %56, i32* %59, i32 4)
  br label %61

61:                                               ; preds = %54, %49, %43
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* @DHCP_ID_HOST_NAME, align 4
  %64 = call %struct.TYPE_7__* @GetDhcpOption(i32* %62, i32 %63)
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %8, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = icmp ne %struct.TYPE_7__* %65, null
  br i1 %66, label %67, label %85

67:                                               ; preds = %61
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %70, 1
  br i1 %71, label %72, label %84

72:                                               ; preds = %67
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 11
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @MIN(i32 %81, i32 7)
  %83 = call i32 @Copy(i32* %75, i32* %78, i32 %82)
  br label %84

84:                                               ; preds = %72, %67
  br label %85

85:                                               ; preds = %84, %61
  br label %280

86:                                               ; preds = %39, %39
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* @DHCP_ID_SUBNET_MASK, align 4
  %89 = call %struct.TYPE_7__* @GetDhcpOption(i32* %87, i32 %88)
  store %struct.TYPE_7__* %89, %struct.TYPE_7__** %8, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %91 = icmp ne %struct.TYPE_7__* %90, null
  br i1 %91, label %92, label %104

92:                                               ; preds = %86
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp sge i32 %95, 4
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 10
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @Copy(i32* %99, i32* %102, i32 4)
  br label %104

104:                                              ; preds = %97, %92, %86
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* @DHCP_ID_LEASE_TIME, align 4
  %107 = call %struct.TYPE_7__* @GetDhcpOption(i32* %105, i32 %106)
  store %struct.TYPE_7__* %107, %struct.TYPE_7__** %8, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %109 = icmp ne %struct.TYPE_7__* %108, null
  br i1 %109, label %110, label %122

110:                                              ; preds = %104
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 4
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @READ_UINT(i32* %118)
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 9
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %115, %110, %104
  %123 = load i32*, i32** %7, align 8
  %124 = load i32, i32* @DHCP_ID_SERVER_ADDRESS, align 4
  %125 = call %struct.TYPE_7__* @GetDhcpOption(i32* %123, i32 %124)
  store %struct.TYPE_7__* %125, %struct.TYPE_7__** %8, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %127 = icmp ne %struct.TYPE_7__* %126, null
  br i1 %127, label %128, label %140

128:                                              ; preds = %122
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp sge i32 %131, 4
  br i1 %132, label %133, label %140

133:                                              ; preds = %128
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @Copy(i32* %135, i32* %138, i32 4)
  br label %140

140:                                              ; preds = %133, %128, %122
  %141 = load i32*, i32** %7, align 8
  %142 = load i32, i32* @DHCP_ID_DOMAIN_NAME, align 4
  %143 = call %struct.TYPE_7__* @GetDhcpOption(i32* %141, i32 %142)
  store %struct.TYPE_7__* %143, %struct.TYPE_7__** %8, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %145 = icmp ne %struct.TYPE_7__* %144, null
  br i1 %145, label %146, label %167

146:                                              ; preds = %140
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp sge i32 %149, 1
  br i1 %150, label %151, label %167

151:                                              ; preds = %146
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 7
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @Zero(i32* %154, i32 8)
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 7
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @MIN(i32 %164, i32 7)
  %166 = call i32 @Copy(i32* %158, i32* %161, i32 %165)
  br label %167

167:                                              ; preds = %151, %146, %140
  %168 = load i32*, i32** %7, align 8
  %169 = load i32, i32* @DHCP_ID_GATEWAY_ADDR, align 4
  %170 = call %struct.TYPE_7__* @GetDhcpOption(i32* %168, i32 %169)
  store %struct.TYPE_7__* %170, %struct.TYPE_7__** %8, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %172 = icmp ne %struct.TYPE_7__* %171, null
  br i1 %172, label %173, label %185

173:                                              ; preds = %167
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp sge i32 %176, 4
  br i1 %177, label %178, label %185

178:                                              ; preds = %173
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 6
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @Copy(i32* %180, i32* %183, i32 4)
  br label %185

185:                                              ; preds = %178, %173, %167
  %186 = load i32*, i32** %7, align 8
  %187 = load i32, i32* @DHCP_ID_DNS_ADDR, align 4
  %188 = call %struct.TYPE_7__* @GetDhcpOption(i32* %186, i32 %187)
  store %struct.TYPE_7__* %188, %struct.TYPE_7__** %8, align 8
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %190 = icmp ne %struct.TYPE_7__* %189, null
  br i1 %190, label %191, label %216

191:                                              ; preds = %185
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp sge i32 %194, 4
  br i1 %195, label %196, label %216

196:                                              ; preds = %191
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 5
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @Copy(i32* %198, i32* %201, i32 4)
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp sge i32 %205, 8
  br i1 %206, label %207, label %215

207:                                              ; preds = %196
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 4
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 4
  %214 = call i32 @Copy(i32* %209, i32* %213, i32 4)
  br label %215

215:                                              ; preds = %207, %196
  br label %216

216:                                              ; preds = %215, %191, %185
  %217 = load i32*, i32** %7, align 8
  %218 = load i32, i32* @DHCP_ID_WINS_ADDR, align 4
  %219 = call %struct.TYPE_7__* @GetDhcpOption(i32* %217, i32 %218)
  store %struct.TYPE_7__* %219, %struct.TYPE_7__** %8, align 8
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %221 = icmp ne %struct.TYPE_7__* %220, null
  br i1 %221, label %222, label %247

222:                                              ; preds = %216
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp sge i32 %225, 4
  br i1 %226, label %227, label %247

227:                                              ; preds = %222
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 3
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = call i32 @Copy(i32* %229, i32* %232, i32 4)
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = icmp sge i32 %236, 8
  br i1 %237, label %238, label %246

238:                                              ; preds = %227
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 4
  %245 = call i32 @Copy(i32* %240, i32* %244, i32 4)
  br label %246

246:                                              ; preds = %238, %227
  br label %247

247:                                              ; preds = %246, %222, %216
  %248 = load i32*, i32** %7, align 8
  %249 = load i32, i32* @DHCP_ID_CLASSLESS_ROUTE, align 4
  %250 = call %struct.TYPE_7__* @GetDhcpOption(i32* %248, i32 %249)
  store %struct.TYPE_7__* %250, %struct.TYPE_7__** %8, align 8
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %252 = icmp ne %struct.TYPE_7__* %251, null
  br i1 %252, label %253, label %263

253:                                              ; preds = %247
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 1
  %258 = load i32*, i32** %257, align 8
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @DhcpParseClasslessRouteData(i32* %255, i32* %258, i32 %261)
  br label %263

263:                                              ; preds = %253, %247
  %264 = load i32*, i32** %7, align 8
  %265 = load i32, i32* @DHCP_ID_MS_CLASSLESS_ROUTE, align 4
  %266 = call %struct.TYPE_7__* @GetDhcpOption(i32* %264, i32 %265)
  store %struct.TYPE_7__* %266, %struct.TYPE_7__** %8, align 8
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %268 = icmp ne %struct.TYPE_7__* %267, null
  br i1 %268, label %269, label %279

269:                                              ; preds = %263
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 1
  %274 = load i32*, i32** %273, align 8
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @DhcpParseClasslessRouteData(i32* %271, i32* %274, i32 %277)
  br label %279

279:                                              ; preds = %269, %263
  br label %280

280:                                              ; preds = %39, %279, %85
  %281 = load i32*, i32** %7, align 8
  %282 = call i32 @FreeDhcpOptions(i32* %281)
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %283, %struct.TYPE_6__** %3, align 8
  br label %284

284:                                              ; preds = %280, %18, %11
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %285
}

declare dso_local i32* @ParseDhcpOptions(i8*, i32) #1

declare dso_local %struct.TYPE_6__* @ZeroMalloc(i32) #1

declare dso_local %struct.TYPE_7__* @GetDhcpOption(i32*, i32) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @READ_UINT(i32*) #1

declare dso_local i32 @Zero(i32*, i32) #1

declare dso_local i32 @DhcpParseClasslessRouteData(i32*, i32*, i32) #1

declare dso_local i32 @FreeDhcpOptions(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
