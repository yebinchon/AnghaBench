; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_video.c_Expand4.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_video.c_Expand4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exptable2 = common dso_local global double* null, align 8
@inited = common dso_local global i32 0, align 4
@SCREENWIDTH = common dso_local global i32 0, align 4
@SCREENHEIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Expand4(i32* %0, double* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double*, align 8
  store i32* %0, i32** %3, align 8
  store double* %1, double** %4, align 8
  %11 = load double*, double** @exptable2, align 8
  store double* %11, double** %10, align 8
  %12 = load i32, i32* @inited, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  store i32 1, i32* @inited, align 4
  %15 = call i32 (...) @InitExpand2()
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i32, i32* @SCREENWIDTH, align 4
  %18 = mul nsw i32 3, %17
  %19 = sdiv i32 %18, 2
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @SCREENHEIGHT, align 4
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %218, %16
  %23 = load i32, i32* @SCREENWIDTH, align 4
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %209, %22
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load double*, double** %10, align 8
  %29 = ptrtoint double* %28 to i32
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, -65536
  %32 = lshr i32 %31, 13
  %33 = add i32 %29, %32
  %34 = zext i32 %33 to i64
  %35 = inttoptr i64 %34 to double*
  %36 = load double, double* %35, align 8
  store double %36, double* %5, align 8
  %37 = load double, double* %5, align 8
  %38 = load double*, double** %4, align 8
  %39 = getelementptr inbounds double, double* %38, i64 0
  store double %37, double* %39, align 8
  %40 = load double, double* %5, align 8
  %41 = load double*, double** %4, align 8
  %42 = getelementptr inbounds double, double* %41, i64 160
  store double %40, double* %42, align 8
  %43 = load double, double* %5, align 8
  %44 = load double*, double** %4, align 8
  %45 = getelementptr inbounds double, double* %44, i64 320
  store double %43, double* %45, align 8
  %46 = load double, double* %5, align 8
  %47 = load double*, double** %4, align 8
  %48 = getelementptr inbounds double, double* %47, i64 480
  store double %46, double* %48, align 8
  %49 = load double*, double** %10, align 8
  %50 = ptrtoint double* %49 to i32
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, 65535
  %53 = shl i32 %52, 3
  %54 = add i32 %50, %53
  %55 = zext i32 %54 to i64
  %56 = inttoptr i64 %55 to double*
  %57 = load double, double* %56, align 8
  store double %57, double* %5, align 8
  %58 = load double, double* %5, align 8
  %59 = load double*, double** %4, align 8
  %60 = getelementptr inbounds double, double* %59, i64 1
  store double %58, double* %60, align 8
  %61 = load double, double* %5, align 8
  %62 = load double*, double** %4, align 8
  %63 = getelementptr inbounds double, double* %62, i64 161
  store double %61, double* %63, align 8
  %64 = load double, double* %5, align 8
  %65 = load double*, double** %4, align 8
  %66 = getelementptr inbounds double, double* %65, i64 321
  store double %64, double* %66, align 8
  %67 = load double, double* %5, align 8
  %68 = load double*, double** %4, align 8
  %69 = getelementptr inbounds double, double* %68, i64 481
  store double %67, double* %69, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %8, align 4
  %73 = load double*, double** %10, align 8
  %74 = ptrtoint double* %73 to i32
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, -65536
  %77 = lshr i32 %76, 13
  %78 = add i32 %74, %77
  %79 = zext i32 %78 to i64
  %80 = inttoptr i64 %79 to double*
  %81 = load double, double* %80, align 8
  store double %81, double* %5, align 8
  %82 = load double, double* %5, align 8
  %83 = load double*, double** %4, align 8
  %84 = getelementptr inbounds double, double* %83, i64 2
  store double %82, double* %84, align 8
  %85 = load double, double* %5, align 8
  %86 = load double*, double** %4, align 8
  %87 = getelementptr inbounds double, double* %86, i64 162
  store double %85, double* %87, align 8
  %88 = load double, double* %5, align 8
  %89 = load double*, double** %4, align 8
  %90 = getelementptr inbounds double, double* %89, i64 322
  store double %88, double* %90, align 8
  %91 = load double, double* %5, align 8
  %92 = load double*, double** %4, align 8
  %93 = getelementptr inbounds double, double* %92, i64 482
  store double %91, double* %93, align 8
  %94 = load double*, double** %10, align 8
  %95 = ptrtoint double* %94 to i32
  %96 = load i32, i32* %8, align 4
  %97 = and i32 %96, 65535
  %98 = shl i32 %97, 3
  %99 = add i32 %95, %98
  %100 = zext i32 %99 to i64
  %101 = inttoptr i64 %100 to double*
  %102 = load double, double* %101, align 8
  store double %102, double* %5, align 8
  %103 = load double, double* %5, align 8
  %104 = load double*, double** %4, align 8
  %105 = getelementptr inbounds double, double* %104, i64 3
  store double %103, double* %105, align 8
  %106 = load double, double* %5, align 8
  %107 = load double*, double** %4, align 8
  %108 = getelementptr inbounds double, double* %107, i64 163
  store double %106, double* %108, align 8
  %109 = load double, double* %5, align 8
  %110 = load double*, double** %4, align 8
  %111 = getelementptr inbounds double, double* %110, i64 323
  store double %109, double* %111, align 8
  %112 = load double, double* %5, align 8
  %113 = load double*, double** %4, align 8
  %114 = getelementptr inbounds double, double* %113, i64 483
  store double %112, double* %114, align 8
  %115 = load i32*, i32** %3, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %8, align 4
  %118 = load double*, double** %10, align 8
  %119 = ptrtoint double* %118 to i32
  %120 = load i32, i32* %8, align 4
  %121 = and i32 %120, -65536
  %122 = lshr i32 %121, 13
  %123 = add i32 %119, %122
  %124 = zext i32 %123 to i64
  %125 = inttoptr i64 %124 to double*
  %126 = load double, double* %125, align 8
  store double %126, double* %5, align 8
  %127 = load double, double* %5, align 8
  %128 = load double*, double** %4, align 8
  %129 = getelementptr inbounds double, double* %128, i64 4
  store double %127, double* %129, align 8
  %130 = load double, double* %5, align 8
  %131 = load double*, double** %4, align 8
  %132 = getelementptr inbounds double, double* %131, i64 164
  store double %130, double* %132, align 8
  %133 = load double, double* %5, align 8
  %134 = load double*, double** %4, align 8
  %135 = getelementptr inbounds double, double* %134, i64 324
  store double %133, double* %135, align 8
  %136 = load double, double* %5, align 8
  %137 = load double*, double** %4, align 8
  %138 = getelementptr inbounds double, double* %137, i64 484
  store double %136, double* %138, align 8
  %139 = load double*, double** %10, align 8
  %140 = ptrtoint double* %139 to i32
  %141 = load i32, i32* %8, align 4
  %142 = and i32 %141, 65535
  %143 = shl i32 %142, 3
  %144 = add i32 %140, %143
  %145 = zext i32 %144 to i64
  %146 = inttoptr i64 %145 to double*
  %147 = load double, double* %146, align 8
  store double %147, double* %5, align 8
  %148 = load double, double* %5, align 8
  %149 = load double*, double** %4, align 8
  %150 = getelementptr inbounds double, double* %149, i64 5
  store double %148, double* %150, align 8
  %151 = load double, double* %5, align 8
  %152 = load double*, double** %4, align 8
  %153 = getelementptr inbounds double, double* %152, i64 165
  store double %151, double* %153, align 8
  %154 = load double, double* %5, align 8
  %155 = load double*, double** %4, align 8
  %156 = getelementptr inbounds double, double* %155, i64 325
  store double %154, double* %156, align 8
  %157 = load double, double* %5, align 8
  %158 = load double*, double** %4, align 8
  %159 = getelementptr inbounds double, double* %158, i64 485
  store double %157, double* %159, align 8
  %160 = load i32*, i32** %3, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 3
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %8, align 4
  %163 = load double*, double** %10, align 8
  %164 = ptrtoint double* %163 to i32
  %165 = load i32, i32* %8, align 4
  %166 = and i32 %165, -65536
  %167 = lshr i32 %166, 13
  %168 = add i32 %164, %167
  %169 = zext i32 %168 to i64
  %170 = inttoptr i64 %169 to double*
  %171 = load double, double* %170, align 8
  store double %171, double* %5, align 8
  %172 = load double, double* %5, align 8
  %173 = load double*, double** %4, align 8
  %174 = getelementptr inbounds double, double* %173, i64 6
  store double %172, double* %174, align 8
  %175 = load double, double* %5, align 8
  %176 = load double*, double** %4, align 8
  %177 = getelementptr inbounds double, double* %176, i64 166
  store double %175, double* %177, align 8
  %178 = load double, double* %5, align 8
  %179 = load double*, double** %4, align 8
  %180 = getelementptr inbounds double, double* %179, i64 326
  store double %178, double* %180, align 8
  %181 = load double, double* %5, align 8
  %182 = load double*, double** %4, align 8
  %183 = getelementptr inbounds double, double* %182, i64 486
  store double %181, double* %183, align 8
  %184 = load double*, double** %10, align 8
  %185 = ptrtoint double* %184 to i32
  %186 = load i32, i32* %8, align 4
  %187 = and i32 %186, 65535
  %188 = shl i32 %187, 3
  %189 = add i32 %185, %188
  %190 = zext i32 %189 to i64
  %191 = inttoptr i64 %190 to double*
  %192 = load double, double* %191, align 8
  store double %192, double* %5, align 8
  %193 = load double, double* %5, align 8
  %194 = load double*, double** %4, align 8
  %195 = getelementptr inbounds double, double* %194, i64 7
  store double %193, double* %195, align 8
  %196 = load double, double* %5, align 8
  %197 = load double*, double** %4, align 8
  %198 = getelementptr inbounds double, double* %197, i64 167
  store double %196, double* %198, align 8
  %199 = load double, double* %5, align 8
  %200 = load double*, double** %4, align 8
  %201 = getelementptr inbounds double, double* %200, i64 327
  store double %199, double* %201, align 8
  %202 = load double, double* %5, align 8
  %203 = load double*, double** %4, align 8
  %204 = getelementptr inbounds double, double* %203, i64 487
  store double %202, double* %204, align 8
  %205 = load i32*, i32** %3, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 4
  store i32* %206, i32** %3, align 8
  %207 = load double*, double** %4, align 8
  %208 = getelementptr inbounds double, double* %207, i64 8
  store double* %208, double** %4, align 8
  br label %209

209:                                              ; preds = %24
  %210 = load i32, i32* %6, align 4
  %211 = sub i32 %210, 16
  store i32 %211, i32* %6, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %24, label %213

213:                                              ; preds = %209
  %214 = load i32, i32* %9, align 4
  %215 = load double*, double** %4, align 8
  %216 = zext i32 %214 to i64
  %217 = getelementptr inbounds double, double* %215, i64 %216
  store double* %217, double** %4, align 8
  br label %218

218:                                              ; preds = %213
  %219 = load i32, i32* %7, align 4
  %220 = add i32 %219, -1
  store i32 %220, i32* %7, align 4
  %221 = icmp ne i32 %219, 0
  br i1 %221, label %22, label %222

222:                                              ; preds = %218
  ret void
}

declare dso_local i32 @InitExpand2(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
