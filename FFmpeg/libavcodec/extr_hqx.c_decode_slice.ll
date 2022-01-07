; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hqx.c_decode_slice.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hqx.c_decode_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 (%struct.TYPE_4__*, i32, i32, i32)* }

@shuffle_16 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @decode_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_slice(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 15
  %31 = ashr i32 %30, 4
  store i32 %31, i32* %5, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 15
  %36 = ashr i32 %35, 4
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 4
  %39 = sdiv i32 %38, 5
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 4
  %42 = sdiv i32 %41, 5
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %7, align 4
  %46 = sdiv i32 %44, %45
  %47 = mul nsw i32 %43, %46
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %8, align 4
  %51 = sdiv i32 %49, %50
  %52 = mul nsw i32 %48, %51
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %9, align 4
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %56, %57
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = mul nsw i32 %59, %60
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 479
  %64 = sdiv i32 %63, 480
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = mul nsw i32 16, %66
  %68 = sdiv i32 %65, %67
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %14, align 4
  %71 = mul nsw i32 %69, %70
  store i32 %71, i32* %16, align 4
  store i32 0, i32* %26, align 4
  br label %72

72:                                               ; preds = %210, %2
  %73 = load i32, i32* %26, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %215

76:                                               ; preds = %72
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %24, align 4
  store i32 -1, i32* %25, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %15, align 4
  %81 = mul nsw i32 %80, 16
  %82 = load i32, i32* %14, align 4
  %83 = mul nsw i32 %81, %82
  %84 = sub nsw i32 %79, %83
  %85 = icmp slt i32 %78, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %76
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %14, align 4
  %89 = mul nsw i32 16, %88
  %90 = sdiv i32 %87, %89
  store i32 %90, i32* %25, align 4
  %91 = load i32, i32* %24, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %24, align 4
  br label %93

93:                                               ; preds = %86, %76
  store i32 0, i32* %23, align 4
  br label %94

94:                                               ; preds = %206, %93
  %95 = load i32, i32* %23, align 4
  %96 = load i32, i32* %24, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %209

98:                                               ; preds = %94
  %99 = load i32, i32* %23, align 4
  %100 = load i32, i32* %25, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %14, align 4
  %105 = mul nsw i32 16, %104
  %106 = load i32, i32* %23, align 4
  %107 = mul nsw i32 %105, %106
  %108 = add nsw i32 %103, %107
  store i32 %108, i32* %17, align 4
  br label %127

109:                                              ; preds = %98
  %110 = load i32, i32* %26, align 4
  %111 = load i32, i32* %14, align 4
  %112 = mul nsw i32 16, %111
  %113 = load i32, i32* %23, align 4
  %114 = mul nsw i32 %112, %113
  %115 = add nsw i32 %110, %114
  %116 = load i32, i32* %14, align 4
  %117 = load i32*, i32** @shuffle_16, align 8
  %118 = load i32, i32* %23, align 4
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %118, %119
  %121 = and i32 %120, 15
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %117, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %116, %124
  %126 = add nsw i32 %115, %125
  store i32 %126, i32* %17, align 4
  br label %127

127:                                              ; preds = %109, %102
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %5, align 4
  %132 = mul nsw i32 %130, %131
  %133 = sdiv i32 %129, %132
  %134 = mul nsw i32 %128, %133
  store i32 %134, i32* %22, align 4
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %5, align 4
  %138 = mul nsw i32 %136, %137
  %139 = srem i32 %135, %138
  store i32 %139, i32* %18, align 4
  %140 = load i32, i32* %22, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp sge i32 %140, %141
  br i1 %142, label %143, label %156

143:                                              ; preds = %127
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* %7, align 4
  %148 = mul nsw i32 %146, %147
  %149 = sdiv i32 %145, %148
  %150 = mul nsw i32 %144, %149
  store i32 %150, i32* %19, align 4
  %151 = load i32, i32* %18, align 4
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %7, align 4
  %154 = mul nsw i32 %152, %153
  %155 = srem i32 %151, %154
  store i32 %155, i32* %21, align 4
  br label %169

156:                                              ; preds = %127
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %7, align 4
  %161 = mul nsw i32 %159, %160
  %162 = sdiv i32 %158, %161
  %163 = mul nsw i32 %157, %162
  store i32 %163, i32* %19, align 4
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %7, align 4
  %167 = mul nsw i32 %165, %166
  %168 = srem i32 %164, %167
  store i32 %168, i32* %21, align 4
  br label %169

169:                                              ; preds = %156, %143
  %170 = load i32, i32* %19, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp sge i32 %170, %171
  br i1 %172, label %173, label %184

173:                                              ; preds = %169
  %174 = load i32, i32* %21, align 4
  %175 = load i32, i32* %11, align 4
  %176 = srem i32 %174, %175
  %177 = load i32, i32* %19, align 4
  %178 = add nsw i32 %177, %176
  store i32 %178, i32* %19, align 4
  %179 = load i32, i32* %22, align 4
  %180 = load i32, i32* %21, align 4
  %181 = load i32, i32* %11, align 4
  %182 = sdiv i32 %180, %181
  %183 = add nsw i32 %179, %182
  store i32 %183, i32* %20, align 4
  br label %195

184:                                              ; preds = %169
  %185 = load i32, i32* %21, align 4
  %186 = load i32, i32* %7, align 4
  %187 = srem i32 %185, %186
  %188 = load i32, i32* %19, align 4
  %189 = add nsw i32 %188, %187
  store i32 %189, i32* %19, align 4
  %190 = load i32, i32* %22, align 4
  %191 = load i32, i32* %21, align 4
  %192 = load i32, i32* %7, align 4
  %193 = sdiv i32 %191, %192
  %194 = add nsw i32 %190, %193
  store i32 %194, i32* %20, align 4
  br label %195

195:                                              ; preds = %184, %173
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 2
  %198 = load i32 (%struct.TYPE_4__*, i32, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32, i32)** %197, align 8
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %200 = load i32, i32* %4, align 4
  %201 = load i32, i32* %19, align 4
  %202 = mul nsw i32 %201, 16
  %203 = load i32, i32* %20, align 4
  %204 = mul nsw i32 %203, 16
  %205 = call i32 %198(%struct.TYPE_4__* %199, i32 %200, i32 %202, i32 %204)
  br label %206

206:                                              ; preds = %195
  %207 = load i32, i32* %23, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %23, align 4
  br label %94

209:                                              ; preds = %94
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %26, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %26, align 4
  %213 = load i32, i32* %16, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %16, align 4
  br label %72

215:                                              ; preds = %72
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
