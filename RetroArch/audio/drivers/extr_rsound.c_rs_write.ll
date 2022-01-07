; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_rsound.c_rs_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_rsound.c_rs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @rs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_write(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %8, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %139

21:                                               ; preds = %3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %21
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @rsd_callback_lock(i32 %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @fifo_write_avail(i32 %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i64, i64* %7, align 8
  br label %42

40:                                               ; preds = %26
  %41 = load i64, i64* %9, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i64 [ %39, %38 ], [ %41, %40 ]
  store i64 %43, i64* %10, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @fifo_write(i32 %46, i8* %47, i64 %48)
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @rsd_callback_unlock(i32 %52)
  %54 = load i64, i64* %10, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %4, align 4
  br label %139

56:                                               ; preds = %21
  store i64 0, i64* %11, align 8
  br label %57

57:                                               ; preds = %135, %56
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  %66 = xor i1 %65, true
  br label %67

67:                                               ; preds = %61, %57
  %68 = phi i1 [ false, %57 ], [ %66, %61 ]
  br i1 %68, label %69, label %136

69:                                               ; preds = %67
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @rsd_callback_lock(i32 %72)
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @fifo_write_avail(i32 %76)
  store i64 %77, i64* %12, align 8
  %78 = load i64, i64* %12, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %106

80:                                               ; preds = %69
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @rsd_callback_unlock(i32 %83)
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %105, label %89

89:                                               ; preds = %80
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @slock_lock(i32 %92)
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @scond_wait(i32 %96, i32 %99)
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @slock_unlock(i32 %103)
  br label %105

105:                                              ; preds = %89, %80
  br label %135

106:                                              ; preds = %69
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* %11, align 8
  %109 = sub i64 %107, %108
  %110 = load i64, i64* %12, align 8
  %111 = icmp ugt i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i64, i64* %12, align 8
  br label %118

114:                                              ; preds = %106
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* %11, align 8
  %117 = sub i64 %115, %116
  br label %118

118:                                              ; preds = %114, %112
  %119 = phi i64 [ %113, %112 ], [ %117, %114 ]
  store i64 %119, i64* %13, align 8
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i8*, i8** %6, align 8
  %124 = load i64, i64* %11, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  %126 = load i64, i64* %13, align 8
  %127 = call i32 @fifo_write(i32 %122, i8* %125, i64 %126)
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @rsd_callback_unlock(i32 %130)
  %132 = load i64, i64* %13, align 8
  %133 = load i64, i64* %11, align 8
  %134 = add i64 %133, %132
  store i64 %134, i64* %11, align 8
  br label %135

135:                                              ; preds = %118, %105
  br label %57

136:                                              ; preds = %67
  %137 = load i64, i64* %11, align 8
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %136, %42, %20
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @rsd_callback_lock(i32) #1

declare dso_local i64 @fifo_write_avail(i32) #1

declare dso_local i32 @fifo_write(i32, i8*, i64) #1

declare dso_local i32 @rsd_callback_unlock(i32) #1

declare dso_local i32 @slock_lock(i32) #1

declare dso_local i32 @scond_wait(i32, i32) #1

declare dso_local i32 @slock_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
