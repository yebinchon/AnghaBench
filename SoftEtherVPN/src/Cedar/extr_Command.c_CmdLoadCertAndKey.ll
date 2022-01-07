; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CmdLoadCertAndKey.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CmdLoadCertAndKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i32)* }

@.str = private unnamed_addr constant [20 x i8] c"CMD_LOADCERT_FAILED\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"CMD_LOADKEY_FAILED\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"CMD_KEYPAIR_FAILED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CmdLoadCertAndKey(%struct.TYPE_7__* %0, i32** %1, i32** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = icmp eq %struct.TYPE_7__* %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %5
  %17 = load i32*, i32** %10, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %16
  %20 = load i32*, i32** %11, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i32**, i32*** %8, align 8
  %24 = icmp eq i32** %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32**, i32*** %9, align 8
  %27 = icmp eq i32** %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22, %19, %16, %5
  store i32 0, i32* %6, align 4
  br label %77

29:                                               ; preds = %25
  %30 = load i32*, i32** %10, align 8
  %31 = call i32* @FileToXW(i32* %30)
  store i32* %31, i32** %12, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %36, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 %37(%struct.TYPE_7__* %38, i32 %39)
  store i32 0, i32* %6, align 4
  br label %77

41:                                               ; preds = %29
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i32* @CmdLoadKey(%struct.TYPE_7__* %42, i32* %43)
  store i32* %44, i32** %13, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %49, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = call i32 @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %53 = call i32 %50(%struct.TYPE_7__* %51, i32 %52)
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @FreeX(i32* %54)
  store i32 0, i32* %6, align 4
  br label %77

56:                                               ; preds = %41
  %57 = load i32*, i32** %12, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @CheckXandK(i32* %57, i32* %58)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %63, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = call i32 @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %67 = call i32 %64(%struct.TYPE_7__* %65, i32 %66)
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @FreeX(i32* %68)
  %70 = load i32*, i32** %13, align 8
  %71 = call i32 @FreeK(i32* %70)
  store i32 0, i32* %6, align 4
  br label %77

72:                                               ; preds = %56
  %73 = load i32*, i32** %12, align 8
  %74 = load i32**, i32*** %8, align 8
  store i32* %73, i32** %74, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = load i32**, i32*** %9, align 8
  store i32* %75, i32** %76, align 8
  store i32 1, i32* %6, align 4
  br label %77

77:                                               ; preds = %72, %61, %47, %34, %28
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32* @FileToXW(i32*) #1

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @CmdLoadKey(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @FreeX(i32*) #1

declare dso_local i32 @CheckXandK(i32*, i32*) #1

declare dso_local i32 @FreeK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
