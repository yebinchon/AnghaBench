; ModuleID = '/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_wiiupro.c_hidpad_wiiupro_packet_handler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_wiiupro.c_hidpad_wiiupro_packet_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpad_wiiupro_data = type { i32, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32)* @hidpad_wiiupro_packet_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidpad_wiiupro_packet_handler(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hidpad_wiiupro_data*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.hidpad_wiiupro_data*
  store %struct.hidpad_wiiupro_data* %9, %struct.hidpad_wiiupro_data** %7, align 8
  %10 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %11 = icmp ne %struct.hidpad_wiiupro_data* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %360

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 12
  %16 = load i32, i32* %15, align 4
  %17 = xor i32 %16, 255
  store i32 %17, i32* %15, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 13
  %20 = load i32, i32* %19, align 4
  %21 = xor i32 %20, 255
  store i32 %21, i32* %19, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 14
  %24 = load i32, i32* %23, align 4
  %25 = xor i32 %24, 255
  store i32 %25, i32* %23, align 4
  %26 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %27 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %26, i32 0, i32 2
  %28 = call i32 @memset(%struct.TYPE_6__* %27, i32 0, i32 4)
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 13
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 64
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  %36 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %37 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 13
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 16
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  %47 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %48 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 13
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 32
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  %58 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %59 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  store i32 %57, i32* %61, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 13
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 8
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 0
  %69 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %70 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 3
  store i32 %68, i32* %72, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 12
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 32
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  %80 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %81 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 4
  store i32 %79, i32* %83, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 12
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 2
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 1, i32 0
  %91 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %92 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 5
  store i32 %90, i32* %94, align 4
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 13
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 128
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 1, i32 0
  %102 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %103 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 6
  store i32 %101, i32* %105, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 13
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 4
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 1, i32 0
  %113 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %114 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 7
  store i32 %112, i32* %116, align 4
  %117 = load i32*, i32** %5, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 12
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 16
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 1, i32 0
  %124 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %125 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 8
  store i32 %123, i32* %127, align 8
  %128 = load i32*, i32** %5, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 12
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 4
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 1, i32 0
  %135 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %136 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 9
  store i32 %134, i32* %138, align 4
  %139 = load i32*, i32** %5, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 14
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, 2
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i32 1, i32 0
  %146 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %147 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 10
  store i32 %145, i32* %149, align 8
  %150 = load i32*, i32** %5, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 14
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 1
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i32 1, i32 0
  %157 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %158 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 11
  store i32 %156, i32* %160, align 4
  %161 = load i32*, i32** %5, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 13
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, 2
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i32 1, i32 0
  %168 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %169 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 12
  store i32 %167, i32* %171, align 8
  %172 = load i32*, i32** %5, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 12
  %174 = load i32, i32* %173, align 4
  %175 = and i32 %174, 128
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i32 1, i32 0
  %179 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %180 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 13
  store i32 %178, i32* %182, align 4
  %183 = load i32*, i32** %5, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 13
  %185 = load i32, i32* %184, align 4
  %186 = and i32 %185, 1
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i32 1, i32 0
  %190 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %191 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 14
  store i32 %189, i32* %193, align 8
  %194 = load i32*, i32** %5, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 12
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, 64
  %198 = icmp ne i32 %197, 0
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i32 1, i32 0
  %201 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %202 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 15
  store i32 %200, i32* %204, align 4
  %205 = load i32*, i32** %5, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 12
  %207 = load i32, i32* %206, align 4
  %208 = and i32 %207, 8
  %209 = icmp ne i32 %208, 0
  %210 = zext i1 %209 to i64
  %211 = select i1 %209, i32 1, i32 0
  %212 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %213 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 16
  store i32 %211, i32* %215, align 8
  %216 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %217 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp slt i32 %219, 5
  br i1 %220, label %221, label %279

