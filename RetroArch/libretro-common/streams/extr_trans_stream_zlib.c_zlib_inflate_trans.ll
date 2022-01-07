; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/streams/extr_trans_stream_zlib.c_zlib_inflate_trans.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/streams/extr_trans_stream_zlib.c_zlib_inflate_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlib_trans_stream = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@Z_FINISH = common dso_local global i32 0, align 4
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@TRANS_STREAM_ERROR_AGAIN = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@TRANS_STREAM_ERROR_NONE = common dso_local global i32 0, align 4
@TRANS_STREAM_ERROR_OTHER = common dso_local global i32 0, align 4
@TRANS_STREAM_ERROR_BUFFER_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64*, i64*, i32*)* @zlib_inflate_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zlib_inflate_trans(i8* %0, i32 %1, i64* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.zlib_trans_stream*, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.zlib_trans_stream*
  store %struct.zlib_trans_stream* %19, %struct.zlib_trans_stream** %16, align 8
  %20 = load %struct.zlib_trans_stream*, %struct.zlib_trans_stream** %16, align 8
  %21 = getelementptr inbounds %struct.zlib_trans_stream, %struct.zlib_trans_stream* %20, i32 0, i32 2
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %17, align 8
  %22 = load %struct.zlib_trans_stream*, %struct.zlib_trans_stream** %16, align 8
  %23 = getelementptr inbounds %struct.zlib_trans_stream, %struct.zlib_trans_stream* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %5
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %28 = load %struct.zlib_trans_stream*, %struct.zlib_trans_stream** %16, align 8
  %29 = getelementptr inbounds %struct.zlib_trans_stream, %struct.zlib_trans_stream* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @inflateInit2(%struct.TYPE_5__* %27, i32 %30)
  %32 = load %struct.zlib_trans_stream*, %struct.zlib_trans_stream** %16, align 8
  %33 = getelementptr inbounds %struct.zlib_trans_stream, %struct.zlib_trans_stream* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %34

34:                                               ; preds = %26, %5
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %14, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %15, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @Z_FINISH, align 4
  br label %48

46:                                               ; preds = %34
  %47 = load i32, i32* @Z_NO_FLUSH, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = call i32 @inflate(%struct.TYPE_5__* %41, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @Z_OK, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load i32*, i32** %11, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* @TRANS_STREAM_ERROR_AGAIN, align 4
  %59 = load i32*, i32** %11, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %54
  br label %80

61:                                               ; preds = %48
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @Z_STREAM_END, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load i32*, i32** %11, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* @TRANS_STREAM_ERROR_NONE, align 4
  %70 = load i32*, i32** %11, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %65
  br label %79

72:                                               ; preds = %61
  %73 = load i32*, i32** %11, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @TRANS_STREAM_ERROR_OTHER, align 4
  %77 = load i32*, i32** %11, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %72
  store i32 0, i32* %6, align 4
  br label %124

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %60
  store i32 1, i32* %13, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %80
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  store i32 0, i32* %13, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* @TRANS_STREAM_ERROR_BUFFER_FULL, align 4
  %95 = load i32*, i32** %11, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %90
  br label %97

97:                                               ; preds = %96, %85
  br label %98

98:                                               ; preds = %97, %80
  %99 = load i64, i64* %14, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %99, %102
  %104 = load i64*, i64** %9, align 8
  store i64 %103, i64* %104, align 8
  %105 = load i64, i64* %15, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %105, %108
  %110 = load i64*, i64** %10, align 8
  store i64 %109, i64* %110, align 8
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %98
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @Z_STREAM_END, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %119 = call i32 @inflateEnd(%struct.TYPE_5__* %118)
  %120 = load %struct.zlib_trans_stream*, %struct.zlib_trans_stream** %16, align 8
  %121 = getelementptr inbounds %struct.zlib_trans_stream, %struct.zlib_trans_stream* %120, i32 0, i32 0
  store i32 0, i32* %121, align 8
  br label %122

122:                                              ; preds = %117, %113, %98
  %123 = load i32, i32* %13, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %122, %78
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local i32 @inflateInit2(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @inflate(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @inflateEnd(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
