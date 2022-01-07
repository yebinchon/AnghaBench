; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacpsdsp_template.c_ps_stereo_interpolate_ipdopd_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacpsdsp_template.c_ps_stereo_interpolate_ipdopd_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([2 x i64]*, [2 x i64]*, [4 x i64]*, [4 x i64]*, i32)* @ps_stereo_interpolate_ipdopd_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_stereo_interpolate_ipdopd_c([2 x i64]* %0, [2 x i64]* %1, [4 x i64]* %2, [4 x i64]* %3, i32 %4) #0 {
  %6 = alloca [2 x i64]*, align 8
  %7 = alloca [2 x i64]*, align 8
  %8 = alloca [4 x i64]*, align 8
  %9 = alloca [4 x i64]*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store [2 x i64]* %0, [2 x i64]** %6, align 8
  store [2 x i64]* %1, [2 x i64]** %7, align 8
  store [4 x i64]* %2, [4 x i64]** %8, align 8
  store [4 x i64]* %3, [4 x i64]** %9, align 8
  store i32 %4, i32* %10, align 4
  %32 = load [4 x i64]*, [4 x i64]** %8, align 8
  %33 = getelementptr inbounds [4 x i64], [4 x i64]* %32, i64 0
  %34 = getelementptr inbounds [4 x i64], [4 x i64]* %33, i64 0, i64 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %11, align 8
  %36 = load [4 x i64]*, [4 x i64]** %8, align 8
  %37 = getelementptr inbounds [4 x i64], [4 x i64]* %36, i64 1
  %38 = getelementptr inbounds [4 x i64], [4 x i64]* %37, i64 0, i64 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %12, align 8
  %40 = load [4 x i64]*, [4 x i64]** %8, align 8
  %41 = getelementptr inbounds [4 x i64], [4 x i64]* %40, i64 0
  %42 = getelementptr inbounds [4 x i64], [4 x i64]* %41, i64 0, i64 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %13, align 8
  %44 = load [4 x i64]*, [4 x i64]** %8, align 8
  %45 = getelementptr inbounds [4 x i64], [4 x i64]* %44, i64 1
  %46 = getelementptr inbounds [4 x i64], [4 x i64]* %45, i64 0, i64 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %14, align 8
  %48 = load [4 x i64]*, [4 x i64]** %8, align 8
  %49 = getelementptr inbounds [4 x i64], [4 x i64]* %48, i64 0
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %49, i64 0, i64 2
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %15, align 8
  %52 = load [4 x i64]*, [4 x i64]** %8, align 8
  %53 = getelementptr inbounds [4 x i64], [4 x i64]* %52, i64 1
  %54 = getelementptr inbounds [4 x i64], [4 x i64]* %53, i64 0, i64 2
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %16, align 8
  %56 = load [4 x i64]*, [4 x i64]** %8, align 8
  %57 = getelementptr inbounds [4 x i64], [4 x i64]* %56, i64 0
  %58 = getelementptr inbounds [4 x i64], [4 x i64]* %57, i64 0, i64 3
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %17, align 8
  %60 = load [4 x i64]*, [4 x i64]** %8, align 8
  %61 = getelementptr inbounds [4 x i64], [4 x i64]* %60, i64 1
  %62 = getelementptr inbounds [4 x i64], [4 x i64]* %61, i64 0, i64 3
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %18, align 8
  %64 = load [4 x i64]*, [4 x i64]** %9, align 8
  %65 = getelementptr inbounds [4 x i64], [4 x i64]* %64, i64 0
  %66 = getelementptr inbounds [4 x i64], [4 x i64]* %65, i64 0, i64 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %19, align 8
  %68 = load [4 x i64]*, [4 x i64]** %9, align 8
  %69 = getelementptr inbounds [4 x i64], [4 x i64]* %68, i64 1
  %70 = getelementptr inbounds [4 x i64], [4 x i64]* %69, i64 0, i64 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %20, align 8
  %72 = load [4 x i64]*, [4 x i64]** %9, align 8
  %73 = getelementptr inbounds [4 x i64], [4 x i64]* %72, i64 0
  %74 = getelementptr inbounds [4 x i64], [4 x i64]* %73, i64 0, i64 1
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %21, align 8
  %76 = load [4 x i64]*, [4 x i64]** %9, align 8
  %77 = getelementptr inbounds [4 x i64], [4 x i64]* %76, i64 1
  %78 = getelementptr inbounds [4 x i64], [4 x i64]* %77, i64 0, i64 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %22, align 8
  %80 = load [4 x i64]*, [4 x i64]** %9, align 8
  %81 = getelementptr inbounds [4 x i64], [4 x i64]* %80, i64 0
  %82 = getelementptr inbounds [4 x i64], [4 x i64]* %81, i64 0, i64 2
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %23, align 8
  %84 = load [4 x i64]*, [4 x i64]** %9, align 8
  %85 = getelementptr inbounds [4 x i64], [4 x i64]* %84, i64 1
  %86 = getelementptr inbounds [4 x i64], [4 x i64]* %85, i64 0, i64 2
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %24, align 8
  %88 = load [4 x i64]*, [4 x i64]** %9, align 8
  %89 = getelementptr inbounds [4 x i64], [4 x i64]* %88, i64 0
  %90 = getelementptr inbounds [4 x i64], [4 x i64]* %89, i64 0, i64 3
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %25, align 8
  %92 = load [4 x i64]*, [4 x i64]** %9, align 8
  %93 = getelementptr inbounds [4 x i64], [4 x i64]* %92, i64 1
  %94 = getelementptr inbounds [4 x i64], [4 x i64]* %93, i64 0, i64 3
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %26, align 8
  store i32 0, i32* %27, align 4
  br label %96

