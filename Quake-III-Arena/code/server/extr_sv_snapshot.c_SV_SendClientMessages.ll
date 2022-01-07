; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_snapshot.c_SV_SendClientMessages.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_snapshot.c_SV_SendClientMessages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_11__ = type { i32 }

@svs = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@sv_maxclients = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_SendClientMessages() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_9__*, align 8
  store i32 0, i32* %1, align 4
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @svs, i32 0, i32 1), align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %2, align 8
  br label %4

4:                                                ; preds = %50, %0
  %5 = load i32, i32* %1, align 4
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sv_maxclients, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %55

10:                                               ; preds = %4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %50

16:                                               ; preds = %10
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @svs, i32 0, i32 0), align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %50

23:                                               ; preds = %16
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %23
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @svs, i32 0, i32 0), align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %35, %39
  %41 = call i64 @SV_RateMsec(%struct.TYPE_9__* %31, i64 %40)
  %42 = add nsw i64 %30, %41
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %46 = call i32 @SV_Netchan_TransmitNextFragment(%struct.TYPE_9__* %45)
  br label %50

47:                                               ; preds = %23
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %49 = call i32 @SV_SendClientSnapshot(%struct.TYPE_9__* %48)
  br label %50

50:                                               ; preds = %47, %29, %22, %15
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %1, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 1
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %2, align 8
  br label %4

55:                                               ; preds = %4
  ret void
}

declare dso_local i64 @SV_RateMsec(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @SV_Netchan_TransmitNextFragment(%struct.TYPE_9__*) #1

declare dso_local i32 @SV_SendClientSnapshot(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
