; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_dvd.c_hb_dvdread_start.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_dvd.c_hb_dvdread_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i64, i64, i64, i32, i64, i64, i64, i64, i64, %struct.TYPE_18__*, %struct.TYPE_22__*, i64, i64, i64, i32, i32, i32, %struct.TYPE_25__* }
%struct.TYPE_18__ = type { i64*, i64, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i64, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_30__*, %struct.TYPE_28__* }
%struct.TYPE_30__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_18__* }
%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"dvd: ifoOpen failed for VTS %d\00", align 1
@DVD_READ_TITLE_VOBS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"dvd: DVDOpenFile failed for VTS %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_19__*, i32)* @hb_dvdread_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hb_dvdread_start(%struct.TYPE_21__* %0, %struct.TYPE_19__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %8, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %12, align 4
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 18
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %25 = load i32, i32* %12, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 15
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 18
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 16
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 15
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.TYPE_22__* @ifoOpen(i32 %50, i32 %53)
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 11
  store %struct.TYPE_22__* %54, %struct.TYPE_22__** %56, align 8
  %57 = icmp ne %struct.TYPE_22__* %54, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %3
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 15
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @hb_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %61)
  store i32 0, i32* %4, align 4
  br label %321

63:                                               ; preds = %3
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 16
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 15
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @DVD_READ_TITLE_VOBS, align 4
  %71 = call i32 @DVDOpenFile(i32 %66, i32 %69, i32 %70)
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 17
  store i32 %71, i32* %73, align 8
  %74 = icmp ne i32 %71, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %63
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 15
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @hb_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  store i32 0, i32* %4, align 4
  br label %321

80:                                               ; preds = %63
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 11
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %86, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %9, align 4
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 11
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %104, align 8
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %10, align 4
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 11
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_30__*, %struct.TYPE_30__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_29__*, %struct.TYPE_29__** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %123, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %128, align 8
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 10
  store %struct.TYPE_18__* %129, %struct.TYPE_18__** %131, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 10
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = load i64*, i64** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %136, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = sub i64 %141, 1
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 10
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = sub i64 %149, 1
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 2
  store i64 %150, i64* %152, align 8
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 10
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_31__*, %struct.TYPE_31__** %156, align 8
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %157, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 14
  store i64 %163, i64* %165, align 8
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 10
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_31__*, %struct.TYPE_31__** %169, align 8
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %170, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 13
  store i64 %176, i64* %178, align 8
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 12
  store i64 0, i64* %180, align 8
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %11, align 4
  br label %185

185:                                              ; preds = %219, %80
  %186 = load i32, i32* %11, align 4
  %187 = sext i32 %186 to i64
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = icmp ule i64 %187, %190
  br i1 %191, label %192, label %222

192:                                              ; preds = %185
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 10
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_31__*, %struct.TYPE_31__** %196, align 8
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %202, 1
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 10
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_31__*, %struct.TYPE_31__** %207, align 8
  %209 = load i32, i32* %11, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = sub nsw i64 %203, %213
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 12
  %217 = load i64, i64* %216, align 8
  %218 = add nsw i64 %217, %214
  store i64 %218, i64* %216, align 8
  br label %219

219:                                              ; preds = %192
  %220 = load i32, i32* %11, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %11, align 4
  br label %185

222:                                              ; preds = %185
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 11
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_27__*, %struct.TYPE_27__** %228, align 8
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = sub nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %229, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %236, align 8
  %238 = load i32, i32* %7, align 4
  %239 = sub nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %237, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  store i32 %243, i32* %9, align 4
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 11
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_28__*, %struct.TYPE_28__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %249, align 8
  %251 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = sub nsw i32 %253, 1
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %250, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_26__*, %struct.TYPE_26__** %257, align 8
  %259 = load i32, i32* %7, align 4
  %260 = sub nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %258, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  store i32 %264, i32* %10, align 4
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 11
  %267 = load %struct.TYPE_22__*, %struct.TYPE_22__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_30__*, %struct.TYPE_30__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_29__*, %struct.TYPE_29__** %270, align 8
  %272 = load i32, i32* %9, align 4
  %273 = sub nsw i32 %272, 1
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %271, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %276, align 8
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i32 0, i32 10
  store %struct.TYPE_18__* %277, %struct.TYPE_18__** %279, align 8
  %280 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 10
  %282 = load %struct.TYPE_18__*, %struct.TYPE_18__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i32 0, i32 0
  %284 = load i64*, i64** %283, align 8
  %285 = load i32, i32* %10, align 4
  %286 = sub nsw i32 %285, 1
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i64, i64* %284, i64 %287
  %289 = load i64, i64* %288, align 8
  %290 = sub i64 %289, 1
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %291, i32 0, i32 3
  store i64 %290, i64* %292, align 8
  %293 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %294 = call i32 @FindNextCell(%struct.TYPE_20__* %293)
  %295 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %295, i32 0, i32 10
  %297 = load %struct.TYPE_18__*, %struct.TYPE_18__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i32 0, i32 2
  %299 = load %struct.TYPE_31__*, %struct.TYPE_31__** %298, align 8
  %300 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %300, i32 0, i32 3
  %302 = load i64, i64* %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %299, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %306, i32 0, i32 8
  store i64 %305, i64* %307, align 8
  %308 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %308, i32 0, i32 8
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %311, i32 0, i32 9
  store i64 %310, i64* %312, align 8
  %313 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %313, i32 0, i32 7
  store i64 0, i64* %314, align 8
  %315 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %316 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %315, i32 0, i32 6
  store i64 0, i64* %316, align 8
  %317 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %317, i32 0, i32 5
  store i64 0, i64* %318, align 8
  %319 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %320 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %319, i32 0, i32 4
  store i32 2, i32* %320, align 8
  store i32 1, i32* %4, align 4
  br label %321

321:                                              ; preds = %222, %75, %58
  %322 = load i32, i32* %4, align 4
  ret i32 %322
}

declare dso_local %struct.TYPE_22__* @ifoOpen(i32, i32) #1

declare dso_local i32 @hb_error(i8*, i32) #1

declare dso_local i32 @DVDOpenFile(i32, i32, i32) #1

declare dso_local i32 @FindNextCell(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
