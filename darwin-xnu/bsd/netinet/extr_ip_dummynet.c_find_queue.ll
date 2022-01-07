; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_find_queue.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_find_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_flow_queue = type { i64, i64, %struct.ip_flow_id, %struct.dn_flow_queue*, i32* }
%struct.ip_flow_id = type { i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.dn_flow_set = type { i32, i32, %struct.dn_flow_queue**, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@DN_HAVE_FLOW_MASK = common dso_local global i32 0, align 4
@searches = common dso_local global i32 0, align 4
@search_steps = common dso_local global i32 0, align 4
@pipe_expire = common dso_local global i64 0, align 8
@M_DUMMYNET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dn_flow_queue* (%struct.dn_flow_set*, %struct.ip_flow_id*)* @find_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dn_flow_queue* @find_queue(%struct.dn_flow_set* %0, %struct.ip_flow_id* %1) #0 {
  %3 = alloca %struct.dn_flow_set*, align 8
  %4 = alloca %struct.ip_flow_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dn_flow_queue*, align 8
  %7 = alloca %struct.dn_flow_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dn_flow_queue*, align 8
  store %struct.dn_flow_set* %0, %struct.dn_flow_set** %3, align 8
  store %struct.ip_flow_id* %1, %struct.ip_flow_id** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %11 = call i32 @IS_IP6_FLOW_ID(%struct.ip_flow_id* %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %13 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @DN_HAVE_FLOW_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %20 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %19, i32 0, i32 2
  %21 = load %struct.dn_flow_queue**, %struct.dn_flow_queue*** %20, align 8
  %22 = getelementptr inbounds %struct.dn_flow_queue*, %struct.dn_flow_queue** %21, i64 0
  %23 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %22, align 8
  store %struct.dn_flow_queue* %23, %struct.dn_flow_queue** %6, align 8
  br label %520

24:                                               ; preds = %2
  %25 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %26 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %30 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %34 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %38 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %42 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %46 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %50 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %246

53:                                               ; preds = %24
  %54 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %55 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %54, i32 0, i32 8
  %56 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %57 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 7
  %59 = call i32 @APPLY_MASK(%struct.TYPE_8__* %55, i32* %58)
  %60 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %61 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %60, i32 0, i32 7
  %62 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %63 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 6
  %65 = call i32 @APPLY_MASK(%struct.TYPE_8__* %61, i32* %64)
  %66 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %67 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %71 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %75 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %74, i32 0, i32 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 65535
  %82 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %83 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %82, i32 0, i32 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 65535
  %90 = xor i32 %81, %89
  %91 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %92 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %91, i32 0, i32 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 65535
  %99 = xor i32 %90, %98
  %100 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %101 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %100, i32 0, i32 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 65535
  %108 = xor i32 %99, %107
  %109 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %110 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %109, i32 0, i32 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = ashr i32 %115, 15
  %117 = and i32 %116, 65535
  %118 = xor i32 %108, %117
  %119 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %120 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %119, i32 0, i32 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = ashr i32 %125, 15
  %127 = and i32 %126, 65535
  %128 = xor i32 %118, %127
  %129 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %130 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %129, i32 0, i32 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 2
  %135 = load i32, i32* %134, align 4
  %136 = ashr i32 %135, 15
  %137 = and i32 %136, 65535
  %138 = xor i32 %128, %137
  %139 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %140 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %139, i32 0, i32 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 3
  %145 = load i32, i32* %144, align 4
  %146 = ashr i32 %145, 15
  %147 = and i32 %146, 65535
  %148 = xor i32 %138, %147
  %149 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %150 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %149, i32 0, i32 7
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = shl i32 %155, 1
  %157 = and i32 %156, 1048575
  %158 = xor i32 %148, %157
  %159 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %160 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %159, i32 0, i32 7
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = shl i32 %165, 1
  %167 = and i32 %166, 1048575
  %168 = xor i32 %158, %167
  %169 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %170 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %169, i32 0, i32 7
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 2
  %175 = load i32, i32* %174, align 4
  %176 = shl i32 %175, 1
  %177 = and i32 %176, 1048575
  %178 = xor i32 %168, %177
  %179 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %180 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %179, i32 0, i32 7
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 3
  %185 = load i32, i32* %184, align 4
  %186 = shl i32 %185, 1
  %187 = and i32 %186, 1048575
  %188 = xor i32 %178, %187
  %189 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %190 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %189, i32 0, i32 7
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  %195 = load i32, i32* %194, align 4
  %196 = ashr i32 %195, 16
  %197 = and i32 %196, 65535
  %198 = xor i32 %188, %197
  %199 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %200 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %199, i32 0, i32 7
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  %205 = load i32, i32* %204, align 4
  %206 = ashr i32 %205, 16
  %207 = and i32 %206, 65535
  %208 = xor i32 %198, %207
  %209 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %210 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %209, i32 0, i32 7
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 2
  %215 = load i32, i32* %214, align 4
  %216 = ashr i32 %215, 16
  %217 = and i32 %216, 65535
  %218 = xor i32 %208, %217
  %219 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %220 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %219, i32 0, i32 7
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 3
  %225 = load i32, i32* %224, align 4
  %226 = ashr i32 %225, 16
  %227 = and i32 %226, 65535
  %228 = xor i32 %218, %227
  %229 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %230 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = shl i32 %231, 1
  %233 = xor i32 %228, %232
  %234 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %235 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = xor i32 %233, %236
  %238 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %239 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = xor i32 %237, %240
  %242 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %243 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = xor i32 %241, %244
  store i32 %245, i32* %5, align 4
  br label %298

246:                                              ; preds = %24
  %247 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %248 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %247, i32 0, i32 4
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %252 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %251, i32 0, i32 5
  %253 = load i32, i32* %252, align 4
  %254 = and i32 %253, %250
  store i32 %254, i32* %252, align 4
  %255 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %256 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %255, i32 0, i32 4
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %260 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 8
  %262 = and i32 %261, %258
  store i32 %262, i32* %260, align 8
  %263 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %264 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 4
  %266 = and i32 %265, 65535
  %267 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %268 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 4
  %270 = ashr i32 %269, 15
  %271 = and i32 %270, 65535
  %272 = xor i32 %266, %271
  %273 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %274 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %273, i32 0, i32 6
  %275 = load i32, i32* %274, align 8
  %276 = shl i32 %275, 1
  %277 = and i32 %276, 65535
  %278 = xor i32 %272, %277
  %279 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %280 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %279, i32 0, i32 6
  %281 = load i32, i32* %280, align 8
  %282 = ashr i32 %281, 16
  %283 = and i32 %282, 65535
  %284 = xor i32 %278, %283
  %285 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %286 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = shl i32 %287, 1
  %289 = xor i32 %284, %288
  %290 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %291 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = xor i32 %289, %292
  %294 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %295 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = xor i32 %293, %296
  store i32 %297, i32* %5, align 4
  br label %298

298:                                              ; preds = %246, %53
  %299 = load i32, i32* %5, align 4
  %300 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %301 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = srem i32 %299, %302
  store i32 %303, i32* %5, align 4
  %304 = load i32, i32* @searches, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* @searches, align 4
  store %struct.dn_flow_queue* null, %struct.dn_flow_queue** %7, align 8
  %306 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %307 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %306, i32 0, i32 2
  %308 = load %struct.dn_flow_queue**, %struct.dn_flow_queue*** %307, align 8
  %309 = load i32, i32* %5, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.dn_flow_queue*, %struct.dn_flow_queue** %308, i64 %310
  %312 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %311, align 8
  store %struct.dn_flow_queue* %312, %struct.dn_flow_queue** %6, align 8
  br label %313

313:                                              ; preds = %486, %478, %298
  %314 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %315 = icmp ne %struct.dn_flow_queue* %314, null
  br i1 %315, label %316, label %491

316:                                              ; preds = %313
  %317 = load i32, i32* @search_steps, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* @search_steps, align 4
  %319 = load i32, i32* %8, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %383

321:                                              ; preds = %316
  %322 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %323 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %322, i32 0, i32 8
  %324 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %325 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %324, i32 0, i32 2
  %326 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %325, i32 0, i32 8
  %327 = call i64 @IN6_ARE_ADDR_EQUAL(%struct.TYPE_8__* %323, %struct.TYPE_8__* %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %383

329:                                              ; preds = %321
  %330 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %331 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %330, i32 0, i32 7
  %332 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %333 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %332, i32 0, i32 2
  %334 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %333, i32 0, i32 7
  %335 = call i64 @IN6_ARE_ADDR_EQUAL(%struct.TYPE_8__* %331, %struct.TYPE_8__* %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %383

337:                                              ; preds = %329
  %338 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %339 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %342 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = icmp eq i32 %340, %344
  br i1 %345, label %346, label %383

346:                                              ; preds = %337
  %347 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %348 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %351 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %350, i32 0, i32 2
  %352 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = icmp eq i32 %349, %353
  br i1 %354, label %355, label %383

355:                                              ; preds = %346
  %356 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %357 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 8
  %359 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %360 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %359, i32 0, i32 2
  %361 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 8
  %363 = icmp eq i32 %358, %362
  br i1 %363, label %364, label %383

364:                                              ; preds = %355
  %365 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %366 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %365, i32 0, i32 3
  %367 = load i64, i64* %366, align 8
  %368 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %369 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %368, i32 0, i32 2
  %370 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %369, i32 0, i32 3
  %371 = load i64, i64* %370, align 8
  %372 = icmp eq i64 %367, %371
  br i1 %372, label %373, label %383

373:                                              ; preds = %364
  %374 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %375 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %374, i32 0, i32 4
  %376 = load i32, i32* %375, align 8
  %377 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %378 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %377, i32 0, i32 2
  %379 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %378, i32 0, i32 4
  %380 = load i32, i32* %379, align 8
  %381 = icmp eq i32 %376, %380
  br i1 %381, label %382, label %383

382:                                              ; preds = %373
  br label %491

383:                                              ; preds = %373, %364, %355, %346, %337, %329, %321, %316
  %384 = load i32, i32* %8, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %441, label %386

386:                                              ; preds = %383
  %387 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %388 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %387, i32 0, i32 5
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %391 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %390, i32 0, i32 2
  %392 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %391, i32 0, i32 5
  %393 = load i32, i32* %392, align 4
  %394 = icmp eq i32 %389, %393
  br i1 %394, label %395, label %441

395:                                              ; preds = %386
  %396 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %397 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %396, i32 0, i32 6
  %398 = load i32, i32* %397, align 8
  %399 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %400 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %399, i32 0, i32 2
  %401 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %400, i32 0, i32 6
  %402 = load i32, i32* %401, align 8
  %403 = icmp eq i32 %398, %402
  br i1 %403, label %404, label %441

404:                                              ; preds = %395
  %405 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %406 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %409 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %408, i32 0, i32 2
  %410 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = icmp eq i32 %407, %411
  br i1 %412, label %413, label %441

413:                                              ; preds = %404
  %414 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %415 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %418 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %417, i32 0, i32 2
  %419 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = icmp eq i32 %416, %420
  br i1 %421, label %422, label %441

422:                                              ; preds = %413
  %423 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %424 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 8
  %426 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %427 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %426, i32 0, i32 2
  %428 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 8
  %430 = icmp eq i32 %425, %429
  br i1 %430, label %431, label %441

431:                                              ; preds = %422
  %432 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %433 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %432, i32 0, i32 3
  %434 = load i64, i64* %433, align 8
  %435 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %436 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %435, i32 0, i32 2
  %437 = getelementptr inbounds %struct.ip_flow_id, %struct.ip_flow_id* %436, i32 0, i32 3
  %438 = load i64, i64* %437, align 8
  %439 = icmp eq i64 %434, %438
  br i1 %439, label %440, label %441

440:                                              ; preds = %431
  br label %491

441:                                              ; preds = %431, %422, %413, %404, %395, %386, %383
  %442 = load i64, i64* @pipe_expire, align 8
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %444, label %486

444:                                              ; preds = %441
  %445 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %446 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %445, i32 0, i32 4
  %447 = load i32*, i32** %446, align 8
  %448 = icmp eq i32* %447, null
  br i1 %448, label %449, label %486

449:                                              ; preds = %444
  %450 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %451 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %450, i32 0, i32 0
  %452 = load i64, i64* %451, align 8
  %453 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %454 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %453, i32 0, i32 1
  %455 = load i64, i64* %454, align 8
  %456 = add nsw i64 %455, 1
  %457 = icmp eq i64 %452, %456
  br i1 %457, label %458, label %486

458:                                              ; preds = %449
  %459 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  store %struct.dn_flow_queue* %459, %struct.dn_flow_queue** %9, align 8
  %460 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %7, align 8
  %461 = icmp ne %struct.dn_flow_queue* %460, null
  br i1 %461, label %462, label %468

462:                                              ; preds = %458
  %463 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %464 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %463, i32 0, i32 3
  %465 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %464, align 8
  store %struct.dn_flow_queue* %465, %struct.dn_flow_queue** %6, align 8
  %466 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %7, align 8
  %467 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %466, i32 0, i32 3
  store %struct.dn_flow_queue* %465, %struct.dn_flow_queue** %467, align 8
  br label %478

468:                                              ; preds = %458
  %469 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %470 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %469, i32 0, i32 3
  %471 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %470, align 8
  store %struct.dn_flow_queue* %471, %struct.dn_flow_queue** %6, align 8
  %472 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %473 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %472, i32 0, i32 2
  %474 = load %struct.dn_flow_queue**, %struct.dn_flow_queue*** %473, align 8
  %475 = load i32, i32* %5, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.dn_flow_queue*, %struct.dn_flow_queue** %474, i64 %476
  store %struct.dn_flow_queue* %471, %struct.dn_flow_queue** %477, align 8
  br label %478

478:                                              ; preds = %468, %462
  %479 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %480 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %479, i32 0, i32 3
  %481 = load i32, i32* %480, align 8
  %482 = add nsw i32 %481, -1
  store i32 %482, i32* %480, align 8
  %483 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %9, align 8
  %484 = load i32, i32* @M_DUMMYNET, align 4
  %485 = call i32 @FREE(%struct.dn_flow_queue* %483, i32 %484)
  br label %313

486:                                              ; preds = %449, %444, %441
  %487 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  store %struct.dn_flow_queue* %487, %struct.dn_flow_queue** %7, align 8
  %488 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %489 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %488, i32 0, i32 3
  %490 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %489, align 8
  store %struct.dn_flow_queue* %490, %struct.dn_flow_queue** %6, align 8
  br label %313

491:                                              ; preds = %440, %382, %313
  %492 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %493 = icmp ne %struct.dn_flow_queue* %492, null
  br i1 %493, label %494, label %519

494:                                              ; preds = %491
  %495 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %7, align 8
  %496 = icmp ne %struct.dn_flow_queue* %495, null
  br i1 %496, label %497, label %519

497:                                              ; preds = %494
  %498 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %499 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %498, i32 0, i32 3
  %500 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %499, align 8
  %501 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %7, align 8
  %502 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %501, i32 0, i32 3
  store %struct.dn_flow_queue* %500, %struct.dn_flow_queue** %502, align 8
  %503 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %504 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %503, i32 0, i32 2
  %505 = load %struct.dn_flow_queue**, %struct.dn_flow_queue*** %504, align 8
  %506 = load i32, i32* %5, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds %struct.dn_flow_queue*, %struct.dn_flow_queue** %505, i64 %507
  %509 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %508, align 8
  %510 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %511 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %510, i32 0, i32 3
  store %struct.dn_flow_queue* %509, %struct.dn_flow_queue** %511, align 8
  %512 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %513 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %514 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %513, i32 0, i32 2
  %515 = load %struct.dn_flow_queue**, %struct.dn_flow_queue*** %514, align 8
  %516 = load i32, i32* %5, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds %struct.dn_flow_queue*, %struct.dn_flow_queue** %515, i64 %517
  store %struct.dn_flow_queue* %512, %struct.dn_flow_queue** %518, align 8
  br label %519

519:                                              ; preds = %497, %494, %491
  br label %520

520:                                              ; preds = %519, %18
  %521 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %522 = icmp eq %struct.dn_flow_queue* %521, null
  br i1 %522, label %523, label %536

523:                                              ; preds = %520
  %524 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %525 = load i32, i32* %5, align 4
  %526 = call %struct.dn_flow_queue* @create_queue(%struct.dn_flow_set* %524, i32 %525)
  store %struct.dn_flow_queue* %526, %struct.dn_flow_queue** %6, align 8
  %527 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %528 = icmp ne %struct.dn_flow_queue* %527, null
  br i1 %528, label %529, label %535

529:                                              ; preds = %523
  %530 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %531 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %530, i32 0, i32 2
  %532 = load %struct.ip_flow_id*, %struct.ip_flow_id** %4, align 8
  %533 = bitcast %struct.ip_flow_id* %531 to i8*
  %534 = bitcast %struct.ip_flow_id* %532 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %533, i8* align 8 %534, i64 56, i1 false)
  br label %535

535:                                              ; preds = %529, %523
  br label %536

536:                                              ; preds = %535, %520
  %537 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  ret %struct.dn_flow_queue* %537
}

declare dso_local i32 @IS_IP6_FLOW_ID(%struct.ip_flow_id*) #1

declare dso_local i32 @APPLY_MASK(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @IN6_ARE_ADDR_EQUAL(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @FREE(%struct.dn_flow_queue*, i32) #1

declare dso_local %struct.dn_flow_queue* @create_queue(%struct.dn_flow_set*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
