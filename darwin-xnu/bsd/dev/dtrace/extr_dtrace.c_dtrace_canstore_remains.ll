; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_canstore_remains.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_canstore_remains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64, i64, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@DTRACE_DYNHASH_FREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64*, %struct.TYPE_10__*, %struct.TYPE_9__*)* @dtrace_canstore_remains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_canstore_remains(i64 %0, i64 %1, i64* %2, %struct.TYPE_10__* %3, %struct.TYPE_9__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %11, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @DTRACE_INRANGE(i64 %16, i64 %17, i64 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %5
  %27 = load i64*, i64** %9, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @DTRACE_RANGE_REMAIN(i64* %27, i64 %28, i64 %31, i32 %34)
  store i32 1, i32* %6, align 4
  br label %136

36:                                               ; preds = %5
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @DTRACE_INRANGE(i64 %37, i64 %38, i64 %42, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %109

49:                                               ; preds = %36
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 4
  store %struct.TYPE_12__* %51, %struct.TYPE_12__** %12, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = add i64 %54, %59
  store i64 %60, i64* %13, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %13, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %136

65:                                               ; preds = %49
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %13, align 8
  %68 = sub i64 %66, %67
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = urem i64 %68, %71
  store i64 %72, i64* %14, align 8
  %73 = load i64, i64* %14, align 8
  %74 = icmp ult i64 %73, 16
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  br label %136

76:                                               ; preds = %65
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %77, %78
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ugt i64 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  store i32 0, i32* %6, align 4
  br label %136

85:                                               ; preds = %76
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* %14, align 8
  %88 = sub i64 %86, %87
  %89 = inttoptr i64 %88 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %89, %struct.TYPE_11__** %15, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @DTRACE_DYNHASH_FREE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  store i32 0, i32* %6, align 4
  br label %136

96:                                               ; preds = %85
  %97 = load i64, i64* %14, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = mul i64 %103, 4
  %105 = add i64 16, %104
  %106 = icmp ult i64 %97, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  store i32 0, i32* %6, align 4
  br label %136

108:                                              ; preds = %96
  store i32 1, i32* %6, align 4
  br label %136

109:                                              ; preds = %36
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* %8, align 8
  %112 = load i64*, i64** %9, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @dtrace_canstore_statvar(i64 %110, i64 %111, i64* %112, i32 %115, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %109
  store i32 1, i32* %6, align 4
  br label %136

122:                                              ; preds = %109
  %123 = load i64, i64* %7, align 8
  %124 = load i64, i64* %8, align 8
  %125 = load i64*, i64** %9, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i64 @dtrace_canstore_statvar(i64 %123, i64 %124, i64* %125, i32 %128, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %122
  store i32 1, i32* %6, align 4
  br label %136

135:                                              ; preds = %122
  store i32 0, i32* %6, align 4
  br label %136

136:                                              ; preds = %135, %134, %121, %108, %107, %95, %84, %75, %64, %26
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

declare dso_local i64 @DTRACE_INRANGE(i64, i64, i64, i32) #1

declare dso_local i32 @DTRACE_RANGE_REMAIN(i64*, i64, i64, i32) #1

declare dso_local i64 @dtrace_canstore_statvar(i64, i64, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
