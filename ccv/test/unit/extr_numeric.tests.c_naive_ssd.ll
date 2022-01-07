; ModuleID = '/home/carl/AnghaBench/ccv/test/unit/extr_numeric.tests.c_naive_ssd.c'
source_filename = "/home/carl/AnghaBench/ccv/test/unit/extr_numeric.tests.c_naive_ssd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i8*, double* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*)* @naive_ssd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @naive_ssd(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca double*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sdiv i32 %21, 2
  store i32 %22, i32* %7, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %8, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @CCV_GET_CHANNEL(i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %35, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %34, i64 %40
  store i8* %41, i8** %15, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load double*, double** %44, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %45, i64 %51
  store double* %52, double** %16, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = call i32 @ccv_zero(%struct.TYPE_8__* %53)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %211, %3
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 %60, %61
  %63 = sub nsw i32 %62, 1
  %64 = icmp slt i32 %57, %63
  br i1 %64, label %65, label %214

65:                                               ; preds = %56
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %195, %65
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sub nsw i32 %71, %72
  %74 = sub nsw i32 %73, 1
  %75 = icmp slt i32 %68, %74
  br i1 %75, label %76, label %198

76:                                               ; preds = %67
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %17, align 8
  %81 = load i8*, i8** %15, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = mul nsw i32 %82, %85
  %87 = sext i32 %86 to i64
  %88 = sub i64 0, %87
  %89 = getelementptr inbounds i8, i8* %81, i64 %88
  store i8* %89, i8** %18, align 8
  %90 = load double*, double** %16, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds double, double* %90, i64 %92
  store double 0.000000e+00, double* %93, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %191, %76
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp sle i32 %97, %98
  br i1 %99, label %100, label %194

100:                                              ; preds = %96
  %101 = load i32, i32* %7, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %12, align 4
  br label %103

103:                                              ; preds = %175, %100
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp sle i32 %104, %105
  br i1 %106, label %107, label %178

107:                                              ; preds = %103
  store i32 0, i32* %11, align 4
  br label %108

108:                                              ; preds = %171, %107
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %174

112:                                              ; preds = %108
  %113 = load i8*, i8** %18, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %114, %115
  %117 = load i32, i32* %14, align 4
  %118 = mul nsw i32 %116, %117
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %113, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = load i8*, i8** %17, align 8
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %126, %127
  %129 = load i32, i32* %14, align 4
  %130 = mul nsw i32 %128, %129
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %125, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = sub nsw i32 %124, %136
  %138 = load i8*, i8** %18, align 8
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %139, %140
  %142 = load i32, i32* %14, align 4
  %143 = mul nsw i32 %141, %142
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %138, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = load i8*, i8** %17, align 8
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %151, %152
  %154 = load i32, i32* %14, align 4
  %155 = mul nsw i32 %153, %154
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %155, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %150, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = sub nsw i32 %149, %161
  %163 = mul nsw i32 %137, %162
  %164 = sitofp i32 %163 to double
  %165 = load double*, double** %16, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds double, double* %165, i64 %167
  %169 = load double, double* %168, align 8
  %170 = fadd double %169, %164
  store double %170, double* %168, align 8
  br label %171

171:                                              ; preds = %112
  %172 = load i32, i32* %11, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %11, align 4
  br label %108

174:                                              ; preds = %108
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %12, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %12, align 4
  br label %103

178:                                              ; preds = %103
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load i8*, i8** %17, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i8, i8* %182, i64 %183
  store i8* %184, i8** %17, align 8
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load i8*, i8** %18, align 8
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i8, i8* %188, i64 %189
  store i8* %190, i8** %18, align 8
  br label %191

191:                                              ; preds = %178
  %192 = load i32, i32* %13, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %13, align 4
  br label %96

194:                                              ; preds = %96
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %10, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %10, align 4
  br label %67

198:                                              ; preds = %67
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load i8*, i8** %15, align 8
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  store i8* %204, i8** %15, align 8
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load double*, double** %16, align 8
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds double, double* %208, i64 %209
  store double* %210, double** %16, align 8
  br label %211

211:                                              ; preds = %198
  %212 = load i32, i32* %9, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %9, align 4
  br label %56

214:                                              ; preds = %56
  ret void
}

declare dso_local i32 @CCV_GET_CHANNEL(i32) #1

declare dso_local i32 @ccv_zero(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
