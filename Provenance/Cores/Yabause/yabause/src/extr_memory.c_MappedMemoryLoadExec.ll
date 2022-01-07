; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_memory.c_MappedMemoryLoadExec.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_memory.c_MappedMemoryLoadExec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c".COF\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c".COFF\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".ELF\00", align 1
@MSH2 = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MappedMemoryLoadExec(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i8* @strrchr(i8* %7, i8 signext 46)
  store i8* %8, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %56

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @strdup(i8* %11)
  store i8* %12, i8** %5, align 8
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %27, %10
  %14 = load i64, i64* %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @strlen(i8* %15)
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = call signext i8 @toupper(i8 signext %22)
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8 %23, i8* %26, align 1
  br label %27

27:                                               ; preds = %18
  %28 = load i64, i64* %6, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %6, align 8
  br label %13

30:                                               ; preds = %13
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34, %30
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @MappedMemoryLoadCoff(i8* %39)
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @free(i8* %41)
  br label %74

43:                                               ; preds = %34
  %44 = load i8*, i8** %5, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @MappedMemoryLoadElf(i8* %48)
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @free(i8* %50)
  br label %74

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @free(i8* %54)
  br label %56

56:                                               ; preds = %53, %2
  %57 = call i32 (...) @YabauseResetNoLoad()
  %58 = call i32 (...) @YabauseSpeedySetup()
  %59 = load i8*, i8** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @MappedMemoryLoad(i8* %59, i32 %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MSH2, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MSH2, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = call i32 @SH2GetRegisters(%struct.TYPE_6__* %62, %struct.TYPE_7__* %64)
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MSH2, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MSH2, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MSH2, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = call i32 @SH2SetRegisters(%struct.TYPE_6__* %70, %struct.TYPE_7__* %72)
  br label %74

74:                                               ; preds = %56, %47, %38
  ret void
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @MappedMemoryLoadCoff(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @MappedMemoryLoadElf(i8*) #1

declare dso_local i32 @YabauseResetNoLoad(...) #1

declare dso_local i32 @YabauseSpeedySetup(...) #1

declare dso_local i32 @MappedMemoryLoad(i8*, i32) #1

declare dso_local i32 @SH2GetRegisters(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @SH2SetRegisters(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
