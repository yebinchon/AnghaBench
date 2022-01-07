; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_cmd.c_ccv_nnc_hint_verify.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_cmd.c_ccv_nnc_hint_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_11__ = type { i32*, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_14__ = type { i64, i32* }

@CCV_NNC_MAX_DIM = common dso_local global i32 0, align 4
@CCV_TENSOR_FORMAT_CHWN = common dso_local global i64 0, align 8
@CCV_TENSOR_FORMAT_NHWC = common dso_local global i64 0, align 8
@CCV_TENSOR_FORMAT_NCHW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccv_nnc_hint_verify(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %0, i32* %1, i64 %2, i32* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__, align 8
  %9 = alloca %struct.TYPE_14__, align 8
  %10 = alloca %struct.TYPE_14__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  store i32* %1, i32** %16, align 8
  %17 = bitcast %struct.TYPE_14__* %9 to { i64, i32* }*
  %18 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %17, i32 0, i32 0
  store i64 %2, i64* %18, align 8
  %19 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %17, i32 0, i32 1
  store i32* %3, i32** %19, align 8
  %20 = bitcast %struct.TYPE_14__* %10 to { i64, i32* }*
  %21 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %20, i32 0, i32 0
  store i64 %4, i64* %21, align 8
  %22 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %20, i32 0, i32 1
  store i32* %5, i32** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %24, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @ccv_nnc_tensor_nd(i32* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %35 = add nsw i32 %34, 1
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %6
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %40 = add nsw i32 %39, 2
  %41 = icmp eq i32 %38, %40
  br label %42

42:                                               ; preds = %37, %6
  %43 = phi i1 [ true, %6 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CCV_TENSOR_FORMAT_CHWN, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %60, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CCV_TENSOR_FORMAT_NHWC, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %58 = add nsw i32 %57, 1
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %42
  store i32 0, i32* %13, align 4
  br label %97

61:                                               ; preds = %55, %50
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CCV_TENSOR_FORMAT_NHWC, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %69 = add nsw i32 %68, 2
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %81, label %71

71:                                               ; preds = %66, %61
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @CCV_TENSOR_FORMAT_NCHW, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %79 = add nsw i32 %78, 1
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76, %66
  store i32 1, i32* %13, align 4
  br label %96

82:                                               ; preds = %76, %71
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CCV_TENSOR_FORMAT_NCHW, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %90 = add nsw i32 %89, 2
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 2, i32* %13, align 4
  br label %95

93:                                               ; preds = %87, %82
  %94 = call i32 @assert(i32 0)
  br label %95

95:                                               ; preds = %93, %92
  br label %96

96:                                               ; preds = %95, %81
  br label %97

97:                                               ; preds = %96, %60
  store i32 0, i32* %11, align 4
  br label %98

98:                                               ; preds = %197, %97
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %200

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %109, %116
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %117, %123
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = sub nsw i32 %124, %131
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = srem i32 %132, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %102
  store i32 -1, i32* %7, align 4
  br label %201

143:                                              ; preds = %102
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %150, %157
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* %13, align 4
  %163 = add nsw i32 %161, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %160, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %158, %166
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = sub nsw i32 %167, %174
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = sdiv i32 %175, %182
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %14, align 4
  %185 = load i32, i32* %14, align 4
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* %13, align 4
  %190 = add nsw i32 %188, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %187, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %185, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %143
  store i32 -1, i32* %7, align 4
  br label %201

196:                                              ; preds = %143
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %11, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %11, align 4
  br label %98

200:                                              ; preds = %98
  store i32 0, i32* %7, align 4
  br label %201

201:                                              ; preds = %200, %195, %142
  %202 = load i32, i32* %7, align 4
  ret i32 %202
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ccv_nnc_tensor_nd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
