; ModuleID = '/home/carl/AnghaBench/HandBrake/test/extr_test.c_test_tty.c'
source_filename = "/home/carl/AnghaBench/HandBrake/test/extr_test.c_test_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout_tty = common dso_local global i32 0, align 4
@stderr_tty = common dso_local global i32 0, align 4
@FILE_TYPE_CHAR = common dso_local global i64 0, align 8
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_tty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_tty() #0 {
  %1 = call i32 @isatty(i32 1)
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store i32 1, i32* @stdout_tty, align 4
  br label %4

4:                                                ; preds = %3, %0
  %5 = call i32 @isatty(i32 2)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  store i32 1, i32* @stderr_tty, align 4
  br label %8

8:                                                ; preds = %7, %4
  ret void
}

declare dso_local i32 @isatty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
