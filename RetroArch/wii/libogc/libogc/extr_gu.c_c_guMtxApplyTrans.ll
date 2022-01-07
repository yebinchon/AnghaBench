; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gu.c_c_guMtxApplyTrans.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gu.c_c_guMtxApplyTrans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_guMtxApplyTrans(i32** %0, i32** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32**, i32*** %6, align 8
  %12 = load i32**, i32*** %7, align 8
  %13 = icmp ne i32** %11, %12
  br i1 %13, label %14, label %96

14:                                               ; preds = %5
  %15 = load i32**, i32*** %6, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32**, i32*** %7, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %19, i32* %23, align 4
  %24 = load i32**, i32*** %6, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32**, i32*** %7, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 %28, i32* %32, align 4
  %33 = load i32**, i32*** %6, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32**, i32*** %7, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32 %37, i32* %41, align 4
  %42 = load i32**, i32*** %6, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32**, i32*** %7, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %46, i32* %50, align 4
  %51 = load i32**, i32*** %6, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32**, i32*** %7, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 %55, i32* %59, align 4
  %60 = load i32**, i32*** %6, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32**, i32*** %7, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  store i32 %64, i32* %68, align 4
  %69 = load i32**, i32*** %6, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i64 2
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32**, i32*** %7, align 8
  %75 = getelementptr inbounds i32*, i32** %74, i64 2
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %73, i32* %77, align 4
  %78 = load i32**, i32*** %6, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32**, i32*** %7, align 8
  %84 = getelementptr inbounds i32*, i32** %83, i64 2
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32 %82, i32* %86, align 4
  %87 = load i32**, i32*** %6, align 8
  %88 = getelementptr inbounds i32*, i32** %87, i64 2
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32**, i32*** %7, align 8
  %93 = getelementptr inbounds i32*, i32** %92, i64 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  store i32 %91, i32* %95, align 4
  br label %96

96:                                               ; preds = %14, %5
  %97 = load i32**, i32*** %6, align 8
  %98 = getelementptr inbounds i32*, i32** %97, i64 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %8, align 4
  %103 = mul nsw i32 %101, %102
  %104 = load i32**, i32*** %6, align 8
  %105 = getelementptr inbounds i32*, i32** %104, i64 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %9, align 4
  %110 = mul nsw i32 %108, %109
  %111 = add nsw i32 %103, %110
  %112 = load i32**, i32*** %6, align 8
  %113 = getelementptr inbounds i32*, i32** %112, i64 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %10, align 4
  %118 = mul nsw i32 %116, %117
  %119 = add nsw i32 %111, %118
  %120 = load i32**, i32*** %6, align 8
  %121 = getelementptr inbounds i32*, i32** %120, i64 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 3
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %119, %124
  %126 = load i32**, i32*** %7, align 8
  %127 = getelementptr inbounds i32*, i32** %126, i64 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 3
  store i32 %125, i32* %129, align 4
  %130 = load i32**, i32*** %6, align 8
  %131 = getelementptr inbounds i32*, i32** %130, i64 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %8, align 4
  %136 = mul nsw i32 %134, %135
  %137 = load i32**, i32*** %6, align 8
  %138 = getelementptr inbounds i32*, i32** %137, i64 1
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %9, align 4
  %143 = mul nsw i32 %141, %142
  %144 = add nsw i32 %136, %143
  %145 = load i32**, i32*** %6, align 8
  %146 = getelementptr inbounds i32*, i32** %145, i64 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %10, align 4
  %151 = mul nsw i32 %149, %150
  %152 = add nsw i32 %144, %151
  %153 = load i32**, i32*** %6, align 8
  %154 = getelementptr inbounds i32*, i32** %153, i64 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 3
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %152, %157
  %159 = load i32**, i32*** %7, align 8
  %160 = getelementptr inbounds i32*, i32** %159, i64 1
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 3
  store i32 %158, i32* %162, align 4
  %163 = load i32**, i32*** %6, align 8
  %164 = getelementptr inbounds i32*, i32** %163, i64 2
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %8, align 4
  %169 = mul nsw i32 %167, %168
  %170 = load i32**, i32*** %6, align 8
  %171 = getelementptr inbounds i32*, i32** %170, i64 2
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %9, align 4
  %176 = mul nsw i32 %174, %175
  %177 = add nsw i32 %169, %176
  %178 = load i32**, i32*** %6, align 8
  %179 = getelementptr inbounds i32*, i32** %178, i64 2
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 2
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %10, align 4
  %184 = mul nsw i32 %182, %183
  %185 = add nsw i32 %177, %184
  %186 = load i32**, i32*** %6, align 8
  %187 = getelementptr inbounds i32*, i32** %186, i64 2
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 3
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %185, %190
  %192 = load i32**, i32*** %7, align 8
  %193 = getelementptr inbounds i32*, i32** %192, i64 2
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 3
  store i32 %191, i32* %195, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
