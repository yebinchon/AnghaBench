; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/mach/extr_mach_msg.c_mach_msg_destroy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/mach/extr_mach_msg.c_mach_msg_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_13__, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i64, i64, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@MACH_MSGH_BITS_COMPLEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mach_msg_destroy(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @MACH_MSGH_BITS_REMOTE(i32 %20)
  %22 = call i32 @mach_msg_destroy_port(i32 %19, i32 %21)
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @MACH_MSGH_BITS_VOUCHER(i32 %26)
  %28 = call i32 @mach_msg_destroy_port(i32 %25, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @MACH_MSGH_BITS_COMPLEX, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %140

33:                                               ; preds = %1
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %35 = bitcast %struct.TYPE_15__* %34 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %35, %struct.TYPE_17__** %4, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %5, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i64 1
  %42 = bitcast %struct.TYPE_17__* %41 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %42, %struct.TYPE_16__** %7, align 8
  store i64 0, i64* %6, align 8
  br label %43

43:                                               ; preds = %136, %33
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %139

47:                                               ; preds = %43
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %135 [
    i32 128, label %52
    i32 131, label %65
    i32 129, label %84
    i32 130, label %90
  ]

52:                                               ; preds = %47
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 2
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %8, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @mach_msg_destroy_port(i32 %57, i32 %60)
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i64 1
  %64 = bitcast %struct.TYPE_12__* %63 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %64, %struct.TYPE_16__** %7, align 8
  br label %135

65:                                               ; preds = %47
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  store %struct.TYPE_14__* %67, %struct.TYPE_14__** %9, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @mach_msg_destroy_memory(i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %72, %65
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i64 1
  %83 = bitcast %struct.TYPE_14__* %82 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %83, %struct.TYPE_16__** %7, align 8
  br label %135

84:                                               ; preds = %47
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  store %struct.TYPE_14__* %86, %struct.TYPE_14__** %10, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i64 1
  %89 = bitcast %struct.TYPE_14__* %88 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %89, %struct.TYPE_16__** %7, align 8
  br label %135

90:                                               ; preds = %47
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  store %struct.TYPE_13__* %92, %struct.TYPE_13__** %12, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i32*
  store i32* %96, i32** %11, align 8
  store i64 0, i64* %13, align 8
  br label %97

97:                                               ; preds = %110, %90
  %98 = load i64, i64* %13, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %98, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %97
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @mach_msg_destroy_port(i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %103
  %111 = load i64, i64* %13, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %13, align 8
  %113 = load i32*, i32** %11, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %11, align 8
  br label %97

115:                                              ; preds = %97
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %115
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = mul i64 %127, 4
  %129 = trunc i64 %128 to i32
  %130 = call i32 @mach_msg_destroy_memory(i32 %124, i32 %129)
  br label %131

131:                                              ; preds = %120, %115
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i64 1
  %134 = bitcast %struct.TYPE_13__* %133 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %134, %struct.TYPE_16__** %7, align 8
  br label %135

135:                                              ; preds = %47, %131, %84, %80, %52
  br label %136

136:                                              ; preds = %135
  %137 = load i64, i64* %6, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %6, align 8
  br label %43

139:                                              ; preds = %43
  br label %140

140:                                              ; preds = %139, %1
  ret void
}

declare dso_local i32 @mach_msg_destroy_port(i32, i32) #1

declare dso_local i32 @MACH_MSGH_BITS_REMOTE(i32) #1

declare dso_local i32 @MACH_MSGH_BITS_VOUCHER(i32) #1

declare dso_local i32 @mach_msg_destroy_memory(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
