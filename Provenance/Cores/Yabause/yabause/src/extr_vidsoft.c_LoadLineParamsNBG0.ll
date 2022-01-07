; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_LoadLineParamsNBG0.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_LoadLineParamsNBG0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)* @LoadLineParamsNBG0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LoadLineParamsNBG0(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32 %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %12 = call %struct.TYPE_15__* @Vdp2RestoreRegs(i32 %10, %struct.TYPE_15__* %11)
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %9, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %14 = icmp eq %struct.TYPE_15__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %51

16:                                               ; preds = %4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = call i32 @ReadVdp2ColorOffset(%struct.TYPE_15__* %17, %struct.TYPE_13__* %18, i32 1, i32 1)
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 3
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %16
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 32
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %31, %16
  %38 = phi i1 [ true, %16 ], [ %36, %31 ]
  %39 = zext i1 %38 to i32
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %50 = call i32 @GeneratePlaneAddrTable(%struct.TYPE_13__* %42, i32 %45, i32 %48, %struct.TYPE_15__* %49)
  br label %51

51:                                               ; preds = %37, %15
  ret void
}

declare dso_local %struct.TYPE_15__* @Vdp2RestoreRegs(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @ReadVdp2ColorOffset(%struct.TYPE_15__*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @GeneratePlaneAddrTable(%struct.TYPE_13__*, i32, i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
