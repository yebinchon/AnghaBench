; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_set_filter_params.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_set_filter_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32*, i32, i32, %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i32**, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@IIR = common dso_local global i32 0, align 4
@SUBSTREAM_INFO_HIGH_RATE = common dso_local global i32 0, align 4
@FIR = common dso_local global i32 0, align 4
@MLP_MAX_LPC_ORDER = common dso_local global i32 0, align 4
@MAX_LPC_ORDER = common dso_local global i32 0, align 4
@MLP_MIN_LPC_ORDER = common dso_local global i32 0, align 4
@FF_LPC_TYPE_LEVINSON = common dso_local global i32 0, align 4
@ORDER_METHOD_EST = common dso_local global i32 0, align 4
@MLP_MIN_LPC_SHIFT = common dso_local global i32 0, align 4
@MLP_MAX_LPC_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32, i32)* @set_filter_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_filter_params(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i64 %25
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %9, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 %31
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %10, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @IIR, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SUBSTREAM_INFO_HIGH_RATE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36, %4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43, %36
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  br label %180

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @IIR, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 4
  br label %179

56:                                               ; preds = %49
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @FIR, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %178

60:                                               ; preds = %56
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @SUBSTREAM_INFO_HIGH_RATE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @MLP_MAX_LPC_ORDER, align 4
  br label %70

70:                                               ; preds = %68, %67
  %71 = phi i32 [ 4, %67 ], [ %69, %68 ]
  store i32 %71, i32* %11, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 6
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32* %77, i32** %12, align 8
  %78 = load i32, i32* @MAX_LPC_ORDER, align 4
  %79 = zext i32 %78 to i64
  %80 = load i32, i32* @MAX_LPC_ORDER, align 4
  %81 = zext i32 %80 to i64
  %82 = call i8* @llvm.stacksave()
  store i8* %82, i8** %13, align 8
  %83 = mul nuw i64 %79, %81
  %84 = alloca i32, i64 %83, align 16
  store i64 %79, i64* %14, align 8
  store i64 %81, i64* %15, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** %16, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 5
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  store i32* %99, i32** %17, align 8
  %100 = load i32, i32* @MLP_MAX_LPC_ORDER, align 4
  %101 = zext i32 %100 to i64
  %102 = alloca i32, i64 %101, align 16
  store i64 %101, i64* %18, align 8
  store i32 0, i32* %19, align 4
  br label %103

103:                                              ; preds = %120, %70
  %104 = load i32, i32* %19, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ult i32 %104, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %103
  %110 = load i32*, i32** %12, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %16, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %16, align 8
  store i32 %111, i32* %112, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %12, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %12, align 8
  br label %120

120:                                              ; preds = %109
  %121 = load i32, i32* %19, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %19, align 4
  br label %103

123:                                              ; preds = %103
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @MLP_MIN_LPC_ORDER, align 4
  %133 = load i32, i32* %11, align 4
  %134 = bitcast i32* %84 to i32**
  %135 = load i32, i32* @FF_LPC_TYPE_LEVINSON, align 4
  %136 = load i32, i32* @ORDER_METHOD_EST, align 4
  %137 = load i32, i32* @MLP_MIN_LPC_SHIFT, align 4
  %138 = load i32, i32* @MLP_MAX_LPC_SHIFT, align 4
  %139 = load i32, i32* @MLP_MIN_LPC_SHIFT, align 4
  %140 = call i32 @ff_lpc_calc_coefs(i32* %125, i32* %128, i32 %131, i32 %132, i32 %133, i32 11, i32** %134, i32* %102, i32 %135, i32 0, i32 %136, i32 %137, i32 %138, i32 %139)
  store i32 %140, i32* %20, align 4
  %141 = load i32, i32* %20, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %20, align 4
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %102, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  store i32 0, i32* %19, align 4
  br label %151

151:                                              ; preds = %169, %123
  %152 = load i32, i32* %19, align 4
  %153 = load i32, i32* %20, align 4
  %154 = icmp ult i32 %152, %153
  br i1 %154, label %155, label %172

155:                                              ; preds = %151
  %156 = load i32, i32* %20, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = mul nsw i64 %158, %81
  %160 = getelementptr inbounds i32, i32* %84, i64 %159
  %161 = load i32, i32* %19, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %17, align 8
  %166 = load i32, i32* %19, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %164, i32* %168, align 4
  br label %169

169:                                              ; preds = %155
  %170 = load i32, i32* %19, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %19, align 4
  br label %151

172:                                              ; preds = %151
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %175 = load i32*, i32** %17, align 8
  %176 = call i32 @code_filter_coeffs(%struct.TYPE_7__* %173, %struct.TYPE_8__* %174, i32* %175)
  %177 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %177)
  br label %178

178:                                              ; preds = %172, %56
  br label %179

179:                                              ; preds = %178, %53
  br label %180

180:                                              ; preds = %179, %46
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ff_lpc_calc_coefs(i32*, i32*, i32, i32, i32, i32, i32**, i32*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @code_filter_coeffs(%struct.TYPE_7__*, %struct.TYPE_8__*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
