; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Secure.c_FindSecObject.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Secure.c_FindSecObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@SEC_ERROR_BAD_PARAMETER = common dso_local global i32 0, align 4
@SEC_ERROR_NO_SESSION = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i64 0, align 8
@SEC_ERROR_OBJ_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @FindSecObject(%struct.TYPE_10__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = icmp eq %struct.TYPE_10__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %82

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @SEC_ERROR_BAD_PARAMETER, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %82

22:                                               ; preds = %15
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @SEC_ERROR_NO_SESSION, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %82

31:                                               ; preds = %22
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = call i32* @EnumSecObject(%struct.TYPE_10__* %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %82

37:                                               ; preds = %31
  store i64 0, i64* %9, align 8
  br label %38

38:                                               ; preds = %68, %37
  %39 = load i64, i64* %9, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i64 @LIST_NUM(i32* %40)
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %38
  %44 = load i32*, i32** %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call %struct.TYPE_9__* @LIST_DATA(i32* %44, i64 %45)
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %11, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %43
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @INFINITE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %52, %43
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i64 @StrCmpi(i32 %59, i8* %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %65 = call %struct.TYPE_9__* @CloneSecObject(%struct.TYPE_9__* %64)
  store %struct.TYPE_9__* %65, %struct.TYPE_9__** %10, align 8
  br label %71

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %52
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %9, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %9, align 8
  br label %38

71:                                               ; preds = %63, %38
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @FreeEnumSecObject(i32* %72)
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %75 = icmp eq %struct.TYPE_9__* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @SEC_ERROR_OBJ_NOT_FOUND, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %71
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %81, %struct.TYPE_9__** %4, align 8
  br label %82

82:                                               ; preds = %80, %36, %27, %18, %14
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %83
}

declare dso_local i32* @EnumSecObject(%struct.TYPE_10__*) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_9__* @LIST_DATA(i32*, i64) #1

declare dso_local i64 @StrCmpi(i32, i8*) #1

declare dso_local %struct.TYPE_9__* @CloneSecObject(%struct.TYPE_9__*) #1

declare dso_local i32 @FreeEnumSecObject(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
