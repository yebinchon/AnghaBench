; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sh2core.c_FRTExec.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sh2core.c_FRTExec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i64 }

@CurrentSH2 = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FRTExec(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 7
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  store i64 %10, i64* %3, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = shl i32 1, %14
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %2, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %18, %22
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = zext i32 %27 to i64
  %29 = ashr i64 %23, %28
  %30 = load i64, i64* %4, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %2, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %32, %36
  %38 = load i64, i64* %5, align 8
  %39 = and i64 %37, %38
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i64 %39, i64* %42, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %43, %47
  br i1 %48, label %49, label %94

49:                                               ; preds = %1
  %50 = load i64, i64* %3, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %50, %54
  br i1 %55, label %56, label %94

56:                                               ; preds = %49
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %56
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 127
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, 3840
  %75 = ashr i32 %74, 8
  %76 = call i32 @SH2SendInterrupt(%struct.TYPE_9__* %64, i32 %69, i32 %75)
  br label %77

77:                                               ; preds = %63, %56
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 1
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  store i64 0, i64* %4, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %84, %77
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, 8
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %88, %49, %1
  %95 = load i64, i64* %4, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = icmp sge i64 %95, %99
  br i1 %100, label %101, label %135

101:                                              ; preds = %94
  %102 = load i64, i64* %3, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %102, %106
  br i1 %107, label %108, label %135

108:                                              ; preds = %101
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %108
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 127
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %125, 3840
  %127 = ashr i32 %126, 8
  %128 = call i32 @SH2SendInterrupt(%struct.TYPE_9__* %116, i32 %121, i32 %127)
  br label %129

129:                                              ; preds = %115, %108
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, 4
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %129, %101, %94
  %136 = load i64, i64* %4, align 8
  %137 = icmp sgt i64 %136, 65535
  br i1 %137, label %138, label %166

138:                                              ; preds = %135
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = and i32 %142, 2
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %160

145:                                              ; preds = %138
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = ashr i32 %150, 8
  %152 = and i32 %151, 127
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = and i32 %156, 3840
  %158 = ashr i32 %157, 8
  %159 = call i32 @SH2SendInterrupt(%struct.TYPE_9__* %146, i32 %152, i32 %158)
  br label %160

160:                                              ; preds = %145, %138
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, 2
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %160, %135
  %167 = load i64, i64* %4, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentSH2, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 7
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  store i64 %167, i64* %171, align 8
  ret void
}

declare dso_local i32 @SH2SendInterrupt(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
