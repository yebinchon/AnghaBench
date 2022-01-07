; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_switch_libnx_audren_thread_audio.c_libnx_audren_thread_audio_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_switch_libnx_audren_thread_audio.c_libnx_audren_thread_audio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @libnx_audren_thread_audio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libnx_audren_thread_audio_write(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %8, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %3
  store i32 -1, i32* %4, align 4
  br label %119

22:                                               ; preds = %16
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %119

28:                                               ; preds = %22
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %28
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = call i32 @mutexLock(i32* %35)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @fifo_write_avail(i32 %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @MIN(i64 %41, i64 %42)
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp ugt i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %33
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @fifo_write(i32 %49, i8* %50, i64 %51)
  br label %53

53:                                               ; preds = %46, %33
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = call i32 @mutexUnlock(i32* %55)
  br label %116

57:                                               ; preds = %28
  store i64 0, i64* %10, align 8
  br label %58

58:                                               ; preds = %114, %57
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %62, %58
  %68 = phi i1 [ false, %58 ], [ %66, %62 ]
  br i1 %68, label %69, label %115

69:                                               ; preds = %67
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = call i32 @mutexLock(i32* %71)
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @fifo_write_avail(i32 %75)
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* %9, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %69
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* %10, align 8
  %82 = sub i64 %80, %81
  %83 = load i64, i64* %9, align 8
  %84 = call i64 @MIN(i64 %82, i64 %83)
  store i64 %84, i64* %11, align 8
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %6, align 8
  %89 = load i64, i64* %10, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  %91 = load i64, i64* %11, align 8
  %92 = call i32 @fifo_write(i32 %87, i8* %90, i64 %91)
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = call i32 @mutexUnlock(i32* %94)
  %96 = load i64, i64* %11, align 8
  %97 = load i64, i64* %10, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* %10, align 8
  br label %114

99:                                               ; preds = %69
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = call i32 @mutexUnlock(i32* %101)
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = call i32 @mutexLock(i32* %104)
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = call i32 @condvarWait(i32* %107, i32* %109)
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = call i32 @mutexUnlock(i32* %112)
  br label %114

114:                                              ; preds = %99, %79
  br label %58

115:                                              ; preds = %67
  br label %116

116:                                              ; preds = %115, %53
  %117 = load i64, i64* %10, align 8
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %116, %27, %21
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @mutexLock(i32*) #1

declare dso_local i64 @fifo_write_avail(i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @fifo_write(i32, i8*, i64) #1

declare dso_local i32 @mutexUnlock(i32*) #1

declare dso_local i32 @condvarWait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
