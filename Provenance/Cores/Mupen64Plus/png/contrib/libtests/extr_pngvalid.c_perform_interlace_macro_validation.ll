; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_perform_interlace_macro_validation.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_perform_interlace_macro_validation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"PNG_PASS_START_ROW(%d) = %u != %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"PNG_PASS_START_COL(%d) = %u != %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"PNG_PASS_ROW_SHIFT(%d) = %u != %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"PNG_PASS_COL_SHIFT(%d) = %u != %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"PNG_ROW_FROM_PASS_ROW(%u, %d) = %u != %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"PNG_COL_FROM_PASS_COL(%u, %d) = %u != %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"PNG_ROW_IN_INTERLACE_PASS(%u, %d) = %u != %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"PNG_COL_IN_INTERLACE_PASS(%u, %d) = %u != %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"PNG_PASS_ROWS(%u, %d) = %u != %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"PNG_PASS_COLS(%u, %d) = %u != %x\0A\00", align 1
@PNG_UINT_31_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @perform_interlace_macro_validation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perform_interlace_macro_validation() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %221, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 7
  br i1 %7, label %8, label %224

8:                                                ; preds = %5
  %9 = load i32, i32* %1, align 4
  %10 = call i64 @PNG_PASS_START_ROW(i32 %9)
  store i64 %10, i64* %2, align 8
  %11 = load i32, i32* %1, align 4
  %12 = call i64 @png_pass_start_row(i32 %11)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %8
  %17 = load i32, i32* @stderr, align 4
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %2, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i64, i64* %3, align 8
  %23 = call i32 (i32, i8*, i64, i32, i64, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %19, i32 %21, i64 %22)
  %24 = call i32 @exit(i32 99) #3
  unreachable

25:                                               ; preds = %8
  %26 = load i32, i32* %1, align 4
  %27 = call i64 @PNG_PASS_START_COL(i32 %26)
  store i64 %27, i64* %2, align 8
  %28 = load i32, i32* %1, align 4
  %29 = call i64 @png_pass_start_col(i32 %28)
  store i64 %29, i64* %3, align 8
  %30 = load i64, i64* %2, align 8
  %31 = load i64, i64* %3, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load i32, i32* @stderr, align 4
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %2, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i64, i64* %3, align 8
  %40 = call i32 (i32, i8*, i64, i32, i64, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %36, i32 %38, i64 %39)
  %41 = call i32 @exit(i32 99) #3
  unreachable

42:                                               ; preds = %25
  %43 = load i32, i32* %1, align 4
  %44 = call i64 @PNG_PASS_ROW_SHIFT(i32 %43)
  store i64 %44, i64* %2, align 8
  %45 = load i32, i32* %1, align 4
  %46 = call i64 @png_pass_row_shift(i32 %45)
  store i64 %46, i64* %3, align 8
  %47 = load i64, i64* %2, align 8
  %48 = load i64, i64* %3, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %42
  %51 = load i32, i32* @stderr, align 4
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %2, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i64, i64* %3, align 8
  %57 = call i32 (i32, i8*, i64, i32, i64, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %53, i32 %55, i64 %56)
  %58 = call i32 @exit(i32 99) #3
  unreachable

59:                                               ; preds = %42
  %60 = load i32, i32* %1, align 4
  %61 = call i64 @PNG_PASS_COL_SHIFT(i32 %60)
  store i64 %61, i64* %2, align 8
  %62 = load i32, i32* %1, align 4
  %63 = call i64 @png_pass_col_shift(i32 %62)
  store i64 %63, i64* %3, align 8
  %64 = load i64, i64* %2, align 8
  %65 = load i64, i64* %3, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %59
  %68 = load i32, i32* @stderr, align 4
  %69 = load i32, i32* %1, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %2, align 8
  %72 = trunc i64 %71 to i32
  %73 = load i64, i64* %3, align 8
  %74 = call i32 (i32, i8*, i64, i32, i64, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %70, i32 %72, i64 %73)
  %75 = call i32 @exit(i32 99) #3
  unreachable

76:                                               ; preds = %59
  store i64 0, i64* %4, align 8
  br label %77

