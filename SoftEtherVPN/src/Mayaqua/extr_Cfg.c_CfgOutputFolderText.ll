; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Cfg.c_CfgOutputFolderText.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Cfg.c_CfgOutputFolderText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32*, i64 }

@CfgEnumItemProc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@CfgEnumFolderProc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CfgOutputFolderText(i32* %0, %struct.TYPE_9__* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = icmp eq %struct.TYPE_9__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %3
  br label %56

14:                                               ; preds = %10
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @CfgAddDeclare(i32* %15, i32 %18, i64 %19)
  %21 = load i64, i64* %6, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %6, align 8
  %23 = call i32 @Zero(%struct.TYPE_10__* %7, i32 24)
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  store i64 %24, i64* %25, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  store i32* %26, i32** %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %29, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = load i32, i32* @CfgEnumItemProc, align 4
  %32 = call i32 @CfgEnumItem(%struct.TYPE_9__* %30, i32 %31, %struct.TYPE_10__* %7)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @LIST_NUM(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %14
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @LIST_NUM(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @WriteBuf(i32* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  br label %47

47:                                               ; preds = %44, %38, %14
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = load i32, i32* @CfgEnumFolderProc, align 4
  %50 = call i32 @CfgEnumFolder(%struct.TYPE_9__* %48, i32 %49, %struct.TYPE_10__* %7)
  %51 = load i64, i64* %6, align 8
  %52 = add nsw i64 %51, -1
  store i64 %52, i64* %6, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @CfgAddEnd(i32* %53, i64 %54)
  br label %56

56:                                               ; preds = %47, %13
  ret void
}

declare dso_local i32 @CfgAddDeclare(i32*, i32, i64) #1

declare dso_local i32 @Zero(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @CfgEnumItem(%struct.TYPE_9__*, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i32 @WriteBuf(i32*, i8*, i32) #1

declare dso_local i32 @CfgEnumFolder(%struct.TYPE_9__*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @CfgAddEnd(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
