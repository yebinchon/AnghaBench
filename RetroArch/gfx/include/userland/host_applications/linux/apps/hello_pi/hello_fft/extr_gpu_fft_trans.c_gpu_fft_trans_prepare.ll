; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_trans.c_gpu_fft_trans_prepare.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_trans.c_gpu_fft_trans_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GPU_FFT = type { i32, i32, i32, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.GPU_FFT_TRANS = type { i32 }
%struct.GPU_FFT_BASE = type { i32, i32*, i8* }
%struct.GPU_FFT_PTR = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i64 }

@shader_trans = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpu_fft_trans_prepare(i32 %0, %struct.GPU_FFT* %1, %struct.GPU_FFT* %2, %struct.GPU_FFT_TRANS** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.GPU_FFT*, align 8
  %8 = alloca %struct.GPU_FFT*, align 8
  %9 = alloca %struct.GPU_FFT_TRANS**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.GPU_FFT_TRANS*, align 8
  %17 = alloca %struct.GPU_FFT_BASE*, align 8
  %18 = alloca %struct.GPU_FFT_PTR, align 8
  store i32 %0, i32* %6, align 4
  store %struct.GPU_FFT* %1, %struct.GPU_FFT** %7, align 8
  store %struct.GPU_FFT* %2, %struct.GPU_FFT** %8, align 8
  store %struct.GPU_FFT_TRANS** %3, %struct.GPU_FFT_TRANS*** %9, align 8
  store i32 4096, i32* %14, align 4
  store i32 4096, i32* %13, align 4
  store i32 4096, i32* %12, align 4
  store i32 4096, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %12, align 4
  %21 = add i32 %19, %20
  %22 = load i32, i32* %13, align 4
  %23 = add i32 %21, %22
  %24 = load i32, i32* %14, align 4
  %25 = add i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @gpu_fft_alloc(i32 %26, i32 %27, %struct.GPU_FFT_PTR* %18)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %15, align 4
  store i32 %32, i32* %5, align 4
  br label %180

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.GPU_FFT_PTR, %struct.GPU_FFT_PTR* %18, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.GPU_FFT_TRANS*
  store %struct.GPU_FFT_TRANS* %37, %struct.GPU_FFT_TRANS** %16, align 8
  %38 = load %struct.GPU_FFT_TRANS*, %struct.GPU_FFT_TRANS** %16, align 8
  %39 = bitcast %struct.GPU_FFT_TRANS* %38 to %struct.GPU_FFT_BASE*
  store %struct.GPU_FFT_BASE* %39, %struct.GPU_FFT_BASE** %17, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i8* @gpu_fft_ptr_inc(%struct.GPU_FFT_PTR* %18, i32 %40)
  %42 = getelementptr inbounds %struct.GPU_FFT_PTR, %struct.GPU_FFT_PTR* %18, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @shader_trans, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @memcpy(i64 %44, i32 %45, i32 %46)
  %48 = load i32, i32* %12, align 4
  %49 = call i8* @gpu_fft_ptr_inc(%struct.GPU_FFT_PTR* %18, i32 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %17, align 8
  %52 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.GPU_FFT*, %struct.GPU_FFT** %7, align 8
  %54 = getelementptr inbounds %struct.GPU_FFT, %struct.GPU_FFT* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.GPU_FFT_PTR, %struct.GPU_FFT_PTR* %18, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %56, i32* %60, align 4
  %61 = load %struct.GPU_FFT*, %struct.GPU_FFT** %7, align 8
  %62 = getelementptr inbounds %struct.GPU_FFT, %struct.GPU_FFT* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = load %struct.GPU_FFT*, %struct.GPU_FFT** %7, align 8
  %66 = getelementptr inbounds %struct.GPU_FFT, %struct.GPU_FFT* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = ptrtoint i8* %64 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  %73 = getelementptr inbounds %struct.GPU_FFT_PTR, %struct.GPU_FFT_PTR* %18, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 %72, i32* %76, align 4
  %77 = load %struct.GPU_FFT*, %struct.GPU_FFT** %8, align 8
  %78 = getelementptr inbounds %struct.GPU_FFT, %struct.GPU_FFT* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.GPU_FFT_PTR, %struct.GPU_FFT_PTR* %18, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  store i32 %80, i32* %84, align 4
  %85 = getelementptr inbounds %struct.GPU_FFT_PTR, %struct.GPU_FFT_PTR* %18, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  store i32 0, i32* %88, align 4
  %89 = load %struct.GPU_FFT*, %struct.GPU_FFT** %7, align 8
  %90 = getelementptr inbounds %struct.GPU_FFT, %struct.GPU_FFT* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = trunc i64 %93 to i32
  %95 = getelementptr inbounds %struct.GPU_FFT_PTR, %struct.GPU_FFT_PTR* %18, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 4
  store i32 %94, i32* %98, align 4
  %99 = load %struct.GPU_FFT*, %struct.GPU_FFT** %8, align 8
  %100 = getelementptr inbounds %struct.GPU_FFT, %struct.GPU_FFT* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 4
  %104 = trunc i64 %103 to i32
  %105 = getelementptr inbounds %struct.GPU_FFT_PTR, %struct.GPU_FFT_PTR* %18, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 5
  store i32 %104, i32* %108, align 4
  %109 = load %struct.GPU_FFT*, %struct.GPU_FFT** %7, align 8
  %110 = getelementptr inbounds %struct.GPU_FFT, %struct.GPU_FFT* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.GPU_FFT*, %struct.GPU_FFT** %8, align 8
  %113 = getelementptr inbounds %struct.GPU_FFT, %struct.GPU_FFT* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %33
  %117 = load %struct.GPU_FFT*, %struct.GPU_FFT** %7, align 8
  %118 = getelementptr inbounds %struct.GPU_FFT, %struct.GPU_FFT* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  br label %124

120:                                              ; preds = %33
  %121 = load %struct.GPU_FFT*, %struct.GPU_FFT** %8, align 8
  %122 = getelementptr inbounds %struct.GPU_FFT, %struct.GPU_FFT* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  br label %124

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %119, %116 ], [ %123, %120 ]
  %126 = getelementptr inbounds %struct.GPU_FFT_PTR, %struct.GPU_FFT_PTR* %18, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 6
  store i32 %125, i32* %129, align 4
  %130 = load %struct.GPU_FFT*, %struct.GPU_FFT** %7, align 8
  %131 = getelementptr inbounds %struct.GPU_FFT, %struct.GPU_FFT* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.GPU_FFT*, %struct.GPU_FFT** %8, align 8
  %134 = getelementptr inbounds %struct.GPU_FFT, %struct.GPU_FFT* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %124
  %138 = load %struct.GPU_FFT*, %struct.GPU_FFT** %7, align 8
  %139 = getelementptr inbounds %struct.GPU_FFT, %struct.GPU_FFT* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  br label %145

141:                                              ; preds = %124
  %142 = load %struct.GPU_FFT*, %struct.GPU_FFT** %8, align 8
  %143 = getelementptr inbounds %struct.GPU_FFT, %struct.GPU_FFT* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  br label %145

145:                                              ; preds = %141, %137
  %146 = phi i32 [ %140, %137 ], [ %144, %141 ]
  %147 = getelementptr inbounds %struct.GPU_FFT_PTR, %struct.GPU_FFT_PTR* %18, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 7
  store i32 %146, i32* %150, align 4
  %151 = load i32, i32* %13, align 4
  %152 = call i8* @gpu_fft_ptr_inc(%struct.GPU_FFT_PTR* %18, i32 %151)
  %153 = ptrtoint i8* %152 to i32
  %154 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %17, align 8
  %155 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  store i32 %153, i32* %157, align 4
  %158 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %17, align 8
  %159 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.GPU_FFT_PTR, %struct.GPU_FFT_PTR* %18, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  store i32 %162, i32* %166, align 4
  %167 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %17, align 8
  %168 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = getelementptr inbounds %struct.GPU_FFT_PTR, %struct.GPU_FFT_PTR* %18, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  store i32 %169, i32* %173, align 4
  %174 = load i32, i32* %14, align 4
  %175 = call i8* @gpu_fft_ptr_inc(%struct.GPU_FFT_PTR* %18, i32 %174)
  %176 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %17, align 8
  %177 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %176, i32 0, i32 2
  store i8* %175, i8** %177, align 8
  %178 = load %struct.GPU_FFT_TRANS*, %struct.GPU_FFT_TRANS** %16, align 8
  %179 = load %struct.GPU_FFT_TRANS**, %struct.GPU_FFT_TRANS*** %9, align 8
  store %struct.GPU_FFT_TRANS* %178, %struct.GPU_FFT_TRANS** %179, align 8
  store i32 0, i32* %5, align 4
  br label %180

180:                                              ; preds = %145, %31
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32 @gpu_fft_alloc(i32, i32, %struct.GPU_FFT_PTR*) #1

declare dso_local i8* @gpu_fft_ptr_inc(%struct.GPU_FFT_PTR*, i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
