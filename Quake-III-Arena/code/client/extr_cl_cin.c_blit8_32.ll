; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_blit8_32.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_blit8_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @blit8_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blit8_32(i32* %0, i32* %1, i32 %2) #0 {
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
  %36 = load double*, double** %7, align 8
  %37 = getelementptr inbounds double, double* %36, i64 4
  store double* %37, double** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load double*, double** %8, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds double, double* %39, i64 %40
  store double* %41, double** %8, align 8
  %42 = load double*, double** %7, align 8
  %43 = getelementptr inbounds double, double* %42, i64 0
  %44 = load double, double* %43, align 8
  %45 = load double*, double** %8, align 8
  %46 = getelementptr inbounds double, double* %45, i64 0
  store double %44, double* %46, align 8
  %47 = load double*, double** %7, align 8
  %48 = getelementptr inbounds double, double* %47, i64 1
  %49 = load double, double* %48, align 8
  %50 = load double*, double** %8, align 8
  %51 = getelementptr inbounds double, double* %50, i64 1
  store double %49, double* %51, align 8
  %52 = load double*, double** %7, align 8
  %53 = getelementptr inbounds double, double* %52, i64 2
  %54 = load double, double* %53, align 8
  %55 = load double*, double** %8, align 8
  %56 = getelementptr inbounds double, double* %55, i64 2
  store double %54, double* %56, align 8
  %57 = load double*, double** %7, align 8
  %58 = getelementptr inbounds double, double* %57, i64 3
  %59 = load double, double* %58, align 8
  %60 = load double*, double** %8, align 8
  %61 = getelementptr inbounds double, double* %60, i64 3
  store double %59, double* %61, align 8
  %62 = load double*, double** %7, align 8
  %63 = getelementptr inbounds double, double* %62, i64 4
  store double* %63, double** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load double*, double** %8, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds double, double* %65, i64 %66
  store double* %67, double** %8, align 8
  %68 = load double*, double** %7, align 8
  %69 = getelementptr inbounds double, double* %68, i64 0
  %70 = load double, double* %69, align 8
  %71 = load double*, double** %8, align 8
  %72 = getelementptr inbounds double, double* %71, i64 0
  store double %70, double* %72, align 8
  %73 = load double*, double** %7, align 8
  %74 = getelementptr inbounds double, double* %73, i64 1
  %75 = load double, double* %74, align 8
  %76 = load double*, double** %8, align 8
  %77 = getelementptr inbounds double, double* %76, i64 1
  store double %75, double* %77, align 8
  %78 = load double*, double** %7, align 8
  %79 = getelementptr inbounds double, double* %78, i64 2
  %80 = load double, double* %79, align 8
  %81 = load double*, double** %8, align 8
  %82 = getelementptr inbounds double, double* %81, i64 2
  store double %80, double* %82, align 8
  %83 = load double*, double** %7, align 8
  %84 = getelementptr inbounds double, double* %83, i64 3
  %85 = load double, double* %84, align 8
  %86 = load double*, double** %8, align 8
  %87 = getelementptr inbounds double, double* %86, i64 3
  store double %85, double* %87, align 8
  %88 = load double*, double** %7, align 8
  %89 = getelementptr inbounds double, double* %88, i64 4
  store double* %89, double** %7, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load double*, double** %8, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds double, double* %91, i64 %92
  store double* %93, double** %8, align 8
  %94 = load double*, double** %7, align 8
  %95 = getelementptr inbounds double, double* %94, i64 0
  %96 = load double, double* %95, align 8
  %97 = load double*, double** %8, align 8
  %98 = getelementptr inbounds double, double* %97, i64 0
  store double %96, double* %98, align 8
  %99 = load double*, double** %7, align 8
  %100 = getelementptr inbounds double, double* %99, i64 1
  %101 = load double, double* %100, align 8
  %102 = load double*, double** %8, align 8
  %103 = getelementptr inbounds double, double* %102, i64 1
  store double %101, double* %103, align 8
  %104 = load double*, double** %7, align 8
  %105 = getelementptr inbounds double, double* %104, i64 2
  %106 = load double, double* %105, align 8
  %107 = load double*, double** %8, align 8
  %108 = getelementptr inbounds double, double* %107, i64 2
  store double %106, double* %108, align 8
  %109 = load double*, double** %7, align 8
  %110 = getelementptr inbounds double, double* %109, i64 3
  %111 = load double, double* %110, align 8
  %112 = load double*, double** %8, align 8
  %113 = getelementptr inbounds double, double* %112, i64 3
  store double %111, double* %113, align 8
  %114 = load double*, double** %7, align 8
  %115 = getelementptr inbounds double, double* %114, i64 4
  store double* %115, double** %7, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load double*, double** %8, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds double, double* %117, i64 %118
  store double* %119, double** %8, align 8
  %120 = load double*, double** %7, align 8
  %121 = getelementptr inbounds double, double* %120, i64 0
  %122 = load double, double* %121, align 8
  %123 = load double*, double** %8, align 8
  %124 = getelementptr inbounds double, double* %123, i64 0
  store double %122, double* %124, align 8
  %125 = load double*, double** %7, align 8
  %126 = getelementptr inbounds double, double* %125, i64 1
  %127 = load double, double* %126, align 8
  %128 = load double*, double** %8, align 8
  %129 = getelementptr inbounds double, double* %128, i64 1
  store double %127, double* %129, align 8
  %130 = load double*, double** %7, align 8
  %131 = getelementptr inbounds double, double* %130, i64 2
  %132 = load double, double* %131, align 8
  %133 = load double*, double** %8, align 8
  %134 = getelementptr inbounds double, double* %133, i64 2
  store double %132, double* %134, align 8
  %135 = load double*, double** %7, align 8
  %136 = getelementptr inbounds double, double* %135, i64 3
  %137 = load double, double* %136, align 8
  %138 = load double*, double** %8, align 8
  %139 = getelementptr inbounds double, double* %138, i64 3
  store double %137, double* %139, align 8
  %140 = load double*, double** %7, align 8
  %141 = getelementptr inbounds double, double* %140, i64 4
  store double* %141, double** %7, align 8
  %142 = load i32, i32* %9, align 4
  %143 = load double*, double** %8, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds double, double* %143, i64 %144
  store double* %145, double** %8, align 8
  %146 = load double*, double** %7, align 8
  %147 = getelementptr inbounds double, double* %146, i64 0
  %148 = load double, double* %147, align 8
  %149 = load double*, double** %8, align 8
  %150 = getelementptr inbounds double, double* %149, i64 0
  store double %148, double* %150, align 8
  %151 = load double*, double** %7, align 8
  %152 = getelementptr inbounds double, double* %151, i64 1
  %153 = load double, double* %152, align 8
  %154 = load double*, double** %8, align 8
  %155 = getelementptr inbounds double, double* %154, i64 1
  store double %153, double* %155, align 8
  %156 = load double*, double** %7, align 8
  %157 = getelementptr inbounds double, double* %156, i64 2
  %158 = load double, double* %157, align 8
  %159 = load double*, double** %8, align 8
  %160 = getelementptr inbounds double, double* %159, i64 2
  store double %158, double* %160, align 8
  %161 = load double*, double** %7, align 8
  %162 = getelementptr inbounds double, double* %161, i64 3
  %163 = load double, double* %162, align 8
  %164 = load double*, double** %8, align 8
  %165 = getelementptr inbounds double, double* %164, i64 3
  store double %163, double* %165, align 8
  %166 = load double*, double** %7, align 8
  %167 = getelementptr inbounds double, double* %166, i64 4
  store double* %167, double** %7, align 8
  %168 = load i32, i32* %9, align 4
  %169 = load double*, double** %8, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds double, double* %169, i64 %170
  store double* %171, double** %8, align 8
  %172 = load double*, double** %7, align 8
  %173 = getelementptr inbounds double, double* %172, i64 0
  %174 = load double, double* %173, align 8
  %175 = load double*, double** %8, align 8
  %176 = getelementptr inbounds double, double* %175, i64 0
  store double %174, double* %176, align 8
  %177 = load double*, double** %7, align 8
  %178 = getelementptr inbounds double, double* %177, i64 1
  %179 = load double, double* %178, align 8
  %180 = load double*, double** %8, align 8
  %181 = getelementptr inbounds double, double* %180, i64 1
  store double %179, double* %181, align 8
  %182 = load double*, double** %7, align 8
  %183 = getelementptr inbounds double, double* %182, i64 2
  %184 = load double, double* %183, align 8
  %185 = load double*, double** %8, align 8
  %186 = getelementptr inbounds double, double* %185, i64 2
  store double %184, double* %186, align 8
  %187 = load double*, double** %7, align 8
  %188 = getelementptr inbounds double, double* %187, i64 3
  %189 = load double, double* %188, align 8
  %190 = load double*, double** %8, align 8
  %191 = getelementptr inbounds double, double* %190, i64 3
  store double %189, double* %191, align 8
  %192 = load double*, double** %7, align 8
  %193 = getelementptr inbounds double, double* %192, i64 4
  store double* %193, double** %7, align 8
  %194 = load i32, i32* %9, align 4
  %195 = load double*, double** %8, align 8
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds double, double* %195, i64 %196
  store double* %197, double** %8, align 8
  %198 = load double*, double** %7, align 8
  %199 = getelementptr inbounds double, double* %198, i64 0
  %200 = load double, double* %199, align 8
  %201 = load double*, double** %8, align 8
  %202 = getelementptr inbounds double, double* %201, i64 0
  store double %200, double* %202, align 8
  %203 = load double*, double** %7, align 8
  %204 = getelementptr inbounds double, double* %203, i64 1
  %205 = load double, double* %204, align 8
  %206 = load double*, double** %8, align 8
  %207 = getelementptr inbounds double, double* %206, i64 1
  store double %205, double* %207, align 8
  %208 = load double*, double** %7, align 8
  %209 = getelementptr inbounds double, double* %208, i64 2
  %210 = load double, double* %209, align 8
  %211 = load double*, double** %8, align 8
  %212 = getelementptr inbounds double, double* %211, i64 2
  store double %210, double* %212, align 8
  %213 = load double*, double** %7, align 8
  %214 = getelementptr inbounds double, double* %213, i64 3
  %215 = load double, double* %214, align 8
  %216 = load double*, double** %8, align 8
  %217 = getelementptr inbounds double, double* %216, i64 3
  store double %215, double* %217, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
