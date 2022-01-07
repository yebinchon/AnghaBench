; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_vm_x86.c_EmitAddEDI4.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_vm_x86.c_EmitAddEDI4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@LastCommand = common dso_local global i64 0, align 8
@LAST_COMMAND_SUB_DI_4 = common dso_local global i64 0, align 8
@jused = common dso_local global i64* null, align 8
@instruction = common dso_local global i32 0, align 4
@compiledOfs = common dso_local global i32 0, align 4
@LAST_COMMAND_SUB_DI_8 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"83 EF 04\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"83 C7 04\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @EmitAddEDI4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EmitAddEDI4(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load i64, i64* @LastCommand, align 8
  %4 = load i64, i64* @LAST_COMMAND_SUB_DI_4, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %25

6:                                                ; preds = %1
  %7 = load i64*, i64** @jused, align 8
  %8 = load i32, i32* @instruction, align 4
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i64, i64* %7, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %6
  %15 = load i32, i32* @compiledOfs, align 4
  %16 = sub nsw i32 %15, 3
  store i32 %16, i32* @compiledOfs, align 4
  %17 = load i32, i32* @compiledOfs, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* @instruction, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32 %17, i32* %24, align 4
  br label %51

25:                                               ; preds = %6, %1
  %26 = load i64, i64* @LastCommand, align 8
  %27 = load i64, i64* @LAST_COMMAND_SUB_DI_8, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load i64*, i64** @jused, align 8
  %31 = load i32, i32* @instruction, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %30, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %29
  %38 = load i32, i32* @compiledOfs, align 4
  %39 = sub nsw i32 %38, 3
  store i32 %39, i32* @compiledOfs, align 4
  %40 = load i32, i32* @compiledOfs, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @instruction, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 %40, i32* %47, align 4
  %48 = call i32 @EmitString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %51

49:                                               ; preds = %29, %25
  %50 = call i32 @EmitString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %37, %14
  ret void
}

declare dso_local i32 @EmitString(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