221:                                              ; preds = %13
  %222 = load i32*, i32** %5, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 4
  %224 = load i32, i32* %223, align 4
  %225 = load i32*, i32** %5, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 5
  %227 = load i32, i32* %226, align 4
  %228 = shl i32 %227, 8
  %229 = or i32 %224, %228
  %230 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %231 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 0
  store i32 %229, i32* %234, align 4
  %235 = load i32*, i32** %5, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 8
  %237 = load i32, i32* %236, align 4
  %238 = load i32*, i32** %5, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 9
  %240 = load i32, i32* %239, align 4
  %241 = shl i32 %240, 8
  %242 = or i32 %237, %241
  %243 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %244 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 1
  store i32 %242, i32* %247, align 4
  %248 = load i32*, i32** %5, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 6
  %250 = load i32, i32* %249, align 4
  %251 = load i32*, i32** %5, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 7
  %253 = load i32, i32* %252, align 4
  %254 = shl i32 %253, 8
  %255 = or i32 %250, %254
  %256 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %257 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 1
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 2
  store i32 %255, i32* %260, align 4
  %261 = load i32*, i32** %5, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 10
  %263 = load i32, i32* %262, align 4
  %264 = load i32*, i32** %5, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 11
  %266 = load i32, i32* %265, align 4
  %267 = shl i32 %266, 8
  %268 = or i32 %263, %267
  %269 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %270 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 1
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 3
  store i32 %268, i32* %273, align 4
  %274 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %275 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %276, align 8
  br label %360

279:                                              ; preds = %13
  %280 = load i32*, i32** %5, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 4
  %282 = load i32, i32* %281, align 4
  %283 = load i32*, i32** %5, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 5
  %285 = load i32, i32* %284, align 4
  %286 = shl i32 %285, 8
  %287 = or i32 %282, %286
  %288 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %289 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 1
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 0
  %293 = load i32, i32* %292, align 4
  %294 = sub nsw i32 %287, %293
  %295 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %296 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 0
  store i32 %294, i32* %299, align 4
  %300 = load i32*, i32** %5, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 8
  %302 = load i32, i32* %301, align 4
  %303 = load i32*, i32** %5, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 9
  %305 = load i32, i32* %304, align 4
  %306 = shl i32 %305, 8
  %307 = or i32 %302, %306
  %308 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %309 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i32 0, i32 1
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 1
  %313 = load i32, i32* %312, align 4
  %314 = sub nsw i32 %307, %313
  %315 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %316 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %315, i32 0, i32 2
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 1
  store i32 %314, i32* %319, align 4
  %320 = load i32*, i32** %5, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 6
  %322 = load i32, i32* %321, align 4
  %323 = load i32*, i32** %5, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 7
  %325 = load i32, i32* %324, align 4
  %326 = shl i32 %325, 8
  %327 = or i32 %322, %326
  %328 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %329 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i32 0, i32 1
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 2
  %333 = load i32, i32* %332, align 4
  %334 = sub nsw i32 %327, %333
  %335 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %336 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %335, i32 0, i32 2
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 0
  %338 = load i32*, i32** %337, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 2
  store i32 %334, i32* %339, align 4
  %340 = load i32*, i32** %5, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 10
  %342 = load i32, i32* %341, align 4
  %343 = load i32*, i32** %5, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 11
  %345 = load i32, i32* %344, align 4
  %346 = shl i32 %345, 8
  %347 = or i32 %342, %346
  %348 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %349 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %349, i32 0, i32 1
  %351 = load i32*, i32** %350, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 3
  %353 = load i32, i32* %352, align 4
  %354 = sub nsw i32 %347, %353
  %355 = load %struct.hidpad_wiiupro_data*, %struct.hidpad_wiiupro_data** %7, align 8
  %356 = getelementptr inbounds %struct.hidpad_wiiupro_data, %struct.hidpad_wiiupro_data* %355, i32 0, i32 2
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i32 0, i32 0
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 3
  store i32 %354, i32* %359, align 4
  br label %360

360:                                              ; preds = %12, %279, %221
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
