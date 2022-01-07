; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_mpc_demux.c_mpc_set_replay_level.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_mpc_demux.c_mpc_set_replay_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpc_set_replay_level(%struct.TYPE_5__* %0, float %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca float, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store float %1, float* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %5
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  br label %25

20:                                               ; preds = %5
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i64 [ %19, %15 ], [ %24, %20 ]
  %27 = sitofp i64 %26 to float
  store float %27, float* %11, align 4
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  br label %40

35:                                               ; preds = %25
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  br label %40

40:                                               ; preds = %35, %30
  %41 = phi i64 [ %34, %30 ], [ %39, %35 ]
  %42 = sitofp i64 %41 to float
  store float %42, float* %12, align 4
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load i64, i64* %10, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  br label %89

49:                                               ; preds = %45, %40
  %50 = load float, float* %11, align 4
  %51 = fcmp une float %50, 0.000000e+00
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store float 1.000000e+00, float* %11, align 4
  br label %59

53:                                               ; preds = %49
  %54 = load float, float* %11, align 4
  %55 = fdiv float %54, 5.120000e+03
  %56 = call i32 @pow(i32 10, float %55)
  %57 = sdiv i32 32768, %56
  %58 = sitofp i32 %57 to float
  store float %58, float* %11, align 4
  br label %59

59:                                               ; preds = %53, %52
  %60 = load float, float* %12, align 4
  %61 = fcmp une float %60, 0.000000e+00
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  store float 1.000000e+00, float* %12, align 4
  br label %71

63:                                               ; preds = %59
  %64 = load float, float* %7, align 4
  %65 = load float, float* %12, align 4
  %66 = fdiv float %65, 2.560000e+02
  %67 = fsub float %64, %66
  %68 = fdiv float %67, 2.000000e+01
  %69 = call i32 @pow(i32 10, float %68)
  %70 = sitofp i32 %69 to float
  store float %70, float* %12, align 4
  br label %71

71:                                               ; preds = %63, %62
  %72 = load i64, i64* %10, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load float, float* %11, align 4
  %76 = load float, float* %12, align 4
  %77 = fcmp olt float %75, %76
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = load i64, i64* %8, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78, %74
  %82 = load float, float* %11, align 4
  store float %82, float* %12, align 4
  br label %83

83:                                               ; preds = %81, %78, %71
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load float, float* %12, align 4
  %88 = call i32 @mpc_decoder_scale_output(i32 %86, float %87)
  br label %89

89:                                               ; preds = %83, %48
  ret void
}

declare dso_local i32 @pow(i32, float) #1

declare dso_local i32 @mpc_decoder_scale_output(i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
