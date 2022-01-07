; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngrutil.c_png_handle_sCAL.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngrutil.c_png_handle_sCAL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"in png_handle_sCAL\00", align 1
@PNG_HAVE_IHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"missing IHDR\00", align 1
@PNG_HAVE_IDAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"out of place\00", align 1
@PNG_INFO_sCAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"duplicate\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Allocating and reading sCAL chunk data (%u bytes)\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"invalid unit\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"bad width format\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"non-positive width\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"bad height format\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"non-positive height\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_handle_sCAL(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PNG_HAVE_IHDR, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = call i32 @png_chunk_error(%struct.TYPE_12__* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %62

21:                                               ; preds = %3
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @png_crc_finish(%struct.TYPE_12__* %29, i32 %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = call i32 @png_chunk_benign_error(%struct.TYPE_12__* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %170

34:                                               ; preds = %21
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = icmp ne %struct.TYPE_13__* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PNG_INFO_sCAL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @png_crc_finish(%struct.TYPE_12__* %45, i32 %46)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = call i32 @png_chunk_benign_error(%struct.TYPE_12__* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %170

50:                                               ; preds = %37, %34
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 4
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @png_crc_finish(%struct.TYPE_12__* %54, i32 %55)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = call i32 @png_chunk_benign_error(%struct.TYPE_12__* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %170

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61, %18
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  %65 = call i32 @png_debug1(i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %64)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  %69 = call i32* @png_read_buffer(%struct.TYPE_12__* %66, i32 %68, i32 2)
  store i32* %69, i32** %7, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %62
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = call i32 @png_chunk_benign_error(%struct.TYPE_12__* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @png_crc_finish(%struct.TYPE_12__* %75, i32 %76)
  br label %170

78:                                               ; preds = %62
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @png_crc_read(%struct.TYPE_12__* %79, i32* %80, i32 %81)
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 0, i32* %86, align 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = call i64 @png_crc_finish(%struct.TYPE_12__* %87, i32 0)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %78
  br label %170

91:                                               ; preds = %78
  %92 = load i32*, i32** %7, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 1
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load i32*, i32** %7, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 2
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %103 = call i32 @png_chunk_benign_error(%struct.TYPE_12__* %102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %170

104:                                              ; preds = %96, %91
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %105 = load i32*, i32** %7, align 8
  %106 = ptrtoint i32* %105 to i32
  %107 = load i32, i32* %6, align 4
  %108 = call i64 @png_check_fp_number(i32 %106, i32 %107, i32* %9, i32* %8)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %122, label %110

110:                                              ; preds = %104
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp sge i32 %111, %112
  br i1 %113, label %122, label %114

114:                                              ; preds = %110
  %115 = load i32*, i32** %7, align 8
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %114, %110, %104
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %124 = call i32 @png_chunk_benign_error(%struct.TYPE_12__* %123, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  br label %170

125:                                              ; preds = %114
  %126 = load i32, i32* %9, align 4
  %127 = call i64 @PNG_FP_IS_POSITIVE(i32 %126)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %131 = call i32 @png_chunk_benign_error(%struct.TYPE_12__* %130, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %169

132:                                              ; preds = %125
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %134 = load i32*, i32** %7, align 8
  %135 = ptrtoint i32* %134 to i32
  %136 = load i32, i32* %6, align 4
  %137 = call i64 @png_check_fp_number(i32 %135, i32 %136, i32* %9, i32* %8)
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %139, %132
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %145 = call i32 @png_chunk_benign_error(%struct.TYPE_12__* %144, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %168

146:                                              ; preds = %139
  %147 = load i32, i32* %9, align 4
  %148 = call i64 @PNG_FP_IS_POSITIVE(i32 %147)
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %152 = call i32 @png_chunk_benign_error(%struct.TYPE_12__* %151, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  br label %167

153:                                              ; preds = %146
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %156 = load i32*, i32** %7, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %7, align 8
  %160 = ptrtoint i32* %159 to i32
  %161 = add nsw i32 %160, 1
  %162 = load i32*, i32** %7, align 8
  %163 = ptrtoint i32* %162 to i32
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %163, %164
  %166 = call i32 @png_set_sCAL_s(%struct.TYPE_12__* %154, %struct.TYPE_13__* %155, i32 %158, i32 %161, i32 %165)
  br label %167

167:                                              ; preds = %153, %150
  br label %168

168:                                              ; preds = %167, %143
  br label %169

169:                                              ; preds = %168, %129
  br label %170

170:                                              ; preds = %28, %44, %53, %72, %90, %101, %169, %122
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_chunk_error(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @png_crc_finish(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @png_chunk_benign_error(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @png_debug1(i32, i8*, i32) #1

declare dso_local i32* @png_read_buffer(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @png_crc_read(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i64 @png_check_fp_number(i32, i32, i32*, i32*) #1

declare dso_local i64 @PNG_FP_IS_POSITIVE(i32) #1

declare dso_local i32 @png_set_sCAL_s(%struct.TYPE_12__*, %struct.TYPE_13__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
