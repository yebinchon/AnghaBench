; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_SetVirtualHostOption.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_SetVirtualHostOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i32* }
%struct.TYPE_7__ = type { i64*, i32, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MAX_L3_DATA_SIZE = common dso_local global i32 0, align 4
@TCP_HEADER_SIZE = common dso_local global i32 0, align 4
@IP_HEADER_SIZE = common dso_local global i32 0, align 4
@MAC_HEADER_SIZE = common dso_local global i32 0, align 4
@UDP_HEADER_SIZE = common dso_local global i32 0, align 4
@NAT_TCP_MIN_TIMEOUT = common dso_local global i32 0, align 4
@NAT_TCP_MAX_TIMEOUT = common dso_local global i32 0, align 4
@NAT_UDP_MIN_TIMEOUT = common dso_local global i32 0, align 4
@NAT_UDP_MAX_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Timeout: %d , %d\0A\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@DHCP_MIN_EXPIRE_TIMESPAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetVirtualHostOption(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = icmp eq %struct.TYPE_8__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = icmp eq %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  br label %273

13:                                               ; preds = %9
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = call i32 @LockVirtual(%struct.TYPE_8__* %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %37, %13
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 6
  br i1 %18, label %19, label %40

19:                                               ; preds = %16
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %19
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 20
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = call i32 @Copy(i32* %31, i64* %34, i32 6)
  br label %40

36:                                               ; preds = %19
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %16

40:                                               ; preds = %28, %16
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 18
  %43 = call i8* @IPToUINT(i32* %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 19
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 17
  %48 = call i8* @IPToUINT(i32* %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 18
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @MAX_L3_DATA_SIZE, align 4
  %55 = call i32 @MIN(i32 %53, i32 %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %40
  %63 = load i32, i32* @MAX_L3_DATA_SIZE, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %62, %40
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @TCP_HEADER_SIZE, align 4
  %71 = load i32, i32* @IP_HEADER_SIZE, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* @MAC_HEADER_SIZE, align 4
  %74 = add nsw i32 %72, %73
  %75 = add nsw i32 %74, 8
  %76 = call i32 @MAX(i32 %69, i32 %75)
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @IP_HEADER_SIZE, align 4
  %83 = sub nsw i32 %81, %82
  %84 = sdiv i32 %83, 8
  %85 = mul nsw i32 %84, 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @TCP_HEADER_SIZE, align 4
  %92 = sub nsw i32 %90, %91
  %93 = sdiv i32 %92, 8
  %94 = mul nsw i32 %93, 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @UDP_HEADER_SIZE, align 4
  %101 = sub nsw i32 %99, %100
  %102 = sdiv i32 %101, 8
  %103 = mul nsw i32 %102, 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %66
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 @MIN(i32 %114, i32 4000000)
  %116 = mul nsw i32 %115, 1000
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %110, %66
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %119
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i32 @MIN(i32 %128, i32 4000000)
  %130 = mul nsw i32 %129, 1000
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 5
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %124, %119
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @NAT_TCP_MIN_TIMEOUT, align 4
  %138 = load i32, i32* @NAT_TCP_MAX_TIMEOUT, align 4
  %139 = call i8* @MAKESURE(i32 %136, i32 %137, i32 %138)
  %140 = ptrtoint i8* %139 to i32
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @NAT_UDP_MIN_TIMEOUT, align 4
  %147 = load i32, i32* @NAT_UDP_MAX_TIMEOUT, align 4
  %148 = call i8* @MAKESURE(i32 %145, i32 %146, i32 %147)
  %149 = ptrtoint i8* %148 to i32
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 5
  store i32 %149, i32* %151, align 4
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @Debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %154, i32 %157)
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 16
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 17
  store i32 %161, i32* %163, align 4
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 15
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 16
  store i32 %166, i32* %168, align 8
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %133
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @INFINITE, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %173, %133
  %180 = load i32, i32* @INFINITE, align 4
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 6
  store i32 %180, i32* %182, align 8
  br label %195

183:                                              ; preds = %173
  %184 = load i32, i32* @DHCP_MIN_EXPIRE_TIMESPAN, align 4
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = mul nsw i32 %187, 1000
  %189 = call i32 @MIN(i32 %188, i32 2000000000)
  %190 = load i32, i32* @INFINITE, align 4
  %191 = call i8* @MAKESURE(i32 %184, i32 %189, i32 %190)
  %192 = ptrtoint i8* %191 to i32
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 6
  store i32 %192, i32* %194, align 8
  br label %195

195:                                              ; preds = %183, %179
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 14
  %198 = call i8* @IPToUINT(i32* %197)
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 14
  store i8* %198, i8** %200, align 8
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 13
  %203 = call i8* @IPToUINT(i32* %202)
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 15
  store i8* %203, i8** %205, align 8
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 15
  %208 = load i8*, i8** %207, align 8
  %209 = call i64 @Endian32(i8* %208)
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 14
  %212 = load i8*, i8** %211, align 8
  %213 = call i64 @Endian32(i8* %212)
  %214 = icmp slt i64 %209, %213
  br i1 %214, label %215, label %221

215:                                              ; preds = %195
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 14
  %218 = load i8*, i8** %217, align 8
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 15
  store i8* %218, i8** %220, align 8
  br label %221

221:                                              ; preds = %215, %195
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 12
  %224 = call i8* @IPToUINT(i32* %223)
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 13
  store i8* %224, i8** %226, align 8
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 11
  %229 = call i8* @IPToUINT(i32* %228)
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 12
  store i8* %229, i8** %231, align 8
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 10
  %234 = call i8* @IPToUINT(i32* %233)
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 11
  store i8* %234, i8** %236, align 8
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 9
  %239 = call i8* @IPToUINT(i32* %238)
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 10
  store i8* %239, i8** %241, align 8
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 9
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 8
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @StrCpy(i32 %244, i32 4, i32 %247)
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 7
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 8
  store i32 %251, i32* %253, align 8
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 6
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %270

258:                                              ; preds = %221
  %259 = call i32 @Zero(i64* %6, i32 8)
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 4
  %263 = call i64 @ParseClasslessRouteTableStr(i64* %6, i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %258
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 7
  %268 = call i32 @Copy(i32* %267, i64* %6, i32 8)
  br label %269

269:                                              ; preds = %265, %258
  br label %270

270:                                              ; preds = %269, %221
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %272 = call i32 @UnlockVirtual(%struct.TYPE_8__* %271)
  br label %273

273:                                              ; preds = %270, %12
  ret void
}

declare dso_local i32 @LockVirtual(%struct.TYPE_8__*) #1

declare dso_local i32 @Copy(i32*, i64*, i32) #1

declare dso_local i8* @IPToUINT(i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i8* @MAKESURE(i32, i32, i32) #1

declare dso_local i32 @Debug(i8*, i32, i32) #1

declare dso_local i64 @Endian32(i8*) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @Zero(i64*, i32) #1

declare dso_local i64 @ParseClasslessRouteTableStr(i64*, i32) #1

declare dso_local i32 @UnlockVirtual(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
