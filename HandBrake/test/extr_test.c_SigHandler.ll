; ModuleID = '/home/carl/AnghaBench/HandBrake/test/extr_test.c_SigHandler.c'
source_filename = "/home/carl/AnghaBench/HandBrake/test/extr_test.c_SigHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HB_ERROR_CANCELED = common dso_local global i32 0, align 4
@done_error = common dso_local global i32 0, align 4
@die = common dso_local global i32 0, align 4
@i_die_date = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Signal %d received, terminating - do it again in case it gets stuck\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Dying badly, files might remain in your /tmp\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SigHandler(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @HB_ERROR_CANCELED, align 4
  store i32 %3, i32* @done_error, align 4
  %4 = load i32, i32* @die, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  store i32 1, i32* @die, align 4
  %7 = call i64 (...) @hb_get_date()
  store i64 %7, i64* @i_die_date, align 8
  %8 = load i32, i32* @stderr, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %22

11:                                               ; preds = %1
  %12 = load i64, i64* @i_die_date, align 8
  %13 = add nsw i64 %12, 500
  %14 = call i64 (...) @hb_get_date()
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @done_error, align 4
  %20 = call i32 @exit(i32 %19) #3
  unreachable

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21, %6
  ret void
}

declare dso_local i64 @hb_get_date(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
