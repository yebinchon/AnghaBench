; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_Curl_verboseconnect.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_Curl_verboseconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_16__, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_18__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"Connected to %s (%s) port %ld (#%ld)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Curl_verboseconnect(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  %3 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %4 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %3, i32 0, i32 8
  %5 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %69

10:                                               ; preds = %1
  %11 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %12 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %11, i32 0, i32 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %14 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %15 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %10
  %20 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %21 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %20, i32 0, i32 7
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  br label %57

25:                                               ; preds = %10
  %26 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %27 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %33 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  br label %55

37:                                               ; preds = %25
  %38 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %39 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %45 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  br label %53

48:                                               ; preds = %37
  %49 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %50 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi i32 [ %47, %43 ], [ %52, %48 ]
  br label %55

55:                                               ; preds = %53, %31
  %56 = phi i32 [ %36, %31 ], [ %54, %53 ]
  br label %57

57:                                               ; preds = %55, %19
  %58 = phi i32 [ %24, %19 ], [ %56, %55 ]
  %59 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %60 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %63 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %66 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @infof(%struct.TYPE_18__* %13, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %61, i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %57, %1
  ret void
}

declare dso_local i32 @infof(%struct.TYPE_18__*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
