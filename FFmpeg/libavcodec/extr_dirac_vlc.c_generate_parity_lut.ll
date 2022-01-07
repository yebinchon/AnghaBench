; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dirac_vlc.c_generate_parity_lut.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dirac_vlc.c_generate_parity_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i8* }

@LUT_SIZE = common dso_local global i32 0, align 4
@res = common dso_local global i32 0, align 4
@LUT_BITS = common dso_local global i32 0, align 4
@RSIZE_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @generate_parity_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_parity_lut(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %143, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @LUT_SIZE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %146

15:                                               ; preds = %11
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %6, align 8
  store i32 -1, i32* %7, align 4
  %20 = load i32, i32* @res, align 4
  %21 = call i32 @INIT_RESIDUE(i32 %20)
  %22 = load i32, i32* @res, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @LUT_BITS, align 4
  %25 = call i32 @SET_RESIDUE(i32 %22, i32 %23, i32 %24)
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %59, %15
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @LUT_BITS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %62

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, 1
  br label %42

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  br label %42

42:                                               ; preds = %36, %33
  %43 = phi i32 [ %35, %33 ], [ %41, %36 ]
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* @res, align 4
  %45 = load i32, i32* @RSIZE_BITS, align 4
  %46 = load i32, i32* %9, align 4
  %47 = sub nsw i32 %45, %46
  %48 = sub nsw i32 %47, 1
  %49 = ashr i32 %44, %48
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %42
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 2
  store i32 %57, i32* %7, align 4
  br label %62

58:                                               ; preds = %52, %42
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %26

62:                                               ; preds = %55, %26
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @LUT_BITS, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %92

69:                                               ; preds = %65, %62
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  %74 = load i32, i32* @LUT_BITS, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @CONVERT_TO_RESIDUE(i32 %77, i32 %80)
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 5
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %69
  %87 = load i32, i32* %5, align 4
  %88 = and i32 %87, 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %86, %69
  br label %143

92:                                               ; preds = %65
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @LUT_BITS, align 4
  %95 = sub nsw i32 %94, 1
  %96 = load i32, i32* %7, align 4
  %97 = sub nsw i32 %96, 1
  %98 = sub nsw i32 %95, %97
  %99 = ashr i32 %93, %98
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* @LUT_BITS, align 4
  %101 = shl i32 1, %100
  %102 = sub nsw i32 %101, 1
  %103 = load i32, i32* @LUT_BITS, align 4
  %104 = load i32, i32* %7, align 4
  %105 = sub nsw i32 %103, %104
  %106 = ashr i32 %102, %105
  %107 = load i32, i32* %8, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @CONVERT_TO_RESIDUE(i32 %112, i32 %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @RSIZE_BITS, align 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %123, %126
  %128 = ashr i32 %122, %127
  %129 = and i32 %128, 1
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 -1, i32 1
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 8
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %136 = load i32, i32* @res, align 4
  %137 = load i32, i32* %7, align 4
  %138 = shl i32 %136, %137
  %139 = load i32, i32* @LUT_BITS, align 4
  %140 = load i32, i32* %7, align 4
  %141 = sub nsw i32 %139, %140
  %142 = call i32 @search_for_golomb(%struct.TYPE_4__* %135, i32 %138, i32 %141)
  br label %143

143:                                              ; preds = %92, %91
  %144 = load i32, i32* %5, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %5, align 4
  br label %11

146:                                              ; preds = %11
  ret void
}

declare dso_local i32 @INIT_RESIDUE(i32) #1

declare dso_local i32 @SET_RESIDUE(i32, i32, i32) #1

declare dso_local i8* @CONVERT_TO_RESIDUE(i32, i32) #1

declare dso_local i32 @search_for_golomb(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
