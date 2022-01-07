; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/art/extr_scalegear.c_main.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/art/extr_scalegear.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i8* }

@kGearWidth = common dso_local global i32 0, align 4
@kGearHeight = common dso_local global i32 0, align 4
@kGearFrames = common dso_local global i32 0, align 4
@gGearPict2x = common dso_local global i64* null, align 8
@kvImageHighQualityResampling = common dso_local global i32 0, align 4
@kvImageNoError = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [74 x i8] c"const unsigned char gGearPict3x[9*kGearFrames*kGearWidth*kGearHeight] = {\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"0x%02x,\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\0A};\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @kGearWidth, align 4
  %13 = mul nsw i32 %12, 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* @kGearHeight, align 4
  %16 = mul nsw i32 %15, 2
  %17 = load i32, i32* @kGearFrames, align 4
  %18 = mul nsw i32 %16, %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 8
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 %27, %29
  %31 = call i8* @malloc(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sitofp i32 %34 to double
  %36 = fmul double 1.500000e+00, %35
  %37 = fptosi double %36 to i32
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sitofp i32 %40 to double
  %42 = fmul double 1.500000e+00, %41
  %43 = fptosi double %42 to i32
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 8
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %52, %54
  %56 = call i8* @malloc(i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  store i8* %56, i8** %57, align 8
  store i64 0, i64* %9, align 8
  br label %58

58:                                               ; preds = %86, %2
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %61, %63
  %65 = sext i32 %64 to i64
  %66 = icmp ult i64 %59, %65
  br i1 %66, label %67, label %89

67:                                               ; preds = %58
  %68 = load i64*, i64** @gGearPict2x, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %10, align 8
  %72 = load i64, i64* %10, align 8
  %73 = shl i64 %72, 16
  %74 = or i64 4278190080, %73
  %75 = load i64, i64* %10, align 8
  %76 = shl i64 %75, 8
  %77 = or i64 %74, %76
  %78 = load i64, i64* %10, align 8
  %79 = or i64 %77, %78
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %82 = load i8*, i8** %81, align 8
  %83 = bitcast i8* %82 to i64*
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  store i64 %80, i64* %85, align 8
  br label %86

86:                                               ; preds = %67
  %87 = load i64, i64* %9, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %9, align 8
  br label %58

89:                                               ; preds = %58
  %90 = load i32, i32* @kvImageHighQualityResampling, align 4
  %91 = call i64 @vImageScale_ARGB8888(%struct.TYPE_4__* %6, %struct.TYPE_4__* %7, i32* null, i32 %90)
  store i64 %91, i64* %8, align 8
  %92 = load i64, i64* @kvImageNoError, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = call i32 @exit(i32 1) #3
  unreachable

97:                                               ; preds = %89
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %9, align 8
  br label %99

99:                                               ; preds = %140, %97
  %100 = load i64, i64* %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %102, %104
  %106 = sext i32 %105 to i64
  %107 = icmp ult i64 %100, %106
  br i1 %107, label %108, label %143

108:                                              ; preds = %99
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = bitcast i8* %110 to i64*
  %112 = load i64, i64* %9, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %10, align 8
  %115 = load i64, i64* %10, align 8
  %116 = and i64 255, %115
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %11, align 4
  %118 = load i64, i64* %10, align 8
  %119 = load i32, i32* %11, align 4
  %120 = shl i32 %119, 16
  %121 = or i32 -16777216, %120
  %122 = load i32, i32* %11, align 4
  %123 = shl i32 %122, 8
  %124 = or i32 %121, %123
  %125 = load i32, i32* %11, align 4
  %126 = or i32 %124, %125
  %127 = zext i32 %126 to i64
  %128 = icmp ne i64 %118, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %108
  %130 = call i32 @exit(i32 1) #3
  unreachable

131:                                              ; preds = %108
  %132 = load i64, i64* %9, align 8
  %133 = and i64 15, %132
  %134 = icmp eq i64 0, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %131
  %138 = load i32, i32* %11, align 4
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %137
  %141 = load i64, i64* %9, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %9, align 8
  br label %99

143:                                              ; preds = %99
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %145 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @vImageScale_ARGB8888(%struct.TYPE_4__*, %struct.TYPE_4__*, i32*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
