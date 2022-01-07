; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp1.c_Vdp1DrawCommands.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp1.c_Vdp1DrawCommands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (...)*, i32 (i32*, %struct.TYPE_14__*)*, i32 (i32*, %struct.TYPE_14__*)*, i32 (i32*, %struct.TYPE_14__*)*, i32 (i32*, %struct.TYPE_14__*, i32*)*, i32 (i32*, %struct.TYPE_14__*, i32*)*, i32 (i32*, %struct.TYPE_14__*, i32*)*, i32 (i32*, %struct.TYPE_14__*, i32*)*, i32 (i32*, %struct.TYPE_14__*, i32*)*, i32 (i32*, %struct.TYPE_14__*, i32*)* }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@VIDCore = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"vdp1\09: Bad command: %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Vdp1DrawCommands(i32* %0, %struct.TYPE_14__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @T1ReadWord(i32* %10, i32 %13)
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  br label %15

15:                                               ; preds = %174, %3
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 32768
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 2000
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi i1 [ false, %15 ], [ %21, %19 ]
  br i1 %23, label %24, label %182

24:                                               ; preds = %22
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 16384
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %124, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 15
  switch i32 %30, label %100 [
    i32 0, label %31
    i32 1, label %39
    i32 2, label %47
    i32 3, label %47
    i32 4, label %55
    i32 5, label %63
    i32 7, label %63
    i32 6, label %71
    i32 8, label %79
    i32 11, label %79
    i32 9, label %86
    i32 10, label %93
  ]

31:                                               ; preds = %28
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** @VIDCore, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 9
  %34 = load i32 (i32*, %struct.TYPE_14__*, i32*)*, i32 (i32*, %struct.TYPE_14__*, i32*)** %33, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 %34(i32* %35, %struct.TYPE_14__* %36, i32* %37)
  br label %123

39:                                               ; preds = %28
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** @VIDCore, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 8
  %42 = load i32 (i32*, %struct.TYPE_14__*, i32*)*, i32 (i32*, %struct.TYPE_14__*, i32*)** %41, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 %42(i32* %43, %struct.TYPE_14__* %44, i32* %45)
  br label %123

47:                                               ; preds = %28, %28
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** @VIDCore, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 7
  %50 = load i32 (i32*, %struct.TYPE_14__*, i32*)*, i32 (i32*, %struct.TYPE_14__*, i32*)** %49, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 %50(i32* %51, %struct.TYPE_14__* %52, i32* %53)
  br label %123

55:                                               ; preds = %28
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** @VIDCore, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 6
  %58 = load i32 (i32*, %struct.TYPE_14__*, i32*)*, i32 (i32*, %struct.TYPE_14__*, i32*)** %57, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 %58(i32* %59, %struct.TYPE_14__* %60, i32* %61)
  br label %123

63:                                               ; preds = %28, %28
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** @VIDCore, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 5
  %66 = load i32 (i32*, %struct.TYPE_14__*, i32*)*, i32 (i32*, %struct.TYPE_14__*, i32*)** %65, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 %66(i32* %67, %struct.TYPE_14__* %68, i32* %69)
  br label %123

71:                                               ; preds = %28
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** @VIDCore, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 4
  %74 = load i32 (i32*, %struct.TYPE_14__*, i32*)*, i32 (i32*, %struct.TYPE_14__*, i32*)** %73, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 %74(i32* %75, %struct.TYPE_14__* %76, i32* %77)
  br label %123

79:                                               ; preds = %28, %28
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** @VIDCore, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 3
  %82 = load i32 (i32*, %struct.TYPE_14__*)*, i32 (i32*, %struct.TYPE_14__*)** %81, align 8
  %83 = load i32*, i32** %4, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %85 = call i32 %82(i32* %83, %struct.TYPE_14__* %84)
  br label %123

86:                                               ; preds = %28
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** @VIDCore, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 2
  %89 = load i32 (i32*, %struct.TYPE_14__*)*, i32 (i32*, %struct.TYPE_14__*)** %88, align 8
  %90 = load i32*, i32** %4, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %92 = call i32 %89(i32* %90, %struct.TYPE_14__* %91)
  br label %123

93:                                               ; preds = %28
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** @VIDCore, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i32 (i32*, %struct.TYPE_14__*)*, i32 (i32*, %struct.TYPE_14__*)** %95, align 8
  %97 = load i32*, i32** %4, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %99 = call i32 %96(i32* %97, %struct.TYPE_14__* %98)
  br label %123

100:                                              ; preds = %28
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @VDP1LOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %101)
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, 2
  store i32 %106, i32* %104, align 4
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** @VIDCore, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i32 (...)*, i32 (...)** %108, align 8
  %110 = call i32 (...) %109()
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = ashr i32 %113, 3
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = ashr i32 %119, 3
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  br label %182

123:                                              ; preds = %93, %86, %79, %71, %63, %55, %47, %39, %31
  br label %124

124:                                              ; preds = %123, %24
  %125 = load i32, i32* %7, align 4
  %126 = and i32 %125, 12288
  %127 = ashr i32 %126, 12
  switch i32 %127, label %174 [
    i32 0, label %128
    i32 1, label %133
    i32 2, label %143
    i32 3, label %161
  ]

128:                                              ; preds = %124
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 32
  store i32 %132, i32* %130, align 4
  br label %174

133:                                              ; preds = %124
  %134 = load i32*, i32** %4, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 2
  %139 = call i32 @T1ReadWord(i32* %134, i32 %138)
  %140 = mul nsw i32 %139, 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  br label %174

143:                                              ; preds = %124
  %144 = load i32, i32* %9, align 4
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 32
  store i32 %150, i32* %9, align 4
  br label %151

151:                                              ; preds = %146, %143
  %152 = load i32*, i32** %4, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 2
  %157 = call i32 @T1ReadWord(i32* %152, i32 %156)
  %158 = mul nsw i32 %157, 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 4
  br label %174

161:                                              ; preds = %124
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %162, -1
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 4
  store i32 -1, i32* %9, align 4
  br label %173

168:                                              ; preds = %161
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 32
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %168, %164
  br label %174

174:                                              ; preds = %124, %173, %151, %133, %128
  %175 = load i32*, i32** %4, align 8
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @T1ReadWord(i32* %175, i32 %178)
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %8, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %8, align 4
  br label %15

182:                                              ; preds = %100, %22
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
