; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/streams/extr_chd_stream.c_chdstream_read.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/streams/extr_chd_stream.c_chdstream_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_7__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chdstream_read(%struct.TYPE_6__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %14, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.TYPE_7__* @chd_get_header(i32 %19)
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %15, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %16, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub i64 %25, %28
  %30 = load i64, i64* %7, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %3
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 %35, %38
  store i64 %39, i64* %7, align 8
  br label %40

40:                                               ; preds = %32, %3
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %43, %44
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %144, %40
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %153

52:                                               ; preds = %46
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = urem i64 %55, %58
  store i64 %59, i64* %9, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = sub i64 %62, %63
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sub i64 %66, %69
  %71 = icmp ugt i64 %65, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %52
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = sub i64 %73, %76
  store i64 %77, i64* %13, align 8
  br label %78

78:                                               ; preds = %72, %52
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp ult i64 %81, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %78
  %87 = load i32*, i32** %16, align 8
  %88 = load i64, i64* %14, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i64, i64* %13, align 8
  %91 = call i32 @memset(i32* %89, i32 0, i64 %90)
  br label %144

92:                                               ; preds = %78
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 7
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = sub i64 %98, %101
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = udiv i64 %102, %105
  %107 = add i64 %95, %106
  store i64 %107, i64* %11, align 8
  %108 = load i64, i64* %11, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = udiv i64 %108, %111
  store i64 %112, i64* %12, align 8
  %113 = load i64, i64* %11, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = urem i64 %113, %116
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = mul i64 %117, %120
  store i64 %121, i64* %10, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %123 = load i64, i64* %12, align 8
  %124 = call i32 @chdstream_load_hunk(%struct.TYPE_6__* %122, i64 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %92
  store i32 -1, i32* %4, align 4
  br label %156

127:                                              ; preds = %92
  %128 = load i32*, i32** %16, align 8
  %129 = load i64, i64* %14, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 6
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %9, align 8
  %135 = add i64 %133, %134
  %136 = load i64, i64* %10, align 8
  %137 = add i64 %135, %136
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = add i64 %137, %140
  %142 = load i64, i64* %13, align 8
  %143 = call i32 @memcpy(i32* %130, i64 %141, i64 %142)
  br label %144

144:                                              ; preds = %127, %86
  %145 = load i64, i64* %13, align 8
  %146 = load i64, i64* %14, align 8
  %147 = add i64 %146, %145
  store i64 %147, i64* %14, align 8
  %148 = load i64, i64* %13, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = add i64 %151, %148
  store i64 %152, i64* %150, align 8
  br label %46

153:                                              ; preds = %46
  %154 = load i64, i64* %7, align 8
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %153, %126
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local %struct.TYPE_7__* @chd_get_header(i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @chdstream_load_hunk(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @memcpy(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
