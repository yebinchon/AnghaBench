; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_cpu_common.c_cpu_signal_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_cpu_common.c_cpu_signal_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i8*, i8*, i8* }

@FALSE = common dso_local global i64 0, align 8
@SIGPnop = common dso_local global i32 0, align 4
@SIGPdisabled = common dso_local global i32 0, align 4
@SIGPxcall = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4
@DSB_ISH = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i8*, i8*, i64)* @cpu_signal_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_signal_internal(%struct.TYPE_5__* %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i64, i64* @FALSE, align 8
  %18 = call i64 @ml_set_interrupts_enabled(i64 %17)
  store i64 %18, i64* %15, align 8
  %19 = call %struct.TYPE_5__* (...) @getCpuDatap()
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %16, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @SIGPnop, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  br label %28

28:                                               ; preds = %22, %5
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = icmp ne %struct.TYPE_5__* %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @SIGPdisabled, align 4
  store i32 %33, i32* %12, align 4
  br label %35

34:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %34, %32
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @SIGPxcall, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %88

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %77, %39
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @SIGPdisabled, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @SIGPdisabled, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load i64, i64* %15, align 8
  %51 = call i64 @ml_set_interrupts_enabled(i64 %50)
  %52 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %52, i32* %6, align 4
  br label %151

53:                                               ; preds = %40
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @SIGPxcall, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @SIGPxcall, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = call i64 @OSCompareAndSwap(i32 %57, i32 %60, i32* %62)
  store i64 %63, i64* %14, align 8
  %64 = load i64, i64* %14, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %53
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SIGPxcall, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %75 = call i32 @cpu_handle_xcall(%struct.TYPE_5__* %74)
  br label %76

76:                                               ; preds = %73, %66, %53
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %14, align 8
  %79 = icmp ne i64 %78, 0
  %80 = xor i1 %79, true
  br i1 %80, label %40, label %81

81:                                               ; preds = %77
  %82 = load i8*, i8** %9, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 5
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 4
  store i8* %85, i8** %87, align 8
  br label %118

88:                                               ; preds = %35
  br label %89

89:                                               ; preds = %113, %88
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %89
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %12, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* @SIGPdisabled, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i64, i64* %15, align 8
  %103 = call i64 @ml_set_interrupts_enabled(i64 %102)
  %104 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %104, i32* %6, align 4
  br label %151

105:                                              ; preds = %95, %89
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %8, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = call i64 @OSCompareAndSwap(i32 %106, i32 %109, i32* %111)
  store i64 %112, i64* %14, align 8
  br label %113

113:                                              ; preds = %105
  %114 = load i64, i64* %14, align 8
  %115 = icmp ne i64 %114, 0
  %116 = xor i1 %115, true
  br i1 %116, label %89, label %117

117:                                              ; preds = %113
  br label %118

118:                                              ; preds = %117, %81
  %119 = load i32, i32* @DSB_ISH, align 4
  %120 = call i32 @__builtin_arm_dsb(i32 %119)
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @SIGPdisabled, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %147, label %127

127:                                              ; preds = %118
  %128 = load i64, i64* %11, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %127
  %131 = call %struct.TYPE_5__* (...) @getCpuDatap()
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @PE_cpu_signal_deferred(i32 %133, i32 %136)
  br label %146

138:                                              ; preds = %127
  %139 = call %struct.TYPE_5__* (...) @getCpuDatap()
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @PE_cpu_signal(i32 %141, i32 %144)
  br label %146

146:                                              ; preds = %138, %130
  br label %147

147:                                              ; preds = %146, %118
  %148 = load i64, i64* %15, align 8
  %149 = call i64 @ml_set_interrupts_enabled(i64 %148)
  %150 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %147, %101, %49
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i64 @ml_set_interrupts_enabled(i64) #1

declare dso_local %struct.TYPE_5__* @getCpuDatap(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @OSCompareAndSwap(i32, i32, i32*) #1

declare dso_local i32 @cpu_handle_xcall(%struct.TYPE_5__*) #1

declare dso_local i32 @__builtin_arm_dsb(i32) #1

declare dso_local i32 @PE_cpu_signal_deferred(i32, i32) #1

declare dso_local i32 @PE_cpu_signal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
