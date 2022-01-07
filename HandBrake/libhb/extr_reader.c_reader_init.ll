; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_reader.c_reader_init.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_reader.c_reader_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i64, i32, i8*, %struct.TYPE_16__*, %struct.TYPE_13__*, i32, i8*, %struct.TYPE_14__, i32, %struct.TYPE_20__*, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_20__ = type { i32, i64, i64, i32, i32, i32, i32, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32 }

@AV_NOPTS_VALUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_20__*)* @reader_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_init(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %14 = call i8* @calloc(i32 96, i32 1)
  %15 = bitcast i8* %14 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %6, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %18, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 12
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 11
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %26, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 7
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 6
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %31, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 10
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 9
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 8
  %41 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 8
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %2
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  br label %64

56:                                               ; preds = %2
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %59, 1000000
  %61 = call i32 @MAX(i32 0, i64 %60)
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %56, %53
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  br label %148

79:                                               ; preds = %64
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %111

84:                                               ; preds = %79
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %87, %90
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 7
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %92, %98
  %100 = mul nsw i32 %99, 90000
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 7
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sdiv i32 %100, %106
  %108 = sext i32 %107 to i64
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 2
  store i64 %108, i64* %110, align 8
  br label %147

111:                                              ; preds = %79
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 7
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @hb_list_count(i32 %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %111
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp sle i32 %121, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %120, %111
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 7
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 2
  store i64 %132, i64* %134, align 8
  br label %146

135:                                              ; preds = %120
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 7
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %137, align 8
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @chapter_end_pts(%struct.TYPE_13__* %138, i32 %141)
  %143 = sext i32 %142 to i64
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 2
  store i64 %143, i64* %145, align 8
  br label %146

146:                                              ; preds = %135, %126
  br label %147

147:                                              ; preds = %146, %84
  br label %148

148:                                              ; preds = %147, %69
  store i32 1, i32* %9, align 4
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @hb_list_count(i32 %151)
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %9, align 4
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @hb_list_count(i32 %157)
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* %9, align 4
  %165 = call i8* @calloc(i32 %164, i32 4)
  %166 = bitcast i8* %165 to %struct.TYPE_16__*
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 5
  store %struct.TYPE_16__* %166, %struct.TYPE_16__** %168, align 8
  store i32 0, i32* %11, align 4
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 6
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 5
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %175, align 8
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %11, align 4
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  store i32 %173, i32* %181, align 4
  store i32 0, i32* %10, align 4
  br label %182

182:                                              ; preds = %207, %148
  %183 = load i32, i32* %10, align 4
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @hb_list_count(i32 %186)
  %188 = icmp slt i32 %183, %187
  br i1 %188, label %189, label %210

189:                                              ; preds = %182
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %10, align 4
  %194 = call i8* @hb_list_item(i32 %192, i32 %193)
  %195 = bitcast i8* %194 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %195, %struct.TYPE_19__** %12, align 8
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 5
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %200, align 8
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %11, align 4
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 0
  store i32 %198, i32* %206, align 4
  br label %207

207:                                              ; preds = %189
  %208 = load i32, i32* %10, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %10, align 4
  br label %182

210:                                              ; preds = %182
  store i32 0, i32* %10, align 4
  br label %211

211:                                              ; preds = %236, %210
  %212 = load i32, i32* %10, align 4
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @hb_list_count(i32 %215)
  %217 = icmp slt i32 %212, %216
  br i1 %217, label %218, label %239

218:                                              ; preds = %211
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %10, align 4
  %223 = call i8* @hb_list_item(i32 %221, i32 %222)
  %224 = bitcast i8* %223 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %224, %struct.TYPE_21__** %13, align 8
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 5
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %229, align 8
  %231 = load i32, i32* %11, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %11, align 4
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 0
  store i32 %227, i32* %235, align 4
  br label %236

236:                                              ; preds = %218
  %237 = load i32, i32* %10, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %10, align 4
  br label %211

239:                                              ; preds = %211
  %240 = load i32, i32* %9, align 4
  %241 = add nsw i32 %240, 1
  %242 = call i8* @calloc(i32 %241, i32 8)
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 4
  store i8* %242, i8** %244, align 8
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %246 = call i64 @hb_reader_open(%struct.TYPE_17__* %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %239
  store i32 1, i32* %3, align 4
  br label %250

249:                                              ; preds = %239
  store i32 0, i32* %3, align 4
  br label %250

250:                                              ; preds = %249, %248
  %251 = load i32, i32* %3, align 4
  ret i32 %251
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @MAX(i32, i64) #1

declare dso_local i32 @hb_list_count(i32) #1

declare dso_local i32 @chapter_end_pts(%struct.TYPE_13__*, i32) #1

declare dso_local i8* @hb_list_item(i32, i32) #1

declare dso_local i64 @hb_reader_open(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
