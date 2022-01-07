; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngrutil.c_png_handle_cHRM.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngrutil.c_png_handle_cHRM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"in png_handle_cHRM\00", align 1
@PNG_HAVE_IHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"missing IHDR\00", align 1
@PNG_HAVE_IDAT = common dso_local global i32 0, align 4
@PNG_HAVE_PLTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"out of place\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@PNG_FIXED_ERROR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"invalid values\00", align 1
@PNG_COLORSPACE_INVALID = common dso_local global i32 0, align 4
@PNG_COLORSPACE_FROM_cHRM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"duplicate\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_handle_cHRM(%struct.TYPE_13__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [32 x i32], align 16
  %8 = alloca %struct.TYPE_12__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PNG_HAVE_IHDR, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = call i32 @png_chunk_error(%struct.TYPE_13__* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %35

19:                                               ; preds = %3
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %24 = load i32, i32* @PNG_HAVE_PLTE, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @png_crc_finish(%struct.TYPE_13__* %29, i32 %30)
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = call i32 @png_chunk_benign_error(%struct.TYPE_13__* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %177

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34, %16
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 32
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @png_crc_finish(%struct.TYPE_13__* %39, i32 %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = call i32 @png_chunk_benign_error(%struct.TYPE_13__* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %177

44:                                               ; preds = %35
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %47 = call i32 @png_crc_read(%struct.TYPE_13__* %45, i32* %46, i32 32)
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = call i64 @png_crc_finish(%struct.TYPE_13__* %48, i32 0)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %177

52:                                               ; preds = %44
  %53 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %54 = call i8* @png_get_fixed_point(i32* null, i32* %53)
  %55 = ptrtoint i8* %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store i64 %55, i64* %56, align 8
  %57 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  %59 = call i8* @png_get_fixed_point(i32* null, i32* %58)
  %60 = ptrtoint i8* %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  store i64 %60, i64* %61, align 8
  %62 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %63 = getelementptr inbounds i32, i32* %62, i64 8
  %64 = call i8* @png_get_fixed_point(i32* null, i32* %63)
  %65 = ptrtoint i8* %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  store i64 %65, i64* %66, align 8
  %67 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %68 = getelementptr inbounds i32, i32* %67, i64 12
  %69 = call i8* @png_get_fixed_point(i32* null, i32* %68)
  %70 = ptrtoint i8* %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 3
  store i64 %70, i64* %71, align 8
  %72 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %73 = getelementptr inbounds i32, i32* %72, i64 16
  %74 = call i8* @png_get_fixed_point(i32* null, i32* %73)
  %75 = ptrtoint i8* %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 4
  store i64 %75, i64* %76, align 8
  %77 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %78 = getelementptr inbounds i32, i32* %77, i64 20
  %79 = call i8* @png_get_fixed_point(i32* null, i32* %78)
  %80 = ptrtoint i8* %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 5
  store i64 %80, i64* %81, align 8
  %82 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %83 = getelementptr inbounds i32, i32* %82, i64 24
  %84 = call i8* @png_get_fixed_point(i32* null, i32* %83)
  %85 = ptrtoint i8* %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 6
  store i64 %85, i64* %86, align 8
  %87 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %88 = getelementptr inbounds i32, i32* %87, i64 28
  %89 = call i8* @png_get_fixed_point(i32* null, i32* %88)
  %90 = ptrtoint i8* %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 7
  store i64 %90, i64* %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @PNG_FIXED_ERROR, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %131, label %96

96:                                               ; preds = %52
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @PNG_FIXED_ERROR, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %131, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @PNG_FIXED_ERROR, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %131, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @PNG_FIXED_ERROR, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %131, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @PNG_FIXED_ERROR, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %131, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @PNG_FIXED_ERROR, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %131, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 6
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @PNG_FIXED_ERROR, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %131, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 7
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @PNG_FIXED_ERROR, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %126, %121, %116, %111, %106, %101, %96, %52
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %133 = call i32 @png_chunk_benign_error(%struct.TYPE_13__* %132, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %177

134:                                              ; preds = %126
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @PNG_COLORSPACE_INVALID, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %134
  br label %177

143:                                              ; preds = %134
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @PNG_COLORSPACE_FROM_cHRM, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %163

151:                                              ; preds = %143
  %152 = load i32, i32* @PNG_COLORSPACE_INVALID, align 4
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %152
  store i32 %157, i32* %155, align 4
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @png_colorspace_sync(%struct.TYPE_13__* %158, i32 %159)
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %162 = call i32 @png_chunk_benign_error(%struct.TYPE_13__* %161, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %177

163:                                              ; preds = %143
  %164 = load i32, i32* @PNG_COLORSPACE_FROM_cHRM, align 4
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %164
  store i32 %169, i32* %167, align 4
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 1
  %173 = call i32 @png_colorspace_set_chromaticities(%struct.TYPE_13__* %170, %struct.TYPE_14__* %172, %struct.TYPE_12__* %8, i32 1)
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %175 = load i32, i32* %5, align 4
  %176 = call i32 @png_colorspace_sync(%struct.TYPE_13__* %174, i32 %175)
  br label %177

177:                                              ; preds = %163, %151, %142, %131, %51, %38, %28
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_chunk_error(%struct.TYPE_13__*, i8*) #1

declare dso_local i64 @png_crc_finish(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @png_chunk_benign_error(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @png_crc_read(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i8* @png_get_fixed_point(i32*, i32*) #1

declare dso_local i32 @png_colorspace_sync(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @png_colorspace_set_chromaticities(%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
