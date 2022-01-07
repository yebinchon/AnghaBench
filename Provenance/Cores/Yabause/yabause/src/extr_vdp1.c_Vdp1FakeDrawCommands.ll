; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp1.c_Vdp1FakeDrawCommands.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp1.c_Vdp1FakeDrawCommands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (...)*, i32 (i32*, %struct.TYPE_7__*)*, i32 (i32*, %struct.TYPE_7__*)*, i32 (i32*, %struct.TYPE_7__*)* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@VIDCore = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"vdp1\09: Bad command: %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Vdp1FakeDrawCommands(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @T1ReadWord(i32* %8, i32 %11)
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  br label %13

13:                                               ; preds = %125, %2
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 32768
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 2000
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi i1 [ false, %13 ], [ %19, %17 ]
  br i1 %21, label %22, label %133

22:                                               ; preds = %20
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 16384
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %75, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 15
  switch i32 %28, label %51 [
    i32 0, label %29
    i32 1, label %29
    i32 2, label %29
    i32 3, label %29
    i32 4, label %29
    i32 5, label %29
    i32 6, label %29
    i32 7, label %29
    i32 8, label %30
    i32 11, label %30
    i32 9, label %37
    i32 10, label %44
  ]

29:                                               ; preds = %26, %26, %26, %26, %26, %26, %26, %26
  br label %74

30:                                               ; preds = %26, %26
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @VIDCore, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  %33 = load i32 (i32*, %struct.TYPE_7__*)*, i32 (i32*, %struct.TYPE_7__*)** %32, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = call i32 %33(i32* %34, %struct.TYPE_7__* %35)
  br label %74

37:                                               ; preds = %26
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @VIDCore, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32 (i32*, %struct.TYPE_7__*)*, i32 (i32*, %struct.TYPE_7__*)** %39, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = call i32 %40(i32* %41, %struct.TYPE_7__* %42)
  br label %74

44:                                               ; preds = %26
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @VIDCore, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32 (i32*, %struct.TYPE_7__*)*, i32 (i32*, %struct.TYPE_7__*)** %46, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = call i32 %47(i32* %48, %struct.TYPE_7__* %49)
  br label %74

51:                                               ; preds = %26
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @VDP1LOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, 2
  store i32 %57, i32* %55, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @VIDCore, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32 (...)*, i32 (...)** %59, align 8
  %61 = call i32 (...) %60()
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 3
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 3
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  br label %133

74:                                               ; preds = %44, %37, %30, %29
  br label %75

75:                                               ; preds = %74, %22
  %76 = load i32, i32* %5, align 4
  %77 = and i32 %76, 12288
  %78 = ashr i32 %77, 12
  switch i32 %78, label %125 [
    i32 0, label %79
    i32 1, label %84
    i32 2, label %94
    i32 3, label %112
  ]

79:                                               ; preds = %75
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 32
  store i32 %83, i32* %81, align 4
  br label %125

84:                                               ; preds = %75
  %85 = load i32*, i32** %3, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 2
  %90 = call i32 @T1ReadWord(i32* %85, i32 %89)
  %91 = mul nsw i32 %90, 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  br label %125

94:                                               ; preds = %75
  %95 = load i32, i32* %7, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 32
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %97, %94
  %103 = load i32*, i32** %3, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 2
  %108 = call i32 @T1ReadWord(i32* %103, i32 %107)
  %109 = mul nsw i32 %108, 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  br label %125

112:                                              ; preds = %75
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, -1
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  store i32 -1, i32* %7, align 4
  br label %124

119:                                              ; preds = %112
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 32
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %119, %115
  br label %125

125:                                              ; preds = %75, %124, %102, %84, %79
  %126 = load i32*, i32** %3, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @T1ReadWord(i32* %126, i32 %129)
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %13

133:                                              ; preds = %51, %20
  ret void
}

declare dso_local i32 @T1ReadWord(i32*, i32) #1

declare dso_local i32 @VDP1LOG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
