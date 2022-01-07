; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngwutil.c_png_write_iTXt.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngwutil.c_png_write_iTXt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_17__ = type { i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"in png_write_iTXt\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"iTXt: invalid keyword\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"iTXt: invalid compression\00", align 1
@PNG_COMPRESSION_TYPE_BASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PNG_UINT_31_MAX = common dso_local global i64 0, align 8
@png_iTXt = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"iTXt: uncompressed text too long\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_write_iTXt(%struct.TYPE_16__* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca [82 x i32], align 16
  %18 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %19 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds [82 x i32], [82 x i32]* %17, i64 0, i64 0
  %23 = call i64 @png_check_keyword(%struct.TYPE_16__* %20, i8* %21, i32* %22)
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %28 = call i32 @png_error(%struct.TYPE_16__* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %6
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %39 [
    i32 131, label %31
    i32 129, label %31
    i32 128, label %35
    i32 130, label %35
  ]

31:                                               ; preds = %29, %29
  %32 = load i64, i64* %13, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %13, align 8
  %34 = getelementptr inbounds [82 x i32], [82 x i32]* %17, i64 0, i64 %33
  store i32 0, i32* %34, align 4
  store i32 0, i32* %8, align 4
  br label %42

35:                                               ; preds = %29, %29
  %36 = load i64, i64* %13, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %13, align 8
  %38 = getelementptr inbounds [82 x i32], [82 x i32]* %17, i64 0, i64 %37
  store i32 1, i32* %38, align 4
  store i32 1, i32* %8, align 4
  br label %42

39:                                               ; preds = %29
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %41 = call i32 @png_error(%struct.TYPE_16__* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %35, %31
  %43 = load i32, i32* @PNG_COMPRESSION_TYPE_BASE, align 4
  %44 = load i64, i64* %13, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %13, align 8
  %46 = getelementptr inbounds [82 x i32], [82 x i32]* %17, i64 0, i64 %45
  store i32 %43, i32* %46, align 4
  %47 = load i64, i64* %13, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %13, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %52

52:                                               ; preds = %51, %42
  %53 = load i8*, i8** %10, align 8
  %54 = call i64 @strlen(i8* %53)
  %55 = add i64 %54, 1
  store i64 %55, i64* %15, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %59

59:                                               ; preds = %58, %52
  %60 = load i8*, i8** %11, align 8
  %61 = call i64 @strlen(i8* %60)
  %62 = add i64 %61, 1
  store i64 %62, i64* %16, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %66

66:                                               ; preds = %65, %59
  %67 = load i64, i64* %13, align 8
  store i64 %67, i64* %14, align 8
  %68 = load i64, i64* %15, align 8
  %69 = load i64, i64* @PNG_UINT_31_MAX, align 8
  %70 = load i64, i64* %14, align 8
  %71 = sub i64 %69, %70
  %72 = icmp ugt i64 %68, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i64, i64* @PNG_UINT_31_MAX, align 8
  store i64 %74, i64* %14, align 8
  br label %79

75:                                               ; preds = %66
  %76 = load i64, i64* %14, align 8
  %77 = load i64, i64* %15, align 8
  %78 = add i64 %76, %77
  store i64 %78, i64* %14, align 8
  br label %79

79:                                               ; preds = %75, %73
  %80 = load i64, i64* %16, align 8
  %81 = load i64, i64* @PNG_UINT_31_MAX, align 8
  %82 = load i64, i64* %14, align 8
  %83 = sub i64 %81, %82
  %84 = icmp ugt i64 %80, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i64, i64* @PNG_UINT_31_MAX, align 8
  store i64 %86, i64* %14, align 8
  br label %91

87:                                               ; preds = %79
  %88 = load i64, i64* %14, align 8
  %89 = load i64, i64* %16, align 8
  %90 = add i64 %88, %89
  store i64 %90, i64* %14, align 8
  br label %91

91:                                               ; preds = %87, %85
  %92 = load i8*, i8** %12, align 8
  %93 = bitcast i8* %92 to i32*
  %94 = load i8*, i8** %12, align 8
  %95 = call i64 @strlen(i8* %94)
  %96 = call i32 @png_text_compress_init(%struct.TYPE_17__* %18, i32* %93, i64 %95)
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %91
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %101 = load i32, i32* @png_iTXt, align 4
  %102 = load i64, i64* %14, align 8
  %103 = call i64 @png_text_compress(%struct.TYPE_16__* %100, i32 %101, %struct.TYPE_17__* %18, i64 %102)
  %104 = load i64, i64* @Z_OK, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %99
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @png_error(%struct.TYPE_16__* %107, i8* %111)
  br label %113

113:                                              ; preds = %106, %99
  br label %128

114:                                              ; preds = %91
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @PNG_UINT_31_MAX, align 8
  %118 = load i64, i64* %14, align 8
  %119 = sub i64 %117, %118
  %120 = icmp ugt i64 %116, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %123 = call i32 @png_error(%struct.TYPE_16__* %122, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %114
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  store i64 %126, i64* %127, align 8
  br label %128

128:                                              ; preds = %124, %113
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %130 = load i32, i32* @png_iTXt, align 4
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %14, align 8
  %134 = add i64 %132, %133
  %135 = call i32 @png_write_chunk_header(%struct.TYPE_16__* %129, i32 %130, i64 %134)
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %137 = getelementptr inbounds [82 x i32], [82 x i32]* %17, i64 0, i64 0
  %138 = load i64, i64* %13, align 8
  %139 = call i32 @png_write_chunk_data(%struct.TYPE_16__* %136, i32* %137, i64 %138)
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = bitcast i8* %141 to i32*
  %143 = load i64, i64* %15, align 8
  %144 = call i32 @png_write_chunk_data(%struct.TYPE_16__* %140, i32* %142, i64 %143)
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %146 = load i8*, i8** %11, align 8
  %147 = bitcast i8* %146 to i32*
  %148 = load i64, i64* %16, align 8
  %149 = call i32 @png_write_chunk_data(%struct.TYPE_16__* %145, i32* %147, i64 %148)
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %128
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %154 = call i32 @png_write_compressed_data_out(%struct.TYPE_16__* %153, %struct.TYPE_17__* %18)
  br label %162

155:                                              ; preds = %128
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %157 = load i8*, i8** %12, align 8
  %158 = bitcast i8* %157 to i32*
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @png_write_chunk_data(%struct.TYPE_16__* %156, i32* %158, i64 %160)
  br label %162

162:                                              ; preds = %155, %152
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %164 = call i32 @png_write_chunk_end(%struct.TYPE_16__* %163)
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i64 @png_check_keyword(%struct.TYPE_16__*, i8*, i32*) #1

declare dso_local i32 @png_error(%struct.TYPE_16__*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @png_text_compress_init(%struct.TYPE_17__*, i32*, i64) #1

declare dso_local i64 @png_text_compress(%struct.TYPE_16__*, i32, %struct.TYPE_17__*, i64) #1

declare dso_local i32 @png_write_chunk_header(%struct.TYPE_16__*, i32, i64) #1

declare dso_local i32 @png_write_chunk_data(%struct.TYPE_16__*, i32*, i64) #1

declare dso_local i32 @png_write_compressed_data_out(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @png_write_chunk_end(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
