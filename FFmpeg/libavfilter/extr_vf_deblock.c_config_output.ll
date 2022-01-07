; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deblock.c_config_output.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deblock.c_config_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i8*, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__**, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8**, %struct.TYPE_11__*, i8**, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@AVERROR_BUG = common dso_local global i32 0, align 4
@WEAK = common dso_local global i64 0, align 8
@deblockh8_weak = common dso_local global i32 0, align 4
@deblockv8_weak = common dso_local global i32 0, align 4
@deblockh16_weak = common dso_local global i32 0, align 4
@deblockv16_weak = common dso_local global i32 0, align 4
@STRONG = common dso_local global i64 0, align 8
@deblockh8_strong = common dso_local global i32 0, align 4
@deblockv8_strong = common dso_local global i32 0, align 4
@deblockh16_strong = common dso_local global i32 0, align 4
@deblockv16_strong = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @config_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_output(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %4, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %5, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %15, i64 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %6, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_11__* @av_pix_fmt_desc_get(i32 %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 13
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %23, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 13
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = icmp ne %struct.TYPE_11__* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %29, i32* %2, align 4
  br label %227

30:                                               ; preds = %1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @av_pix_fmt_count_planes(i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 17
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 13
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 7
  %51 = sdiv i32 %50, 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = shl i32 1, %56
  %58 = sub nsw i32 %57, 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %63, %66
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %72, %75
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 %81, %84
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = mul nsw i32 %90, %93
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 9
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp sle i32 %99, 8
  br i1 %100, label %101, label %114

101:                                              ; preds = %30
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 11
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @WEAK, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %101
  %108 = load i32, i32* @deblockh8_weak, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 16
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @deblockv8_weak, align 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 15
  store i32 %111, i32* %113, align 8
  br label %133

114:                                              ; preds = %101, %30
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp sge i32 %117, 8
  br i1 %118, label %119, label %132

119:                                              ; preds = %114
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 11
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @WEAK, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %119
  %126 = load i32, i32* @deblockh16_weak, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 16
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @deblockv16_weak, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 15
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %125, %119, %114
  br label %133

133:                                              ; preds = %132, %107
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp sle i32 %136, 8
  br i1 %137, label %138, label %151

138:                                              ; preds = %133
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 11
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @STRONG, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %138
  %145 = load i32, i32* @deblockh8_strong, align 4
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 16
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* @deblockv8_strong, align 4
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 15
  store i32 %148, i32* %150, align 8
  br label %170

151:                                              ; preds = %138, %133
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp sge i32 %154, 8
  br i1 %155, label %156, label %169

156:                                              ; preds = %151
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 11
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @STRONG, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %156
  %163 = load i32, i32* @deblockh16_strong, align 4
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 16
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* @deblockv16_strong, align 4
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 15
  store i32 %166, i32* %168, align 8
  br label %169

169:                                              ; preds = %162, %156, %151
  br label %170

170:                                              ; preds = %169, %144
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = load i8*, i8** %172, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 13
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i8* @AV_CEIL_RSHIFT(i8* %173, i32 %178)
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 14
  %182 = load i8**, i8*** %181, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 2
  store i8* %179, i8** %183, align 8
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 14
  %186 = load i8**, i8*** %185, align 8
  %187 = getelementptr inbounds i8*, i8** %186, i64 1
  store i8* %179, i8** %187, align 8
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 14
  %193 = load i8**, i8*** %192, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i64 3
  store i8* %190, i8** %194, align 8
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 14
  %197 = load i8**, i8*** %196, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 0
  store i8* %190, i8** %198, align 8
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 13
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i8* @AV_CEIL_RSHIFT(i8* %201, i32 %206)
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 12
  %210 = load i8**, i8*** %209, align 8
  %211 = getelementptr inbounds i8*, i8** %210, i64 2
  store i8* %207, i8** %211, align 8
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 12
  %214 = load i8**, i8*** %213, align 8
  %215 = getelementptr inbounds i8*, i8** %214, i64 1
  store i8* %207, i8** %215, align 8
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 12
  %221 = load i8**, i8*** %220, align 8
  %222 = getelementptr inbounds i8*, i8** %221, i64 3
  store i8* %218, i8** %222, align 8
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 12
  %225 = load i8**, i8*** %224, align 8
  %226 = getelementptr inbounds i8*, i8** %225, i64 0
  store i8* %218, i8** %226, align 8
  store i32 0, i32* %2, align 4
  br label %227

227:                                              ; preds = %170, %28
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

declare dso_local %struct.TYPE_11__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @av_pix_fmt_count_planes(i32) #1

declare dso_local i8* @AV_CEIL_RSHIFT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
