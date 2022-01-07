; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_psp_audio.c_psp_audio_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_psp_audio.c_psp_audio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64, i32, i32, i64, i64, i32 }

@AUDIO_BUFFER_SIZE = common dso_local global i64 0, align 8
@AUDIO_BUFFER_SIZE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @psp_audio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_audio_write(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %8, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = udiv i64 %16, 1
  store i64 %17, i64* %10, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %137

23:                                               ; preds = %3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load i64, i64* @AUDIO_BUFFER_SIZE, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %32, %35
  %37 = load i64, i64* @AUDIO_BUFFER_SIZE_MASK, align 8
  %38 = and i64 %36, %37
  %39 = sub i64 %29, %38
  %40 = load i64, i64* %7, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %137

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43, %23
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @slock_lock(i32 %47)
  br label %49

49:                                               ; preds = %63, %44
  %50 = load i64, i64* @AUDIO_BUFFER_SIZE, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %53, %56
  %58 = load i64, i64* @AUDIO_BUFFER_SIZE_MASK, align 8
  %59 = and i64 %57, %58
  %60 = sub i64 %50, %59
  %61 = load i64, i64* %7, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %49
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @scond_wait(i32 %66, i32 %69)
  br label %49

71:                                               ; preds = %49
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @slock_unlock(i32 %74)
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @slock_lock(i32 %78)
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* %10, align 8
  %82 = add i64 %80, %81
  %83 = load i64, i64* @AUDIO_BUFFER_SIZE, align 8
  %84 = icmp ugt i64 %82, %83
  br i1 %84, label %85, label %112

85:                                               ; preds = %71
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = add i64 %88, %89
  %91 = load i8*, i8** %6, align 8
  %92 = load i64, i64* @AUDIO_BUFFER_SIZE, align 8
  %93 = load i64, i64* %9, align 8
  %94 = sub i64 %92, %93
  %95 = mul i64 %94, 1
  %96 = call i32 @memcpy(i64 %90, i8* %91, i64 %95)
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = load i64, i64* @AUDIO_BUFFER_SIZE, align 8
  %102 = load i64, i64* %9, align 8
  %103 = sub i64 %101, %102
  %104 = getelementptr i8, i8* %100, i64 %103
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* %10, align 8
  %107 = add i64 %105, %106
  %108 = load i64, i64* @AUDIO_BUFFER_SIZE, align 8
  %109 = sub i64 %107, %108
  %110 = mul i64 %109, 1
  %111 = call i32 @memcpy(i64 %99, i8* %104, i64 %110)
  br label %121

112:                                              ; preds = %71
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %9, align 8
  %117 = add i64 %115, %116
  %118 = load i8*, i8** %6, align 8
  %119 = load i64, i64* %7, align 8
  %120 = call i32 @memcpy(i64 %117, i8* %118, i64 %119)
  br label %121

121:                                              ; preds = %112, %85
  %122 = load i64, i64* %10, align 8
  %123 = load i64, i64* %9, align 8
  %124 = add i64 %123, %122
  store i64 %124, i64* %9, align 8
  %125 = load i64, i64* @AUDIO_BUFFER_SIZE_MASK, align 8
  %126 = load i64, i64* %9, align 8
  %127 = and i64 %126, %125
  store i64 %127, i64* %9, align 8
  %128 = load i64, i64* %9, align 8
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @slock_unlock(i32 %133)
  %135 = load i64, i64* %7, align 8
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %121, %42, %22
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @slock_lock(i32) #1

declare dso_local i32 @scond_wait(i32, i32) #1

declare dso_local i32 @slock_unlock(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