96:                                               ; preds = %205, %5
  %97 = load i32, i32* %27, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %208

100:                                              ; preds = %96
  %101 = load [2 x i64]*, [2 x i64]** %6, align 8
  %102 = load i32, i32* %27, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [2 x i64], [2 x i64]* %101, i64 %103
  %105 = getelementptr inbounds [2 x i64], [2 x i64]* %104, i64 0, i64 0
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %28, align 8
  %107 = load [2 x i64]*, [2 x i64]** %6, align 8
  %108 = load i32, i32* %27, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [2 x i64], [2 x i64]* %107, i64 %109
  %111 = getelementptr inbounds [2 x i64], [2 x i64]* %110, i64 0, i64 1
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %29, align 8
  %113 = load [2 x i64]*, [2 x i64]** %7, align 8
  %114 = load i32, i32* %27, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [2 x i64], [2 x i64]* %113, i64 %115
  %117 = getelementptr inbounds [2 x i64], [2 x i64]* %116, i64 0, i64 0
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %30, align 8
  %119 = load [2 x i64]*, [2 x i64]** %7, align 8
  %120 = load i32, i32* %27, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [2 x i64], [2 x i64]* %119, i64 %121
  %123 = getelementptr inbounds [2 x i64], [2 x i64]* %122, i64 0, i64 1
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %31, align 8
  %125 = load i64, i64* %19, align 8
  %126 = load i64, i64* %11, align 8
  %127 = add nsw i64 %126, %125
  store i64 %127, i64* %11, align 8
  %128 = load i64, i64* %21, align 8
  %129 = load i64, i64* %13, align 8
  %130 = add nsw i64 %129, %128
  store i64 %130, i64* %13, align 8
  %131 = load i64, i64* %23, align 8
  %132 = load i64, i64* %15, align 8
  %133 = add nsw i64 %132, %131
  store i64 %133, i64* %15, align 8
  %134 = load i64, i64* %25, align 8
  %135 = load i64, i64* %17, align 8
  %136 = add nsw i64 %135, %134
  store i64 %136, i64* %17, align 8
  %137 = load i64, i64* %20, align 8
  %138 = load i64, i64* %12, align 8
  %139 = add nsw i64 %138, %137
  store i64 %139, i64* %12, align 8
  %140 = load i64, i64* %22, align 8
  %141 = load i64, i64* %14, align 8
  %142 = add nsw i64 %141, %140
  store i64 %142, i64* %14, align 8
  %143 = load i64, i64* %24, align 8
  %144 = load i64, i64* %16, align 8
  %145 = add nsw i64 %144, %143
  store i64 %145, i64* %16, align 8
  %146 = load i64, i64* %26, align 8
  %147 = load i64, i64* %18, align 8
  %148 = add nsw i64 %147, %146
  store i64 %148, i64* %18, align 8
  %149 = load i64, i64* %11, align 8
  %150 = load i64, i64* %28, align 8
  %151 = load i64, i64* %15, align 8
  %152 = load i64, i64* %30, align 8
  %153 = load i64, i64* %12, align 8
  %154 = load i64, i64* %29, align 8
  %155 = load i64, i64* %16, align 8
  %156 = load i64, i64* %31, align 8
  %157 = call i64 @AAC_MSUB30_V8(i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156)
  %158 = load [2 x i64]*, [2 x i64]** %6, align 8
  %159 = load i32, i32* %27, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [2 x i64], [2 x i64]* %158, i64 %160
  %162 = getelementptr inbounds [2 x i64], [2 x i64]* %161, i64 0, i64 0
  store i64 %157, i64* %162, align 8
  %163 = load i64, i64* %11, align 8
  %164 = load i64, i64* %29, align 8
  %165 = load i64, i64* %15, align 8
  %166 = load i64, i64* %31, align 8
  %167 = load i64, i64* %12, align 8
  %168 = load i64, i64* %28, align 8
  %169 = load i64, i64* %16, align 8
  %170 = load i64, i64* %30, align 8
  %171 = call i64 @AAC_MADD30_V8(i64 %163, i64 %164, i64 %165, i64 %166, i64 %167, i64 %168, i64 %169, i64 %170)
  %172 = load [2 x i64]*, [2 x i64]** %6, align 8
  %173 = load i32, i32* %27, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [2 x i64], [2 x i64]* %172, i64 %174
  %176 = getelementptr inbounds [2 x i64], [2 x i64]* %175, i64 0, i64 1
  store i64 %171, i64* %176, align 8
  %177 = load i64, i64* %13, align 8
  %178 = load i64, i64* %28, align 8
  %179 = load i64, i64* %17, align 8
  %180 = load i64, i64* %30, align 8
  %181 = load i64, i64* %14, align 8
  %182 = load i64, i64* %29, align 8
  %183 = load i64, i64* %18, align 8
  %184 = load i64, i64* %31, align 8
  %185 = call i64 @AAC_MSUB30_V8(i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i64 %183, i64 %184)
  %186 = load [2 x i64]*, [2 x i64]** %7, align 8
  %187 = load i32, i32* %27, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [2 x i64], [2 x i64]* %186, i64 %188
  %190 = getelementptr inbounds [2 x i64], [2 x i64]* %189, i64 0, i64 0
  store i64 %185, i64* %190, align 8
  %191 = load i64, i64* %13, align 8
  %192 = load i64, i64* %29, align 8
  %193 = load i64, i64* %17, align 8
  %194 = load i64, i64* %31, align 8
  %195 = load i64, i64* %14, align 8
  %196 = load i64, i64* %28, align 8
  %197 = load i64, i64* %18, align 8
  %198 = load i64, i64* %30, align 8
  %199 = call i64 @AAC_MADD30_V8(i64 %191, i64 %192, i64 %193, i64 %194, i64 %195, i64 %196, i64 %197, i64 %198)
  %200 = load [2 x i64]*, [2 x i64]** %7, align 8
  %201 = load i32, i32* %27, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [2 x i64], [2 x i64]* %200, i64 %202
  %204 = getelementptr inbounds [2 x i64], [2 x i64]* %203, i64 0, i64 1
  store i64 %199, i64* %204, align 8
  br label %205

205:                                              ; preds = %100
  %206 = load i32, i32* %27, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %27, align 4
  br label %96

208:                                              ; preds = %96
  ret void
}

declare dso_local i64 @AAC_MSUB30_V8(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @AAC_MADD30_V8(i64, i64, i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