77:                                               ; preds = %219, %76
  %78 = load i64, i64* %4, align 8
  %79 = load i32, i32* %1, align 4
  %80 = call i64 @png_pass_rows(i64 4294967295, i32 %79)
  %81 = icmp slt i64 %78, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %77
  %83 = load i64, i64* %4, align 8
  %84 = load i32, i32* %1, align 4
  %85 = call i64 @PNG_ROW_FROM_PASS_ROW(i64 %83, i32 %84)
  store i64 %85, i64* %2, align 8
  %86 = load i64, i64* %4, align 8
  %87 = load i32, i32* %1, align 4
  %88 = call i64 @png_row_from_pass_row(i64 %86, i32 %87)
  store i64 %88, i64* %3, align 8
  %89 = load i64, i64* %2, align 8
  %90 = load i64, i64* %3, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %82
  %93 = load i32, i32* @stderr, align 4
  %94 = load i64, i64* %4, align 8
  %95 = load i32, i32* %1, align 4
  %96 = load i64, i64* %2, align 8
  %97 = load i64, i64* %3, align 8
  %98 = call i32 (i32, i8*, i64, i32, i64, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %94, i32 %95, i64 %96, i64 %97)
  %99 = call i32 @exit(i32 99) #3
  unreachable

100:                                              ; preds = %82
  br label %101

101:                                              ; preds = %100, %77
  %102 = load i64, i64* %4, align 8
  %103 = load i32, i32* %1, align 4
  %104 = call i64 @png_pass_cols(i64 4294967295, i32 %103)
  %105 = icmp slt i64 %102, %104
  br i1 %105, label %106, label %125

106:                                              ; preds = %101
  %107 = load i64, i64* %4, align 8
  %108 = load i32, i32* %1, align 4
  %109 = call i64 @PNG_COL_FROM_PASS_COL(i64 %107, i32 %108)
  store i64 %109, i64* %2, align 8
  %110 = load i64, i64* %4, align 8
  %111 = load i32, i32* %1, align 4
  %112 = call i64 @png_col_from_pass_col(i64 %110, i32 %111)
  store i64 %112, i64* %3, align 8
  %113 = load i64, i64* %2, align 8
  %114 = load i64, i64* %3, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %106
  %117 = load i32, i32* @stderr, align 4
  %118 = load i64, i64* %4, align 8
  %119 = load i32, i32* %1, align 4
  %120 = load i64, i64* %2, align 8
  %121 = load i64, i64* %3, align 8
  %122 = call i32 (i32, i8*, i64, i32, i64, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %118, i32 %119, i64 %120, i64 %121)
  %123 = call i32 @exit(i32 99) #3
  unreachable

124:                                              ; preds = %106
  br label %125

125:                                              ; preds = %124, %101
  %126 = load i64, i64* %4, align 8
  %127 = load i32, i32* %1, align 4
  %128 = call i64 @PNG_ROW_IN_INTERLACE_PASS(i64 %126, i32 %127)
  store i64 %128, i64* %2, align 8
  %129 = load i64, i64* %4, align 8
  %130 = load i32, i32* %1, align 4
  %131 = call i64 @png_row_in_interlace_pass(i64 %129, i32 %130)
  store i64 %131, i64* %3, align 8
  %132 = load i64, i64* %2, align 8
  %133 = load i64, i64* %3, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %125
  %136 = load i32, i32* @stderr, align 4
  %137 = load i64, i64* %4, align 8
  %138 = load i32, i32* %1, align 4
  %139 = load i64, i64* %2, align 8
  %140 = load i64, i64* %3, align 8
  %141 = call i32 (i32, i8*, i64, i32, i64, ...) @fprintf(i32 %136, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i64 %137, i32 %138, i64 %139, i64 %140)
  %142 = call i32 @exit(i32 99) #3
  unreachable

143:                                              ; preds = %125
  %144 = load i64, i64* %4, align 8
  %145 = load i32, i32* %1, align 4
  %146 = call i64 @PNG_COL_IN_INTERLACE_PASS(i64 %144, i32 %145)
  store i64 %146, i64* %2, align 8
  %147 = load i64, i64* %4, align 8
  %148 = load i32, i32* %1, align 4
  %149 = call i64 @png_col_in_interlace_pass(i64 %147, i32 %148)
  store i64 %149, i64* %3, align 8
  %150 = load i64, i64* %2, align 8
  %151 = load i64, i64* %3, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %143
  %154 = load i32, i32* @stderr, align 4
  %155 = load i64, i64* %4, align 8
  %156 = load i32, i32* %1, align 4
  %157 = load i64, i64* %2, align 8
  %158 = load i64, i64* %3, align 8
  %159 = call i32 (i32, i8*, i64, i32, i64, ...) @fprintf(i32 %154, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i64 %155, i32 %156, i64 %157, i64 %158)
  %160 = call i32 @exit(i32 99) #3
  unreachable

161:                                              ; preds = %143
  %162 = load i64, i64* %4, align 8
  %163 = add nsw i64 %162, 1
  store i64 %163, i64* %4, align 8
  %164 = load i64, i64* %4, align 8
  %165 = load i32, i32* %1, align 4
  %166 = call i64 @PNG_PASS_ROWS(i64 %164, i32 %165)
  store i64 %166, i64* %2, align 8
  %167 = load i64, i64* %4, align 8
  %168 = load i32, i32* %1, align 4
  %169 = call i64 @png_pass_rows(i64 %167, i32 %168)
  store i64 %169, i64* %3, align 8
  %170 = load i64, i64* %2, align 8
  %171 = load i64, i64* %3, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %181

