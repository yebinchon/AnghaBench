; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libz/extr_deflate.c_deflateParams.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libz/extr_deflate.c_deflateParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i64, i32, i32, i32, i32 }

@Z_OK = common dso_local global i32 0, align 4
@Z_NULL = common dso_local global %struct.TYPE_7__* null, align 8
@Z_STREAM_ERROR = common dso_local global i32 0, align 4
@Z_DEFAULT_COMPRESSION = common dso_local global i32 0, align 4
@Z_FIXED = common dso_local global i32 0, align 4
@configuration_table = common dso_local global %struct.TYPE_9__* null, align 8
@Z_BLOCK = common dso_local global i32 0, align 4
@Z_BUF_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @deflateParams(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @Z_OK, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Z_NULL, align 8
  %14 = icmp eq %struct.TYPE_7__* %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Z_NULL, align 8
  %20 = icmp eq %struct.TYPE_7__* %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15, %3
  %22 = load i32, i32* @Z_STREAM_ERROR, align 4
  store i32 %22, i32* %4, align 4
  br label %138

23:                                               ; preds = %15
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = bitcast %struct.TYPE_7__* %26 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %8, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @Z_DEFAULT_COMPRESSION, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 6, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %23
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %36, 9
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @Z_FIXED, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %38, %35, %32
  %46 = load i32, i32* @Z_STREAM_ERROR, align 4
  store i32 %46, i32* %4, align 4
  br label %138

47:                                               ; preds = %41
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @configuration_table, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %69, label %60

60:                                               ; preds = %47
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** @configuration_table, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %61, %67
  br i1 %68, label %69, label %89

69:                                               ; preds = %60, %47
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %69
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %76 = load i32, i32* @Z_BLOCK, align 4
  %77 = call i32 @deflate(%struct.TYPE_7__* %75, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @Z_BUF_ERROR, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @Z_OK, align 4
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %86, %81, %74
  br label %89

89:                                               ; preds = %88, %69, %60
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp ne i64 %92, %94
  br i1 %95, label %96, label %133

96:                                               ; preds = %89
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** @configuration_table, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 6
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** @configuration_table, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** @configuration_table, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 4
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** @configuration_table, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %96, %89
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %133, %45, %21
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @deflate(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
