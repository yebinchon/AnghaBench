; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/kissfft/extr_kissf_fftnd.c_kissf_fftnd_alloc.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/kissfft/extr_kissf_fftnd.c_kissf_fftnd_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32*, i32* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [212 x i8] c"################################################################################\0AInternal error! Memory allocation miscalculation\0A################################################################################\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @kissf_fftnd_alloc(i32* %0, i32 %1, i32 %2, i8* %3, i64* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %12, align 8
  store i32 1, i32* %14, align 4
  store i64 4, i64* %15, align 8
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %41, %5
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %19
  store i64 0, i64* %17, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @kissf_fft_alloc(i32 %28, i32 %29, i8* null, i64* %17)
  %31 = load i64, i64* %17, align 8
  %32 = load i64, i64* %15, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %15, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %14, align 4
  %40 = mul nsw i32 %39, %38
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %23
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %13, align 4
  br label %19

44:                                               ; preds = %19
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 4, %46
  %48 = load i64, i64* %15, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %15, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 8, %51
  %53 = load i64, i64* %15, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %15, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 4, %56
  %58 = load i64, i64* %15, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %15, align 8
  %60 = load i64*, i64** %11, align 8
  %61 = icmp eq i64* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %44
  %63 = load i64, i64* %15, align 8
  %64 = call i64 @malloc(i64 %63)
  %65 = inttoptr i64 %64 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %65, %struct.TYPE_3__** %12, align 8
  br label %77

66:                                               ; preds = %44
  %67 = load i64*, i64** %11, align 8
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %15, align 8
  %70 = icmp uge i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i8*, i8** %10, align 8
  %73 = bitcast i8* %72 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %73, %struct.TYPE_3__** %12, align 8
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i64, i64* %15, align 8
  %76 = load i64*, i64** %11, align 8
  store i64 %75, i64* %76, align 8
  br label %77

77:                                               ; preds = %74, %62
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %79 = icmp ne %struct.TYPE_3__* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %6, align 8
  br label %181

81:                                               ; preds = %77
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 1
  %90 = bitcast %struct.TYPE_3__* %89 to i8*
  store i8* %90, i8** %16, align 8
  %91 = load i8*, i8** %16, align 8
  %92 = bitcast i8* %91 to i32*
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  store i32* %92, i32** %94, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 8, %96
  %98 = load i8*, i8** %16, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 %97
  store i8* %99, i8** %16, align 8
  %100 = load i8*, i8** %16, align 8
  %101 = bitcast i8* %100 to i32*
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  store i32* %101, i32** %103, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = mul i64 4, %105
  %107 = load i8*, i8** %16, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 %106
  store i8* %108, i8** %16, align 8
  %109 = load i8*, i8** %16, align 8
  %110 = bitcast i8* %109 to i32*
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 4
  store i32* %110, i32** %112, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 4, %114
  %116 = load i8*, i8** %16, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 %115
  store i8* %117, i8** %16, align 8
  store i32 0, i32* %13, align 4
  br label %118

118:                                              ; preds = %162, %81
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %165

122:                                              ; preds = %118
  %123 = load i32*, i32** %7, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %127, i32* %133, align 4
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @kissf_fft_alloc(i32 %140, i32 %141, i8* null, i64* %18)
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %9, align 4
  %151 = load i8*, i8** %16, align 8
  %152 = call i32 @kissf_fft_alloc(i32 %149, i32 %150, i8* %151, i64* %18)
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %152, i32* %158, align 4
  %159 = load i64, i64* %18, align 8
  %160 = load i8*, i8** %16, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 %159
  store i8* %161, i8** %16, align 8
  br label %162

162:                                              ; preds = %122
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %13, align 4
  br label %118

165:                                              ; preds = %118
  %166 = load i8*, i8** %16, align 8
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %168 = bitcast %struct.TYPE_3__* %167 to i8*
  %169 = ptrtoint i8* %166 to i64
  %170 = ptrtoint i8* %168 to i64
  %171 = sub i64 %169, %170
  %172 = load i64, i64* %15, align 8
  %173 = trunc i64 %172 to i32
  %174 = sext i32 %173 to i64
  %175 = icmp ne i64 %171, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %165
  %177 = load i32, i32* @stderr, align 4
  %178 = call i32 @fprintf(i32 %177, i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str, i64 0, i64 0))
  br label %179

179:                                              ; preds = %176, %165
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  store %struct.TYPE_3__* %180, %struct.TYPE_3__** %6, align 8
  br label %181

181:                                              ; preds = %179, %80
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  ret %struct.TYPE_3__* %182
}

declare dso_local i32 @kissf_fft_alloc(i32, i32, i8*, i64*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
