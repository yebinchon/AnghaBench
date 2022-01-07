; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CmdEvalProtocol.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CmdEvalProtocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32)* }

@INFINITE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"CMD_PROTOCOL_EVAL_FAILED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CmdEvalProtocol(%struct.TYPE_4__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [64 x i8], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = icmp eq %struct.TYPE_4__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32*, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  store i32 0, i32* %4, align 4
  br label %31

15:                                               ; preds = %11
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @UniToStr(i8* %16, i32 64, i32* %17)
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %20 = call i64 @StrToProtocol(i8* %19)
  %21 = load i64, i64* @INFINITE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = call i32 @_UU(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 %26(%struct.TYPE_4__* %27, i32 %28)
  store i32 0, i32* %4, align 4
  br label %31

30:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %23, %14
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @UniToStr(i8*, i32, i32*) #1

declare dso_local i64 @StrToProtocol(i8*) #1

declare dso_local i32 @_UU(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
