; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c___wpad_assign_slot.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c___wpad_assign_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.bd_addr = type { i32 }

@CONF_PAD_MAX_ACTIVE = common dso_local global i64 0, align 8
@__wpad_devs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@__wpads_used = common dso_local global i32 0, align 4
@__wpads = common dso_local global i32** null, align 8
@WPAD_MAX_WIIMOTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @__wpad_assign_slot(%struct.bd_addr* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.bd_addr*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bd_addr, align 4
  store %struct.bd_addr* %0, %struct.bd_addr** %3, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @_CPU_ISR_Disable(i64 %7)
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %80, %1
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @CONF_PAD_MAX_ACTIVE, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %83

13:                                               ; preds = %9
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @__wpad_devs, i32 0, i32 0), align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @__wpad_devs, i32 0, i32 0), align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @__wpad_devs, i32 0, i32 0), align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @__wpad_devs, i32 0, i32 0), align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @__wpad_devs, i32 0, i32 0), align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @__wpad_devs, i32 0, i32 0), align 8
  %50 = load i64, i64* %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @BD_ADDR(%struct.bd_addr* %6, i32 %20, i32 %27, i32 %34, i32 %41, i32 %48, i32 %55)
  %57 = load %struct.bd_addr*, %struct.bd_addr** %3, align 8
  %58 = call i64 @bd_addr_cmp(%struct.bd_addr* %57, %struct.bd_addr* %6)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %13
  %61 = load i32, i32* @__wpads_used, align 4
  %62 = load i64, i64* %4, align 8
  %63 = trunc i64 %62 to i32
  %64 = shl i32 1, %63
  %65 = and i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %60
  %68 = load i64, i64* %4, align 8
  %69 = trunc i64 %68 to i32
  %70 = shl i32 1, %69
  %71 = load i32, i32* @__wpads_used, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* @__wpads_used, align 4
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @_CPU_ISR_Restore(i64 %73)
  %75 = load i32**, i32*** @__wpads, align 8
  %76 = load i64, i64* %4, align 8
  %77 = getelementptr inbounds i32*, i32** %75, i64 %76
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %2, align 8
  br label %114

79:                                               ; preds = %60, %13
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %4, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %4, align 8
  br label %9

83:                                               ; preds = %9
  store i64 0, i64* %4, align 8
  br label %84

84:                                               ; preds = %108, %83
  %85 = load i64, i64* %4, align 8
  %86 = load i64, i64* @WPAD_MAX_WIIMOTES, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %111

88:                                               ; preds = %84
  %89 = load i32, i32* @__wpads_used, align 4
  %90 = load i64, i64* %4, align 8
  %91 = trunc i64 %90 to i32
  %92 = shl i32 1, %91
  %93 = and i32 %89, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %88
  %96 = load i64, i64* %4, align 8
  %97 = trunc i64 %96 to i32
  %98 = shl i32 1, %97
  %99 = load i32, i32* @__wpads_used, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* @__wpads_used, align 4
  %101 = load i64, i64* %5, align 8
  %102 = call i32 @_CPU_ISR_Restore(i64 %101)
  %103 = load i32**, i32*** @__wpads, align 8
  %104 = load i64, i64* %4, align 8
  %105 = getelementptr inbounds i32*, i32** %103, i64 %104
  %106 = load i32*, i32** %105, align 8
  store i32* %106, i32** %2, align 8
  br label %114

107:                                              ; preds = %88
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %4, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %4, align 8
  br label %84

111:                                              ; preds = %84
  %112 = load i64, i64* %5, align 8
  %113 = call i32 @_CPU_ISR_Restore(i64 %112)
  store i32* null, i32** %2, align 8
  br label %114

114:                                              ; preds = %111, %95, %67
  %115 = load i32*, i32** %2, align 8
  ret i32* %115
}

declare dso_local i32 @_CPU_ISR_Disable(i64) #1

declare dso_local i32 @BD_ADDR(%struct.bd_addr*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @bd_addr_cmp(%struct.bd_addr*, %struct.bd_addr*) #1

declare dso_local i32 @_CPU_ISR_Restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
