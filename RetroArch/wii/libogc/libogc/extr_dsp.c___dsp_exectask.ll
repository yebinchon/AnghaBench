; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dsp.c___dsp_exectask.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dsp.c___dsp_exectask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i64, i32, i32, i32, i32, i64 }

@DSPTASK_INIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.TYPE_4__*)* @__dsp_exectask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dsp_exectask(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = call i32 @DSP_SendMailTo(i32 0)
  br label %9

9:                                                ; preds = %12, %7
  %10 = call i64 (...) @DSP_CheckMailTo()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %9

13:                                               ; preds = %9
  %14 = call i32 @DSP_SendMailTo(i32 0)
  br label %15

15:                                               ; preds = %18, %13
  %16 = call i64 (...) @DSP_CheckMailTo()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %15

19:                                               ; preds = %15
  %20 = call i32 @DSP_SendMailTo(i32 0)
  br label %21

21:                                               ; preds = %24, %19
  %22 = call i64 (...) @DSP_CheckMailTo()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %21

25:                                               ; preds = %21
  br label %55

26:                                               ; preds = %2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @DSP_SendMailTo(i32 %30)
  br label %32

32:                                               ; preds = %35, %26
  %33 = call i64 (...) @DSP_CheckMailTo()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %32

36:                                               ; preds = %32
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @DSP_SendMailTo(i32 %39)
  br label %41

41:                                               ; preds = %44, %36
  %42 = call i64 (...) @DSP_CheckMailTo()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %41

45:                                               ; preds = %41
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @DSP_SendMailTo(i32 %48)
  br label %50

50:                                               ; preds = %53, %45
  %51 = call i64 (...) @DSP_CheckMailTo()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %50

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54, %25
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 8
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @DSP_SendMailTo(i32 %59)
  br label %61

61:                                               ; preds = %64, %55
  %62 = call i64 (...) @DSP_CheckMailTo()
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %61

65:                                               ; preds = %61
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @DSP_SendMailTo(i32 %68)
  br label %70

70:                                               ; preds = %73, %65
  %71 = call i64 (...) @DSP_CheckMailTo()
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %70

74:                                               ; preds = %70
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @DSP_SendMailTo(i32 %77)
  br label %79

79:                                               ; preds = %82, %74
  %80 = call i64 (...) @DSP_CheckMailTo()
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %79

83:                                               ; preds = %79
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @DSPTASK_INIT, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %117

89:                                               ; preds = %83
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @DSP_SendMailTo(i32 %92)
  br label %94

94:                                               ; preds = %97, %89
  %95 = call i64 (...) @DSP_CheckMailTo()
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  br label %94

98:                                               ; preds = %94
  %99 = call i32 @DSP_SendMailTo(i32 0)
  br label %100

100:                                              ; preds = %103, %98
  %101 = call i64 (...) @DSP_CheckMailTo()
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %100

104:                                              ; preds = %100
  %105 = call i32 @DSP_SendMailTo(i32 0)
  br label %106

106:                                              ; preds = %109, %104
  %107 = call i64 (...) @DSP_CheckMailTo()
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %106

110:                                              ; preds = %106
  %111 = call i32 @DSP_SendMailTo(i32 0)
  br label %112

112:                                              ; preds = %115, %110
  %113 = call i64 (...) @DSP_CheckMailTo()
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %112

116:                                              ; preds = %112
  br label %154

117:                                              ; preds = %83
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @DSP_SendMailTo(i32 %120)
  br label %122

122:                                              ; preds = %125, %117
  %123 = call i64 (...) @DSP_CheckMailTo()
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  br label %122

126:                                              ; preds = %122
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = call i32 @DSP_SendMailTo(i32 %130)
  br label %132

132:                                              ; preds = %135, %126
  %133 = call i64 (...) @DSP_CheckMailTo()
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  br label %132

136:                                              ; preds = %132
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @DSP_SendMailTo(i32 %139)
  br label %141

141:                                              ; preds = %144, %136
  %142 = call i64 (...) @DSP_CheckMailTo()
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  br label %141

145:                                              ; preds = %141
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @DSP_SendMailTo(i32 %148)
  br label %150

150:                                              ; preds = %153, %145
  %151 = call i64 (...) @DSP_CheckMailTo()
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  br label %150

154:                                              ; preds = %116, %150
  ret void
}

declare dso_local i32 @DSP_SendMailTo(i32) #1

declare dso_local i64 @DSP_CheckMailTo(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
