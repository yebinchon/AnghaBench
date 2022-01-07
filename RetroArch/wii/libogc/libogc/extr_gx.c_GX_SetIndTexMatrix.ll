; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetIndTexMatrix.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetIndTexMatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_SetIndTexMatrix(i32 %0, [3 x float]* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca [3 x float]*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store [3 x float]* %1, [3 x float]** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  br label %41

20:                                               ; preds = %14, %3
  %21 = load i32, i32* %4, align 4
  %22 = icmp sgt i32 %21, 4
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, 5
  store i32 %28, i32* %4, align 4
  br label %40

29:                                               ; preds = %23, %20
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %30, 8
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 12
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = sub nsw i32 %36, 9
  store i32 %37, i32* %4, align 4
  br label %39

38:                                               ; preds = %32, %29
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %35
  br label %40

40:                                               ; preds = %39, %26
  br label %41

41:                                               ; preds = %40, %17
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 17
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %4, align 4
  %45 = shl i32 %44, 2
  %46 = load i32, i32* %4, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %11, align 4
  %48 = load [3 x float]*, [3 x float]** %5, align 8
  %49 = getelementptr inbounds [3 x float], [3 x float]* %48, i64 0
  %50 = getelementptr inbounds [3 x float], [3 x float]* %49, i64 0, i64 0
  %51 = load float, float* %50, align 4
  %52 = fmul float %51, 1.024000e+03
  %53 = fptosi float %52 to i32
  store i32 %53, i32* %7, align 4
  %54 = load [3 x float]*, [3 x float]** %5, align 8
  %55 = getelementptr inbounds [3 x float], [3 x float]* %54, i64 1
  %56 = getelementptr inbounds [3 x float], [3 x float]* %55, i64 0, i64 0
  %57 = load float, float* %56, align 4
  %58 = fmul float %57, 1.024000e+03
  %59 = fptosi float %58 to i32
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 6, %60
  %62 = call i32 @_SHIFTL(i32 %61, i32 24, i32 8)
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @_SHIFTL(i32 %63, i32 22, i32 2)
  %65 = or i32 %62, %64
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @_SHIFTL(i32 %66, i32 11, i32 11)
  %68 = or i32 %65, %67
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @_SHIFTL(i32 %69, i32 0, i32 11)
  %71 = or i32 %68, %70
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @GX_LOAD_BP_REG(i32 %72)
  %74 = load [3 x float]*, [3 x float]** %5, align 8
  %75 = getelementptr inbounds [3 x float], [3 x float]* %74, i64 0
  %76 = getelementptr inbounds [3 x float], [3 x float]* %75, i64 0, i64 1
  %77 = load float, float* %76, align 4
  %78 = fmul float %77, 1.024000e+03
  %79 = fptosi float %78 to i32
  store i32 %79, i32* %7, align 4
  %80 = load [3 x float]*, [3 x float]** %5, align 8
  %81 = getelementptr inbounds [3 x float], [3 x float]* %80, i64 1
  %82 = getelementptr inbounds [3 x float], [3 x float]* %81, i64 0, i64 1
  %83 = load float, float* %82, align 4
  %84 = fmul float %83, 1.024000e+03
  %85 = fptosi float %84 to i32
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 7, %86
  %88 = call i32 @_SHIFTL(i32 %87, i32 24, i32 8)
  %89 = load i32, i32* %10, align 4
  %90 = ashr i32 %89, 2
  %91 = call i32 @_SHIFTL(i32 %90, i32 22, i32 2)
  %92 = or i32 %88, %91
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @_SHIFTL(i32 %93, i32 11, i32 11)
  %95 = or i32 %92, %94
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @_SHIFTL(i32 %96, i32 0, i32 11)
  %98 = or i32 %95, %97
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @GX_LOAD_BP_REG(i32 %99)
  %101 = load [3 x float]*, [3 x float]** %5, align 8
  %102 = getelementptr inbounds [3 x float], [3 x float]* %101, i64 0
  %103 = getelementptr inbounds [3 x float], [3 x float]* %102, i64 0, i64 2
  %104 = load float, float* %103, align 4
  %105 = fmul float %104, 1.024000e+03
  %106 = fptosi float %105 to i32
  store i32 %106, i32* %7, align 4
  %107 = load [3 x float]*, [3 x float]** %5, align 8
  %108 = getelementptr inbounds [3 x float], [3 x float]* %107, i64 1
  %109 = getelementptr inbounds [3 x float], [3 x float]* %108, i64 0, i64 2
  %110 = load float, float* %109, align 4
  %111 = fmul float %110, 1.024000e+03
  %112 = fptosi float %111 to i32
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 8, %113
  %115 = call i32 @_SHIFTL(i32 %114, i32 24, i32 8)
  %116 = load i32, i32* %10, align 4
  %117 = ashr i32 %116, 4
  %118 = call i32 @_SHIFTL(i32 %117, i32 22, i32 2)
  %119 = or i32 %115, %118
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @_SHIFTL(i32 %120, i32 11, i32 11)
  %122 = or i32 %119, %121
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @_SHIFTL(i32 %123, i32 0, i32 11)
  %125 = or i32 %122, %124
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @GX_LOAD_BP_REG(i32 %126)
  ret void
}

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

declare dso_local i32 @GX_LOAD_BP_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
