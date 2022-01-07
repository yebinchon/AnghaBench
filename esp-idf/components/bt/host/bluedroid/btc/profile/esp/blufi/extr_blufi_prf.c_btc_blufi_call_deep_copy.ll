; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/esp/blufi/extr_blufi_prf.c_btc_blufi_call_deep_copy.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/esp/blufi/extr_blufi_prf.c_btc_blufi_call_deep_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32* }

@.str = private unnamed_addr constant [21 x i8] c"custom data is NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"custom data malloc error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btc_blufi_call_deep_copy(%struct.TYPE_13__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %8, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %477 [
    i32 130, label %19
    i32 128, label %387
    i32 129, label %437
  ]

19:                                               ; preds = %3
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %9, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %29, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %31 = icmp eq %struct.TYPE_12__* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %478

33:                                               ; preds = %19
  %34 = call %struct.TYPE_12__* @osi_calloc(i32 88)
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %37, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = icmp eq %struct.TYPE_12__* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %478

44:                                               ; preds = %33
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 14
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %44
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 15
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 15
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @memcpy(i32* %55, i32* %58, i32 6)
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 14
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 14
  store i32 %62, i32* %67, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 8
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %49, %44
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 13
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %131

78:                                               ; preds = %73
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i8* @osi_malloc(i32 %81)
  %83 = bitcast i8* %82 to i32*
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 13
  store i32* %83, i32** %88, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 13
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %130

96:                                               ; preds = %78
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 13
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 13
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @memcpy(i32* %102, i32* %105, i32 %108)
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  store i32 %112, i32* %117, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 2
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, %124
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %96, %78
  br label %131

131:                                              ; preds = %130, %73
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 12
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %189

136:                                              ; preds = %131
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i8* @osi_malloc(i32 %139)
  %141 = bitcast i8* %140 to i32*
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 12
  store i32* %141, i32** %146, align 8
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 12
  %152 = load i32*, i32** %151, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %188

154:                                              ; preds = %136
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 12
  %160 = load i32*, i32** %159, align 8
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 12
  %163 = load i32*, i32** %162, align 8
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @memcpy(i32* %160, i32* %163, i32 %166)
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  store i32 %170, i32* %175, align 4
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 2
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = add nsw i32 %186, %182
  store i32 %187, i32* %185, align 8
  br label %188

188:                                              ; preds = %154, %136
  br label %189

189:                                              ; preds = %188, %131
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 11
  %192 = load i32*, i32** %191, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %247

194:                                              ; preds = %189
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i8* @osi_malloc(i32 %197)
  %199 = bitcast i8* %198 to i32*
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 11
  store i32* %199, i32** %204, align 8
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 11
  %210 = load i32*, i32** %209, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %212, label %246

212:                                              ; preds = %194
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 11
  %218 = load i32*, i32** %217, align 8
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 11
  %221 = load i32*, i32** %220, align 8
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @memcpy(i32* %218, i32* %221, i32 %224)
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 2
  store i32 %228, i32* %233, align 8
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = add nsw i32 %239, 2
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = add nsw i32 %244, %240
  store i32 %245, i32* %243, align 8
  br label %246

246:                                              ; preds = %212, %194
  br label %247

247:                                              ; preds = %246, %189
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 10
  %250 = load i32*, i32** %249, align 8
  %251 = icmp ne i32* %250, null
  br i1 %251, label %252, label %305

252:                                              ; preds = %247
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = call i8* @osi_malloc(i32 %255)
  %257 = bitcast i8* %256 to i32*
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 10
  store i32* %257, i32** %262, align 8
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 10
  %268 = load i32*, i32** %267, align 8
  %269 = icmp ne i32* %268, null
  br i1 %269, label %270, label %304

270:                                              ; preds = %252
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 10
  %276 = load i32*, i32** %275, align 8
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 10
  %279 = load i32*, i32** %278, align 8
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @memcpy(i32* %276, i32* %279, i32 %282)
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 1
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 3
  store i32 %286, i32* %291, align 4
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 2
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 1
  %295 = load %struct.TYPE_12__*, %struct.TYPE_12__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = add nsw i32 %297, 2
  %299 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 2
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = add nsw i32 %302, %298
  store i32 %303, i32* %301, align 8
  br label %304

304:                                              ; preds = %270, %252
  br label %305

305:                                              ; preds = %304, %247
  %306 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 9
  %308 = load i32, i32* %307, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %332

310:                                              ; preds = %305
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 9
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_12__*, %struct.TYPE_12__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 9
  store i32 %313, i32* %318, align 4
  %319 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i32 0, i32 8
  %321 = load i32, i32* %320, align 8
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 2
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 1
  %325 = load %struct.TYPE_12__*, %struct.TYPE_12__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 8
  store i32 %321, i32* %326, align 8
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i32 0, i32 2
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = add nsw i32 %330, 3
  store i32 %331, i32* %329, align 8
  br label %332

332:                                              ; preds = %310, %305
  %333 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 7
  %335 = load i32, i32* %334, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %359

337:                                              ; preds = %332
  %338 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %338, i32 0, i32 7
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %342 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 1
  %344 = load %struct.TYPE_12__*, %struct.TYPE_12__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i32 0, i32 7
  store i32 %340, i32* %345, align 4
  %346 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 6
  %348 = load i32, i32* %347, align 8
  %349 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 2
  %351 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %350, i32 0, i32 1
  %352 = load %struct.TYPE_12__*, %struct.TYPE_12__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %352, i32 0, i32 6
  store i32 %348, i32* %353, align 8
  %354 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %355 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %354, i32 0, i32 2
  %356 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = add nsw i32 %357, 3
  store i32 %358, i32* %356, align 8
  br label %359

359:                                              ; preds = %337, %332
  %360 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %361 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %360, i32 0, i32 5
  %362 = load i32, i32* %361, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %386

364:                                              ; preds = %359
  %365 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %366 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %365, i32 0, i32 5
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %369 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %368, i32 0, i32 2
  %370 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %369, i32 0, i32 1
  %371 = load %struct.TYPE_12__*, %struct.TYPE_12__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %371, i32 0, i32 5
  store i32 %367, i32* %372, align 4
  %373 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %374 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %373, i32 0, i32 4
  %375 = load i32, i32* %374, align 8
  %376 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %377 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %376, i32 0, i32 2
  %378 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %377, i32 0, i32 1
  %379 = load %struct.TYPE_12__*, %struct.TYPE_12__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %379, i32 0, i32 4
  store i32 %375, i32* %380, align 8
  %381 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %382 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %381, i32 0, i32 2
  %383 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = add nsw i32 %384, 3
  store i32 %385, i32* %383, align 8
  br label %386

386:                                              ; preds = %364, %359
  br label %478

387:                                              ; preds = %3
  %388 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %389 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %388, i32 0, i32 1
  %390 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %389, i32 0, i32 1
  %391 = load i32*, i32** %390, align 8
  store i32* %391, i32** %10, align 8
  %392 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %393 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %393, i32 0, i32 1
  store i32* null, i32** %394, align 8
  %395 = load i32*, i32** %10, align 8
  %396 = icmp eq i32* %395, null
  br i1 %396, label %403, label %397

397:                                              ; preds = %387
  %398 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %399 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = icmp sle i32 %401, 0
  br i1 %402, label %403, label %404

403:                                              ; preds = %397, %387
  br label %478

404:                                              ; preds = %397
  %405 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %406 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = sext i32 %408 to i64
  %410 = mul i64 4, %409
  %411 = trunc i64 %410 to i32
  %412 = call i8* @osi_malloc(i32 %411)
  %413 = bitcast i8* %412 to i32*
  %414 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %415 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %415, i32 0, i32 1
  store i32* %413, i32** %416, align 8
  %417 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %418 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %417, i32 0, i32 1
  %419 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %418, i32 0, i32 1
  %420 = load i32*, i32** %419, align 8
  %421 = icmp eq i32* %420, null
  br i1 %421, label %422, label %423

422:                                              ; preds = %404
  br label %478

423:                                              ; preds = %404
  %424 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %425 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %424, i32 0, i32 1
  %426 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %425, i32 0, i32 1
  %427 = load i32*, i32** %426, align 8
  %428 = load i32*, i32** %10, align 8
  %429 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %430 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %429, i32 0, i32 1
  %431 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = sext i32 %432 to i64
  %434 = mul i64 4, %433
  %435 = trunc i64 %434 to i32
  %436 = call i32 @memcpy(i32* %427, i32* %428, i32 %435)
  br label %478

437:                                              ; preds = %3
  %438 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %439 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %439, i32 0, i32 1
  %441 = load i32*, i32** %440, align 8
  store i32* %441, i32** %11, align 8
  %442 = load i32*, i32** %11, align 8
  %443 = icmp eq i32* %442, null
  br i1 %443, label %444, label %446

444:                                              ; preds = %437
  %445 = call i32 @BTC_TRACE_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %478

446:                                              ; preds = %437
  %447 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %448 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %447, i32 0, i32 0
  %449 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = call i8* @osi_malloc(i32 %450)
  %452 = bitcast i8* %451 to i32*
  %453 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %454 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %454, i32 0, i32 1
  store i32* %452, i32** %455, align 8
  %456 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %457 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %457, i32 0, i32 1
  %459 = load i32*, i32** %458, align 8
  %460 = icmp eq i32* %459, null
  br i1 %460, label %461, label %463

461:                                              ; preds = %446
  %462 = call i32 @BTC_TRACE_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %478

463:                                              ; preds = %446
  %464 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %465 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %464, i32 0, i32 0
  %466 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %465, i32 0, i32 1
  %467 = load i32*, i32** %466, align 8
  %468 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %469 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %468, i32 0, i32 0
  %470 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %469, i32 0, i32 1
  %471 = load i32*, i32** %470, align 8
  %472 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %473 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %472, i32 0, i32 0
  %474 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = call i32 @memcpy(i32* %467, i32* %471, i32 %475)
  br label %478

477:                                              ; preds = %3
  br label %478

478:                                              ; preds = %32, %43, %477, %463, %461, %444, %423, %422, %403, %386
  ret void
}

declare dso_local %struct.TYPE_12__* @osi_calloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i8* @osi_malloc(i32) #1

declare dso_local i32 @BTC_TRACE_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
