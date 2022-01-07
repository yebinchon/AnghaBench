; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_interface.c_ValidClientNumber.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_interface.c_ValidClientNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i32, i8*, i8*, i32, i32)* }

@botlibglobals = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@botimport = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PRT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s: invalid client number %d, [0, %d]\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ValidClientNumber(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @botlibglobals, i32 0, i32 0), align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %8, %2
  %13 = load i32 (i32, i8*, i8*, i32, i32)*, i32 (i32, i8*, i8*, i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @botimport, i32 0, i32 0), align 8
  %14 = load i32, i32* @PRT_ERROR, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @botlibglobals, i32 0, i32 0), align 4
  %18 = call i32 %13(i32 %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %16, i32 %17)
  %19 = load i32, i32* @qfalse, align 4
  store i32 %19, i32* %3, align 4
  br label %22

20:                                               ; preds = %8
  %21 = load i32, i32* @qtrue, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %20, %12
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
