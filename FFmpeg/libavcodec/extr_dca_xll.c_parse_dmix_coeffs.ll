; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_xll.c_parse_dmix_coeffs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_xll.c_parse_dmix_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32*, i32*, i32*, i32, i64 }

@ff_dca_dmix_primary_nch = common dso_local global i32* null, align 8
@FF_DCA_DMIXTABLE_OFFSET = common dso_local global i32 0, align 4
@FF_DCA_INV_DMIXTABLE_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Invalid XLL downmix scale index\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_dca_dmixtable = common dso_local global i32* null, align 8
@ff_dca_inv_dmixtable = common dso_local global i32* null, align 8
@FF_DCA_DMIXTABLE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Invalid XLL downmix coefficient index\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_6__*)* @parse_dmix_coeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_dmix_coeffs(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load i32*, i32** @ff_dca_dmix_primary_nch, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  br label %31

27:                                               ; preds = %2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  br label %31

31:                                               ; preds = %27, %20
  %32 = phi i32 [ %26, %20 ], [ %30, %27 ]
  store i32 %32, i32* %6, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %9, align 8
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %153, %31
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %156

40:                                               ; preds = %36
  store i32 0, i32* %14, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %101, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = call i32 @get_bits(i32* %47, i32 9)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = ashr i32 %49, 8
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, 255
  %54 = load i32, i32* @FF_DCA_DMIXTABLE_OFFSET, align 4
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* @FF_DCA_INV_DMIXTABLE_SIZE, align 4
  %58 = icmp uge i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %45
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @AV_LOG_ERROR, align 4
  %64 = call i32 @av_log(i32 %62, i32 %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %65, i32* %3, align 4
  br label %157

66:                                               ; preds = %45
  %67 = load i32*, i32** @ff_dca_dmixtable, align 8
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* @FF_DCA_DMIXTABLE_OFFSET, align 4
  %70 = add i32 %68, %69
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %13, align 4
  %74 = load i32*, i32** @ff_dca_inv_dmixtable, align 8
  %75 = load i32, i32* %15, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %11, align 4
  %81 = xor i32 %79, %80
  %82 = load i32, i32* %11, align 4
  %83 = sub nsw i32 %81, %82
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %83, i32* %89, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %11, align 4
  %92 = xor i32 %90, %91
  %93 = load i32, i32* %11, align 4
  %94 = sub nsw i32 %92, %93
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %94, i32* %100, align 4
  br label %101

101:                                              ; preds = %66, %40
  store i32 0, i32* %8, align 4
  br label %102

102:                                              ; preds = %149, %101
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %152

108:                                              ; preds = %102
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = call i32 @get_bits(i32* %110, i32 9)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = ashr i32 %112, 8
  %114 = sub nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %10, align 4
  %116 = and i32 %115, 255
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* @FF_DCA_DMIXTABLE_SIZE, align 4
  %119 = icmp uge i32 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %108
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @AV_LOG_ERROR, align 4
  %125 = call i32 @av_log(i32 %123, i32 %124, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %126 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %126, i32* %3, align 4
  br label %157

127:                                              ; preds = %108
  %128 = load i32*, i32** @ff_dca_dmixtable, align 8
  %129 = load i32, i32* %15, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %12, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 6
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %127
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @mul16(i32 %138, i32 %139)
  store i32 %140, i32* %12, align 4
  br label %141

141:                                              ; preds = %137, %127
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %11, align 4
  %144 = xor i32 %142, %143
  %145 = load i32, i32* %11, align 4
  %146 = sub nsw i32 %144, %145
  %147 = load i32*, i32** %9, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %9, align 8
  store i32 %146, i32* %147, align 4
  br label %149

149:                                              ; preds = %141
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %8, align 4
  br label %102

152:                                              ; preds = %102
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %7, align 4
  br label %36

156:                                              ; preds = %36
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %156, %120, %59
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @mul16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
