; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_spec.c_P_PlayerInSpecialSector.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_spec.c_P_PlayerInSpecialSector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__*, i32, i32, i32* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32 }

@pw_ironfeet = common dso_local global i64 0, align 8
@leveltime = common dso_local global i32 0, align 4
@CF_GODMODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"P_PlayerInSpecialSector: unknown special %i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_PlayerInSpecialSector(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %3, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %120

21:                                               ; preds = %1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %115 [
    i32 5, label %25
    i32 7, label %44
    i32 16, label %63
    i32 4, label %63
    i32 9, label %85
    i32 11, label %92
  ]

25:                                               ; preds = %21
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @pw_ironfeet, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @leveltime, align 4
  %35 = and i32 %34, 31
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = call i32 @P_DamageMobj(%struct.TYPE_9__* %40, i32* null, i32* null, i32 10)
  br label %42

42:                                               ; preds = %37, %33
  br label %43

43:                                               ; preds = %42, %25
  br label %120

44:                                               ; preds = %21
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @pw_ironfeet, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* @leveltime, align 4
  %54 = and i32 %53, 31
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = call i32 @P_DamageMobj(%struct.TYPE_9__* %59, i32* null, i32* null, i32 5)
  br label %61

61:                                               ; preds = %56, %52
  br label %62

62:                                               ; preds = %61, %44
  br label %120

63:                                               ; preds = %21, %21
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @pw_ironfeet, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = call i32 (...) @P_Random()
  %73 = icmp slt i32 %72, 5
  br i1 %73, label %74, label %84

74:                                               ; preds = %71, %63
  %75 = load i32, i32* @leveltime, align 4
  %76 = and i32 %75, 31
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = call i32 @P_DamageMobj(%struct.TYPE_9__* %81, i32* null, i32* null, i32 20)
  br label %83

83:                                               ; preds = %78, %74
  br label %84

84:                                               ; preds = %83, %71
  br label %120

85:                                               ; preds = %21
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i32 0, i32* %91, align 8
  br label %120

92:                                               ; preds = %21
  %93 = load i32, i32* @CF_GODMODE, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load i32, i32* @leveltime, align 4
  %100 = and i32 %99, 31
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %92
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = call i32 @P_DamageMobj(%struct.TYPE_9__* %105, i32* null, i32* null, i32 20)
  br label %107

107:                                              ; preds = %102, %92
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp sle i32 %110, 10
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = call i32 (...) @G_ExitLevel()
  br label %114

114:                                              ; preds = %112, %107
  br label %120

115:                                              ; preds = %21
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @I_Error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %20, %115, %114, %85, %84, %62, %43
  ret void
}

declare dso_local i32 @P_DamageMobj(%struct.TYPE_9__*, i32*, i32*, i32) #1

declare dso_local i32 @P_Random(...) #1

declare dso_local i32 @G_ExitLevel(...) #1

declare dso_local i32 @I_Error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
