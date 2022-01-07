; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_io_ccv_io_raw.inc__ccv_read_argb_raw.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_io_ccv_io_raw.inc__ccv_read_argb_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }

@CCV_8U = common dso_local global i32 0, align 4
@CCV_C3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__**, i8*, i32, i32, i32, i32)* @_ccv_read_argb_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_read_argb_raw(%struct.TYPE_6__** %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, 3840
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %6
  %30 = load i32, i32* @CCV_8U, align 4
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 3840
  %33 = ashr i32 %32, 8
  %34 = or i32 %30, %33
  br label %39

35:                                               ; preds = %6
  %36 = load i32, i32* @CCV_8U, align 4
  %37 = load i32, i32* @CCV_C3, align 4
  %38 = or i32 %36, %37
  br label %39

39:                                               ; preds = %35, %29
  %40 = phi i32 [ %34, %29 ], [ %38, %35 ]
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call %struct.TYPE_6__* @ccv_dense_matrix_new(i32 %41, i32 %42, i32 %43, i32 0, i32 0)
  %45 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %45, align 8
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %14, align 8
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, 3840
  switch i32 %47, label %184 [
    i32 129, label %48
    i32 128, label %115
  ]

48:                                               ; preds = %39
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %17, align 8
  %53 = load i8*, i8** %8, align 8
  store i8* %53, i8** %18, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %11, align 4
  %56 = mul nsw i32 %55, 4
  %57 = sub nsw i32 %54, %56
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %19, align 4
  %59 = icmp sge i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  store i32 0, i32* %15, align 4
  br label %62

62:                                               ; preds = %111, %48
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %114

66:                                               ; preds = %62
  store i32 0, i32* %16, align 4
  br label %67

67:                                               ; preds = %97, %66
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %100

71:                                               ; preds = %67
  %72 = load i8*, i8** %18, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = mul nsw i32 %75, 6969
  %77 = load i8*, i8** %18, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = mul nsw i32 %80, 23434
  %82 = add nsw i32 %76, %81
  %83 = load i8*, i8** %18, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 3
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = mul nsw i32 %86, 2365
  %88 = add nsw i32 %82, %87
  %89 = ashr i32 %88, 15
  %90 = trunc i32 %89 to i8
  %91 = load i8*, i8** %17, align 8
  %92 = load i32, i32* %16, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  store i8 %90, i8* %94, align 1
  %95 = load i8*, i8** %18, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 4
  store i8* %96, i8** %18, align 8
  br label %97

97:                                               ; preds = %71
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %16, align 4
  br label %67

100:                                              ; preds = %67
  %101 = load i32, i32* %19, align 4
  %102 = load i8*, i8** %18, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8* %104, i8** %18, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i8*, i8** %17, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8* %110, i8** %17, align 8
  br label %111

111:                                              ; preds = %100
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %15, align 4
  br label %62

114:                                              ; preds = %62
  br label %220

115:                                              ; preds = %39
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  store i8* %119, i8** %20, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = mul nsw i32 %123, 3
  %125 = sub nsw i32 %122, %124
  store i32 %125, i32* %21, align 4
  %126 = load i32, i32* %21, align 4
  %127 = icmp sge i32 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert(i32 %128)
  %130 = load i8*, i8** %8, align 8
  store i8* %130, i8** %22, align 8
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %11, align 4
  %133 = mul nsw i32 %132, 4
  %134 = sub nsw i32 %131, %133
  store i32 %134, i32* %23, align 4
  %135 = load i32, i32* %23, align 4
  %136 = icmp sge i32 %135, 0
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  store i32 0, i32* %15, align 4
  br label %139

139:                                              ; preds = %180, %115
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %183

143:                                              ; preds = %139
  store i32 0, i32* %16, align 4
  br label %144

144:                                              ; preds = %168, %143
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %11, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %171

148:                                              ; preds = %144
  %149 = load i8*, i8** %22, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  %151 = load i8, i8* %150, align 1
  %152 = load i8*, i8** %20, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 0
  store i8 %151, i8* %153, align 1
  %154 = load i8*, i8** %22, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 2
  %156 = load i8, i8* %155, align 1
  %157 = load i8*, i8** %20, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  store i8 %156, i8* %158, align 1
  %159 = load i8*, i8** %22, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 3
  %161 = load i8, i8* %160, align 1
  %162 = load i8*, i8** %20, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 2
  store i8 %161, i8* %163, align 1
  %164 = load i8*, i8** %20, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 3
  store i8* %165, i8** %20, align 8
  %166 = load i8*, i8** %22, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 4
  store i8* %167, i8** %22, align 8
  br label %168

168:                                              ; preds = %148
  %169 = load i32, i32* %16, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %16, align 4
  br label %144

171:                                              ; preds = %144
  %172 = load i32, i32* %23, align 4
  %173 = load i8*, i8** %22, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i8, i8* %173, i64 %174
  store i8* %175, i8** %22, align 8
  %176 = load i32, i32* %21, align 4
  %177 = load i8*, i8** %20, align 8
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i8, i8* %177, i64 %178
  store i8* %179, i8** %20, align 8
  br label %180

180:                                              ; preds = %171
  %181 = load i32, i32* %15, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %15, align 4
  br label %139

183:                                              ; preds = %139
  br label %220

184:                                              ; preds = %39
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  store i8* %188, i8** %24, align 8
  %189 = load i8*, i8** %8, align 8
  store i8* %189, i8** %25, align 8
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* %11, align 4
  %192 = mul nsw i32 %191, 4
  %193 = icmp sge i32 %190, %192
  %194 = zext i1 %193 to i32
  %195 = call i32 @assert(i32 %194)
  store i32 0, i32* %15, align 4
  br label %196

196:                                              ; preds = %216, %184
  %197 = load i32, i32* %15, align 4
  %198 = load i32, i32* %10, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %219

200:                                              ; preds = %196
  %201 = load i8*, i8** %24, align 8
  %202 = load i8*, i8** %25, align 8
  %203 = load i32, i32* %11, align 4
  %204 = mul nsw i32 %203, 4
  %205 = call i32 @memcpy(i8* %201, i8* %202, i32 %204)
  %206 = load i32, i32* %12, align 4
  %207 = load i8*, i8** %25, align 8
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i8, i8* %207, i64 %208
  store i8* %209, i8** %25, align 8
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i8*, i8** %24, align 8
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i8, i8* %213, i64 %214
  store i8* %215, i8** %24, align 8
  br label %216

216:                                              ; preds = %200
  %217 = load i32, i32* %15, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %15, align 4
  br label %196

219:                                              ; preds = %196
  br label %220

220:                                              ; preds = %219, %183, %114
  ret void
}

declare dso_local %struct.TYPE_6__* @ccv_dense_matrix_new(i32, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
