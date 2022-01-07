; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngwutil.c_png_write_pCAL.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngwutil.c_png_write_pCAL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"in png_write_pCAL (%d parameters)\00", align 1
@PNG_EQUATION_LAST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Unrecognized equation type for pCAL chunk\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"pCAL: invalid keyword\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"pCAL purpose length = %d\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"pCAL units length = %d\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"pCAL parameter %d length = %lu\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"pCAL total length = %d\00", align 1
@png_pCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_write_pCAL(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  %21 = alloca [10 x i64], align 16
  %22 = alloca [80 x i64], align 16
  %23 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  store i64* %7, i64** %16, align 8
  %24 = load i32, i32* %14, align 4
  %25 = call i32 @png_debug1(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @PNG_EQUATION_LAST, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @png_error(i32 %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = getelementptr inbounds [80 x i64], [80 x i64]* %22, i64 0, i64 0
  %36 = call i64 @png_check_keyword(i32 %33, i32 %34, i64* %35)
  store i64 %36, i64* %17, align 8
  %37 = load i64, i64* %17, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @png_error(i32 %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %32
  %43 = load i64, i64* %17, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %17, align 8
  %45 = load i64, i64* %17, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @png_debug1(i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load i64, i64* %15, align 8
  %49 = call i64 @strlen(i64 %48)
  %50 = load i32, i32* %14, align 4
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 0, i32 1
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %49, %54
  store i64 %55, i64* %18, align 8
  %56 = load i64, i64* %18, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @png_debug1(i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  %59 = load i64, i64* %17, align 8
  %60 = load i64, i64* %18, align 8
  %61 = add nsw i64 %59, %60
  %62 = add nsw i64 %61, 10
  store i64 %62, i64* %19, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 8
  %67 = trunc i64 %66 to i32
  %68 = call i64 @png_malloc(i32 %63, i32 %67)
  %69 = inttoptr i64 %68 to i64*
  store i64* %69, i64** %20, align 8
  store i32 0, i32* %23, align 4
  br label %70

70:                                               ; preds = %107, %42
  %71 = load i32, i32* %23, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %110

74:                                               ; preds = %70
  %75 = load i64*, i64** %16, align 8
  %76 = load i32, i32* %23, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @strlen(i64 %79)
  %81 = load i32, i32* %23, align 4
  %82 = load i32, i32* %14, align 4
  %83 = sub nsw i32 %82, 1
  %84 = icmp eq i32 %81, %83
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 0, i32 1
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %80, %87
  %89 = load i64*, i64** %20, align 8
  %90 = load i32, i32* %23, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  store i64 %88, i64* %92, align 8
  %93 = load i32, i32* %23, align 4
  %94 = load i64*, i64** %20, align 8
  %95 = load i32, i32* %23, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @png_debug2(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %93, i64 %98)
  %100 = load i64*, i64** %20, align 8
  %101 = load i32, i32* %23, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %19, align 8
  %106 = add nsw i64 %105, %104
  store i64 %106, i64* %19, align 8
  br label %107

107:                                              ; preds = %74
  %108 = load i32, i32* %23, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %23, align 4
  br label %70

110:                                              ; preds = %70
  %111 = load i64, i64* %19, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 @png_debug1(i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @png_pCAL, align 4
  %116 = load i64, i64* %19, align 8
  %117 = call i32 @png_write_chunk_header(i32 %114, i32 %115, i64 %116)
  %118 = load i32, i32* %9, align 4
  %119 = getelementptr inbounds [80 x i64], [80 x i64]* %22, i64 0, i64 0
  %120 = load i64, i64* %17, align 8
  %121 = call i32 @png_write_chunk_data(i32 %118, i64* %119, i64 %120)
  %122 = getelementptr inbounds [10 x i64], [10 x i64]* %21, i64 0, i64 0
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @png_save_int_32(i64* %122, i32 %123)
  %125 = getelementptr inbounds [10 x i64], [10 x i64]* %21, i64 0, i64 0
  %126 = getelementptr inbounds i64, i64* %125, i64 4
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @png_save_int_32(i64* %126, i32 %127)
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [10 x i64], [10 x i64]* %21, i64 0, i64 8
  store i64 %130, i64* %131, align 16
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [10 x i64], [10 x i64]* %21, i64 0, i64 9
  store i64 %133, i64* %134, align 8
  %135 = load i32, i32* %9, align 4
  %136 = getelementptr inbounds [10 x i64], [10 x i64]* %21, i64 0, i64 0
  %137 = call i32 @png_write_chunk_data(i32 %135, i64* %136, i64 10)
  %138 = load i32, i32* %9, align 4
  %139 = load i64, i64* %15, align 8
  %140 = inttoptr i64 %139 to i64*
  %141 = load i64, i64* %18, align 8
  %142 = call i32 @png_write_chunk_data(i32 %138, i64* %140, i64 %141)
  store i32 0, i32* %23, align 4
  br label %143

143:                                              ; preds = %161, %110
  %144 = load i32, i32* %23, align 4
  %145 = load i32, i32* %14, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %164

147:                                              ; preds = %143
  %148 = load i32, i32* %9, align 4
  %149 = load i64*, i64** %16, align 8
  %150 = load i32, i32* %23, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to i64*
  %155 = load i64*, i64** %20, align 8
  %156 = load i32, i32* %23, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @png_write_chunk_data(i32 %148, i64* %154, i64 %159)
  br label %161

161:                                              ; preds = %147
  %162 = load i32, i32* %23, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %23, align 4
  br label %143

164:                                              ; preds = %143
  %165 = load i32, i32* %9, align 4
  %166 = load i64*, i64** %20, align 8
  %167 = call i32 @png_free(i32 %165, i64* %166)
  %168 = load i32, i32* %9, align 4
  %169 = call i32 @png_write_chunk_end(i32 %168)
  ret void
}

declare dso_local i32 @png_debug1(i32, i8*, i32) #1

declare dso_local i32 @png_error(i32, i8*) #1

declare dso_local i64 @png_check_keyword(i32, i32, i64*) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i64 @png_malloc(i32, i32) #1

declare dso_local i32 @png_debug2(i32, i8*, i32, i64) #1

declare dso_local i32 @png_write_chunk_header(i32, i32, i64) #1

declare dso_local i32 @png_write_chunk_data(i32, i64*, i64) #1

declare dso_local i32 @png_save_int_32(i64*, i32) #1

declare dso_local i32 @png_free(i32, i64*) #1

declare dso_local i32 @png_write_chunk_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
