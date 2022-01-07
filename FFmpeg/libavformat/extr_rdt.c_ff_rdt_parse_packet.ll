; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rdt.c_ff_rdt_parse_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rdt.c_ff_rdt_parse_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32, i32, i32, i32*, i64*, i32*, i32, i32, i32)*, i32, i32, i64, i32, i32*, i32, i32 }

@RTP_FLAG_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_rdt_parse_packet(%struct.TYPE_3__* %0, i32* %1, i32** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32**, i32*** %8, align 8
  %19 = icmp ne i32** %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32**, i32*** %8, align 8
  %22 = load i32*, i32** %21, align 8
  br label %24

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i32* [ %22, %20 ], [ null, %23 ]
  store i32* %25, i32** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %17, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (i32, i32, i32, i32*, i64*, i32*, i32, i32, i32)*, i32 (i32, i32, i32, i32*, i64*, i32*, i32, i32, i32)** %27, align 8
  %29 = icmp ne i32 (i32, i32, i32, i32*, i64*, i32*, i32, i32, i32)* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %151

31:                                               ; preds = %24
  %32 = load i32*, i32** %10, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %62, label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %62

39:                                               ; preds = %34
  store i64 0, i64* %16, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (i32, i32, i32, i32*, i64*, i32*, i32, i32, i32)*, i32 (i32, i32, i32, i32*, i64*, i32*, i32, i32, i32)** %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 %42(i32 %45, i32 %48, i32 %57, i32* %58, i64* %16, i32* null, i32 0, i32 0, i32 %59)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  store i32 %61, i32* %5, align 4
  br label %151

62:                                               ; preds = %34, %31
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 12
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 -1, i32* %5, align 4
  br label %151

66:                                               ; preds = %62
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @ff_rdt_parse_header(i32* %67, i32 %68, i32* %14, i32* %11, i32* %13, i32* %15, i64* %16)
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* %17, align 4
  store i32 %73, i32* %5, align 4
  br label %151

74:                                               ; preds = %66
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %105

77:                                               ; preds = %74
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %78, %81
  br i1 %82, label %95, label %83

83:                                               ; preds = %77
  %84 = load i64, i64* %16, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %84, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %90, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %89, %83, %77
  %96 = load i32, i32* @RTP_FLAG_KEY, align 4
  %97 = load i32, i32* %12, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load i64, i64* %16, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 3
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %95, %89, %74
  %106 = load i32, i32* %13, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* %17, align 4
  %110 = load i32*, i32** %10, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32* %112, i32** %10, align 8
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* %9, align 4
  %115 = sub nsw i32 %114, %113
  store i32 %115, i32* %9, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = icmp sge i32 %118, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %105
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  store i32 -1, i32* %125, align 8
  store i32 -1, i32* %5, align 4
  br label %151

126:                                              ; preds = %105
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32 (i32, i32, i32, i32*, i64*, i32*, i32, i32, i32)*, i32 (i32, i32, i32, i32*, i64*, i32*, i32, i32, i32)** %128, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 5
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %138, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %7, align 8
  %146 = load i32*, i32** %10, align 8
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %12, align 4
  %149 = call i32 %129(i32 %132, i32 %135, i32 %144, i32* %145, i64* %16, i32* %146, i32 %147, i32 0, i32 %148)
  store i32 %149, i32* %17, align 4
  %150 = load i32, i32* %17, align 4
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %126, %123, %72, %65, %39, %30
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @ff_rdt_parse_header(i32*, i32, i32*, i32*, i32*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
