; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_machine_routines.c_ml_cpu_get_info.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_machine_routines.c_ml_cpu_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i32, i64, i32, i64, i32 }
%struct.TYPE_6__ = type { i64*, i32 }

@CR4_OSXMM = common dso_local global i32 0, align 4
@CPUID_FEATURE_SSE4_2 = common dso_local global i32 0, align 4
@CPUID_FEATURE_SSE4_1 = common dso_local global i32 0, align 4
@CPUID_FEATURE_SSSE3 = common dso_local global i32 0, align 4
@CPUID_FEATURE_SSE3 = common dso_local global i32 0, align 4
@CPUID_FEATURE_SSE2 = common dso_local global i32 0, align 4
@CPUID_FEATURE_SSE = common dso_local global i32 0, align 4
@CPUID_FEATURE_MMX = common dso_local global i32 0, align 4
@L1I = common dso_local global i64 0, align 8
@L1D = common dso_local global i64 0, align 8
@L2U = common dso_local global i64 0, align 8
@L3U = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ml_cpu_get_info(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = icmp eq %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %175

8:                                                ; preds = %1
  %9 = call i32 (...) @get_cr4()
  %10 = load i32, i32* @CR4_OSXMM, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %3, align 4
  %16 = call i64 (...) @ml_fpu_avx_enabled()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 9, i32* %20, align 8
  br label %105

21:                                               ; preds = %8
  %22 = call i32 (...) @cpuid_features()
  %23 = load i32, i32* @CPUID_FEATURE_SSE4_2, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 8, i32* %31, align 8
  br label %104

32:                                               ; preds = %26, %21
  %33 = call i32 (...) @cpuid_features()
  %34 = load i32, i32* @CPUID_FEATURE_SSE4_1, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 7, i32* %42, align 8
  br label %103

43:                                               ; preds = %37, %32
  %44 = call i32 (...) @cpuid_features()
  %45 = load i32, i32* @CPUID_FEATURE_SSSE3, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 6, i32* %53, align 8
  br label %102

54:                                               ; preds = %48, %43
  %55 = call i32 (...) @cpuid_features()
  %56 = load i32, i32* @CPUID_FEATURE_SSE3, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* %3, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i32 5, i32* %64, align 8
  br label %101

65:                                               ; preds = %59, %54
  %66 = call i32 (...) @cpuid_features()
  %67 = load i32, i32* @CPUID_FEATURE_SSE2, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32, i32* %3, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i32 4, i32* %75, align 8
  br label %100

76:                                               ; preds = %70, %65
  %77 = call i32 (...) @cpuid_features()
  %78 = load i32, i32* @CPUID_FEATURE_SSE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i32, i32* %3, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  store i32 3, i32* %86, align 8
  br label %99

87:                                               ; preds = %81, %76
  %88 = call i32 (...) @cpuid_features()
  %89 = load i32, i32* @CPUID_FEATURE_MMX, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32 2, i32* %94, align 8
  br label %98

95:                                               ; preds = %87
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  br label %98

98:                                               ; preds = %95, %92
  br label %99

99:                                               ; preds = %98, %84
  br label %100

100:                                              ; preds = %99, %73
  br label %101

101:                                              ; preds = %100, %62
  br label %102

102:                                              ; preds = %101, %51
  br label %103

103:                                              ; preds = %102, %40
  br label %104

104:                                              ; preds = %103, %29
  br label %105

105:                                              ; preds = %104, %18
  %106 = call %struct.TYPE_6__* (...) @cpuid_info()
  store %struct.TYPE_6__* %106, %struct.TYPE_6__** %4, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 7
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = load i64, i64* @L1I, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = load i64, i64* @L1D, align 8
  %124 = getelementptr inbounds i64, i64* %122, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  store i64 %125, i64* %127, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = load i64, i64* @L2U, align 8
  %132 = getelementptr inbounds i64, i64* %130, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = icmp sgt i64 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %105
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 3
  store i32 1, i32* %137, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i64*, i64** %139, align 8
  %141 = load i64, i64* @L2U, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 4
  store i64 %143, i64* %145, align 8
  br label %151

146:                                              ; preds = %105
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 3
  store i32 0, i32* %148, align 8
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 4
  store i64 4294967295, i64* %150, align 8
  br label %151

151:                                              ; preds = %146, %135
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i64*, i64** %153, align 8
  %155 = load i64, i64* @L3U, align 8
  %156 = getelementptr inbounds i64, i64* %154, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = icmp sgt i64 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %151
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 5
  store i32 1, i32* %161, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i64*, i64** %163, align 8
  %165 = load i64, i64* @L3U, align 8
  %166 = getelementptr inbounds i64, i64* %164, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 6
  store i64 %167, i64* %169, align 8
  br label %175

170:                                              ; preds = %151
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 5
  store i32 0, i32* %172, align 8
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 6
  store i64 4294967295, i64* %174, align 8
  br label %175

175:                                              ; preds = %7, %170, %159
  ret void
}

declare dso_local i32 @get_cr4(...) #1

declare dso_local i64 @ml_fpu_avx_enabled(...) #1

declare dso_local i32 @cpuid_features(...) #1

declare dso_local %struct.TYPE_6__* @cpuid_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
