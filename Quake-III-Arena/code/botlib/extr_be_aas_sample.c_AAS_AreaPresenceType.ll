; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_sample.c_AAS_AreaPresenceType.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_sample.c_AAS_AreaPresenceType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 (i32, i8*)* }

@aasworld = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@botimport = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@PRT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"AAS_AreaPresenceType: invalid area number\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_AreaPresenceType(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aasworld, i32 0, i32 2), align 8
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aasworld, i32 0, i32 0), align 8
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10, %7
  %15 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @botimport, i32 0, i32 0), align 8
  %16 = load i32, i32* @PRT_ERROR, align 4
  %17 = call i32 %15(i32 %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %25

18:                                               ; preds = %10
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aasworld, i32 0, i32 1), align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %18, %14, %6
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
