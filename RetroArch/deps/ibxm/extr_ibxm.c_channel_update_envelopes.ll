; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_channel_update_envelopes.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_channel_update_envelopes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i64, i32, i8*, %struct.TYPE_3__*, i8* }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel*)* @channel_update_envelopes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_update_envelopes(%struct.channel* %0) #0 {
  %2 = alloca %struct.channel*, align 8
  store %struct.channel* %0, %struct.channel** %2, align 8
  %3 = load %struct.channel*, %struct.channel** %2, align 8
  %4 = getelementptr inbounds %struct.channel, %struct.channel* %3, i32 0, i32 3
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %1
  %11 = load %struct.channel*, %struct.channel** %2, align 8
  %12 = getelementptr inbounds %struct.channel, %struct.channel* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %10
  %16 = load %struct.channel*, %struct.channel** %2, align 8
  %17 = getelementptr inbounds %struct.channel, %struct.channel* %16, i32 0, i32 3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.channel*, %struct.channel** %2, align 8
  %22 = getelementptr inbounds %struct.channel, %struct.channel* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %23, %20
  store i64 %24, i64* %22, align 8
  %25 = load %struct.channel*, %struct.channel** %2, align 8
  %26 = getelementptr inbounds %struct.channel, %struct.channel* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %15
  %30 = load %struct.channel*, %struct.channel** %2, align 8
  %31 = getelementptr inbounds %struct.channel, %struct.channel* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %29, %15
  br label %33

33:                                               ; preds = %32, %10
  %34 = load %struct.channel*, %struct.channel** %2, align 8
  %35 = getelementptr inbounds %struct.channel, %struct.channel* %34, i32 0, i32 3
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load %struct.channel*, %struct.channel** %2, align 8
  %39 = getelementptr inbounds %struct.channel, %struct.channel* %38, i32 0, i32 4
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.channel*, %struct.channel** %2, align 8
  %42 = getelementptr inbounds %struct.channel, %struct.channel* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @envelope_next_tick(%struct.TYPE_4__* %37, i8* %40, i32 %43)
  %45 = load %struct.channel*, %struct.channel** %2, align 8
  %46 = getelementptr inbounds %struct.channel, %struct.channel* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %33, %1
  %48 = load %struct.channel*, %struct.channel** %2, align 8
  %49 = getelementptr inbounds %struct.channel, %struct.channel* %48, i32 0, i32 3
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %47
  %56 = load %struct.channel*, %struct.channel** %2, align 8
  %57 = getelementptr inbounds %struct.channel, %struct.channel* %56, i32 0, i32 3
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load %struct.channel*, %struct.channel** %2, align 8
  %61 = getelementptr inbounds %struct.channel, %struct.channel* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.channel*, %struct.channel** %2, align 8
  %64 = getelementptr inbounds %struct.channel, %struct.channel* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i8* @envelope_next_tick(%struct.TYPE_4__* %59, i8* %62, i32 %65)
  %67 = load %struct.channel*, %struct.channel** %2, align 8
  %68 = getelementptr inbounds %struct.channel, %struct.channel* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %55, %47
  ret void
}

declare dso_local i8* @envelope_next_tick(%struct.TYPE_4__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
