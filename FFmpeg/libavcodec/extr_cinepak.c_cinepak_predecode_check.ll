; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cinepak.c_cinepak_predecode_check.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cinepak.c_cinepak_predecode_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"encoded_buf_size 0\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @cinepak_predecode_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cinepak_predecode_check(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 8
  %12 = call i32 @AV_RB16(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = call i32 @AV_RB24(i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 100, %26
  %28 = mul nsw i32 %21, %27
  %29 = sdiv i32 %28, 100
  %30 = icmp slt i32 %20, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %32, i32* %2, align 4
  br label %158

33:                                               ; preds = %1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %118

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = call i32 @avpriv_request_sample(%struct.TYPE_5__* %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %46, i32* %2, align 4
  br label %158

47:                                               ; preds = %38
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %53, label %114

53:                                               ; preds = %47
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = srem i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %114

60:                                               ; preds = %53
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp sge i32 %63, 16
  br i1 %64, label %65, label %110

65:                                               ; preds = %60
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 10
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 254
  br i1 %71, label %72, label %110

72:                                               ; preds = %65
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 11
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %110

79:                                               ; preds = %72
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 12
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %110

86:                                               ; preds = %79
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 13
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 6
  br i1 %92, label %93, label %110

93:                                               ; preds = %86
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 14
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %93
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 15
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  store i32 6, i32* %109, align 4
  br label %113

110:                                              ; preds = %100, %93, %86, %79, %72, %65, %60
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  store i32 2, i32* %112, align 4
  br label %113

113:                                              ; preds = %110, %107
  br label %117

114:                                              ; preds = %53, %47
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  store i32 0, i32* %116, align 4
  br label %117

117:                                              ; preds = %114, %113
  br label %118

118:                                              ; preds = %117, %33
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 10, %124
  %126 = load i32, i32* %4, align 4
  %127 = mul nsw i32 %126, 12
  %128 = add nsw i32 %125, %127
  %129 = icmp slt i32 %121, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %118
  %131 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %131, i32* %2, align 4
  br label %158

132:                                              ; preds = %118
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %157

135:                                              ; preds = %132
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 10
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %139, i64 %143
  store i32* %144, i32** %6, align 8
  %145 = load i32*, i32** %6, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = call i32 @AV_RB24(i32* %146)
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp slt i32 %148, 12
  br i1 %149, label %154, label %150

150:                                              ; preds = %135
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %5, align 4
  %153 = icmp sgt i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %150, %135
  %155 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %155, i32* %2, align 4
  br label %158

156:                                              ; preds = %150
  br label %157

157:                                              ; preds = %156, %132
  store i32 0, i32* %2, align 4
  br label %158

158:                                              ; preds = %157, %154, %130, %41, %31
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @AV_RB24(i32*) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
