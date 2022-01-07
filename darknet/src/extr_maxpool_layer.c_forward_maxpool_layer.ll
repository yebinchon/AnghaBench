; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_maxpool_layer.c_forward_maxpool_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_maxpool_layer.c_forward_maxpool_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, float*, i32* }
%struct.TYPE_5__ = type { float* }

@FLT_MAX = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @forward_maxpool_layer(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %0, float* %1) #0 {
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store float* %1, float** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 0, %25
  %27 = sdiv i32 %26, 2
  store i32 %27, i32* %10, align 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 0, %29
  %31 = sdiv i32 %30, 2
  store i32 %31, i32* %11, align 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %13, align 4
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %14, align 4
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %200, %2
  %39 = load i32, i32* %4, align 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %203

43:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %196, %43
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %199

48:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %192, %48
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %195

53:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %188, %53
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %191

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %4, align 4
  %66 = mul nsw i32 %64, %65
  %67 = add nsw i32 %63, %66
  %68 = mul nsw i32 %62, %67
  %69 = add nsw i32 %61, %68
  %70 = mul nsw i32 %60, %69
  %71 = add nsw i32 %59, %70
  store i32 %71, i32* %15, align 4
  %72 = load float, float* @FLT_MAX, align 4
  %73 = fneg float %72
  store float %73, float* %16, align 4
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %172, %58
  %75 = load i32, i32* %9, align 4
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %175

79:                                               ; preds = %74
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %168, %79
  %81 = load i32, i32* %8, align 4
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %171

85:                                               ; preds = %80
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %5, align 4
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 %87, %89
  %91 = add nsw i32 %86, %90
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %91, %92
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %6, align 4
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = mul nsw i32 %95, %97
  %99 = add nsw i32 %94, %98
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %99, %100
  store i32 %101, i32* %19, align 4
  %102 = load i32, i32* %19, align 4
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %18, align 4
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %4, align 4
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %109, %111
  %113 = add nsw i32 %108, %112
  %114 = mul nsw i32 %107, %113
  %115 = add nsw i32 %105, %114
  %116 = mul nsw i32 %104, %115
  %117 = add nsw i32 %102, %116
  store i32 %117, i32* %20, align 4
  %118 = load i32, i32* %18, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %85
  %121 = load i32, i32* %18, align 4
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %120
  %126 = load i32, i32* %19, align 4
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load i32, i32* %19, align 4
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %129, %131
  br label %133

133:                                              ; preds = %128, %125, %120, %85
  %134 = phi i1 [ false, %125 ], [ false, %120 ], [ false, %85 ], [ %132, %128 ]
  %135 = zext i1 %134 to i32
  store i32 %135, i32* %21, align 4
  %136 = load i32, i32* %21, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %140 = load float*, float** %139, align 8
  %141 = load i32, i32* %20, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float, float* %140, i64 %142
  %144 = load float, float* %143, align 4
  br label %148

145:                                              ; preds = %133
  %146 = load float, float* @FLT_MAX, align 4
  %147 = fneg float %146
  br label %148

148:                                              ; preds = %145, %138
  %149 = phi float [ %144, %138 ], [ %147, %145 ]
  store float %149, float* %22, align 4
  %150 = load float, float* %22, align 4
  %151 = load float, float* %16, align 4
  %152 = fcmp ogt float %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = load i32, i32* %20, align 4
  br label %157

155:                                              ; preds = %148
  %156 = load i32, i32* %17, align 4
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i32 [ %154, %153 ], [ %156, %155 ]
  store i32 %158, i32* %17, align 4
  %159 = load float, float* %22, align 4
  %160 = load float, float* %16, align 4
  %161 = fcmp ogt float %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = load float, float* %22, align 4
  br label %166

164:                                              ; preds = %157
  %165 = load float, float* %16, align 4
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi float [ %163, %162 ], [ %165, %164 ]
  store float %167, float* %16, align 4
  br label %168

168:                                              ; preds = %166
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %8, align 4
  br label %80

171:                                              ; preds = %80
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %9, align 4
  br label %74

175:                                              ; preds = %74
  %176 = load float, float* %16, align 4
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 9
  %178 = load float*, float** %177, align 8
  %179 = load i32, i32* %15, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float, float* %178, i64 %180
  store float %176, float* %181, align 4
  %182 = load i32, i32* %17, align 4
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 10
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %15, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32 %182, i32* %187, align 4
  br label %188

188:                                              ; preds = %175
  %189 = load i32, i32* %6, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %6, align 4
  br label %54

191:                                              ; preds = %54
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %5, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %5, align 4
  br label %49

195:                                              ; preds = %49
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %7, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %7, align 4
  br label %44

199:                                              ; preds = %44
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %4, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %4, align 4
  br label %38

203:                                              ; preds = %38
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
