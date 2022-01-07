; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dsp.c___dsp_boottask.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dsp.c___dsp_boottask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @__dsp_boottask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dsp_boottask(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  br label %4

4:                                                ; preds = %8, %1
  %5 = call i32 (...) @DSP_CheckMailFrom()
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  br label %4

9:                                                ; preds = %4
  %10 = call i32 (...) @DSP_ReadMailFrom()
  store i32 %10, i32* %3, align 4
  %11 = call i32 @DSP_SendMailTo(i32 -2131517439)
  br label %12

12:                                               ; preds = %15, %9
  %13 = call i64 (...) @DSP_CheckMailTo()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %12

16:                                               ; preds = %12
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @DSP_SendMailTo(i32 %20)
  br label %22

22:                                               ; preds = %25, %16
  %23 = call i64 (...) @DSP_CheckMailTo()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %22

26:                                               ; preds = %22
  %27 = call i32 @DSP_SendMailTo(i32 -2131509246)
  br label %28

28:                                               ; preds = %31, %26
  %29 = call i64 (...) @DSP_CheckMailTo()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %28

32:                                               ; preds = %28
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 65535
  %37 = call i32 @DSP_SendMailTo(i32 %36)
  br label %38

38:                                               ; preds = %41, %32
  %39 = call i64 (...) @DSP_CheckMailTo()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %38

42:                                               ; preds = %38
  %43 = call i32 @DSP_SendMailTo(i32 -2131517438)
  br label %44

44:                                               ; preds = %47, %42
  %45 = call i64 (...) @DSP_CheckMailTo()
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %44

48:                                               ; preds = %44
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @DSP_SendMailTo(i32 %51)
  br label %53

53:                                               ; preds = %56, %48
  %54 = call i64 (...) @DSP_CheckMailTo()
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %53

57:                                               ; preds = %53
  %58 = call i32 @DSP_SendMailTo(i32 -2131513342)
  br label %59

59:                                               ; preds = %62, %57
  %60 = call i64 (...) @DSP_CheckMailTo()
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %59

63:                                               ; preds = %59
  %64 = call i32 @DSP_SendMailTo(i32 0)
  br label %65

65:                                               ; preds = %68, %63
  %66 = call i64 (...) @DSP_CheckMailTo()
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %65

69:                                               ; preds = %65
  %70 = call i32 @DSP_SendMailTo(i32 -2131505151)
  br label %71

71:                                               ; preds = %74, %69
  %72 = call i64 (...) @DSP_CheckMailTo()
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %71

75:                                               ; preds = %71
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @DSP_SendMailTo(i32 %78)
  br label %80

80:                                               ; preds = %83, %75
  %81 = call i64 (...) @DSP_CheckMailTo()
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %80

84:                                               ; preds = %80
  ret void
}

declare dso_local i32 @DSP_CheckMailFrom(...) #1

declare dso_local i32 @DSP_ReadMailFrom(...) #1

declare dso_local i32 @DSP_SendMailTo(i32) #1

declare dso_local i64 @DSP_CheckMailTo(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
