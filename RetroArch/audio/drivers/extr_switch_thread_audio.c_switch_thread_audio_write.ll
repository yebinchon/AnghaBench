; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_switch_thread_audio.c_switch_thread_audio_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_switch_thread_audio.c_switch_thread_audio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64)* @switch_thread_audio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @switch_thread_audio_write(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %10, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %3
  store i64 0, i64* %4, align 8
  br label %118

22:                                               ; preds = %16
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %22
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @compat_mutex_lock(i32* %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @fifo_write_avail(i32 %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @MIN(i64 %35, i64 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp ugt i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %27
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @fifo_write(i32 %43, i8* %44, i64 %45)
  br label %47

47:                                               ; preds = %40, %27
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @compat_mutex_unlock(i32* %49)
  br label %116

51:                                               ; preds = %22
  store i64 0, i64* %9, align 8
  br label %52

52:                                               ; preds = %114, %51
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br label %61

61:                                               ; preds = %56, %52
  %62 = phi i1 [ false, %52 ], [ %60, %56 ]
  br i1 %62, label %63, label %115

63:                                               ; preds = %61
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @compat_mutex_lock(i32* %65)
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @fifo_write_avail(i32 %69)
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %63
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = call i32 @compat_mutex_unlock(i32* %75)
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = call i32 @compat_mutex_lock(i32* %78)
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %73
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = call i32 @compat_condvar_wait(i32* %86, i32* %88)
  br label %90

90:                                               ; preds = %84, %73
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  %93 = call i32 @compat_mutex_unlock(i32* %92)
  br label %114

94:                                               ; preds = %63
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* %9, align 8
  %97 = sub i64 %95, %96
  %98 = load i64, i64* %8, align 8
  %99 = call i64 @MIN(i64 %97, i64 %98)
  store i64 %99, i64* %11, align 8
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i8*, i8** %6, align 8
  %104 = load i64, i64* %9, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = load i64, i64* %11, align 8
  %107 = call i32 @fifo_write(i32 %102, i8* %105, i64 %106)
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = call i32 @compat_mutex_unlock(i32* %109)
  %111 = load i64, i64* %11, align 8
  %112 = load i64, i64* %9, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %9, align 8
  br label %114

114:                                              ; preds = %94, %90
  br label %52

115:                                              ; preds = %61
  br label %116

116:                                              ; preds = %115, %47
  %117 = load i64, i64* %9, align 8
  store i64 %117, i64* %4, align 8
  br label %118

118:                                              ; preds = %116, %21
  %119 = load i64, i64* %4, align 8
  ret i64 %119
}

declare dso_local i32 @compat_mutex_lock(i32*) #1

declare dso_local i64 @fifo_write_avail(i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @fifo_write(i32, i8*, i64) #1

declare dso_local i32 @compat_mutex_unlock(i32*) #1

declare dso_local i32 @compat_condvar_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
