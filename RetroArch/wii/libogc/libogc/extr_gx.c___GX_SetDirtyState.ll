; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c___GX_SetDirtyState.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c___GX_SetDirtyState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@__gx = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__GX_SetDirtyState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__GX_SetDirtyState() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (...) @__GX_SetSUTexRegs()
  br label %8

8:                                                ; preds = %6, %0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 2
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = call i32 (...) @__GX_UpdateBPMask()
  br label %16

16:                                               ; preds = %14, %8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 (...) @__GX_SetGenMode()
  br label %24

24:                                               ; preds = %22, %16
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 (...) @__GX_SetVCD()
  br label %32

32:                                               ; preds = %30, %24
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 16
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i32 (...) @__GX_SetVAT()
  br label %40

40:                                               ; preds = %38, %32
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, -256
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %80

46:                                               ; preds = %40
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 3840
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = call i32 (...) @__GX_SetChanColor()
  br label %54

54:                                               ; preds = %52, %46
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 16838656
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = call i32 (...) @__GX_SetChanCntrl()
  br label %62

62:                                               ; preds = %60, %54
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 50266112
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = call i32 (...) @__GX_SetTexCoordGen()
  br label %70

70:                                               ; preds = %68, %62
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 67108864
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = call i32 @__GX_SetMatrixIndex(i32 0)
  %78 = call i32 @__GX_SetMatrixIndex(i32 5)
  br label %79

79:                                               ; preds = %76, %70
  br label %80

80:                                               ; preds = %79, %40
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 0, i32* %82, align 4
  ret void
}

declare dso_local i32 @__GX_SetSUTexRegs(...) #1

declare dso_local i32 @__GX_UpdateBPMask(...) #1

declare dso_local i32 @__GX_SetGenMode(...) #1

declare dso_local i32 @__GX_SetVCD(...) #1

declare dso_local i32 @__GX_SetVAT(...) #1

declare dso_local i32 @__GX_SetChanColor(...) #1

declare dso_local i32 @__GX_SetChanCntrl(...) #1

declare dso_local i32 @__GX_SetTexCoordGen(...) #1

declare dso_local i32 @__GX_SetMatrixIndex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
