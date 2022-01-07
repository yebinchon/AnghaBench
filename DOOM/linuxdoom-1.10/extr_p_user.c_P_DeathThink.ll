; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_user.c_P_DeathThink.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_user.c_P_DeathThink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__, i64, %struct.TYPE_7__*, %struct.TYPE_7__*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i32, i32, i32 }

@FRACUNIT = common dso_local global i32 0, align 4
@onground = common dso_local global i32 0, align 4
@ANG5 = common dso_local global i32 0, align 4
@ANG180 = common dso_local global i32 0, align 4
@BT_USE = common dso_local global i32 0, align 4
@PST_REBORN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_DeathThink(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = call i32 @P_MovePsprites(%struct.TYPE_9__* %5)
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @FRACUNIT, align 4
  %11 = mul nsw i32 6, %10
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @FRACUNIT, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, %14
  store i32 %18, i32* %16, align 8
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @FRACUNIT, align 4
  %24 = mul nsw i32 6, %23
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i32, i32* @FRACUNIT, align 4
  %28 = mul nsw i32 6, %27
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %26, %19
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 6
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sle i64 %38, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* @onground, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = call i32 @P_CalcHeight(%struct.TYPE_9__* %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 5
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = icmp ne %struct.TYPE_7__* %50, null
  br i1 %51, label %52, label %135

52:                                               ; preds = %31
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 5
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = icmp ne %struct.TYPE_7__* %55, %58
  br i1 %59, label %60, label %135

60:                                               ; preds = %52
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 5
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 5
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @R_PointToAngle2(i32 %65, i32 %70, i32 %75, i32 %80)
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = sub i32 %82, %87
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @ANG5, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %97, label %92

92:                                               ; preds = %60
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @ANG5, align 4
  %95 = sub i32 0, %94
  %96 = icmp ugt i32 %93, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %92, %60
  %98 = load i32, i32* %3, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  store i32 %98, i32* %102, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %97
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, -1
  store i64 %111, i64* %109, align 8
  br label %112

112:                                              ; preds = %107, %97
  br label %134

113:                                              ; preds = %92
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @ANG180, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load i32, i32* @ANG5, align 4
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = add i32 %123, %118
  store i32 %124, i32* %122, align 8
  br label %133

125:                                              ; preds = %113
  %126 = load i32, i32* @ANG5, align 4
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = sub i32 %131, %126
  store i32 %132, i32* %130, align 8
  br label %133

133:                                              ; preds = %125, %117
  br label %134

134:                                              ; preds = %133, %112
  br label %146

135:                                              ; preds = %52, %31
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, -1
  store i64 %144, i64* %142, align 8
  br label %145

145:                                              ; preds = %140, %135
  br label %146

146:                                              ; preds = %145, %134
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @BT_USE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %146
  %155 = load i32, i32* @PST_REBORN, align 4
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  br label %158

158:                                              ; preds = %154, %146
  ret void
}

declare dso_local i32 @P_MovePsprites(%struct.TYPE_9__*) #1

declare dso_local i32 @P_CalcHeight(%struct.TYPE_9__*) #1

declare dso_local i32 @R_PointToAngle2(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
