; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_synth_filter.c_mpc_synthese_filter_float_internal.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_synth_filter.c_mpc_synthese_filter_float_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Di_opt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32)* @mpc_synthese_filter_float_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc_synthese_filter_float_internal(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %175, %4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 36
  br i1 %15, label %16, label %180

16:                                               ; preds = %13
  %17 = load i32*, i32** %5, align 8
  store i32* %17, i32** %10, align 8
  store i32* @Di_opt, i32** %11, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 -64
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @mpc_compute_new_V(i32* %20, i32* %21)
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %160, %16
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 32
  br i1 %25, label %26, label %167

26:                                               ; preds = %23
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %11, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @MPC_MULTIPLY_FRACT(i32 %29, i32 %32)
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 96
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @MPC_MULTIPLY_FRACT(i32 %36, i32 %39)
  %41 = add nsw i64 %33, %40
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 128
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @MPC_MULTIPLY_FRACT(i32 %44, i32 %47)
  %49 = add nsw i64 %41, %48
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 224
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @MPC_MULTIPLY_FRACT(i32 %52, i32 %55)
  %57 = add nsw i64 %49, %56
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 256
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %11, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @MPC_MULTIPLY_FRACT(i32 %60, i32 %63)
  %65 = add nsw i64 %57, %64
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 352
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %11, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 5
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @MPC_MULTIPLY_FRACT(i32 %68, i32 %71)
  %73 = add nsw i64 %65, %72
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 384
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 6
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @MPC_MULTIPLY_FRACT(i32 %76, i32 %79)
  %81 = add nsw i64 %73, %80
  %82 = load i32*, i32** %6, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 480
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 7
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @MPC_MULTIPLY_FRACT(i32 %84, i32 %87)
  %89 = add nsw i64 %81, %88
  %90 = load i32*, i32** %6, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 512
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %11, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 8
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @MPC_MULTIPLY_FRACT(i32 %92, i32 %95)
  %97 = add nsw i64 %89, %96
  %98 = load i32*, i32** %6, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 608
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %11, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 9
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @MPC_MULTIPLY_FRACT(i32 %100, i32 %103)
  %105 = add nsw i64 %97, %104
  %106 = load i32*, i32** %6, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 640
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %11, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 10
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @MPC_MULTIPLY_FRACT(i32 %108, i32 %111)
  %113 = add nsw i64 %105, %112
  %114 = load i32*, i32** %6, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 736
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %11, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 11
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @MPC_MULTIPLY_FRACT(i32 %116, i32 %119)
  %121 = add nsw i64 %113, %120
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 768
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %11, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 12
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @MPC_MULTIPLY_FRACT(i32 %124, i32 %127)
  %129 = add nsw i64 %121, %128
  %130 = load i32*, i32** %6, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 864
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %11, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 13
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @MPC_MULTIPLY_FRACT(i32 %132, i32 %135)
  %137 = add nsw i64 %129, %136
  %138 = load i32*, i32** %6, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 896
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %11, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 14
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @MPC_MULTIPLY_FRACT(i32 %140, i32 %143)
  %145 = add nsw i64 %137, %144
  %146 = load i32*, i32** %6, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 992
  %148 = load i32, i32* %147, align 4
  %149 = load i32*, i32** %11, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 15
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @MPC_MULTIPLY_FRACT(i32 %148, i32 %151)
  %153 = add nsw i64 %145, %152
  %154 = call i32 @MPC_SHL(i64 %153, i32 2)
  %155 = load i32*, i32** %10, align 8
  store i32 %154, i32* %155, align 4
  %156 = load i32, i32* %8, align 4
  %157 = load i32*, i32** %10, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  store i32* %159, i32** %10, align 8
  br label %160

160:                                              ; preds = %26
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %12, align 4
  %163 = load i32*, i32** %11, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 16
  store i32* %164, i32** %11, align 8
  %165 = load i32*, i32** %6, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %166, i32** %6, align 8
  br label %23

167:                                              ; preds = %23
  %168 = load i32*, i32** %6, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 -32
  store i32* %169, i32** %6, align 8
  %170 = load i32, i32* %8, align 4
  %171 = mul nsw i32 32, %170
  %172 = load i32*, i32** %5, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  store i32* %174, i32** %5, align 8
  br label %175

175:                                              ; preds = %167
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %9, align 4
  %178 = load i32*, i32** %7, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 32
  store i32* %179, i32** %7, align 8
  br label %13

180:                                              ; preds = %13
  ret void
}

declare dso_local i32 @mpc_compute_new_V(i32*, i32*) #1

declare dso_local i32 @MPC_SHL(i64, i32) #1

declare dso_local i64 @MPC_MULTIPLY_FRACT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
