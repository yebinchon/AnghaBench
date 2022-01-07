; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_xll.c_parse_sub_headers.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_xll.c_parse_sub_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32, %struct.TYPE_16__*, i64, i64, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i64, i32, i32, i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*)* @parse_sub_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_sub_headers(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 6
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %6, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  store i32 0, i32* %8, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %7, align 8
  br label %25

25:                                               ; preds = %88, %2
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %93

31:                                               ; preds = %25
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 4
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @chs_parse_header(%struct.TYPE_15__* %37, %struct.TYPE_16__* %38, i32* %39)
  store i32 %40, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %161

44:                                               ; preds = %31
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %52, %44
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, %67
  store i64 %71, i64* %69, align 8
  br label %72

72:                                               ; preds = %63, %58
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = shl i32 1, %78
  %80 = sub nsw i32 %79, 1
  %81 = icmp ne i32 %75, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %72
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %82, %72
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 1
  store %struct.TYPE_16__* %92, %struct.TYPE_16__** %7, align 8
  br label %25

93:                                               ; preds = %25
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i64 %102
  store %struct.TYPE_16__* %103, %struct.TYPE_16__** %7, align 8
  br label %104

104:                                              ; preds = %123, %93
  %105 = load i32, i32* %8, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %128

107:                                              ; preds = %104
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %109 = call i64 @is_hier_dmix_chset(%struct.TYPE_16__* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %107
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %114 = call %struct.TYPE_16__* @find_next_hier_dmix_chset(%struct.TYPE_15__* %112, %struct.TYPE_16__* %113)
  store %struct.TYPE_16__* %114, %struct.TYPE_16__** %10, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %116 = icmp ne %struct.TYPE_16__* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %120 = call i32 @prescale_down_mix(%struct.TYPE_16__* %118, %struct.TYPE_16__* %119)
  br label %121

121:                                              ; preds = %117, %111
  br label %122

122:                                              ; preds = %121, %107
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %8, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 -1
  store %struct.TYPE_16__* %127, %struct.TYPE_16__** %7, align 8
  br label %104

128:                                              ; preds = %104
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  switch i32 %131, label %154 [
    i32 128, label %132
    i32 130, label %135
    i32 129, label %135
  ]

132:                                              ; preds = %128
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 2
  store i32 1, i32* %134, align 4
  br label %160

135:                                              ; preds = %128, %128
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %141, 5
  br i1 %142, label %143, label %148

143:                                              ; preds = %135
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = icmp sgt i32 %146, 1
  br label %148

148:                                              ; preds = %143, %135
  %149 = phi i1 [ false, %135 ], [ %147, %143 ]
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 2, i32 1
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 4
  br label %160

154:                                              ; preds = %128
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 4
  br label %160

160:                                              ; preds = %154, %148, %132
  store i32 0, i32* %3, align 4
  br label %161

161:                                              ; preds = %160, %42
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @chs_parse_header(%struct.TYPE_15__*, %struct.TYPE_16__*, i32*) #1

declare dso_local i64 @is_hier_dmix_chset(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @find_next_hier_dmix_chset(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @prescale_down_mix(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
