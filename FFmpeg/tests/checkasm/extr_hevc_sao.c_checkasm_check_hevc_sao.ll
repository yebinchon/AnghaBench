; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_hevc_sao.c_checkasm_check_hevc_sao.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_hevc_sao.c_checkasm_check_hevc_sao.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"sao_band\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"sao_edge\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @checkasm_check_hevc_sao() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 8, i32* %1, align 4
  br label %4

4:                                                ; preds = %13, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp sle i32 %5, 12
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @ff_hevc_dsp_init(i32* %2, i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @check_sao_band(i32 %10, i32 %11)
  br label %13

13:                                               ; preds = %7
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, 2
  store i32 %15, i32* %1, align 4
  br label %4

16:                                               ; preds = %4
  %17 = call i32 @report(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 8, i32* %1, align 4
  br label %18

18:                                               ; preds = %27, %16
  %19 = load i32, i32* %1, align 4
  %20 = icmp sle i32 %19, 12
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @ff_hevc_dsp_init(i32* %3, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @check_sao_edge(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %1, align 4
  br label %18

30:                                               ; preds = %18
  %31 = call i32 @report(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ff_hevc_dsp_init(i32*, i32) #1

declare dso_local i32 @check_sao_band(i32, i32) #1

declare dso_local i32 @report(i8*) #1

declare dso_local i32 @check_sao_edge(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
