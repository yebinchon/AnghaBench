; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1dec.c_comp_ppf_coeff.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1dec.c_comp_ppf_coeff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32, i64, i64 }

@LPC_ORDER = common dso_local global i32 0, align 4
@SUBFRAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32, %struct.TYPE_6__*, i32)* @comp_ppf_coeff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @comp_ppf_coeff(%struct.TYPE_7__* %0, i32 %1, i32 %2, %struct.TYPE_6__* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [5 x i32], align 16
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = bitcast [5 x i32]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 20, i1 false)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* @LPC_ORDER, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32* %28, i32** %16, align 8
  %29 = load i32*, i32** %16, align 8
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 1
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @SUBFRAME_LEN, align 4
  %34 = call i32 @autocorr_max(i32* %29, i32 %30, i32* %31, i32 %32, i32 %33, i32 1)
  store i32 %34, i32* %17, align 4
  %35 = load i32*, i32** %16, align 8
  %36 = load i32, i32* %7, align 4
  %37 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 3
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @SUBFRAME_LEN, align 4
  %40 = call i32 @autocorr_max(i32* %35, i32 %36, i32* %37, i32 %38, i32 %39, i32 -1)
  store i32 %40, i32* %18, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 32767, i32* %46, align 8
  %47 = load i32, i32* %18, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %5
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  br label %205

53:                                               ; preds = %49, %5
  %54 = load i32*, i32** %16, align 8
  %55 = load i32*, i32** %16, align 8
  %56 = load i32, i32* @SUBFRAME_LEN, align 4
  %57 = call i32 @ff_g723_1_dot_product(i32* %54, i32* %55, i32 %56)
  %58 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  store i32 %57, i32* %58, align 16
  %59 = load i32, i32* %17, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %53
  %62 = load i32*, i32** %16, align 8
  %63 = load i32, i32* %17, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32*, i32** %16, align 8
  %67 = load i32, i32* %17, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* @SUBFRAME_LEN, align 4
  %71 = call i32 @ff_g723_1_dot_product(i32* %65, i32* %69, i32 %70)
  %72 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 2
  store i32 %71, i32* %72, align 8
  br label %73

73:                                               ; preds = %61, %53
  %74 = load i32, i32* %18, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %73
  %77 = load i32*, i32** %16, align 8
  %78 = load i32, i32* %18, align 4
  %79 = sext i32 %78 to i64
  %80 = sub i64 0, %79
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32*, i32** %16, align 8
  %83 = load i32, i32* %18, align 4
  %84 = sext i32 %83 to i64
  %85 = sub i64 0, %84
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* @SUBFRAME_LEN, align 4
  %88 = call i32 @ff_g723_1_dot_product(i32* %81, i32* %86, i32 %87)
  %89 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 4
  store i32 %88, i32* %89, align 16
  br label %90

90:                                               ; preds = %76, %73
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %91

91:                                               ; preds = %101, %90
  %92 = load i32, i32* %12, align 4
  %93 = icmp slt i32 %92, 5
  br i1 %93, label %94, label %104

94:                                               ; preds = %91
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @FFMAX(i32 %98, i32 %99)
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %94
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %91

104:                                              ; preds = %91
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @ff_g723_1_normalize_bits(i32 %105, i32 31)
  store i32 %106, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %107

107:                                              ; preds = %121, %104
  %108 = load i32, i32* %12, align 4
  %109 = icmp slt i32 %108, 5
  br i1 %109, label %110, label %124

110:                                              ; preds = %107
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %11, align 4
  %116 = shl i32 %114, %115
  %117 = ashr i32 %116, 16
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 %119
  store i32 %117, i32* %120, align 4
  br label %121

121:                                              ; preds = %110
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %107

124:                                              ; preds = %107
  %125 = load i32, i32* %17, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %124
  %128 = load i32, i32* %18, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %141, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %17, align 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %133 = load i32, i32* %10, align 4
  %134 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %135 = load i32, i32* %134, align 16
  %136 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @comp_ppf_gains(i32 %131, %struct.TYPE_6__* %132, i32 %133, i32 %135, i32 %137, i32 %139)
  br label %205

141:                                              ; preds = %127, %124
  %142 = load i32, i32* %17, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %156, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %18, align 4
  %146 = sub nsw i32 0, %145
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %148 = load i32, i32* %10, align 4
  %149 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %150 = load i32, i32* %149, align 16
  %151 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 3
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 4
  %154 = load i32, i32* %153, align 16
  %155 = call i32 @comp_ppf_gains(i32 %146, %struct.TYPE_6__* %147, i32 %148, i32 %150, i32 %152, i32 %154)
  br label %204

156:                                              ; preds = %141
  %157 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 4
  %158 = load i32, i32* %157, align 16
  %159 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = mul nsw i32 %160, %162
  %164 = add nsw i32 %163, 16384
  %165 = ashr i32 %164, 15
  %166 = mul nsw i32 %158, %165
  store i32 %166, i32* %13, align 4
  %167 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 2
  %168 = load i32, i32* %167, align 8
  %169 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 3
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 3
  %172 = load i32, i32* %171, align 4
  %173 = mul nsw i32 %170, %172
  %174 = add nsw i32 %173, 16384
  %175 = ashr i32 %174, 15
  %176 = mul nsw i32 %168, %175
  store i32 %176, i32* %14, align 4
  %177 = load i32, i32* %13, align 4
  %178 = load i32, i32* %14, align 4
  %179 = icmp sge i32 %177, %178
  br i1 %179, label %180, label %191

180:                                              ; preds = %156
  %181 = load i32, i32* %17, align 4
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %183 = load i32, i32* %10, align 4
  %184 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %185 = load i32, i32* %184, align 16
  %186 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 2
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @comp_ppf_gains(i32 %181, %struct.TYPE_6__* %182, i32 %183, i32 %185, i32 %187, i32 %189)
  br label %203

191:                                              ; preds = %156
  %192 = load i32, i32* %18, align 4
  %193 = sub nsw i32 0, %192
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %195 = load i32, i32* %10, align 4
  %196 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %197 = load i32, i32* %196, align 16
  %198 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 3
  %199 = load i32, i32* %198, align 4
  %200 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 4
  %201 = load i32, i32* %200, align 16
  %202 = call i32 @comp_ppf_gains(i32 %193, %struct.TYPE_6__* %194, i32 %195, i32 %197, i32 %199, i32 %201)
  br label %203

203:                                              ; preds = %191, %180
  br label %204

204:                                              ; preds = %203, %144
  br label %205

205:                                              ; preds = %52, %204, %130
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @autocorr_max(i32*, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @ff_g723_1_dot_product(i32*, i32*, i32) #2

declare dso_local i32 @FFMAX(i32, i32) #2

declare dso_local i32 @ff_g723_1_normalize_bits(i32, i32) #2

declare dso_local i32 @comp_ppf_gains(i32, %struct.TYPE_6__*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
