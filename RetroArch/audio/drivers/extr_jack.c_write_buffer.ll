; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_jack.c_write_buffer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_jack.c_write_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32*, i64 }

@AUDIO_CHUNK_SIZE_NONBLOCKING = common dso_local global i32 0, align 4
@AUDIO_MAX_RATIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, float*, i64)* @write_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_buffer(%struct.TYPE_3__* %0, float* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [2 x i64], align 16
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store float* %1, float** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %10, align 8
  %18 = load i32, i32* @AUDIO_CHUNK_SIZE_NONBLOCKING, align 4
  %19 = load i32, i32* @AUDIO_MAX_RATIO, align 4
  %20 = mul nsw i32 %18, %19
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = mul nuw i64 2, %21
  %24 = alloca float, i64 %23, align 16
  store i64 %21, i64* %12, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @FRAMES(i64 %25)
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %13, align 8
  %28 = load i32, i32* @AUDIO_CHUNK_SIZE_NONBLOCKING, align 4
  %29 = load i32, i32* @AUDIO_MAX_RATIO, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = icmp ugt i64 %27, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %3
  %34 = load i32, i32* @AUDIO_CHUNK_SIZE_NONBLOCKING, align 4
  %35 = load i32, i32* @AUDIO_MAX_RATIO, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %13, align 8
  br label %38

38:                                               ; preds = %33, %3
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %66, %38
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %69

42:                                               ; preds = %39
  store i64 0, i64* %9, align 8
  br label %43

43:                                               ; preds = %62, %42
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %13, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %43
  %48 = load float*, float** %6, align 8
  %49 = load i64, i64* %9, align 8
  %50 = mul i64 %49, 2
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %50, %52
  %54 = getelementptr inbounds float, float* %48, i64 %53
  %55 = load float, float* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = mul nsw i64 %57, %21
  %59 = getelementptr inbounds float, float* %24, i64 %58
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds float, float* %59, i64 %60
  store float %55, float* %61, align 4
  br label %62

62:                                               ; preds = %47
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %9, align 8
  br label %43

65:                                               ; preds = %43
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %39

69:                                               ; preds = %39
  br label %70

70:                                               ; preds = %160, %69
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %13, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %161

74:                                               ; preds = %70
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i64 0, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %165

80:                                               ; preds = %74
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @jack_ringbuffer_write_space(i32 %85)
  %87 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  store i64 %86, i64* %87, align 16
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @jack_ringbuffer_write_space(i32 %92)
  %94 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 1
  store i64 %93, i64* %94, align 8
  %95 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %96 = load i64, i64* %95, align 16
  %97 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ult i64 %96, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %80
  %101 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %102 = load i64, i64* %101, align 16
  br label %106

103:                                              ; preds = %80
  %104 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 1
  %105 = load i64, i64* %104, align 8
  br label %106

106:                                              ; preds = %103, %100
  %107 = phi i64 [ %102, %100 ], [ %105, %103 ]
  store i64 %107, i64* %15, align 8
  %108 = load i64, i64* %15, align 8
  %109 = udiv i64 %108, 4
  store i64 %109, i64* %15, align 8
  %110 = load i64, i64* %13, align 8
  %111 = load i64, i64* %10, align 8
  %112 = sub i64 %110, %111
  %113 = load i64, i64* %15, align 8
  %114 = icmp ugt i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %106
  %116 = load i64, i64* %15, align 8
  br label %121

117:                                              ; preds = %106
  %118 = load i64, i64* %13, align 8
  %119 = load i64, i64* %10, align 8
  %120 = sub i64 %118, %119
  br label %121

121:                                              ; preds = %117, %115
  %122 = phi i64 [ %116, %115 ], [ %120, %117 ]
  store i64 %122, i64* %16, align 8
  %123 = load i64, i64* %16, align 8
  %124 = icmp ugt i64 %123, 0
  br i1 %124, label %125, label %154

125:                                              ; preds = %121
  store i32 0, i32* %8, align 4
  br label %126

126:                                              ; preds = %147, %125
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %127, 2
  br i1 %128, label %129, label %150

129:                                              ; preds = %126
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = mul nsw i64 %138, %21
  %140 = getelementptr inbounds float, float* %24, i64 %139
  %141 = load i64, i64* %10, align 8
  %142 = getelementptr inbounds float, float* %140, i64 %141
  %143 = bitcast float* %142 to i8*
  %144 = load i64, i64* %16, align 8
  %145 = mul i64 %144, 4
  %146 = call i32 @jack_ringbuffer_write(i32 %136, i8* %143, i64 %145)
  br label %147

147:                                              ; preds = %129
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %8, align 4
  br label %126

150:                                              ; preds = %126
  %151 = load i64, i64* %16, align 8
  %152 = load i64, i64* %10, align 8
  %153 = add i64 %152, %151
  store i64 %153, i64* %10, align 8
  br label %154

154:                                              ; preds = %150, %121
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %161

160:                                              ; preds = %154
  br label %70

161:                                              ; preds = %159, %70
  %162 = load i64, i64* %10, align 8
  %163 = mul i64 %162, 4
  %164 = mul i64 %163, 2
  store i64 %164, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %165

165:                                              ; preds = %161, %79
  %166 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %166)
  %167 = load i64, i64* %4, align 8
  ret i64 %167
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @FRAMES(i64) #2

declare dso_local i64 @jack_ringbuffer_write_space(i32) #2

declare dso_local i32 @jack_ringbuffer_write(i32, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
