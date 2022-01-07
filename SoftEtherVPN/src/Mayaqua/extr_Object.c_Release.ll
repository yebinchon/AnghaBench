; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Object.c_Release.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Object.c_Release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@KS_RELEASE_COUNT = common dso_local global i32 0, align 4
@KS_CURRENT_REFED_COUNT = common dso_local global i32 0, align 4
@KS_CURRENT_REF_COUNT = common dso_local global i32 0, align 4
@KS_FREEREF_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Release(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = icmp eq %struct.TYPE_4__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %34

8:                                                ; preds = %1
  %9 = load i32, i32* @KS_RELEASE_COUNT, align 4
  %10 = call i32 @KS_INC(i32 %9)
  %11 = load i32, i32* @KS_CURRENT_REFED_COUNT, align 4
  %12 = call i32 @KS_DEC(i32 %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @Dec(i64 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %8
  %20 = load i32, i32* @KS_CURRENT_REF_COUNT, align 4
  %21 = call i32 @KS_DEC(i32 %20)
  %22 = load i32, i32* @KS_FREEREF_COUNT, align 4
  %23 = call i32 @KS_INC(i32 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @DeleteCounter(i64 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = call i32 @Free(%struct.TYPE_4__* %30)
  br label %32

32:                                               ; preds = %19, %8
  %33 = load i64, i64* %4, align 8
  store i64 %33, i64* %2, align 8
  br label %34

34:                                               ; preds = %32, %7
  %35 = load i64, i64* %2, align 8
  ret i64 %35
}

declare dso_local i32 @KS_INC(i32) #1

declare dso_local i32 @KS_DEC(i32) #1

declare dso_local i64 @Dec(i64) #1

declare dso_local i32 @DeleteCounter(i64) #1

declare dso_local i32 @Free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
