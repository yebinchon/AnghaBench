; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CmdPasswordPrompt.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CmdPasswordPrompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* (%struct.TYPE_9__*, i8*)*, i32 (%struct.TYPE_9__*, i8*)* }

@.str = private unnamed_addr constant [22 x i8] c"CMD_VPNCMD_PWPROMPT_0\00", align 1
@.str.1 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"CMD_VPNCMD_PWPROMPT_1\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"CMD_VPNCMD_PWPROMPT_2\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"CMD_VPNCMD_PWPROMPT_3\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CmdPasswordPrompt(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = icmp eq %struct.TYPE_9__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %68

9:                                                ; preds = %1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load i32 (%struct.TYPE_9__*, i8*)*, i32 (%struct.TYPE_9__*, i8*)** %11, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = call i8* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 %12(%struct.TYPE_9__* %13, i8* %14)
  br label %16

16:                                               ; preds = %53, %9
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i32 (%struct.TYPE_9__*, i8*)*, i32 (%struct.TYPE_9__*, i8*)** %18, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = call i32 %19(%struct.TYPE_9__* %20, i8* bitcast ([1 x i32]* @.str.1 to i8*))
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i8* (%struct.TYPE_9__*, i8*)*, i8* (%struct.TYPE_9__*, i8*)** %23, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = call i8* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %27 = call i8* %24(%struct.TYPE_9__* %25, i8* %26)
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  store i8* null, i8** %2, align 8
  br label %68

31:                                               ; preds = %16
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i8* (%struct.TYPE_9__*, i8*)*, i8* (%struct.TYPE_9__*, i8*)** %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = call i8* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %37 = call i8* %34(%struct.TYPE_9__* %35, i8* %36)
  store i8* %37, i8** %5, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @Free(i8* %41)
  store i8* null, i8** %2, align 8
  br label %68

43:                                               ; preds = %31
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32 (%struct.TYPE_9__*, i8*)*, i32 (%struct.TYPE_9__*, i8*)** %45, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = call i32 %46(%struct.TYPE_9__* %47, i8* bitcast ([1 x i32]* @.str.1 to i8*))
  %49 = load i8*, i8** %4, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i64 @StrCmp(i8* %49, i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %43
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @Free(i8* %54)
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @Free(i8* %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32 (%struct.TYPE_9__*, i8*)*, i32 (%struct.TYPE_9__*, i8*)** %59, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = call i8* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %63 = call i32 %60(%struct.TYPE_9__* %61, i8* %62)
  br label %16

64:                                               ; preds = %43
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 @Free(i8* %65)
  %67 = load i8*, i8** %5, align 8
  store i8* %67, i8** %2, align 8
  br label %68

68:                                               ; preds = %64, %40, %30, %8
  %69 = load i8*, i8** %2, align 8
  ret i8* %69
}

declare dso_local i8* @_UU(i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i64 @StrCmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
