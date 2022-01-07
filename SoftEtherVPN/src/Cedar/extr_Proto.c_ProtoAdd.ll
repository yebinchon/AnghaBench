; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto.c_ProtoAdd.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto.c_ProtoAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (...)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }

@protocols = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"ProtoAdd(): added %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ProtoAdd(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = load i32*, i32** @protocols, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = icmp eq %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %1
  store i32 0, i32* %2, align 4
  br label %26

11:                                               ; preds = %7
  %12 = call %struct.TYPE_7__* @Malloc(i32 8)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %4, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %15, align 8
  %16 = load i32*, i32** @protocols, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = call i32 @Add(i32* %16, %struct.TYPE_7__* %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32 (...)*, i32 (...)** %22, align 8
  %24 = call i32 (...) %23()
  %25 = call i32 @Debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 1, i32* %2, align 4
  br label %26

26:                                               ; preds = %11, %10
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.TYPE_7__* @Malloc(i32) #1

declare dso_local i32 @Add(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @Debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
