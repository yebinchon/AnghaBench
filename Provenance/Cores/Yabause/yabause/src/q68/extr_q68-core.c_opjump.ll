; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_opjump.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_opjump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32, i32, i32, i32 }

@SIZE_W = common dso_local global i32 0, align 4
@ACCESS_READ = common dso_local global i32 0, align 4
@EX_ADDRESS_ERROR = common dso_local global i32 0, align 4
@FAULT_STATUS_IN_DATA = common dso_local global i32 0, align 4
@FAULT_STATUS_RW_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @opjump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opjump(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %9, 64
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @EA_MODE(i32 %11)
  switch i32 %12, label %28 [
    i32 133, label %13
    i32 135, label %14
    i32 134, label %15
    i32 132, label %16
  ]

13:                                               ; preds = %2
  store i32 8, i32* %7, align 4
  br label %32

14:                                               ; preds = %2
  store i32 10, i32* %7, align 4
  br label %32

15:                                               ; preds = %2
  store i32 14, i32* %7, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @EA_REG(i32 %17)
  switch i32 %18, label %23 [
    i32 130, label %19
    i32 131, label %20
    i32 129, label %21
    i32 128, label %22
  ]

19:                                               ; preds = %16
  store i32 10, i32* %7, align 4
  br label %27

20:                                               ; preds = %16
  store i32 12, i32* %7, align 4
  br label %27

21:                                               ; preds = %16
  store i32 10, i32* %7, align 4
  br label %27

22:                                               ; preds = %16
  store i32 14, i32* %7, align 4
  br label %27

23:                                               ; preds = %16
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @op_ill(%struct.TYPE_6__* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %79

27:                                               ; preds = %22, %21, %20, %19
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @op_ill(%struct.TYPE_6__* %29, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %79

32:                                               ; preds = %27, %15, %14, %13
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @SIZE_W, align 4
  %36 = load i32, i32* @ACCESS_READ, align 4
  %37 = call i32 @ea_resolve(%struct.TYPE_6__* %33, i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %32
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 7
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %40
  %49 = load i32, i32* @EX_ADDRESS_ERROR, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 7
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @FAULT_STATUS_IN_DATA, align 4
  %60 = load i32, i32* @FAULT_STATUS_RW_WRITE, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  store i32 0, i32* %3, align 4
  br label %79

64:                                               ; preds = %40
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 8
  store i32 %66, i32* %7, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @PUSH32(%struct.TYPE_6__* %67, i32 %70)
  br label %72

72:                                               ; preds = %64, %32
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %72, %48, %28, %23
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @EA_MODE(i32) #1

declare dso_local i32 @EA_REG(i32) #1

declare dso_local i32 @op_ill(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ea_resolve(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @PUSH32(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
