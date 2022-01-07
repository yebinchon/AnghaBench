; ModuleID = '/home/carl/AnghaBench/Cello/benchmarks/ext/extr_regexp9.c_operand.c'
source_filename = "/home/carl/AnghaBench/Cello/benchmarks/ext/extr_regexp9.c_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@lastwasand = common dso_local global i64 0, align 8
@CAT = common dso_local global i32 0, align 4
@CCLASS = common dso_local global i32 0, align 4
@NCCLASS = common dso_local global i32 0, align 4
@yyclassp = common dso_local global i32 0, align 4
@RUNE = common dso_local global i32 0, align 4
@yyrune = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @operand(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @lastwasand, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @CAT, align 4
  %8 = call i32 @operator(i32 %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.TYPE_7__* @newinst(i32 %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %3, align 8
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @CCLASS, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @NCCLASS, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15, %9
  %20 = load i32, i32* @yyclassp, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  br label %24

24:                                               ; preds = %19, %15
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @RUNE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32, i32* @yyrune, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = call i32 @pushand(%struct.TYPE_7__* %34, %struct.TYPE_7__* %35)
  %37 = load i64, i64* @TRUE, align 8
  store i64 %37, i64* @lastwasand, align 8
  ret void
}

declare dso_local i32 @operator(i32) #1

declare dso_local %struct.TYPE_7__* @newinst(i32) #1

declare dso_local i32 @pushand(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
