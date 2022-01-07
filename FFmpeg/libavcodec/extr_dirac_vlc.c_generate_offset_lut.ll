; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dirac_vlc.c_generate_offset_lut.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dirac_vlc.c_generate_offset_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@LUT_SIZE = common dso_local global i32 0, align 4
@res = common dso_local global i32 0, align 4
@LUT_BITS = common dso_local global i64 0, align 8
@RSIZE_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @generate_offset_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_offset_lut(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %67, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @LUT_SIZE, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %70

11:                                               ; preds = %7
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %14
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %6, align 8
  %16 = load i32, i32* @res, align 4
  %17 = call i32 @INIT_RESIDUE(i32 %16)
  %18 = load i32, i32* @res, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i64, i64* @LUT_BITS, align 8
  %21 = call i32 @SET_RESIDUE(i32 %18, i32 %19, i64 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %11
  %28 = load i32, i32* @res, align 4
  %29 = load i32, i32* @RSIZE_BITS, align 4
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 %29, %30
  %32 = ashr i32 %28, %31
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @CONVERT_TO_RESIDUE(i32 %32, i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @RSIZE_BITS, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %40, %43
  %45 = ashr i32 %39, %44
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 -1, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  br label %57

52:                                               ; preds = %11
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i32 1, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %27
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = load i32, i32* @res, align 4
  %60 = load i32, i32* %4, align 4
  %61 = shl i32 %59, %60
  %62 = load i64, i64* @LUT_BITS, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %62, %64
  %66 = call i32 @search_for_golomb(%struct.TYPE_4__* %58, i32 %61, i64 %65)
  br label %67

67:                                               ; preds = %57
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %7

70:                                               ; preds = %7
  ret void
}

declare dso_local i32 @INIT_RESIDUE(i32) #1

declare dso_local i32 @SET_RESIDUE(i32, i32, i64) #1

declare dso_local i32 @CONVERT_TO_RESIDUE(i32, i32) #1

declare dso_local i32 @search_for_golomb(%struct.TYPE_4__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
