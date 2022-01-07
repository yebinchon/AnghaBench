; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngwutil.c_png_write_sPLT.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngwutil.c_png_write_sPLT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"in png_write_sPLT\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"sPLT: invalid keyword\00", align 1
@png_sPLT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_write_sPLT(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [80 x i32], align 16
  %7 = alloca [10 x i32], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 8
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 6, i32 10
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = mul nsw i64 %19, %23
  store i64 %24, i64* %9, align 8
  %25 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds [80 x i32], [80 x i32]* %6, i64 0, i64 0
  %31 = call i64 @png_check_keyword(i32 %26, i32 %29, i32* %30)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @png_error(i32 %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %2
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @png_sPLT, align 4
  %40 = load i64, i64* %5, align 8
  %41 = add nsw i64 %40, 2
  %42 = load i64, i64* %9, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @png_write_chunk_header(i32 %38, i32 %39, i64 %43)
  %45 = load i32, i32* %3, align 4
  %46 = getelementptr inbounds [80 x i32], [80 x i32]* %6, i64 0, i64 0
  %47 = load i64, i64* %5, align 8
  %48 = add nsw i64 %47, 1
  %49 = call i32 @png_write_chunk_data(i32 %45, i32* %46, i64 %48)
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = call i32 @png_write_chunk_data(i32 %50, i32* %52, i64 1)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %10, align 8
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %161, %37
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %164

63:                                               ; preds = %57
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 8
  br i1 %67, label %68, label %110

68:                                               ; preds = %63
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  store i32 %75, i32* %76, align 16
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 1
  store i32 %83, i32* %84, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 2
  store i32 %91, i32* %92, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 3
  store i32 %99, i32* %100, align 4
  %101 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %102 = getelementptr inbounds i32, i32* %101, i64 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @png_save_uint_16(i32* %102, i64 %108)
  br label %156

110:                                              ; preds = %63
  %111 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @png_save_uint_16(i32* %112, i64 %118)
  %120 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @png_save_uint_16(i32* %121, i64 %127)
  %129 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %130 = getelementptr inbounds i32, i32* %129, i64 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @png_save_uint_16(i32* %130, i64 %136)
  %138 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %139 = getelementptr inbounds i32, i32* %138, i64 6
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @png_save_uint_16(i32* %139, i64 %145)
  %147 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %148 = getelementptr inbounds i32, i32* %147, i64 8
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @png_save_uint_16(i32* %148, i64 %154)
  br label %156

156:                                              ; preds = %110, %68
  %157 = load i32, i32* %3, align 4
  %158 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %159 = load i64, i64* %8, align 8
  %160 = call i32 @png_write_chunk_data(i32 %157, i32* %158, i64 %159)
  br label %161

161:                                              ; preds = %156
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %11, align 4
  br label %57

164:                                              ; preds = %57
  %165 = load i32, i32* %3, align 4
  %166 = call i32 @png_write_chunk_end(i32 %165)
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i64 @png_check_keyword(i32, i32, i32*) #1

declare dso_local i32 @png_error(i32, i8*) #1

declare dso_local i32 @png_write_chunk_header(i32, i32, i64) #1

declare dso_local i32 @png_write_chunk_data(i32, i32*, i64) #1

declare dso_local i32 @png_save_uint_16(i32*, i64) #1

declare dso_local i32 @png_write_chunk_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
