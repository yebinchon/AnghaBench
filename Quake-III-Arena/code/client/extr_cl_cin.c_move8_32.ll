; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_move8_32.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_move8_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @move8_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move8_32(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to double*
  store double* %11, double** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32* %12 to double*
  store double* %13, double** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = ashr i32 %14, 3
  store i32 %15, i32* %9, align 4
  %16 = load double*, double** %7, align 8
  %17 = getelementptr inbounds double, double* %16, i64 0
  %18 = load double, double* %17, align 8
  %19 = load double*, double** %8, align 8
  %20 = getelementptr inbounds double, double* %19, i64 0
  store double %18, double* %20, align 8
  %21 = load double*, double** %7, align 8
  %22 = getelementptr inbounds double, double* %21, i64 1
  %23 = load double, double* %22, align 8
  %24 = load double*, double** %8, align 8
  %25 = getelementptr inbounds double, double* %24, i64 1
  store double %23, double* %25, align 8
  %26 = load double*, double** %7, align 8
  %27 = getelementptr inbounds double, double* %26, i64 2
  %28 = load double, double* %27, align 8
  %29 = load double*, double** %8, align 8
  %30 = getelementptr inbounds double, double* %29, i64 2
  store double %28, double* %30, align 8
  %31 = load double*, double** %7, align 8
  %32 = getelementptr inbounds double, double* %31, i64 3
  %33 = load double, double* %32, align 8
  %34 = load double*, double** %8, align 8
  %35 = getelementptr inbounds double, double* %34, i64 3
  store double %33, double* %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load double*, double** %7, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds double, double* %37, i64 %38
  store double* %39, double** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load double*, double** %8, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds double, double* %41, i64 %42
  store double* %43, double** %8, align 8
  %44 = load double*, double** %7, align 8
  %45 = getelementptr inbounds double, double* %44, i64 0
  %46 = load double, double* %45, align 8
  %47 = load double*, double** %8, align 8
  %48 = getelementptr inbounds double, double* %47, i64 0
  store double %46, double* %48, align 8
  %49 = load double*, double** %7, align 8
  %50 = getelementptr inbounds double, double* %49, i64 1
  %51 = load double, double* %50, align 8
  %52 = load double*, double** %8, align 8
  %53 = getelementptr inbounds double, double* %52, i64 1
  store double %51, double* %53, align 8
  %54 = load double*, double** %7, align 8
  %55 = getelementptr inbounds double, double* %54, i64 2
  %56 = load double, double* %55, align 8
  %57 = load double*, double** %8, align 8
  %58 = getelementptr inbounds double, double* %57, i64 2
  store double %56, double* %58, align 8
  %59 = load double*, double** %7, align 8
  %60 = getelementptr inbounds double, double* %59, i64 3
  %61 = load double, double* %60, align 8
  %62 = load double*, double** %8, align 8
  %63 = getelementptr inbounds double, double* %62, i64 3
  store double %61, double* %63, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load double*, double** %7, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds double, double* %65, i64 %66
  store double* %67, double** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load double*, double** %8, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds double, double* %69, i64 %70
  store double* %71, double** %8, align 8
  %72 = load double*, double** %7, align 8
  %73 = getelementptr inbounds double, double* %72, i64 0
  %74 = load double, double* %73, align 8
  %75 = load double*, double** %8, align 8
  %76 = getelementptr inbounds double, double* %75, i64 0
  store double %74, double* %76, align 8
  %77 = load double*, double** %7, align 8
  %78 = getelementptr inbounds double, double* %77, i64 1
  %79 = load double, double* %78, align 8
  %80 = load double*, double** %8, align 8
  %81 = getelementptr inbounds double, double* %80, i64 1
  store double %79, double* %81, align 8
  %82 = load double*, double** %7, align 8
  %83 = getelementptr inbounds double, double* %82, i64 2
  %84 = load double, double* %83, align 8
  %85 = load double*, double** %8, align 8
  %86 = getelementptr inbounds double, double* %85, i64 2
  store double %84, double* %86, align 8
  %87 = load double*, double** %7, align 8
  %88 = getelementptr inbounds double, double* %87, i64 3
  %89 = load double, double* %88, align 8
  %90 = load double*, double** %8, align 8
  %91 = getelementptr inbounds double, double* %90, i64 3
  store double %89, double* %91, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load double*, double** %7, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds double, double* %93, i64 %94
  store double* %95, double** %7, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load double*, double** %8, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds double, double* %97, i64 %98
  store double* %99, double** %8, align 8
  %100 = load double*, double** %7, align 8
  %101 = getelementptr inbounds double, double* %100, i64 0
  %102 = load double, double* %101, align 8
  %103 = load double*, double** %8, align 8
  %104 = getelementptr inbounds double, double* %103, i64 0
  store double %102, double* %104, align 8
  %105 = load double*, double** %7, align 8
  %106 = getelementptr inbounds double, double* %105, i64 1
  %107 = load double, double* %106, align 8
  %108 = load double*, double** %8, align 8
  %109 = getelementptr inbounds double, double* %108, i64 1
  store double %107, double* %109, align 8
  %110 = load double*, double** %7, align 8
  %111 = getelementptr inbounds double, double* %110, i64 2
  %112 = load double, double* %111, align 8
  %113 = load double*, double** %8, align 8
  %114 = getelementptr inbounds double, double* %113, i64 2
  store double %112, double* %114, align 8
  %115 = load double*, double** %7, align 8
  %116 = getelementptr inbounds double, double* %115, i64 3
  %117 = load double, double* %116, align 8
  %118 = load double*, double** %8, align 8
  %119 = getelementptr inbounds double, double* %118, i64 3
  store double %117, double* %119, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load double*, double** %7, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds double, double* %121, i64 %122
  store double* %123, double** %7, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load double*, double** %8, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds double, double* %125, i64 %126
  store double* %127, double** %8, align 8
  %128 = load double*, double** %7, align 8
  %129 = getelementptr inbounds double, double* %128, i64 0
  %130 = load double, double* %129, align 8
  %131 = load double*, double** %8, align 8
  %132 = getelementptr inbounds double, double* %131, i64 0
  store double %130, double* %132, align 8
  %133 = load double*, double** %7, align 8
  %134 = getelementptr inbounds double, double* %133, i64 1
  %135 = load double, double* %134, align 8
  %136 = load double*, double** %8, align 8
  %137 = getelementptr inbounds double, double* %136, i64 1
  store double %135, double* %137, align 8
  %138 = load double*, double** %7, align 8
  %139 = getelementptr inbounds double, double* %138, i64 2
  %140 = load double, double* %139, align 8
  %141 = load double*, double** %8, align 8
  %142 = getelementptr inbounds double, double* %141, i64 2
  store double %140, double* %142, align 8
  %143 = load double*, double** %7, align 8
  %144 = getelementptr inbounds double, double* %143, i64 3
  %145 = load double, double* %144, align 8
  %146 = load double*, double** %8, align 8
  %147 = getelementptr inbounds double, double* %146, i64 3
  store double %145, double* %147, align 8
  %148 = load i32, i32* %9, align 4
  %149 = load double*, double** %7, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds double, double* %149, i64 %150
  store double* %151, double** %7, align 8
  %152 = load i32, i32* %9, align 4
  %153 = load double*, double** %8, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds double, double* %153, i64 %154
  store double* %155, double** %8, align 8
  %156 = load double*, double** %7, align 8
  %157 = getelementptr inbounds double, double* %156, i64 0
  %158 = load double, double* %157, align 8
  %159 = load double*, double** %8, align 8
  %160 = getelementptr inbounds double, double* %159, i64 0
  store double %158, double* %160, align 8
  %161 = load double*, double** %7, align 8
  %162 = getelementptr inbounds double, double* %161, i64 1
  %163 = load double, double* %162, align 8
  %164 = load double*, double** %8, align 8
  %165 = getelementptr inbounds double, double* %164, i64 1
  store double %163, double* %165, align 8
  %166 = load double*, double** %7, align 8
  %167 = getelementptr inbounds double, double* %166, i64 2
  %168 = load double, double* %167, align 8
  %169 = load double*, double** %8, align 8
  %170 = getelementptr inbounds double, double* %169, i64 2
  store double %168, double* %170, align 8
  %171 = load double*, double** %7, align 8
  %172 = getelementptr inbounds double, double* %171, i64 3
  %173 = load double, double* %172, align 8
  %174 = load double*, double** %8, align 8
  %175 = getelementptr inbounds double, double* %174, i64 3
  store double %173, double* %175, align 8
  %176 = load i32, i32* %9, align 4
  %177 = load double*, double** %7, align 8
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds double, double* %177, i64 %178
  store double* %179, double** %7, align 8
  %180 = load i32, i32* %9, align 4
  %181 = load double*, double** %8, align 8
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds double, double* %181, i64 %182
  store double* %183, double** %8, align 8
  %184 = load double*, double** %7, align 8
  %185 = getelementptr inbounds double, double* %184, i64 0
  %186 = load double, double* %185, align 8
  %187 = load double*, double** %8, align 8
  %188 = getelementptr inbounds double, double* %187, i64 0
  store double %186, double* %188, align 8
  %189 = load double*, double** %7, align 8
  %190 = getelementptr inbounds double, double* %189, i64 1
  %191 = load double, double* %190, align 8
  %192 = load double*, double** %8, align 8
  %193 = getelementptr inbounds double, double* %192, i64 1
  store double %191, double* %193, align 8
  %194 = load double*, double** %7, align 8
  %195 = getelementptr inbounds double, double* %194, i64 2
  %196 = load double, double* %195, align 8
  %197 = load double*, double** %8, align 8
  %198 = getelementptr inbounds double, double* %197, i64 2
  store double %196, double* %198, align 8
  %199 = load double*, double** %7, align 8
  %200 = getelementptr inbounds double, double* %199, i64 3
  %201 = load double, double* %200, align 8
  %202 = load double*, double** %8, align 8
  %203 = getelementptr inbounds double, double* %202, i64 3
  store double %201, double* %203, align 8
  %204 = load i32, i32* %9, align 4
  %205 = load double*, double** %7, align 8
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds double, double* %205, i64 %206
  store double* %207, double** %7, align 8
  %208 = load i32, i32* %9, align 4
  %209 = load double*, double** %8, align 8
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds double, double* %209, i64 %210
  store double* %211, double** %8, align 8
  %212 = load double*, double** %7, align 8
  %213 = getelementptr inbounds double, double* %212, i64 0
  %214 = load double, double* %213, align 8
  %215 = load double*, double** %8, align 8
  %216 = getelementptr inbounds double, double* %215, i64 0
  store double %214, double* %216, align 8
  %217 = load double*, double** %7, align 8
  %218 = getelementptr inbounds double, double* %217, i64 1
  %219 = load double, double* %218, align 8
  %220 = load double*, double** %8, align 8
  %221 = getelementptr inbounds double, double* %220, i64 1
  store double %219, double* %221, align 8
  %222 = load double*, double** %7, align 8
  %223 = getelementptr inbounds double, double* %222, i64 2
  %224 = load double, double* %223, align 8
  %225 = load double*, double** %8, align 8
  %226 = getelementptr inbounds double, double* %225, i64 2
  store double %224, double* %226, align 8
  %227 = load double*, double** %7, align 8
  %228 = getelementptr inbounds double, double* %227, i64 3
  %229 = load double, double* %228, align 8
  %230 = load double*, double** %8, align 8
  %231 = getelementptr inbounds double, double* %230, i64 3
  store double %229, double* %231, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
