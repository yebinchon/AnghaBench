; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_sbrdsp.c_checkasm_check_sbrdsp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_sbrdsp.c_checkasm_check_sbrdsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"sum64x5\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"sum_square\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"neg_odd_64\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"qmf_pre_shuffle\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"qmf_post_shuffle\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"qmf_deint_neg\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"qmf_deint_bfly\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"autocorrelate\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"hf_gen\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"hf_g_filt\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"hf_apply_noise\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @checkasm_check_sbrdsp() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = call i32 @ff_sbrdsp_init(%struct.TYPE_4__* %1)
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 9
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @check_func(i32 %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 (...) @test_sum64x5()
  br label %9

9:                                                ; preds = %7, %0
  %10 = call i32 @report(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 8
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @check_func(i32 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = call i32 (...) @test_sum_square()
  br label %17

17:                                               ; preds = %15, %9
  %18 = call i32 @report(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @check_func(i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 (...) @test_neg_odd_64()
  br label %25

25:                                               ; preds = %23, %17
  %26 = call i32 @report(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @check_func(i32 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 (...) @test_qmf_pre_shuffle()
  br label %33

33:                                               ; preds = %31, %25
  %34 = call i32 @report(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @check_func(i32 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i32 (...) @test_qmf_post_shuffle()
  br label %41

41:                                               ; preds = %39, %33
  %42 = call i32 @report(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @check_func(i32 %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = call i32 (...) @test_qmf_deint_neg()
  br label %49

49:                                               ; preds = %47, %41
  %50 = call i32 @report(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @check_func(i32 %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = call i32 (...) @test_qmf_deint_bfly()
  br label %57

57:                                               ; preds = %55, %49
  %58 = call i32 @report(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @check_func(i32 %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = call i32 (...) @test_autocorrelate()
  br label %65

65:                                               ; preds = %63, %57
  %66 = call i32 @report(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @check_func(i32 %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = call i32 (...) @test_hf_gen()
  br label %73

73:                                               ; preds = %71, %65
  %74 = call i32 @report(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @check_func(i32 %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = call i32 (...) @test_hf_g_filt()
  br label %81

81:                                               ; preds = %79, %73
  %82 = call i32 @report(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %83 = call i32 @test_hf_apply_noise(%struct.TYPE_4__* %1)
  %84 = call i32 @report(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ff_sbrdsp_init(%struct.TYPE_4__*) #1

declare dso_local i64 @check_func(i32, i8*) #1

declare dso_local i32 @test_sum64x5(...) #1

declare dso_local i32 @report(i8*) #1

declare dso_local i32 @test_sum_square(...) #1

declare dso_local i32 @test_neg_odd_64(...) #1

declare dso_local i32 @test_qmf_pre_shuffle(...) #1

declare dso_local i32 @test_qmf_post_shuffle(...) #1

declare dso_local i32 @test_qmf_deint_neg(...) #1

declare dso_local i32 @test_qmf_deint_bfly(...) #1

declare dso_local i32 @test_autocorrelate(...) #1

declare dso_local i32 @test_hf_gen(...) #1

declare dso_local i32 @test_hf_g_filt(...) #1

declare dso_local i32 @test_hf_apply_noise(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
