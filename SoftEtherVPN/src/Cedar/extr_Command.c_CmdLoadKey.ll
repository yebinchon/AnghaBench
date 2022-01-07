; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CmdLoadKey.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CmdLoadKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)* }

@.str = private unnamed_addr constant [20 x i8] c"CMD_LOADCERT_FAILED\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"CMD_LOADKEY_ENCRYPTED_1\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"CMD_LOADKEY_ENCRYPTED_2\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"CMD_LOADKEY_ENCRYPTED_3\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CmdLoadKey(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = icmp eq %struct.TYPE_7__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  store i32* null, i32** %3, align 8
  br label %78

15:                                               ; preds = %11
  %16 = load i32*, i32** %5, align 8
  %17 = call i32* @ReadDumpW(i32* %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %22, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 %23(%struct.TYPE_7__* %24, i32 %25)
  store i32* null, i32** %3, align 8
  br label %78

27:                                               ; preds = %15
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @IsEncryptedK(i32* %28, i32 1)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @IsBase64(i32* %33)
  %35 = call i32* @BufToK(i32* %32, i32 1, i32 %34, i8* null)
  store i32* %35, i32** %7, align 8
  br label %74

36:                                               ; preds = %27
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %38, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = call i32 @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 %39(%struct.TYPE_7__* %40, i32 %41)
  br label %43

43:                                               ; preds = %36, %66
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i8* (%struct.TYPE_7__*, i32)*, i8* (%struct.TYPE_7__*, i32)** %45, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = call i32 @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %49 = call i8* %46(%struct.TYPE_7__* %47, i32 %48)
  store i8* %49, i8** %8, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @FreeBuf(i32* %53)
  store i32* null, i32** %3, align 8
  br label %78

55:                                               ; preds = %43
  %56 = load i32*, i32** %6, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @IsBase64(i32* %57)
  %59 = load i8*, i8** %8, align 8
  %60 = call i32* @BufToK(i32* %56, i32 1, i32 %58, i8* %59)
  store i32* %60, i32** %7, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @Free(i8* %61)
  %63 = load i32*, i32** %7, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %73

66:                                               ; preds = %55
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %68, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = call i32 @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %72 = call i32 %69(%struct.TYPE_7__* %70, i32 %71)
  br label %43

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %31
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @FreeBuf(i32* %75)
  %77 = load i32*, i32** %7, align 8
  store i32* %77, i32** %3, align 8
  br label %78

78:                                               ; preds = %74, %52, %20, %14
  %79 = load i32*, i32** %3, align 8
  ret i32* %79
}

declare dso_local i32* @ReadDumpW(i32*) #1

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32 @IsEncryptedK(i32*, i32) #1

declare dso_local i32* @BufToK(i32*, i32, i32, i8*) #1

declare dso_local i32 @IsBase64(i32*) #1

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local i32 @Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
