; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_main.c_R_PointOnSegSide.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_main.c_R_PointOnSegSide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }

@FRACBITS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @R_PointOnSegSide(i64 %0, i64 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = sub nsw i64 %30, %31
  store i64 %32, i64* %10, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = sub nsw i64 %37, %38
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %3
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp sle i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i64, i64* %11, align 8
  %48 = icmp sgt i64 %47, 0
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %4, align 4
  br label %109

50:                                               ; preds = %42
  %51 = load i64, i64* %11, align 8
  %52 = icmp slt i64 %51, 0
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %4, align 4
  br label %109

54:                                               ; preds = %3
  %55 = load i64, i64* %11, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %54
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp sle i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i64, i64* %10, align 8
  %63 = icmp slt i64 %62, 0
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %4, align 4
  br label %109

65:                                               ; preds = %57
  %66 = load i64, i64* %10, align 8
  %67 = icmp sgt i64 %66, 0
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %4, align 4
  br label %109

69:                                               ; preds = %54
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* %8, align 8
  %72 = sub nsw i64 %70, %71
  store i64 %72, i64* %12, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %9, align 8
  %75 = sub nsw i64 %73, %74
  store i64 %75, i64* %13, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %10, align 8
  %78 = xor i64 %76, %77
  %79 = load i64, i64* %12, align 8
  %80 = xor i64 %78, %79
  %81 = load i64, i64* %13, align 8
  %82 = xor i64 %80, %81
  %83 = and i64 %82, 2147483648
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %69
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %12, align 8
  %88 = xor i64 %86, %87
  %89 = and i64 %88, 2147483648
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 1, i32* %4, align 4
  br label %109

92:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %109

93:                                               ; preds = %69
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* @FRACBITS, align 8
  %96 = ashr i64 %94, %95
  %97 = load i64, i64* %12, align 8
  %98 = call i64 @FixedMul(i64 %96, i64 %97)
  store i64 %98, i64* %14, align 8
  %99 = load i64, i64* %13, align 8
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* @FRACBITS, align 8
  %102 = ashr i64 %100, %101
  %103 = call i64 @FixedMul(i64 %99, i64 %102)
  store i64 %103, i64* %15, align 8
  %104 = load i64, i64* %15, align 8
  %105 = load i64, i64* %14, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %93
  store i32 0, i32* %4, align 4
  br label %109

108:                                              ; preds = %93
  store i32 1, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %107, %92, %91, %65, %61, %50, %46
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i64 @FixedMul(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
