; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_pspr.c_A_Saw.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_pspr.c_A_Saw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@MELEERANGE = common dso_local global i64 0, align 8
@linetarget = common dso_local global %struct.TYPE_8__* null, align 8
@sfx_sawful = common dso_local global i32 0, align 4
@sfx_sawhit = common dso_local global i32 0, align 4
@ANG180 = common dso_local global i32 0, align 4
@ANG90 = common dso_local global i32 0, align 4
@MF_JUSTATTACKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @A_Saw(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = call i32 (...) @P_Random()
  %9 = srem i32 %8, 10
  %10 = add nsw i32 %9, 1
  %11 = mul nsw i32 2, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = call i32 (...) @P_Random()
  %18 = call i32 (...) @P_Random()
  %19 = sub nsw i32 %17, %18
  %20 = shl i32 %19, 18
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i64, i64* @MELEERANGE, align 8
  %28 = add nsw i64 %27, 1
  %29 = call i32 @P_AimLineAttack(%struct.TYPE_9__* %25, i32 %26, i64 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i64, i64* @MELEERANGE, align 8
  %35 = add nsw i64 %34, 1
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @P_LineAttack(%struct.TYPE_9__* %32, i32 %33, i64 %35, i32 %36, i32 %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** @linetarget, align 8
  %40 = icmp ne %struct.TYPE_8__* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = load i32, i32* @sfx_sawful, align 4
  %46 = call i32 @S_StartSound(%struct.TYPE_9__* %44, i32 %45)
  br label %148

47:                                               ; preds = %2
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = load i32, i32* @sfx_sawhit, align 4
  %52 = call i32 @S_StartSound(%struct.TYPE_9__* %50, i32 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @linetarget, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** @linetarget, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @R_PointToAngle2(i32 %57, i32 %62, i32 %65, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %70, %75
  %77 = load i32, i32* @ANG180, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %110

79:                                               ; preds = %47
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %80, %85
  %87 = load i32, i32* @ANG90, align 4
  %88 = sub nsw i32 0, %87
  %89 = sdiv i32 %88, 20
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %79
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @ANG90, align 4
  %94 = sdiv i32 %93, 21
  %95 = add nsw i32 %92, %94
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 4
  br label %109

100:                                              ; preds = %79
  %101 = load i32, i32* @ANG90, align 4
  %102 = sdiv i32 %101, 20
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %107, %102
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %100, %91
  br label %140

110:                                              ; preds = %47
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %111, %116
  %118 = load i32, i32* @ANG90, align 4
  %119 = sdiv i32 %118, 20
  %120 = icmp sgt i32 %117, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %110
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @ANG90, align 4
  %124 = sdiv i32 %123, 21
  %125 = sub nsw i32 %122, %124
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  store i32 %125, i32* %129, align 4
  br label %139

130:                                              ; preds = %110
  %131 = load i32, i32* @ANG90, align 4
  %132 = sdiv i32 %131, 20
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, %132
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %130, %121
  br label %140

140:                                              ; preds = %139, %109
  %141 = load i32, i32* @MF_JUSTATTACKED, align 4
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %141
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %140, %41
  ret void
}

declare dso_local i32 @P_Random(...) #1

declare dso_local i32 @P_AimLineAttack(%struct.TYPE_9__*, i32, i64) #1

declare dso_local i32 @P_LineAttack(%struct.TYPE_9__*, i32, i64, i32, i32) #1

declare dso_local i32 @S_StartSound(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @R_PointToAngle2(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
