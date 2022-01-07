; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_dct.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_dct.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }

@.str = private unnamed_addr constant [5 x i8] c"ih4t\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"ffmpeg DCT/IDCT test\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"SIMPLE-C\00", align 1
@ff_simple_idct248_put = common dso_local global i32 0, align 4
@idct_tab = common dso_local global %struct.TYPE_7__* null, align 8
@idct_tab_arch = common dso_local global %struct.TYPE_7__* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"Error: %d.\0A\00", align 1
@fdct_tab = common dso_local global %struct.TYPE_7__* null, align 8
@fdct_tab_arch = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 8, i32* %13, align 4
  %15 = call i32 (...) @ff_ref_dct_init()
  br label %16

16:                                               ; preds = %31, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt(i32 %17, i8** %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %32

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %28 [
    i32 105, label %25
    i32 52, label %26
    i32 116, label %27
    i32 104, label %29
  ]

25:                                               ; preds = %23
  store i32 1, i32* %6, align 4
  br label %31

26:                                               ; preds = %23
  store i32 1, i32* %7, align 4
  br label %31

27:                                               ; preds = %23
  store i32 1, i32* %11, align 4
  br label %31

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %23, %28
  %30 = call i32 (...) @help()
  store i32 0, i32* %3, align 4
  br label %139

31:                                               ; preds = %27, %26, %25
  br label %16

32:                                               ; preds = %22
  %33 = load i32, i32* @optind, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i8**, i8*** %5, align 8
  %38 = load i32, i32* @optind, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @atoi(i8* %41)
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %36, %32
  %44 = load i32, i32* @optind, align 4
  %45 = add nsw i32 %44, 1
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* @optind, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %49, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @atoi(i8* %54)
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %48, %43
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* @ff_simple_idct248_put, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @idct248_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %62)
  br label %127

64:                                               ; preds = %56
  %65 = call i32 (...) @av_get_cpu_flags()
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %126

68:                                               ; preds = %64
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %86, %68
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** @idct_tab, align 8
  %72 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_7__* %71)
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %69
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** @idct_tab, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i64 %77
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @dct_error(%struct.TYPE_7__* %78, i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* %12, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %74
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %69

89:                                               ; preds = %69
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %122, %89
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** @idct_tab_arch, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %125

98:                                               ; preds = %90
  %99 = load i32, i32* %14, align 4
  %100 = xor i32 %99, -1
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** @idct_tab_arch, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %100, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %121, label %109

109:                                              ; preds = %98
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** @idct_tab_arch, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 %112
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @dct_error(%struct.TYPE_7__* %113, i32 %114, i32 %115, i32 %116, i32 %117)
  %119 = load i32, i32* %12, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %12, align 4
  br label %121

121:                                              ; preds = %109, %98
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %90

125:                                              ; preds = %90
  br label %126

126:                                              ; preds = %125, %64
  br label %127

127:                                              ; preds = %126, %60
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32, i32* %12, align 4
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %130, %127
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %133, %29
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @ff_ref_dct_init(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @help(...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @idct248_error(i8*, i32, i32) #1

declare dso_local i32 @av_get_cpu_flags(...) #1

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_7__*) #1

declare dso_local i32 @dct_error(%struct.TYPE_7__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
