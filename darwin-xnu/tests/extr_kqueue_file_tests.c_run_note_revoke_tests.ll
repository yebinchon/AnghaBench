; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kqueue_file_tests.c_run_note_revoke_tests.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kqueue_file_tests.c_run_note_revoke_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [19 x i8] c"7.1.1: revoke file\00", align 1
@FILE1 = common dso_local global i64 0, align 8
@NOTE_REVOKE = common dso_local global i32 0, align 4
@YES_EVENT = common dso_local global i32 0, align 4
@NOSLEEP = common dso_local global i32 0, align 4
@CREAT = common dso_local global i32 0, align 4
@SLEEP = common dso_local global i32 0, align 4
@REVOKE = common dso_local global i32 0, align 4
@UNLINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"7.2.1: delete file\00", align 1
@NO_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_note_revoke_tests() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = load i64, i64* @FILE1, align 8
  %3 = load i32, i32* @NOTE_REVOKE, align 4
  %4 = load i32, i32* @YES_EVENT, align 4
  %5 = call i32 @init_test(%struct.TYPE_4__* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %2, i32 1, i32 1, i32 %3, i32 %4)
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* @NOSLEEP, align 4
  %10 = load i32, i32* @CREAT, align 4
  %11 = load i64, i64* @FILE1, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = call i32 @init_action(i32* %8, i32 %9, i32 %10, i32 1, i8* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %15 = load i32, i32* @SLEEP, align 4
  %16 = load i32, i32* @REVOKE, align 4
  %17 = load i64, i64* @FILE1, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @init_action(i32* %14, i32 %15, i32 %16, i32 1, i8* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* @NOSLEEP, align 4
  %24 = load i32, i32* @UNLINK, align 4
  %25 = load i64, i64* @FILE1, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @init_action(i32* %22, i32 %23, i32 %24, i32 1, i8* %26)
  %28 = call i32 @execute_test(%struct.TYPE_4__* %1)
  %29 = load i64, i64* @FILE1, align 8
  %30 = load i32, i32* @NOTE_REVOKE, align 4
  %31 = load i32, i32* @NO_EVENT, align 4
  %32 = call i32 @init_test(%struct.TYPE_4__* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %29, i32 1, i32 0, i32 %30, i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* @NOSLEEP, align 4
  %37 = load i32, i32* @CREAT, align 4
  %38 = load i64, i64* @FILE1, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @init_action(i32* %35, i32 %36, i32 %37, i32 1, i8* %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %42 = load i32, i32* @SLEEP, align 4
  %43 = load i32, i32* @UNLINK, align 4
  %44 = load i64, i64* @FILE1, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @init_action(i32* %41, i32 %42, i32 %43, i32 1, i8* %45)
  %47 = call i32 @execute_test(%struct.TYPE_4__* %1)
  ret void
}

declare dso_local i32 @init_test(%struct.TYPE_4__*, i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @init_action(i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @execute_test(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
