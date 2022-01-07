; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_wasapi.c_wasapi_write_sh.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_wasapi.c_wasapi_write_sh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i32, i64, i64 }

@INFINITE = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i64)* @wasapi_write_sh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wasapi_write_sh(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %10, align 8
  store i32 -1, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %109

18:                                               ; preds = %3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @fifo_write_avail(i64 %21)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %84, label %25

25:                                               ; preds = %18
  store i64 0, i64* %13, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @INFINITE, align 4
  %35 = call i64 @WaitForSingleObject(i32 %33, i32 %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @WAIT_OBJECT_0, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %171

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %25
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @_IAudioClient_GetCurrentPadding(i32 %44, i64* %12)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @FAILED(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  br label %171

50:                                               ; preds = %41
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @fifo_read_avail(i64 %53)
  store i64 %54, i64* %13, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = mul i64 %58, %61
  %63 = sub i64 %57, %62
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* %10, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %50
  %68 = load i64, i64* %13, align 8
  br label %71

69:                                               ; preds = %50
  %70 = load i64, i64* %10, align 8
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i64 [ %68, %67 ], [ %70, %69 ]
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @wasapi_flush_buffer(%struct.TYPE_5__* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  store i32 -1, i32* %4, align 4
  br label %171

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82, %71
  br label %84

84:                                               ; preds = %83, %18
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @fifo_write_avail(i64 %87)
  store i64 %88, i64* %10, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* %10, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i64, i64* %7, align 8
  br label %96

94:                                               ; preds = %84
  %95 = load i64, i64* %10, align 8
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i64 [ %93, %92 ], [ %95, %94 ]
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @fifo_write(i64 %104, i8* %105, i32 %106)
  br label %108

108:                                              ; preds = %101, %96
  br label %169

109:                                              ; preds = %3
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %109
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @INFINITE, align 4
  %119 = call i64 @WaitForSingleObject(i32 %117, i32 %118)
  store i64 %119, i64* %8, align 8
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* @WAIT_OBJECT_0, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %124, label %123

123:                                              ; preds = %114
  store i32 -1, i32* %4, align 4
  br label %171

124:                                              ; preds = %114
  br label %125

125:                                              ; preds = %124, %109
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @_IAudioClient_GetCurrentPadding(i32 %128, i64* %12)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i64 @FAILED(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  store i32 -1, i32* %4, align 4
  br label %171

134:                                              ; preds = %125
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %12, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = mul i64 %138, %141
  %143 = sub i64 %137, %142
  store i64 %143, i64* %10, align 8
  %144 = load i64, i64* %10, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %134
  store i32 0, i32* %4, align 4
  br label %171

147:                                              ; preds = %134
  %148 = load i64, i64* %7, align 8
  %149 = load i64, i64* %10, align 8
  %150 = icmp ult i64 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i64, i64* %7, align 8
  br label %155

153:                                              ; preds = %147
  %154 = load i64, i64* %10, align 8
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi i64 [ %152, %151 ], [ %154, %153 ]
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %155
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %162 = load i8*, i8** %6, align 8
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @wasapi_flush(%struct.TYPE_5__* %161, i8* %162, i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %160
  store i32 -1, i32* %4, align 4
  br label %171

167:                                              ; preds = %160
  br label %168

168:                                              ; preds = %167, %155
  br label %169

169:                                              ; preds = %168, %108
  %170 = load i32, i32* %11, align 4
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %169, %166, %146, %133, %123, %81, %49, %39
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i64 @fifo_write_avail(i64) #1

declare dso_local i64 @WaitForSingleObject(i32, i32) #1

declare dso_local i32 @_IAudioClient_GetCurrentPadding(i32, i64*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @fifo_read_avail(i64) #1

declare dso_local i32 @wasapi_flush_buffer(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @fifo_write(i64, i8*, i32) #1

declare dso_local i32 @wasapi_flush(%struct.TYPE_5__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
