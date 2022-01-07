; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_ForceRedirectToUrl.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_ForceRedirectToUrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_41__ = type { %struct.TYPE_39__* }
%struct.TYPE_39__ = type { i64 }
%struct.TYPE_32__ = type { i64, i64, %struct.TYPE_38__, %struct.TYPE_36__, %struct.TYPE_34__*, i64, %struct.TYPE_33__ }
%struct.TYPE_38__ = type { %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i32, i32 }
%struct.TYPE_36__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_40__, %struct.TYPE_40__*, %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i32, i32, i32, i32, i32*, i32, i32, i8*, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i64, i64, i32, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_40__* }

@L3_IPV4 = common dso_local global i64 0, align 8
@L3_IPV6 = common dso_local global i64 0, align 8
@L4_TCP = common dso_local global i64 0, align 8
@TCP_ACK = common dso_local global i32 0, align 4
@TCP_PSH = common dso_local global i32 0, align 4
@IP_PROTO_TCP = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ForceRedirectToUrl(i32* %0, %struct.TYPE_41__* %1, %struct.TYPE_32__* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_41__*, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_40__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_40__*, align 8
  %12 = alloca %struct.TYPE_40__*, align 8
  %13 = alloca %struct.TYPE_40__*, align 8
  %14 = alloca %struct.TYPE_40__, align 8
  %15 = alloca %struct.TYPE_40__, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_41__* %1, %struct.TYPE_41__** %6, align 8
  store %struct.TYPE_32__* %2, %struct.TYPE_32__** %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %4
  %19 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %20 = icmp eq %struct.TYPE_41__* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %23 = icmp eq %struct.TYPE_32__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %8, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21, %18, %4
  br label %272

28:                                               ; preds = %24
  %29 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @L3_IPV4, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @L3_IPV6, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %272

41:                                               ; preds = %34, %28
  %42 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @L4_TCP, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %272

48:                                               ; preds = %41
  %49 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_40__*, %struct.TYPE_40__** %51, align 8
  store %struct.TYPE_40__* %52, %struct.TYPE_40__** %12, align 8
  %53 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %54 = icmp eq %struct.TYPE_40__* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %272

56:                                               ; preds = %48
  %57 = load i32*, i32** %5, align 8
  %58 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call %struct.TYPE_40__* @BuildRedirectToUrlPayload(i32* %57, %struct.TYPE_41__* %58, i8* %59)
  store %struct.TYPE_40__* %60, %struct.TYPE_40__** %9, align 8
  %61 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %62 = icmp eq %struct.TYPE_40__* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %272

64:                                               ; preds = %56
  %65 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = add i64 120, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i64 @ZeroMalloc(i32 %71)
  %73 = inttoptr i64 %72 to %struct.TYPE_40__*
  store %struct.TYPE_40__* %73, %struct.TYPE_40__** %11, align 8
  %74 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %74, i32 0, i32 19
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %77, i32 0, i32 18
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %79, i32 0, i32 18
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %82, i32 0, i32 19
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %84, i32 0, i32 17
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %87, i32 0, i32 16
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %89, i32 0, i32 16
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @Endian32(i64 %91)
  %93 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %92, %95
  %97 = call i64 @Endian32(i64 %96)
  %98 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %98, i32 0, i32 17
  store i64 %97, i64* %99, align 8
  %100 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %101 = call i32 @TCP_SET_HEADER_SIZE(%struct.TYPE_40__* %100, i32 5)
  %102 = load i32, i32* @TCP_ACK, align 4
  %103 = load i32, i32* @TCP_PSH, align 4
  %104 = or i32 %102, %103
  %105 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = call i8* @Endian16(i32 65535)
  %108 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %108, i32 0, i32 15
  store i8* %107, i8** %109, align 8
  %110 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %111 = bitcast %struct.TYPE_40__* %110 to i32*
  %112 = getelementptr inbounds i32, i32* %111, i64 120
  %113 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @Copy(i32* %112, i32* %115, i32 %118)
  %120 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @L3_IPV4, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %144

125:                                              ; preds = %64
  %126 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_35__*, %struct.TYPE_35__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_35__*, %struct.TYPE_35__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i8*, i8** @IP_PROTO_TCP, align 8
  %139 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @CalcChecksumForIPv4(i32 %131, i32 %137, i8* %138, %struct.TYPE_40__* %139, i32 %140, i32 0)
  %142 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %142, i32 0, i32 9
  store i32 %141, i32* %143, align 8
  br label %161

144:                                              ; preds = %64
  %145 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_37__*, %struct.TYPE_37__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_37__*, %struct.TYPE_37__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %153, i32 0, i32 0
  %155 = load i8*, i8** @IP_PROTO_TCP, align 8
  %156 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @CalcChecksumForIPv6(i32* %149, i32* %154, i8* %155, %struct.TYPE_40__* %156, i32 %157, i32 0)
  %159 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %159, i32 0, i32 9
  store i32 %158, i32* %160, align 8
  br label %161

161:                                              ; preds = %144, %125
  %162 = call %struct.TYPE_40__* (...) @NewBuf()
  store %struct.TYPE_40__* %162, %struct.TYPE_40__** %13, align 8
  %163 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %164 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %164, i32 0, i32 4
  %166 = load %struct.TYPE_34__*, %struct.TYPE_34__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_40__*, %struct.TYPE_40__** %167, align 8
  %169 = call i32 @WriteBuf(%struct.TYPE_40__* %163, %struct.TYPE_40__* %168, i32 6)
  %170 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %171 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %171, i32 0, i32 4
  %173 = load %struct.TYPE_34__*, %struct.TYPE_34__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_40__*, %struct.TYPE_40__** %174, align 8
  %176 = call i32 @WriteBuf(%struct.TYPE_40__* %170, %struct.TYPE_40__* %175, i32 6)
  %177 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %178 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %178, i32 0, i32 4
  %180 = load %struct.TYPE_34__*, %struct.TYPE_34__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %180, i32 0, i32 0
  %182 = call i32 @WriteBuf(%struct.TYPE_40__* %177, %struct.TYPE_40__* %181, i32 2)
  %183 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @L3_IPV4, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %223

188:                                              ; preds = %161
  %189 = call i32 @Zero(%struct.TYPE_40__* %14, i32 120)
  %190 = call i32 @IPV4_SET_VERSION(%struct.TYPE_40__* %14, i32 4)
  %191 = call i32 @IPV4_SET_HEADER_LEN(%struct.TYPE_40__* %14, i32 5)
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = add i64 120, %193
  %195 = trunc i64 %194 to i32
  %196 = call i8* @Endian16(i32 %195)
  %197 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %14, i32 0, i32 14
  store i8* %196, i8** %197, align 8
  %198 = call i32 (...) @Rand16()
  %199 = call i8* @Endian16(i32 %198)
  %200 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %14, i32 0, i32 13
  store i8* %199, i8** %200, align 8
  %201 = call i32 @IPV4_SET_FLAGS(%struct.TYPE_40__* %14, i32 2)
  %202 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %14, i32 0, i32 2
  store i32 128, i32* %202, align 8
  %203 = load i8*, i8** @IP_PROTO_TCP, align 8
  %204 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %14, i32 0, i32 12
  store i8* %203, i8** %204, align 8
  %205 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_35__*, %struct.TYPE_35__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %14, i32 0, i32 11
  store i32 %210, i32* %211, align 8
  %212 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_35__*, %struct.TYPE_35__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %14, i32 0, i32 10
  store i32 %217, i32* %218, align 4
  %219 = call i32 @IpChecksum(%struct.TYPE_40__* %14, i32 120)
  %220 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %14, i32 0, i32 9
  store i32 %219, i32* %220, align 8
  %221 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %222 = call i32 @WriteBuf(%struct.TYPE_40__* %221, %struct.TYPE_40__* %14, i32 120)
  br label %248

223:                                              ; preds = %161
  %224 = call i32 @Zero(%struct.TYPE_40__* %15, i32 120)
  %225 = call i32 @IPV6_SET_VERSION(%struct.TYPE_40__* %15, i32 6)
  %226 = load i32, i32* %10, align 4
  %227 = call i8* @Endian16(i32 %226)
  %228 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %15, i32 0, i32 8
  store i8* %227, i8** %228, align 8
  %229 = load i8*, i8** @IP_PROTO_TCP, align 8
  %230 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %15, i32 0, i32 7
  store i8* %229, i8** %230, align 8
  %231 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %15, i32 0, i32 3
  store i32 64, i32* %231, align 4
  %232 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %15, i32 0, i32 6
  %233 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_37__*, %struct.TYPE_37__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %236, i32 0, i32 1
  %238 = call i32 @Copy(i32* %232, i32* %237, i32 4)
  %239 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %15, i32 0, i32 5
  %240 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_37__*, %struct.TYPE_37__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %243, i32 0, i32 0
  %245 = call i32 @Copy(i32* %239, i32* %244, i32 4)
  %246 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %247 = call i32 @WriteBuf(%struct.TYPE_40__* %246, %struct.TYPE_40__* %15, i32 120)
  br label %248

248:                                              ; preds = %223, %188
  %249 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %250 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %251 = load i32, i32* %10, align 4
  %252 = call i32 @WriteBuf(%struct.TYPE_40__* %249, %struct.TYPE_40__* %250, i32 %251)
  %253 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_39__*, %struct.TYPE_39__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = inttoptr i64 %257 to i32*
  %259 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %260 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %259, i32 0, i32 4
  %261 = load i32*, i32** %260, align 8
  %262 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %263 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @StorePacketToHubPa(i32* %258, i32* null, i32* %261, i32 %264, i32* null, i32 0, i32 0)
  %266 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %267 = call i32 @Free(%struct.TYPE_40__* %266)
  %268 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %269 = call i32 @FreeBuf(%struct.TYPE_40__* %268)
  %270 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %271 = call i32 @Free(%struct.TYPE_40__* %270)
  br label %272

272:                                              ; preds = %248, %63, %55, %47, %40, %27
  ret void
}

