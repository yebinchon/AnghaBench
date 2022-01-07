; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_jpeg2000dsp.c_checkasm_check_jpeg2000dsp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_jpeg2000dsp.c_checkasm_check_jpeg2000dsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@FF_DWT53 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"jpeg2000_rct_int\00", align 1
@FF_DWT97 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"jpeg2000_ict_float\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"mct_decode\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @checkasm_check_jpeg2000dsp() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = call i32 @ff_jpeg2000dsp_init(%struct.TYPE_3__* %1)
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* @FF_DWT53, align 8
  %6 = getelementptr inbounds i32, i32* %4, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @check_func(i32 %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 (...) @check_rct_int()
  br label %12

12:                                               ; preds = %10, %0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @FF_DWT97, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @check_func(i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = call i32 (...) @check_ict_float()
  br label %22

22:                                               ; preds = %20, %12
  %23 = call i32 @report(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ff_jpeg2000dsp_init(%struct.TYPE_3__*) #1

declare dso_local i64 @check_func(i32, i8*) #1

declare dso_local i32 @check_rct_int(...) #1

declare dso_local i32 @check_ict_float(...) #1

declare dso_local i32 @report(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
