; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdec.c_decode_block_params.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdec.c_decode_block_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32**, i32* }

@DIRAC_REF_MASK_REF1 = common dso_local global i32 0, align 4
@CTX_PMODE_REF1 = common dso_local global i32 0, align 4
@DIRAC_REF_MASK_REF2 = common dso_local global i32 0, align 4
@CTX_PMODE_REF2 = common dso_local global i32 0, align 4
@CTX_DC_F1 = common dso_local global i32 0, align 4
@CTX_DC_DATA = common dso_local global i32 0, align 4
@DIRAC_REF_MASK_GLOBAL = common dso_local global i32 0, align 4
@CTX_GLOBAL_BLOCK = common dso_local global i32 0, align 4
@CTX_MV_F1 = common dso_local global i32 0, align 4
@CTX_MV_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32*, %struct.TYPE_13__*, i32, i32, i32)* @decode_block_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_block_params(%struct.TYPE_12__* %0, i32* %1, %struct.TYPE_13__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @DIRAC_REF_MASK_REF1, align 4
  %19 = call i32 @pred_block_mode(%struct.TYPE_13__* %14, i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* @CTX_PMODE_REF1, align 4
  %24 = call i32 @dirac_get_arith_bit(i32* %22, i32 %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = xor i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %52

33:                                               ; preds = %6
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @DIRAC_REF_MASK_REF2, align 4
  %39 = call i32 @pred_block_mode(%struct.TYPE_13__* %34, i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* @CTX_PMODE_REF2, align 4
  %46 = call i32 @dirac_get_arith_bit(i32* %44, i32 %45)
  %47 = shl i32 %46, 1
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = xor i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %33, %6
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %89, label %57

57:                                               ; preds = %52
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @pred_block_dc(%struct.TYPE_13__* %58, i32 %59, i32 %60, i32 %61)
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %85, %57
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %64, 3
  br i1 %65, label %66, label %88

66:                                               ; preds = %63
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* @CTX_DC_F1, align 4
  %73 = load i32, i32* @CTX_DC_DATA, align 4
  %74 = call i64 @dirac_get_arith_int(i32* %71, i32 %72, i32 %73)
  %75 = trunc i64 %74 to i32
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = add i32 %83, %75
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %66
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %63

88:                                               ; preds = %63
  br label %196

89:                                               ; preds = %52
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %89
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @DIRAC_REF_MASK_GLOBAL, align 4
  %100 = call i32 @pred_block_mode(%struct.TYPE_13__* %95, i32 %96, i32 %97, i32 %98, i32 %99)
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* @CTX_GLOBAL_BLOCK, align 4
  %107 = call i32 @dirac_get_arith_bit(i32* %105, i32 %106)
  %108 = shl i32 %107, 2
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = xor i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %94, %89
  store i32 0, i32* %13, align 4
  br label %114

114:                                              ; preds = %193, %113
  %115 = load i32, i32* %13, align 4
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %196

120:                                              ; preds = %114
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  %126 = and i32 %123, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %192

128:                                              ; preds = %120
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @DIRAC_REF_MASK_GLOBAL, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %128
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %13, align 4
  %141 = call i32 @global_mv(%struct.TYPE_12__* %136, %struct.TYPE_13__* %137, i32 %138, i32 %139, i32 %140)
  br label %191

142:                                              ; preds = %128
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* %13, align 4
  %148 = call i32 @pred_mv(%struct.TYPE_13__* %143, i32 %144, i32 %145, i32 %146, i32 %147)
  %149 = load i32*, i32** %8, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 4
  %151 = load i32, i32* %13, align 4
  %152 = mul nsw i32 2, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  %155 = load i32, i32* @CTX_MV_F1, align 4
  %156 = load i32, i32* @CTX_MV_DATA, align 4
  %157 = call i64 @dirac_get_arith_int(i32* %154, i32 %155, i32 %156)
  %158 = trunc i64 %157 to i32
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load i32**, i32*** %161, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32*, i32** %162, i64 %164
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = add i32 %168, %158
  store i32 %169, i32* %167, align 4
  %170 = load i32*, i32** %8, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 5
  %172 = load i32, i32* %13, align 4
  %173 = mul nsw i32 2, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  %176 = load i32, i32* @CTX_MV_F1, align 4
  %177 = load i32, i32* @CTX_MV_DATA, align 4
  %178 = call i64 @dirac_get_arith_int(i32* %175, i32 %176, i32 %177)
  %179 = trunc i64 %178 to i32
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  %183 = load i32**, i32*** %182, align 8
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32*, i32** %183, i64 %185
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  %189 = load i32, i32* %188, align 4
  %190 = add i32 %189, %179
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %142, %135
  br label %192

192:                                              ; preds = %191, %120
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %13, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %13, align 4
  br label %114

196:                                              ; preds = %88, %114
  ret void
}

declare dso_local i32 @pred_block_mode(%struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i32 @dirac_get_arith_bit(i32*, i32) #1

declare dso_local i32 @pred_block_dc(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i64 @dirac_get_arith_int(i32*, i32, i32) #1

declare dso_local i32 @global_mv(%struct.TYPE_12__*, %struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @pred_mv(%struct.TYPE_13__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
