; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_VIDGCDVdp2DrawScreens.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_VIDGCDVdp2DrawScreens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64* }

@Vdp2Regs = common dso_local global %struct.TYPE_4__* null, align 8
@nbg3priority = common dso_local global i32 0, align 4
@nbg2priority = common dso_local global i32 0, align 4
@nbg1priority = common dso_local global i32 0, align 4
@nbg0priority = common dso_local global i32 0, align 4
@rbg0priority = common dso_local global i32 0, align 4
@vdp1draw_info = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VIDGCDVdp2DrawScreens() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Vdp2Regs, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @VIDGCDVdp2SetResolution(i32 %4)
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Vdp2Regs, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 7
  %10 = call i32 @VIDGCDVdp2SetPriorityNBG0(i32 %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Vdp2Regs, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 8
  %15 = and i32 %14, 7
  %16 = call i32 @VIDGCDVdp2SetPriorityNBG1(i32 %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Vdp2Regs, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 7
  %21 = call i32 @VIDGCDVdp2SetPriorityNBG2(i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Vdp2Regs, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 8
  %26 = and i32 %25, 7
  %27 = call i32 @VIDGCDVdp2SetPriorityNBG3(i32 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Vdp2Regs, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 7
  %32 = call i32 @VIDGCDVdp2SetPriorityRBG0(i32 %31)
  store i32 1, i32* %1, align 4
  br label %33

33:                                               ; preds = %81, %0
  %34 = load i32, i32* %1, align 4
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %36, label %84

36:                                               ; preds = %33
  %37 = load i32, i32* @nbg3priority, align 4
  %38 = load i32, i32* %1, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 (...) @Vdp2DrawNBG3()
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i32, i32* @nbg2priority, align 4
  %44 = load i32, i32* %1, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 (...) @Vdp2DrawNBG2()
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i32, i32* @nbg1priority, align 4
  %50 = load i32, i32* %1, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 (...) @Vdp2DrawNBG1()
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i32, i32* @nbg0priority, align 4
  %56 = load i32, i32* %1, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 (...) @Vdp2DrawNBG0()
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i32, i32* @rbg0priority, align 4
  %62 = load i32, i32* %1, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 (...) @Vdp2DrawRBG0()
  br label %66

66:                                               ; preds = %64, %60
  %67 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vdp1draw_info, i32 0, i32 0), align 8
  %68 = load i32, i32* %1, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* %1, align 4
  %75 = call i32 @Vdp1DrawPriority(i32 %74)
  br label %76

76:                                               ; preds = %73, %66
  %77 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vdp1draw_info, i32 0, i32 0), align 8
  %78 = load i32, i32* %1, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %1, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %1, align 4
  br label %33

84:                                               ; preds = %33
  ret void
}

declare dso_local i32 @VIDGCDVdp2SetResolution(i32) #1

declare dso_local i32 @VIDGCDVdp2SetPriorityNBG0(i32) #1

declare dso_local i32 @VIDGCDVdp2SetPriorityNBG1(i32) #1

declare dso_local i32 @VIDGCDVdp2SetPriorityNBG2(i32) #1

declare dso_local i32 @VIDGCDVdp2SetPriorityNBG3(i32) #1

declare dso_local i32 @VIDGCDVdp2SetPriorityRBG0(i32) #1

declare dso_local i32 @Vdp2DrawNBG3(...) #1

declare dso_local i32 @Vdp2DrawNBG2(...) #1

declare dso_local i32 @Vdp2DrawNBG1(...) #1

declare dso_local i32 @Vdp2DrawNBG0(...) #1

declare dso_local i32 @Vdp2DrawRBG0(...) #1

declare dso_local i32 @Vdp1DrawPriority(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
