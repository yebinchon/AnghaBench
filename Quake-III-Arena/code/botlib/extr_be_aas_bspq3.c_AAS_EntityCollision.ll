; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_bspq3.c_AAS_EntityCollision.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_bspq3.c_AAS_EntityCollision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_7__*, i32, i32, i32, i32, i32, i32)* }
%struct.TYPE_7__ = type { i64 }

@botimport = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_EntityCollision(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.TYPE_7__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca %struct.TYPE_7__, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %15, align 8
  %17 = load i32 (%struct.TYPE_7__*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32, i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @botimport, i32 0, i32 0), align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %14, align 4
  %24 = call i32 %17(%struct.TYPE_7__* %16, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %7
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %33 = call i32 @Com_Memcpy(%struct.TYPE_7__* %32, %struct.TYPE_7__* %16, i32 8)
  %34 = load i32, i32* @qtrue, align 4
  store i32 %34, i32* %8, align 4
  br label %37

35:                                               ; preds = %7
  %36 = load i32, i32* @qfalse, align 4
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local i32 @Com_Memcpy(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
