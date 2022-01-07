; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Session.c_ClientAdditionalThread.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Session.c_ClientAdditionalThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Additional Connection #%u\0A\00", align 1
@ADDITIONAL_CONNECTION_COUNTER_RESET_INTERVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClientAdditionalThread(%struct.TYPE_12__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = icmp eq %struct.TYPE_12__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  br label %116

13:                                               ; preds = %9
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %5, align 8
  %16 = call i64 (...) @Tick64()
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %6, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @Inc(i32 %24)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @LockList(i32 %28)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = call i32 @Add(i32 %32, %struct.TYPE_12__* %33)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @AddRef(i32 %37)
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @UnlockList(i32 %41)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = call i32 @NoticeThreadInit(%struct.TYPE_12__* %43)
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @Count(i32 %47)
  %49 = call i32 @Debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %52 = call i32 @ClientAdditionalConnect(%struct.TYPE_14__* %50, %struct.TYPE_12__* %51)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %86

54:                                               ; preds = %13
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @Dec(i32 %57)
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = call i64 (...) @Tick64()
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %63, %54
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %69, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ADDITIONAL_CONNECTION_COUNTER_RESET_INTERVAL, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i64 (...) @Tick64()
  %78 = icmp sle i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %67
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = call i64 (...) @Tick64()
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %79, %67
  br label %95

86:                                               ; preds = %13
  %87 = call i64 (...) @Tick64()
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = call i64 (...) @Tick64()
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %86, %85
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @LockList(i32 %98)
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %104 = call i64 @Delete(i32 %102, %struct.TYPE_12__* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %95
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %108 = call i32 @ReleaseThread(%struct.TYPE_12__* %107)
  br label %109

109:                                              ; preds = %106, %95
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @UnlockList(i32 %112)
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %115 = call i32 @ReleaseSession(%struct.TYPE_13__* %114)
  br label %116

116:                                              ; preds = %109, %12
  ret void
}

declare dso_local i64 @Tick64(...) #1

declare dso_local i32 @Inc(i32) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i32 @Add(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @NoticeThreadInit(%struct.TYPE_12__*) #1

declare dso_local i32 @Debug(i8*, i32) #1

declare dso_local i32 @Count(i32) #1

declare dso_local i32 @ClientAdditionalConnect(%struct.TYPE_14__*, %struct.TYPE_12__*) #1

declare dso_local i32 @Dec(i32) #1

declare dso_local i64 @Delete(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @ReleaseThread(%struct.TYPE_12__*) #1

declare dso_local i32 @ReleaseSession(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
