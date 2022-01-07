; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_udp_copy_descriptor.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_udp_copy_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nstat_tucookie = type { i32, i64*, i32, i32, %struct.TYPE_12__, %struct.TYPE_10__, %struct.inpcb* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.inpcb = type { i32, i32, %struct.socket*, %struct.TYPE_13__*, i32, i32, i32, i32, i32, i32 }
%struct.socket = type { i32, i32, %struct.TYPE_14__, i32*, i32, i32, i32*, i32*, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i64*, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32, i32, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4
@INP_IPV4 = common dso_local global i32 0, align 4
@SOF_DELEGATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32)* @nstat_udp_copy_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nstat_udp_copy_descriptor(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nstat_tucookie*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.inpcb*, align 8
  %11 = alloca %struct.socket*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 96
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %303

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @nstat_udp_gone(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %303

23:                                               ; preds = %17
  %24 = load i64, i64* %5, align 8
  %25 = inttoptr i64 %24 to %struct.nstat_tucookie*
  store %struct.nstat_tucookie* %25, %struct.nstat_tucookie** %8, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %9, align 8
  %28 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %8, align 8
  %29 = getelementptr inbounds %struct.nstat_tucookie, %struct.nstat_tucookie* %28, i32 0, i32 6
  %30 = load %struct.inpcb*, %struct.inpcb** %29, align 8
  store %struct.inpcb* %30, %struct.inpcb** %10, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %32 = call i32 @bzero(%struct.TYPE_15__* %31, i32 96)
  %33 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %8, align 8
  %34 = getelementptr inbounds %struct.nstat_tucookie, %struct.nstat_tucookie* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %95

37:                                               ; preds = %23
  %38 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %39 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @INP_IPV6, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %37
  %45 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %46 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %45, i32 0, i32 9
  %47 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %48 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 17
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = call i32 @in6_ip6_to_sockaddr(i32* %46, i32 %49, i32* %52, i32 4)
  %54 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %55 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %54, i32 0, i32 8
  %56 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %57 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 16
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = call i32 @in6_ip6_to_sockaddr(i32* %55, i32 %58, i32* %61, i32 4)
  br label %90

63:                                               ; preds = %37
  %64 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %65 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @INP_IPV4, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %63
  %71 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %72 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %71, i32 0, i32 7
  %73 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %74 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 17
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = call i32 @nstat_ip_to_sockaddr(i32* %72, i32 %75, i32* %78, i32 4)
  %80 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %81 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %80, i32 0, i32 5
  %82 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %83 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 16
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = call i32 @nstat_ip_to_sockaddr(i32* %81, i32 %84, i32* %87, i32 4)
  br label %89

89:                                               ; preds = %70, %63
  br label %90

90:                                               ; preds = %89, %44
  %91 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %92 = call i32 @nstat_inpcb_to_flags(%struct.inpcb* %91)
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 15
  store i32 %92, i32* %94, align 4
  br label %146

95:                                               ; preds = %23
  %96 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %97 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @INP_IPV6, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %95
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 17
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %8, align 8
  %107 = getelementptr inbounds %struct.nstat_tucookie, %struct.nstat_tucookie* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = call i32 @memcpy(i32* %105, i32* %108, i32 4)
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 16
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %8, align 8
  %114 = getelementptr inbounds %struct.nstat_tucookie, %struct.nstat_tucookie* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = call i32 @memcpy(i32* %112, i32* %115, i32 4)
  br label %140

117:                                              ; preds = %95
  %118 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %119 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @INP_IPV4, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %117
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 17
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %8, align 8
  %129 = getelementptr inbounds %struct.nstat_tucookie, %struct.nstat_tucookie* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = call i32 @memcpy(i32* %127, i32* %130, i32 4)
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 16
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %8, align 8
  %136 = getelementptr inbounds %struct.nstat_tucookie, %struct.nstat_tucookie* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = call i32 @memcpy(i32* %134, i32* %137, i32 4)
  br label %139

139:                                              ; preds = %124, %117
  br label %140

140:                                              ; preds = %139, %102
  %141 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %8, align 8
  %142 = getelementptr inbounds %struct.nstat_tucookie, %struct.nstat_tucookie* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 15
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %140, %90
  %147 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %148 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %147, i32 0, i32 3
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = icmp ne %struct.TYPE_13__* %149, null
  br i1 %150, label %151, label %159

151:                                              ; preds = %146
  %152 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %153 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %152, i32 0, i32 3
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 14
  store i32 %156, i32* %158, align 8
  br label %165

159:                                              ; preds = %146
  %160 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %8, align 8
  %161 = getelementptr inbounds %struct.nstat_tucookie, %struct.nstat_tucookie* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 14
  store i32 %162, i32* %164, align 8
  br label %165

165:                                              ; preds = %159, %151
  %166 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %167 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %166, i32 0, i32 2
  %168 = load %struct.socket*, %struct.socket** %167, align 8
  store %struct.socket* %168, %struct.socket** %11, align 8
  %169 = load %struct.socket*, %struct.socket** %11, align 8
  %170 = icmp ne %struct.socket* %169, null
  br i1 %170, label %171, label %302

171:                                              ; preds = %165
  %172 = load %struct.socket*, %struct.socket** %11, align 8
  %173 = getelementptr inbounds %struct.socket, %struct.socket* %172, i32 0, i32 9
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 11
  store i32 %174, i32* %176, align 8
  %177 = load %struct.socket*, %struct.socket** %11, align 8
  %178 = getelementptr inbounds %struct.socket, %struct.socket* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 9
  store i32 %179, i32* %181, align 8
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 9
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = load i64*, i64** %186, align 8
  %188 = call i32 @proc_name(i32 %184, i64* %187, i32 8)
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 0
  %191 = load i64*, i64** %190, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %171
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 0
  %198 = load i64*, i64** %197, align 8
  %199 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %8, align 8
  %200 = getelementptr inbounds %struct.nstat_tucookie, %struct.nstat_tucookie* %199, i32 0, i32 1
  %201 = load i64*, i64** %200, align 8
  %202 = call i32 @strlcpy(i64* %198, i64* %201, i32 8)
  br label %215

203:                                              ; preds = %171
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = load i64*, i64** %205, align 8
  %207 = getelementptr inbounds i64, i64* %206, i64 7
  store i64 0, i64* %207, align 8
  %208 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %8, align 8
  %209 = getelementptr inbounds %struct.nstat_tucookie, %struct.nstat_tucookie* %208, i32 0, i32 1
  %210 = load i64*, i64** %209, align 8
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 0
  %213 = load i64*, i64** %212, align 8
  %214 = call i32 @strlcpy(i64* %210, i64* %213, i32 8)
  br label %215

215:                                              ; preds = %203, %195
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 7
  %218 = load i32*, i32** %217, align 8
  %219 = load %struct.socket*, %struct.socket** %11, align 8
  %220 = getelementptr inbounds %struct.socket, %struct.socket* %219, i32 0, i32 7
  %221 = load i32*, i32** %220, align 8
  %222 = call i32 @memcpy(i32* %218, i32* %221, i32 8)
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 13
  %225 = load i32*, i32** %224, align 8
  %226 = load %struct.socket*, %struct.socket** %11, align 8
  %227 = getelementptr inbounds %struct.socket, %struct.socket* %226, i32 0, i32 6
  %228 = load i32*, i32** %227, align 8
  %229 = call i32 @memcpy(i32* %225, i32* %228, i32 8)
  %230 = load %struct.socket*, %struct.socket** %11, align 8
  %231 = getelementptr inbounds %struct.socket, %struct.socket* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @SOF_DELEGATED, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %254

236:                                              ; preds = %215
  %237 = load %struct.socket*, %struct.socket** %11, align 8
  %238 = getelementptr inbounds %struct.socket, %struct.socket* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 12
  store i32 %239, i32* %241, align 4
  %242 = load %struct.socket*, %struct.socket** %11, align 8
  %243 = getelementptr inbounds %struct.socket, %struct.socket* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 10
  store i32 %244, i32* %246, align 4
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 8
  %249 = load i32*, i32** %248, align 8
  %250 = load %struct.socket*, %struct.socket** %11, align 8
  %251 = getelementptr inbounds %struct.socket, %struct.socket* %250, i32 0, i32 3
  %252 = load i32*, i32** %251, align 8
  %253 = call i32 @memcpy(i32* %249, i32* %252, i32 8)
  br label %272

254:                                              ; preds = %215
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 11
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 12
  store i32 %257, i32* %259, align 4
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 9
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 10
  store i32 %262, i32* %264, align 4
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 8
  %267 = load i32*, i32** %266, align 8
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 7
  %270 = load i32*, i32** %269, align 8
  %271 = call i32 @memcpy(i32* %267, i32* %270, i32 8)
  br label %272

272:                                              ; preds = %254, %236
  %273 = load %struct.socket*, %struct.socket** %11, align 8
  %274 = getelementptr inbounds %struct.socket, %struct.socket* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 6
  store i32 %276, i32* %278, align 4
  %279 = load %struct.socket*, %struct.socket** %11, align 8
  %280 = getelementptr inbounds %struct.socket, %struct.socket* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 5
  store i32 %282, i32* %284, align 8
  %285 = load %struct.socket*, %struct.socket** %11, align 8
  %286 = getelementptr inbounds %struct.socket, %struct.socket* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 4
  store i32 %287, i32* %289, align 4
  %290 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 3
  %293 = call i32 @inp_get_activity_bitmap(%struct.inpcb* %290, i32* %292)
  %294 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %295 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 2
  store i32 %296, i32* %298, align 4
  %299 = call i32 (...) @mach_continuous_time()
  %300 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %301 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %300, i32 0, i32 1
  store i32 %299, i32* %301, align 8
  br label %302

302:                                              ; preds = %272, %165
  store i32 0, i32* %4, align 4
  br label %303

303:                                              ; preds = %302, %21, %15
  %304 = load i32, i32* %4, align 4
  ret i32 %304
}

declare dso_local i64 @nstat_udp_gone(i64) #1

declare dso_local i32 @bzero(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @in6_ip6_to_sockaddr(i32*, i32, i32*, i32) #1

declare dso_local i32 @nstat_ip_to_sockaddr(i32*, i32, i32*, i32) #1

declare dso_local i32 @nstat_inpcb_to_flags(%struct.inpcb*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @proc_name(i32, i64*, i32) #1

declare dso_local i32 @strlcpy(i64*, i64*, i32) #1

declare dso_local i32 @inp_get_activity_bitmap(%struct.inpcb*, i32*) #1

declare dso_local i32 @mach_continuous_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
