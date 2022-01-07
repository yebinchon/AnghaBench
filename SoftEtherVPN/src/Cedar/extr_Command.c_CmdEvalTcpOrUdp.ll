; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CmdEvalTcpOrUdp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CmdEvalTcpOrUdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32)* }

@.str = private unnamed_addr constant [4 x i32] [i32 116, i32 99, i32 112, i32 0], align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 117, i32 100, i32 112, i32 0], align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"CMD_KeepSet_EVAL_TCP_UDP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CmdEvalTcpOrUdp(%struct.TYPE_4__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %9 = icmp eq %struct.TYPE_4__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32*, i32** %6, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %3
  store i32 0, i32* %4, align 4
  br label %30

14:                                               ; preds = %10
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @UniStrCmpi(i32* %15, i8* bitcast ([4 x i32]* @.str to i8*))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @UniStrCmpi(i32* %19, i8* bitcast ([4 x i32]* @.str.1 to i8*))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %14
  store i32 1, i32* %4, align 4
  br label %30

23:                                               ; preds = %18
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = call i32 @_UU(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 %26(%struct.TYPE_4__* %27, i32 %28)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %23, %22, %13
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i64 @UniStrCmpi(i32*, i8*) #1

declare dso_local i32 @_UU(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
