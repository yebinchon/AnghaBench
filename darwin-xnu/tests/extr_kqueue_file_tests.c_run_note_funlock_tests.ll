; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kqueue_file_tests.c_run_note_funlock_tests.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kqueue_file_tests.c_run_note_funlock_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32, i32* }

@.str = private unnamed_addr constant [20 x i8] c"11.1.1: unlock file\00", align 1
@FILE1 = common dso_local global i64 0, align 8
@NOTE_FUNLOCK = common dso_local global i32 0, align 4
@YES_EVENT = common dso_local global i32 0, align 4
@NOSLEEP = common dso_local global i32 0, align 4
@CREAT = common dso_local global i32 0, align 4
@SLEEP = common dso_local global i32 0, align 4
@FUNLOCK = common dso_local global i32 0, align 4
@UNLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_note_funlock_tests() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = load i64, i64* @FILE1, align 8
  %3 = load i32, i32* @NOTE_FUNLOCK, align 4
  %4 = load i32, i32* @YES_EVENT, align 4
  %5 = call i32 @init_test(%struct.TYPE_4__* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %2, i32 1, i32 1, i32 %3, i32 %4)
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* @NOSLEEP, align 4
  %11 = load i32, i32* @CREAT, align 4
  %12 = load i64, i64* @FILE1, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @init_action(i32* %9, i32 %10, i32 %11, i32 2, i8* %13, i8* null)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %16 = load i32, i32* @SLEEP, align 4
  %17 = load i32, i32* @FUNLOCK, align 4
  %18 = load i64, i64* @FILE1, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @init_action(i32* %15, i32 %16, i32 %17, i32 2, i8* %19, i8* null)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* @NOSLEEP, align 4
  %25 = load i32, i32* @UNLINK, align 4
  %26 = load i64, i64* @FILE1, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @init_action(i32* %23, i32 %24, i32 %25, i32 2, i8* %27, i8* null)
  %29 = call i32 @execute_test(%struct.TYPE_4__* %1)
  ret void
}

declare dso_local i32 @init_test(%struct.TYPE_4__*, i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @init_action(i32*, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @execute_test(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
