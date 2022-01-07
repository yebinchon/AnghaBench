; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c___GX_SetSUTexRegs.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c___GX_SetSUTexRegs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32, i32*, i32 }

@__gx = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__GX_SetSUTexRegs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__GX_SetSUTexRegs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @_SHIFTR(i32 %11, i32 10, i32 4)
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @_SHIFTR(i32 %16, i32 16, i32 3)
  store i32 %17, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %18

18:                                               ; preds = %91, %0
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* %2, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %94

22:                                               ; preds = %18
  %23 = load i32, i32* %1, align 4
  switch i32 %23, label %76 [
    i32 131, label %24
    i32 130, label %37
    i32 129, label %50
    i32 128, label %63
  ]

24:                                               ; preds = %22
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 7
  store i32 %30, i32* %5, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @_SHIFTR(i32 %35, i32 3, i32 3)
  store i32 %36, i32* %4, align 4
  br label %77

37:                                               ; preds = %22
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @_SHIFTR(i32 %42, i32 6, i32 3)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @_SHIFTR(i32 %48, i32 9, i32 3)
  store i32 %49, i32* %4, align 4
  br label %77

50:                                               ; preds = %22
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @_SHIFTR(i32 %55, i32 12, i32 3)
  store i32 %56, i32* %5, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @_SHIFTR(i32 %61, i32 15, i32 3)
  store i32 %62, i32* %4, align 4
  br label %77

63:                                               ; preds = %22
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @_SHIFTR(i32 %68, i32 18, i32 3)
  store i32 %69, i32* %5, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @_SHIFTR(i32 %74, i32 21, i32 3)
  store i32 %75, i32* %4, align 4
  br label %77

76:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %63, %50, %37, %24
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @_SHIFTL(i32 1, i32 %78, i32 1)
  store i32 %79, i32* %8, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %77
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @__SetSURegs(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %77
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %1, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %1, align 4
  br label %18

94:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  br label %95

95:                                               ; preds = %158, %94
  %96 = load i32, i32* %1, align 4
  %97 = load i32, i32* %3, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %161

99:                                               ; preds = %95
  %100 = load i32, i32* %1, align 4
  %101 = call i32 @_SHIFTR(i32 %100, i32 1, i32 3)
  %102 = add nsw i32 3, %101
  store i32 %102, i32* %6, align 4
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %1, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 255
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %1, align 4
  %112 = and i32 %111, 1
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %99
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @_SHIFTR(i32 %121, i32 15, i32 3)
  store i32 %122, i32* %4, align 4
  br label %132

123:                                              ; preds = %99
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @_SHIFTR(i32 %130, i32 3, i32 3)
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %123, %114
  %133 = load i32, i32* %1, align 4
  %134 = call i32 @_SHIFTL(i32 1, i32 %133, i32 1)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @_SHIFTL(i32 1, i32 %135, i32 1)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp ne i32 %137, 255
  br i1 %138, label %139, label %157

139:                                              ; preds = %132
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %139
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %146
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @__SetSURegs(i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %153, %146, %139, %132
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %1, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %1, align 4
  br label %95

161:                                              ; preds = %95
  ret void
}

declare dso_local i32 @_SHIFTR(i32, i32, i32) #1

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

declare dso_local i32 @__SetSURegs(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
