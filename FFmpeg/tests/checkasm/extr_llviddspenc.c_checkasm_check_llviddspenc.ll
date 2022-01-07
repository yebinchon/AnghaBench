; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_llviddspenc.c_checkasm_check_llviddspenc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_llviddspenc.c_checkasm_check_llviddspenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"diff_bytes\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"sub_left_predict\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @checkasm_check_llviddspenc() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @ff_llvidencdsp_init(i32* %1)
  %3 = call i32 @check_diff_bytes(i32* %1)
  %4 = call i32 @report(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @check_sub_left_pred(i32* %1)
  %6 = call i32 @report(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ff_llvidencdsp_init(i32*) #1

declare dso_local i32 @check_diff_bytes(i32*) #1

declare dso_local i32 @report(i8*) #1

declare dso_local i32 @check_sub_left_pred(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
