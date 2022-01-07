; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevcdec.c_hevc_luma_mv_mvp_mode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevcdec.c_hevc_luma_mv_mvp_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_18__, %struct.TYPE_22__* }
%struct.TYPE_18__ = type { i64, i32, i64* }
%struct.TYPE_22__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_19__*, i64, i8** }
%struct.TYPE_19__ = type { i32, i32 }

@PRED_L0 = common dso_local global i32 0, align 4
@HEVC_SLICE_B = common dso_local global i64 0, align 8
@PRED_L1 = common dso_local global i32 0, align 4
@L0 = common dso_local global i64 0, align 8
@PF_L0 = common dso_local global i64 0, align 8
@L1 = common dso_local global i64 0, align 8
@PRED_BI = common dso_local global i32 0, align 4
@PF_L1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_21__*)* @hevc_luma_mv_mvp_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_luma_mv_mvp_mode(%struct.TYPE_23__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.TYPE_21__* %8) #0 {
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_21__*, align 8
  %19 = alloca %struct.TYPE_22__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.TYPE_21__* %8, %struct.TYPE_21__** %18, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  store %struct.TYPE_22__* %24, %struct.TYPE_22__** %19, align 8
  %25 = load i32, i32* @PRED_L0, align 4
  store i32 %25, i32* %20, align 4
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @ff_hevc_set_neighbour_available(%struct.TYPE_23__* %26, i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @HEVC_SLICE_B, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %9
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @ff_hevc_inter_pred_idc_decode(%struct.TYPE_23__* %41, i32 %42, i32 %43)
  store i32 %44, i32* %20, align 4
  br label %45

45:                                               ; preds = %40, %9
  %46 = load i32, i32* %20, align 4
  %47 = load i32, i32* @PRED_L1, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %121

49:                                               ; preds = %45
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* @L0, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %49
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* @L0, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = call i8* @ff_hevc_ref_idx_lx_decode(%struct.TYPE_23__* %59, i64 %66)
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 2
  %70 = load i8**, i8*** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  store i8* %67, i8** %71, align 8
  br label %72

72:                                               ; preds = %58, %49
  %73 = load i64, i64* @PF_L0, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @ff_hevc_hls_mvd_coding(%struct.TYPE_23__* %76, i32 %77, i32 %78, i32 0)
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %81 = call i32 @ff_hevc_mvp_lx_flag_decode(%struct.TYPE_23__* %80)
  store i32 %81, i32* %21, align 4
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %17, align 4
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %91 = load i32, i32* %21, align 4
  %92 = call i32 @ff_hevc_luma_mv_mvp_mode(%struct.TYPE_23__* %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, %struct.TYPE_21__* %90, i32 %91, i32 0)
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %97
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 4
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %111
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %116, align 4
  br label %121

121:                                              ; preds = %72, %45
  %122 = load i32, i32* %20, align 4
  %123 = load i32, i32* @PRED_L0, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %215

125:                                              ; preds = %121
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 2
  %129 = load i64*, i64** %128, align 8
  %130 = load i64, i64* @L1, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %148

134:                                              ; preds = %125
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 2
  %139 = load i64*, i64** %138, align 8
  %140 = load i64, i64* @L1, align 8
  %141 = getelementptr inbounds i64, i64* %139, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = call i8* @ff_hevc_ref_idx_lx_decode(%struct.TYPE_23__* %135, i64 %142)
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 2
  %146 = load i8**, i8*** %145, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 1
  store i8* %143, i8** %147, align 8
  br label %148

148:                                              ; preds = %134, %125
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %163

154:                                              ; preds = %148
  %155 = load i32, i32* %20, align 4
  %156 = load i32, i32* @PRED_BI, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 0
  %162 = call i32 @AV_ZERO32(%struct.TYPE_17__* %161)
  br label %168

163:                                              ; preds = %154, %148
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @ff_hevc_hls_mvd_coding(%struct.TYPE_23__* %164, i32 %165, i32 %166, i32 1)
  br label %168

168:                                              ; preds = %163, %158
  %169 = load i64, i64* @PF_L1, align 8
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, %169
  store i64 %173, i64* %171, align 8
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %175 = call i32 @ff_hevc_mvp_lx_flag_decode(%struct.TYPE_23__* %174)
  store i32 %175, i32* %21, align 4
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* %16, align 4
  %183 = load i32, i32* %17, align 4
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %185 = load i32, i32* %21, align 4
  %186 = call i32 @ff_hevc_luma_mv_mvp_mode(%struct.TYPE_23__* %176, i32 %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, %struct.TYPE_21__* %184, i32 %185, i32 1)
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i64 1
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %198, %191
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %196, align 4
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i64 1
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %212, %205
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %210, align 4
  br label %215

215:                                              ; preds = %168, %121
  ret void
}

declare dso_local i32 @ff_hevc_set_neighbour_available(%struct.TYPE_23__*, i32, i32, i32, i32) #1

declare dso_local i32 @ff_hevc_inter_pred_idc_decode(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i8* @ff_hevc_ref_idx_lx_decode(%struct.TYPE_23__*, i64) #1

declare dso_local i32 @ff_hevc_hls_mvd_coding(%struct.TYPE_23__*, i32, i32, i32) #1

declare dso_local i32 @ff_hevc_mvp_lx_flag_decode(%struct.TYPE_23__*) #1

declare dso_local i32 @ff_hevc_luma_mv_mvp_mode(%struct.TYPE_23__*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @AV_ZERO32(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