173:                                              ; preds = %161
  %174 = load i32, i32* @stderr, align 4
  %175 = load i64, i64* %4, align 8
  %176 = load i32, i32* %1, align 4
  %177 = load i64, i64* %2, align 8
  %178 = load i64, i64* %3, align 8
  %179 = call i32 (i32, i8*, i64, i32, i64, ...) @fprintf(i32 %174, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i64 %175, i32 %176, i64 %177, i64 %178)
  %180 = call i32 @exit(i32 99) #3
  unreachable

181:                                              ; preds = %161
  %182 = load i64, i64* %4, align 8
  %183 = load i32, i32* %1, align 4
  %184 = call i64 @PNG_PASS_COLS(i64 %182, i32 %183)
  store i64 %184, i64* %2, align 8
  %185 = load i64, i64* %4, align 8
  %186 = load i32, i32* %1, align 4
  %187 = call i64 @png_pass_cols(i64 %185, i32 %186)
  store i64 %187, i64* %3, align 8
  %188 = load i64, i64* %2, align 8
  %189 = load i64, i64* %3, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %199

191:                                              ; preds = %181
  %192 = load i32, i32* @stderr, align 4
  %193 = load i64, i64* %4, align 8
  %194 = load i32, i32* %1, align 4
  %195 = load i64, i64* %2, align 8
  %196 = load i64, i64* %3, align 8
  %197 = call i32 (i32, i8*, i64, i32, i64, ...) @fprintf(i32 %192, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i64 %193, i32 %194, i64 %195, i64 %196)
  %198 = call i32 @exit(i32 99) #3
  unreachable

199:                                              ; preds = %181
  %200 = load i64, i64* %4, align 8
  %201 = icmp sgt i64 %200, 1024
  br i1 %201, label %202, label %219

202:                                              ; preds = %199
  %203 = load i64, i64* %4, align 8
  %204 = load i64, i64* @PNG_UINT_31_MAX, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %202
  br label %220

207:                                              ; preds = %202
  %208 = load i64, i64* %4, align 8
  %209 = shl i64 %208, 1
  %210 = load i64, i64* %4, align 8
  %211 = xor i64 %209, %210
  store i64 %211, i64* %4, align 8
  %212 = load i64, i64* %4, align 8
  %213 = load i64, i64* @PNG_UINT_31_MAX, align 8
  %214 = icmp sge i64 %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %207
  %216 = load i64, i64* @PNG_UINT_31_MAX, align 8
  %217 = sub nsw i64 %216, 1
  store i64 %217, i64* %4, align 8
  br label %218

218:                                              ; preds = %215, %207
  br label %219

219:                                              ; preds = %218, %199
  br label %77

220:                                              ; preds = %206
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %1, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %1, align 4
  br label %5

224:                                              ; preds = %5
  ret void
}

declare dso_local i64 @PNG_PASS_START_ROW(i32) #1

declare dso_local i64 @png_pass_start_row(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i64, i32, i64, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @PNG_PASS_START_COL(i32) #1

declare dso_local i64 @png_pass_start_col(i32) #1

declare dso_local i64 @PNG_PASS_ROW_SHIFT(i32) #1

declare dso_local i64 @png_pass_row_shift(i32) #1

declare dso_local i64 @PNG_PASS_COL_SHIFT(i32) #1

declare dso_local i64 @png_pass_col_shift(i32) #1

declare dso_local i64 @png_pass_rows(i64, i32) #1

declare dso_local i64 @PNG_ROW_FROM_PASS_ROW(i64, i32) #1

declare dso_local i64 @png_row_from_pass_row(i64, i32) #1

declare dso_local i64 @png_pass_cols(i64, i32) #1

declare dso_local i64 @PNG_COL_FROM_PASS_COL(i64, i32) #1

declare dso_local i64 @png_col_from_pass_col(i64, i32) #1

declare dso_local i64 @PNG_ROW_IN_INTERLACE_PASS(i64, i32) #1

declare dso_local i64 @png_row_in_interlace_pass(i64, i32) #1

declare dso_local i64 @PNG_COL_IN_INTERLACE_PASS(i64, i32) #1

declare dso_local i64 @png_col_in_interlace_pass(i64, i32) #1

declare dso_local i64 @PNG_PASS_ROWS(i64, i32) #1

declare dso_local i64 @PNG_PASS_COLS(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
