; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InvalidateTexRegion.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InvalidateTexRegion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__gx_texregion = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_InvalidateTexRegion(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.__gx_texregion*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = bitcast i32* %13 to %struct.__gx_texregion*
  store %struct.__gx_texregion* %14, %struct.__gx_texregion** %12, align 8
  %15 = load %struct.__gx_texregion*, %struct.__gx_texregion** %12, align 8
  %16 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @_SHIFTR(i32 %17, i32 15, i32 3)
  %19 = sub nsw i64 %18, 1
  store i64 %19, i64* %4, align 8
  %20 = load %struct.__gx_texregion*, %struct.__gx_texregion** %12, align 8
  %21 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @_SHIFTR(i32 %22, i32 18, i32 3)
  %24 = sub nsw i64 %23, 1
  store i64 %24, i64* %5, align 8
  %25 = load %struct.__gx_texregion*, %struct.__gx_texregion** %12, align 8
  %26 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @_SHIFTR(i32 %27, i32 15, i32 3)
  %29 = sub nsw i64 %28, 1
  store i64 %29, i64* %6, align 8
  %30 = load %struct.__gx_texregion*, %struct.__gx_texregion** %12, align 8
  %31 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @_SHIFTR(i32 %32, i32 18, i32 3)
  %34 = sub nsw i64 %33, 1
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %38

38:                                               ; preds = %37, %1
  %39 = load i64, i64* %5, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i64 0, i64* %5, align 8
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i64, i64* %6, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i64 0, i64* %6, align 8
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i64, i64* %7, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i64 0, i64* %7, align 8
  br label %50

50:                                               ; preds = %49, %46
  %51 = load %struct.__gx_texregion*, %struct.__gx_texregion** %12, align 8
  %52 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %3, align 8
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* %5, align 8
  %56 = add nsw i64 %54, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %8, align 4
  store i32 %57, i32* %9, align 4
  %58 = load i64, i64* %3, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %50
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %6, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i64, i64* %7, align 8
  %66 = add nsw i64 %64, %65
  %67 = sub nsw i64 %66, 2
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %60, %50
  %70 = load %struct.__gx_texregion*, %struct.__gx_texregion** %12, align 8
  %71 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, 32767
  %74 = call i64 @_SHIFTR(i32 %73, i32 6, i32 9)
  %75 = load i32, i32* %8, align 4
  %76 = call i64 @_SHIFTL(i32 %75, i32 9, i32 4)
  %77 = or i64 %74, %76
  %78 = call i64 @_SHIFTL(i32 102, i32 24, i32 8)
  %79 = or i64 %77, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %10, align 4
  %81 = load i64, i64* %6, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %107

83:                                               ; preds = %69
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* %7, align 8
  %86 = add nsw i64 %84, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %8, align 4
  %88 = load i64, i64* %3, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load i32, i32* %9, align 4
  %92 = sub nsw i32 %91, 2
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %90, %83
  %96 = load %struct.__gx_texregion*, %struct.__gx_texregion** %12, align 8
  %97 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 32767
  %100 = call i64 @_SHIFTR(i32 %99, i32 6, i32 9)
  %101 = load i32, i32* %8, align 4
  %102 = call i64 @_SHIFTL(i32 %101, i32 9, i32 4)
  %103 = or i64 %100, %102
  %104 = call i64 @_SHIFTL(i32 102, i32 24, i32 8)
  %105 = or i64 %103, %104
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %95, %69
  %108 = call i32 (...) @__GX_FlushTextureState()
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @GX_LOAD_BP_REG(i32 %109)
  %111 = load i64, i64* %6, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @GX_LOAD_BP_REG(i32 %114)
  br label %116

116:                                              ; preds = %113, %107
  %117 = call i32 (...) @__GX_FlushTextureState()
  ret void
}

declare dso_local i64 @_SHIFTR(i32, i32, i32) #1

declare dso_local i64 @_SHIFTL(i32, i32, i32) #1

declare dso_local i32 @__GX_FlushTextureState(...) #1

declare dso_local i32 @GX_LOAD_BP_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
