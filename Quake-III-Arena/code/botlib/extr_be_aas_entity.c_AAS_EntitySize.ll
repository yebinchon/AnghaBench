; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_entity.c_AAS_EntitySize.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_entity.c_AAS_EntitySize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 (i32, i8*, i32)* }

@aasworld = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@botimport = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@PRT_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"AAS_EntitySize: entnum %d out of range\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_EntitySize(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 2), align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %40

11:                                               ; preds = %3
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 0), align 8
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14, %11
  %19 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @botimport, i32 0, i32 0), align 8
  %20 = load i32, i32* @PRT_FATAL, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 %19(i32 %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %40

23:                                               ; preds = %14
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 1), align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %7, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @VectorCopy(i32 %31, i32 %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @VectorCopy(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %23, %18, %10
  ret void
}

declare dso_local i32 @VectorCopy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
