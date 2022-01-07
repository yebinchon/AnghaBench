; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libz/extr_trees.c_compress_block.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libz/extr_trees.c_compress_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, i64, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c" '%c' \00", align 1
@_length_code = common dso_local global i32* null, align 8
@LITERALS = common dso_local global i32 0, align 4
@extra_lbits = common dso_local global i32* null, align 8
@base_length = common dso_local global i64* null, align 8
@D_CODES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"bad d_code\00", align 1
@extra_dbits = common dso_local global i32* null, align 8
@base_dist = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"pendingBuf overflow\00", align 1
@END_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32*)* @compress_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compress_block(%struct.TYPE_5__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %136

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %129, %16
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %9, align 4
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %17
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @send_code(%struct.TYPE_5__* %36, i32 %37, i32* %38)
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @isgraph(i32 %40) #3
  %42 = load i32, i32* @stderr, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @Tracecv(i32 %41, i32 %43)
  br label %115

45:                                               ; preds = %17
  %46 = load i32*, i32** @_length_code, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %10, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @LITERALS, align 4
  %54 = add i32 %52, %53
  %55 = add i32 %54, 1
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @send_code(%struct.TYPE_5__* %51, i32 %55, i32* %56)
  %58 = load i32*, i32** @extra_lbits, align 8
  %59 = load i32, i32* %10, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %45
  %66 = load i64*, i64** @base_length, align 8
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = sub nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %8, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @send_bits(%struct.TYPE_5__* %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %65, %45
  %80 = load i32, i32* %7, align 4
  %81 = add i32 %80, -1
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @d_code(i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @D_CODES, align 4
  %86 = icmp ult i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @Assert(i32 %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @send_code(%struct.TYPE_5__* %89, i32 %90, i32* %91)
  %93 = load i32*, i32** @extra_dbits, align 8
  %94 = load i32, i32* %10, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %79
  %101 = load i64*, i64** @base_dist, align 8
  %102 = load i32, i32* %10, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = zext i32 %106 to i64
  %108 = sub nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %7, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @send_bits(%struct.TYPE_5__* %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %100, %79
  br label %115

115:                                              ; preds = %114, %35
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = mul i32 2, %122
  %124 = zext i32 %123 to i64
  %125 = add nsw i64 %121, %124
  %126 = icmp slt i64 %118, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @Assert(i32 %127, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %129

129:                                              ; preds = %115
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ult i32 %130, %133
  br i1 %134, label %17, label %135

135:                                              ; preds = %129
  br label %136

136:                                              ; preds = %135, %3
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %138 = load i32, i32* @END_BLOCK, align 4
  %139 = load i32*, i32** %5, align 8
  %140 = call i32 @send_code(%struct.TYPE_5__* %137, i32 %138, i32* %139)
  ret void
}

declare dso_local i32 @send_code(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @Tracecv(i32, i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isgraph(i32) #2

declare dso_local i32 @send_bits(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @d_code(i32) #1

declare dso_local i32 @Assert(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