declare dso_local %struct.TYPE_40__* @BuildRedirectToUrlPayload(i32*, %struct.TYPE_41__*, i8*) #1

declare dso_local i64 @ZeroMalloc(i32) #1

declare dso_local i64 @Endian32(i64) #1

declare dso_local i32 @TCP_SET_HEADER_SIZE(%struct.TYPE_40__*, i32) #1

declare dso_local i8* @Endian16(i32) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32 @CalcChecksumForIPv4(i32, i32, i8*, %struct.TYPE_40__*, i32, i32) #1

declare dso_local i32 @CalcChecksumForIPv6(i32*, i32*, i8*, %struct.TYPE_40__*, i32, i32) #1

declare dso_local %struct.TYPE_40__* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_40__*, %struct.TYPE_40__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_40__*, i32) #1

declare dso_local i32 @IPV4_SET_VERSION(%struct.TYPE_40__*, i32) #1

declare dso_local i32 @IPV4_SET_HEADER_LEN(%struct.TYPE_40__*, i32) #1

declare dso_local i32 @Rand16(...) #1

declare dso_local i32 @IPV4_SET_FLAGS(%struct.TYPE_40__*, i32) #1

declare dso_local i32 @IpChecksum(%struct.TYPE_40__*, i32) #1

declare dso_local i32 @IPV6_SET_VERSION(%struct.TYPE_40__*, i32) #1

declare dso_local i32 @StorePacketToHubPa(i32*, i32*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @Free(%struct.TYPE_40__*) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_40__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
