; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_si.c_SI_Transfer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_si.c_SI_Transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i64 }
%struct.timespec = type { i32, i64 }

@sipacket = common dso_local global %struct.TYPE_3__* null, align 8
@sicntrl = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@xferTime = common dso_local global i64* null, align 8
@si_alarm = common dso_local global i32* null, align 8
@__si_alarmhandler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @SI_Transfer(i64 %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.timespec, align 8
  store i64 %0, i64* %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i8* null, i8** %16, align 8
  %22 = load i8*, i8** %17, align 8
  %23 = call i32 @_CPU_ISR_Disable(i8* %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sipacket, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %116

30:                                               ; preds = %7
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sicntrl, i32 0, i32 0), align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %116

34:                                               ; preds = %30
  store i8* inttoptr (i64 1 to i8*), i8** %16, align 8
  %35 = call i64 (...) @gettime()
  store i64 %35, i64* %19, align 8
  store i64 %35, i64* %20, align 8
  %36 = load i8*, i8** %15, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i64*, i64** @xferTime, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = call i64 @microsecs_to_ticks(i8* %43)
  %45 = add nsw i64 %42, %44
  store i64 %45, i64* %20, align 8
  br label %46

46:                                               ; preds = %38, %34
  %47 = load i64, i64* %19, align 8
  %48 = load i64, i64* %20, align 8
  %49 = sub nsw i64 %47, %48
  store i64 %49, i64* %18, align 8
  %50 = load i64, i64* %18, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.timespec, %struct.timespec* %21, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load i64, i64* %20, align 8
  %55 = load i64, i64* %19, align 8
  %56 = sub nsw i64 %54, %55
  %57 = call i32 @ticks_to_nanosecs(i64 %56)
  %58 = getelementptr inbounds %struct.timespec, %struct.timespec* %21, i32 0, i32 0
  store i32 %57, i32* %58, align 8
  %59 = load i32*, i32** @si_alarm, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @__si_alarmhandler, align 4
  %64 = call i32 @SYS_SetAlarm(i32 %62, %struct.timespec* %21, i32 %63, i32* null)
  br label %79

65:                                               ; preds = %46
  %66 = load i64, i64* %9, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call i64 @__si_transfer(i64 %66, i8* %67, i8* %68, i8* %69, i8* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load i8*, i8** %17, align 8
  %76 = call i32 @_CPU_ISR_Restore(i8* %75)
  %77 = load i8*, i8** %16, align 8
  store i8* %77, i8** %8, align 8
  br label %120

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78, %52
  %80 = load i64, i64* %9, align 8
  %81 = trunc i64 %80 to i32
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sipacket, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sipacket, align 8
  %88 = load i64, i64* %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 6
  store i8* %86, i8** %90, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sipacket, align 8
  %93 = load i64, i64* %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 5
  store i8* %91, i8** %95, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sipacket, align 8
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 4
  store i8* %96, i8** %100, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sipacket, align 8
  %103 = load i64, i64* %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  store i8* %101, i8** %105, align 8
  %106 = load i32, i32* %14, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sipacket, align 8
  %108 = load i64, i64* %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  store i32 %106, i32* %110, align 8
  %111 = load i64, i64* %20, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sipacket, align 8
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  store i64 %111, i64* %115, align 8
  br label %116

116:                                              ; preds = %79, %30, %7
  %117 = load i8*, i8** %17, align 8
  %118 = call i32 @_CPU_ISR_Restore(i8* %117)
  %119 = load i8*, i8** %16, align 8
  store i8* %119, i8** %8, align 8
  br label %120

120:                                              ; preds = %116, %74
  %121 = load i8*, i8** %8, align 8
  ret i8* %121
}

declare dso_local i32 @_CPU_ISR_Disable(i8*) #1

declare dso_local i64 @gettime(...) #1

declare dso_local i64 @microsecs_to_ticks(i8*) #1

declare dso_local i32 @ticks_to_nanosecs(i64) #1

declare dso_local i32 @SYS_SetAlarm(i32, %struct.timespec*, i32, i32*) #1

declare dso_local i64 @__si_transfer(i64, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
