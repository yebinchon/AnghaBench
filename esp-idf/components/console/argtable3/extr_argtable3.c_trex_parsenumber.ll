; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_trex_parsenumber.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_trex_parsenumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [29 x i8] c"overflow in numeric constant\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @trex_parsenumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trex_parsenumber(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %7, align 4
  %9 = sub nsw i32 %8, 48
  store i32 %9, i32* %3, align 4
  store i32 10, i32* %4, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** %11, align 8
  br label %14

14:                                               ; preds = %37, %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @isdigit(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %14
  %22 = load i32, i32* %3, align 4
  %23 = mul nsw i32 %22, 10
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %25, align 8
  %28 = load i32, i32* %26, align 4
  %29 = sub nsw i32 %28, 48
  %30 = add nsw i32 %23, %29
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 1000000000
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = call i32 @_SC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @trex_error(%struct.TYPE_4__* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %21
  %38 = load i32, i32* %4, align 4
  %39 = mul nsw i32 %38, 10
  store i32 %39, i32* %4, align 4
  br label %14

40:                                               ; preds = %14
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @isdigit(i32) #1

declare dso_local i32 @trex_error(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @_SC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
