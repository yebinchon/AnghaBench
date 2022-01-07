; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jcinit.c_jinit_compress_master.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jcinit.c_jinit_compress_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_17__*, i64, i64, i64, i32 }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_19__*)* }
%struct.TYPE_17__ = type { i32 (i32)* }

@FALSE = common dso_local global i32 0, align 4
@JERR_ARITH_NOTIMPL = common dso_local global i32 0, align 4
@JERR_NOT_COMPILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jinit_compress_master(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %3 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %4 = load i32, i32* @FALSE, align 4
  %5 = call i32 @jinit_c_master_control(%struct.TYPE_19__* %3, i32 %4)
  %6 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %12 = call i32 @jinit_color_converter(%struct.TYPE_19__* %11)
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %14 = call i32 @jinit_downsampler(%struct.TYPE_19__* %13)
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %16 = load i32, i32* @FALSE, align 4
  %17 = call i32 @jinit_c_prep_controller(%struct.TYPE_19__* %15, i32 %16)
  br label %18

18:                                               ; preds = %10, %1
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %20 = call i32 @jinit_forward_dct(%struct.TYPE_19__* %19)
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %27 = load i32, i32* @JERR_ARITH_NOTIMPL, align 4
  %28 = call i32 @ERREXIT(%struct.TYPE_19__* %26, i32 %27)
  br label %42

29:                                               ; preds = %18
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %36 = load i32, i32* @JERR_NOT_COMPILED, align 4
  %37 = call i32 @ERREXIT(%struct.TYPE_19__* %35, i32 %36)
  br label %41

38:                                               ; preds = %29
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %40 = call i32 @jinit_huff_encoder(%struct.TYPE_19__* %39)
  br label %41

41:                                               ; preds = %38, %34
  br label %42

42:                                               ; preds = %41, %25
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %48, %42
  %54 = phi i1 [ true, %42 ], [ %52, %48 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @jinit_c_coef_controller(%struct.TYPE_19__* %43, i32 %55)
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %58 = load i32, i32* @FALSE, align 4
  %59 = call i32 @jinit_c_main_controller(%struct.TYPE_19__* %57, i32 %58)
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %61 = call i32 @jinit_marker_writer(%struct.TYPE_19__* %60)
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i32 (i32)*, i32 (i32)** %65, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %68 = ptrtoint %struct.TYPE_19__* %67 to i32
  %69 = call i32 %66(i32 %68)
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %73, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %76 = call i32 %74(%struct.TYPE_19__* %75)
  ret void
}

declare dso_local i32 @jinit_c_master_control(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @jinit_color_converter(%struct.TYPE_19__*) #1

declare dso_local i32 @jinit_downsampler(%struct.TYPE_19__*) #1

declare dso_local i32 @jinit_c_prep_controller(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @jinit_forward_dct(%struct.TYPE_19__*) #1

declare dso_local i32 @ERREXIT(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @jinit_huff_encoder(%struct.TYPE_19__*) #1

declare dso_local i32 @jinit_c_coef_controller(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @jinit_c_main_controller(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @jinit_marker_writer(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
