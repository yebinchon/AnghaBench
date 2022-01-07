; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_parse_grid_1_sec_ch.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_parse_grid_1_sec_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64**, i32** }

@ff_dca_scf_to_grid_1 = common dso_local global i32* null, align 8
@ff_dca_grid_1_to_scf = common dso_local global i32* null, align 8
@ff_dca_vlc_avg_g3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @parse_grid_1_sec_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_grid_1_sec_ch(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** @ff_dca_scf_to_grid_1, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %8, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %7, align 4
  store i32 2, i32* %6, align 4
  br label %17

17:                                               ; preds = %48, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %17
  %22 = load i32*, i32** @ff_dca_grid_1_to_scf, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %26, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %21
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @parse_scale_factors(%struct.TYPE_4__* %32, i32 %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %92

47:                                               ; preds = %31, %21
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %17

51:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %88, %51
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 4
  %58 = icmp slt i32 %53, %57
  br i1 %58, label %59, label %91

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sge i32 %61, %64
  br i1 %65, label %66, label %87

66:                                               ; preds = %59
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = call i64 @ensure_bits(i32* %68, i32 20)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %92

72:                                               ; preds = %66
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = call i64 @parse_vlc(i32* %74, i32* @ff_dca_vlc_avg_g3, i32 2)
  %76 = sub nsw i64 %75, 16
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  %79 = load i64**, i64*** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64*, i64** %79, i64 %81
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  store i64 %76, i64* %86, align 8
  br label %87

87:                                               ; preds = %72, %59
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %52

91:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %71, %46
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @parse_scale_factors(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @ensure_bits(i32*, i32) #1

declare dso_local i64 @parse_vlc(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
