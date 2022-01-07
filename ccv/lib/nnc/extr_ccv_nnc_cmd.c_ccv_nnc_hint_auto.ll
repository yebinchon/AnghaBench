; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_cmd.c_ccv_nnc_hint_auto.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_cmd.c_ccv_nnc_hint_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32*, i32* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_15__ = type { i64, i32* }

@ccv_nnc_no_hint = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@CCV_NNC_MAX_DIM = common dso_local global i32 0, align 4
@CCV_TENSOR_FORMAT_CHWN = common dso_local global i64 0, align 8
@CCV_TENSOR_FORMAT_NHWC = common dso_local global i64 0, align 8
@CCV_TENSOR_FORMAT_NCHW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_nnc_hint_auto(%struct.TYPE_16__* noalias sret %0, i32* %1, i64 %2, i32* %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_17__, align 8
  %8 = alloca %struct.TYPE_15__, align 8
  %9 = alloca %struct.TYPE_15__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_16__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  store i32* %1, i32** %18, align 8
  %19 = bitcast %struct.TYPE_15__* %8 to { i64, i32* }*
  %20 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %19, i32 0, i32 0
  store i64 %2, i64* %20, align 8
  %21 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %19, i32 0, i32 1
  store i32* %3, i32** %21, align 8
  %22 = bitcast %struct.TYPE_15__* %9 to { i64, i32* }*
  %23 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %22, i32 0, i32 0
  store i64 %4, i64* %23, align 8
  %24 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %22, i32 0, i32 1
  store i32* %5, i32** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = bitcast %struct.TYPE_16__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 bitcast (%struct.TYPE_16__* @ccv_nnc_no_hint to i8*), i64 24, i1 false)
  br label %235

32:                                               ; preds = %6
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %34, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @ccv_nnc_tensor_nd(i32* %41)
  store i32 %42, i32* %11, align 4
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @ccv_nnc_tensor_nd(i32* %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %59, label %49

49:                                               ; preds = %32
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %52 = add nsw i32 %51, 1
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %57 = add nsw i32 %56, 2
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %54, %32
  %60 = bitcast %struct.TYPE_16__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 bitcast (%struct.TYPE_16__* @ccv_nnc_no_hint to i8*), i64 24, i1 false)
  br label %235

61:                                               ; preds = %54, %49
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CCV_TENSOR_FORMAT_CHWN, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %76, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CCV_TENSOR_FORMAT_NHWC, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %74 = add nsw i32 %73, 1
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71, %61
  store i32 0, i32* %13, align 4
  br label %113

77:                                               ; preds = %71, %66
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @CCV_TENSOR_FORMAT_NHWC, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %85 = add nsw i32 %84, 2
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %97, label %87

87:                                               ; preds = %82, %77
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @CCV_TENSOR_FORMAT_NCHW, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %95 = add nsw i32 %94, 1
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92, %82
  store i32 1, i32* %13, align 4
  br label %112

98:                                               ; preds = %92, %87
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @CCV_TENSOR_FORMAT_NCHW, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %106 = add nsw i32 %105, 2
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store i32 2, i32* %13, align 4
  br label %111

109:                                              ; preds = %103, %98
  %110 = call i32 @assert(i32 0)
  br label %111

111:                                              ; preds = %109, %108
  br label %112

112:                                              ; preds = %111, %97
  br label %113

113:                                              ; preds = %112, %76
  %114 = bitcast %struct.TYPE_16__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %114, i8 0, i64 24, i1 false)
  store i32 0, i32* %10, align 4
  br label %115

115:                                              ; preds = %229, %113
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %232

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %119
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %13, align 4
  %134 = add nsw i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %131, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br label %139

139:                                              ; preds = %129, %119
  %140 = phi i1 [ false, %119 ], [ %138, %129 ]
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %13, align 4
  %147 = add nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %144, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %152, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = sdiv i32 %158, 2
  %160 = add nsw i32 %150, %159
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %162, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = sdiv i32 %160, %168
  store i32 %169, i32* %15, align 4
  %170 = load i32, i32* %15, align 4
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %170, i32* %176, align 4
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %13, align 4
  %181 = add nsw i32 %179, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %178, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = sub nsw i32 %184, 1
  %186 = load i32, i32* %15, align 4
  %187 = mul nsw i32 %185, %186
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* %13, align 4
  %192 = add nsw i32 %190, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %189, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 %187, %195
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %196, %203
  store i32 %204, i32* %16, align 4
  %205 = load i32, i32* %16, align 4
  %206 = add nsw i32 %205, 1
  %207 = sdiv i32 %206, 2
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  store i32 %207, i32* %213, align 4
  %214 = load i32, i32* %16, align 4
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %10, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = sub nsw i32 %214, %221
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %10, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  store i32 %222, i32* %228, align 4
  br label %229

229:                                              ; preds = %139
  %230 = load i32, i32* %10, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %10, align 4
  br label %115

232:                                              ; preds = %115
  %233 = bitcast %struct.TYPE_16__* %0 to i8*
  %234 = bitcast %struct.TYPE_16__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %233, i8* align 8 %234, i64 24, i1 false)
  br label %235

235:                                              ; preds = %232, %59, %30
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @ccv_nnc_tensor_nd(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
