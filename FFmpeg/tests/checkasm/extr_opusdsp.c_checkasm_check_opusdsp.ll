; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_opusdsp.c_checkasm_check_opusdsp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_opusdsp.c_checkasm_check_opusdsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"postfilter_15\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"postfilter_512\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"postfilter_1022\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"deemphasis\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @checkasm_check_opusdsp() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = call i32 @ff_opus_dsp_init(%struct.TYPE_3__* %1)
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @check_func(i32 %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @test_postfilter(i32 15)
  br label %9

9:                                                ; preds = %7, %0
  %10 = call i32 @report(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @check_func(i32 %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = call i32 @test_postfilter(i32 512)
  br label %17

17:                                               ; preds = %15, %9
  %18 = call i32 @report(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @check_func(i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 @test_postfilter(i32 1022)
  br label %25

25:                                               ; preds = %23, %17
  %26 = call i32 @report(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @check_func(i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 (...) @test_deemphasis()
  br label %33

33:                                               ; preds = %31, %25
  %34 = call i32 @report(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ff_opus_dsp_init(%struct.TYPE_3__*) #1

declare dso_local i64 @check_func(i32, i8*) #1

declare dso_local i32 @test_postfilter(i32) #1

declare dso_local i32 @report(i8*) #1

declare dso_local i32 @test_deemphasis(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
