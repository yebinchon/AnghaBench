; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/examples/extr_pngpixel.c_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/examples/extr_pngpixel.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@PNG_LIBPNG_VER_STRING = common dso_local global i32 0, align 4
@PNG_INTERLACE_ADAM7_PASSES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"pngpixel: unknown interlace\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"pngpixel: png_get_IHDR failed\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"pngpixel: out of memory allocating png_info\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"pngpixel: out of memory allocating png_struct\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"pngpixel: %s: could not open file\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"pngpixel: usage: pngpixel x y png-file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store volatile i32 1, i32* %6, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %197

33:                                               ; preds = %2
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @atol(i8* %36)
  store i64 %37, i64* %7, align 8
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @atol(i8* %40)
  store i64 %41, i64* %8, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 3
  %44 = load i8*, i8** %43, align 8
  %45 = call i32* @fopen(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %45, i32** %9, align 8
  store volatile i32* null, i32** %10, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %190

48:                                               ; preds = %33
  %49 = load i32, i32* @PNG_LIBPNG_VER_STRING, align 4
  %50 = call i32* @png_create_read_struct(i32 %49, i32* null, i32* null, i32* null)
  store i32* %50, i32** %11, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %186

53:                                               ; preds = %48
  %54 = load i32*, i32** %11, align 8
  %55 = call i32* @png_create_info_struct(i32* %54)
  store i32* %55, i32** %12, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %181

58:                                               ; preds = %53
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @png_jmpbuf(i32* %59)
  %61 = call i64 @setjmp(i32 %60) #3
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %169

63:                                               ; preds = %58
  %64 = load i32*, i32** %11, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @png_init_io(i32* %64, i32* %65)
  %67 = load i32*, i32** %11, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @png_read_info(i32* %67, i32* %68)
  %70 = load i32*, i32** %11, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @png_get_rowbytes(i32* %71, i32* %72)
  %74 = call i32* @png_malloc(i32* %70, i32 %73)
  store volatile i32* %74, i32** %10, align 8
  %75 = load volatile i32*, i32** %10, align 8
  store i32* %75, i32** %20, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = call i64 @png_get_IHDR(i32* %76, i32* %77, i64* %13, i64* %14, i32* %15, i32* %16, i32* %17, i32* %18, i32* %19)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %165

80:                                               ; preds = %63
  %81 = load i32, i32* %17, align 4
  switch i32 %81, label %85 [
    i32 128, label %82
    i32 129, label %83
  ]

82:                                               ; preds = %80
  store i32 1, i32* %21, align 4
  br label %88

83:                                               ; preds = %80
  %84 = load i32, i32* @PNG_INTERLACE_ADAM7_PASSES, align 4
  store i32 %84, i32* %21, align 4
  br label %88

85:                                               ; preds = %80
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 @png_error(i32* %86, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %83, %82
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 @png_start_read_image(i32* %89)
  store i32 0, i32* %22, align 4
  br label %91

91:                                               ; preds = %157, %88
  %92 = load i32, i32* %22, align 4
  %93 = load i32, i32* %21, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %160

95:                                               ; preds = %91
  %96 = load i32, i32* %17, align 4
  %97 = icmp eq i32 %96, 129
  br i1 %97, label %98, label %113

98:                                               ; preds = %95
  %99 = load i64, i64* %13, align 8
  %100 = load i32, i32* %22, align 4
  %101 = call i64 @PNG_PASS_COLS(i64 %99, i32 %100)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %157

104:                                              ; preds = %98
  %105 = load i32, i32* %22, align 4
  %106 = call i64 @PNG_PASS_START_COL(i32 %105)
  store i64 %106, i64* %24, align 8
  %107 = load i32, i32* %22, align 4
  %108 = call i64 @PNG_PASS_START_ROW(i32 %107)
  store i64 %108, i64* %23, align 8
  %109 = load i32, i32* %22, align 4
  %110 = call i64 @PNG_PASS_COL_OFFSET(i32 %109)
  store i64 %110, i64* %26, align 8
  %111 = load i32, i32* %22, align 4
  %112 = call i64 @PNG_PASS_ROW_OFFSET(i32 %111)
  store i64 %112, i64* %25, align 8
  br label %114

113:                                              ; preds = %95
  store i64 0, i64* %24, align 8
  store i64 0, i64* %23, align 8
  store i64 1, i64* %26, align 8
  store i64 1, i64* %25, align 8
  br label %114

114:                                              ; preds = %113, %104
  %115 = load i64, i64* %23, align 8
  store i64 %115, i64* %27, align 8
  br label %116

116:                                              ; preds = %152, %114
  %117 = load i64, i64* %27, align 8
  %118 = load i64, i64* %14, align 8
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %120, label %156

120:                                              ; preds = %116
  %121 = load i32*, i32** %11, align 8
  %122 = load i32*, i32** %20, align 8
  %123 = call i32 @png_read_row(i32* %121, i32* %122, i32* null)
  %124 = load i64, i64* %8, align 8
  %125 = load i64, i64* %27, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %151

127:                                              ; preds = %120
  %128 = load i64, i64* %24, align 8
  store i64 %128, i64* %28, align 8
  store i64 0, i64* %29, align 8
  br label %129

129:                                              ; preds = %144, %127
  %130 = load i64, i64* %28, align 8
  %131 = load i64, i64* %13, align 8
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %133, label %150

133:                                              ; preds = %129
  %134 = load i64, i64* %7, align 8
  %135 = load i64, i64* %28, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = load i32*, i32** %11, align 8
  %139 = load i32*, i32** %12, align 8
  %140 = load i32*, i32** %20, align 8
  %141 = load i64, i64* %29, align 8
  %142 = call i32 @print_pixel(i32* %138, i32* %139, i32* %140, i64 %141)
  br label %161

143:                                              ; preds = %133
  br label %144

144:                                              ; preds = %143
  %145 = load i64, i64* %26, align 8
  %146 = load i64, i64* %28, align 8
  %147 = add nsw i64 %146, %145
  store i64 %147, i64* %28, align 8
  %148 = load i64, i64* %29, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %29, align 8
  br label %129

150:                                              ; preds = %129
  br label %151

151:                                              ; preds = %150, %120
  br label %152

152:                                              ; preds = %151
  %153 = load i64, i64* %25, align 8
  %154 = load i64, i64* %27, align 8
  %155 = add nsw i64 %154, %153
  store i64 %155, i64* %27, align 8
  br label %116

156:                                              ; preds = %116
  br label %157

157:                                              ; preds = %156, %103
  %158 = load i32, i32* %22, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %22, align 4
  br label %91

160:                                              ; preds = %91
  br label %161

161:                                              ; preds = %160, %137
  store volatile i32* null, i32** %10, align 8
  %162 = load i32*, i32** %11, align 8
  %163 = load i32*, i32** %20, align 8
  %164 = call i32 @png_free(i32* %162, i32* %163)
  br label %168

165:                                              ; preds = %63
  %166 = load i32*, i32** %11, align 8
  %167 = call i32 @png_error(i32* %166, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %168

168:                                              ; preds = %165, %161
  br label %178

169:                                              ; preds = %58
  %170 = load volatile i32*, i32** %10, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = load volatile i32*, i32** %10, align 8
  store i32* %173, i32** %30, align 8
  store volatile i32* null, i32** %10, align 8
  %174 = load i32*, i32** %11, align 8
  %175 = load i32*, i32** %30, align 8
  %176 = call i32 @png_free(i32* %174, i32* %175)
  br label %177

177:                                              ; preds = %172, %169
  br label %178

178:                                              ; preds = %177, %168
  %179 = load i32*, i32** %11, align 8
  %180 = call i32 @png_destroy_info_struct(i32* %179, i32** %12)
  br label %184

181:                                              ; preds = %53
  %182 = load i32, i32* @stderr, align 4
  %183 = call i32 (i32, i8*, ...) @fprintf(i32 %182, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %184

184:                                              ; preds = %181, %178
  %185 = call i32 @png_destroy_read_struct(i32** %11, i32* null, i32* null)
  br label %189

186:                                              ; preds = %48
  %187 = load i32, i32* @stderr, align 4
  %188 = call i32 (i32, i8*, ...) @fprintf(i32 %187, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %189

189:                                              ; preds = %186, %184
  br label %196

190:                                              ; preds = %33
  %191 = load i32, i32* @stderr, align 4
  %192 = load i8**, i8*** %5, align 8
  %193 = getelementptr inbounds i8*, i8** %192, i64 3
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 (i32, i8*, ...) @fprintf(i32 %191, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %194)
  br label %196

196:                                              ; preds = %190, %189
  br label %200

197:                                              ; preds = %2
  %198 = load i32, i32* @stderr, align 4
  %199 = call i32 (i32, i8*, ...) @fprintf(i32 %198, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %200

200:                                              ; preds = %197, %196
  %201 = load volatile i32, i32* %6, align 4
  ret i32 %201
}

declare dso_local i64 @atol(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32* @png_create_read_struct(i32, i32*, i32*, i32*) #1

declare dso_local i32* @png_create_info_struct(i32*) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @png_jmpbuf(i32*) #1

declare dso_local i32 @png_init_io(i32*, i32*) #1

declare dso_local i32 @png_read_info(i32*, i32*) #1

declare dso_local i32* @png_malloc(i32*, i32) #1

declare dso_local i32 @png_get_rowbytes(i32*, i32*) #1

declare dso_local i64 @png_get_IHDR(i32*, i32*, i64*, i64*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @png_error(i32*, i8*) #1

declare dso_local i32 @png_start_read_image(i32*) #1

declare dso_local i64 @PNG_PASS_COLS(i64, i32) #1

declare dso_local i64 @PNG_PASS_START_COL(i32) #1

declare dso_local i64 @PNG_PASS_START_ROW(i32) #1

declare dso_local i64 @PNG_PASS_COL_OFFSET(i32) #1

declare dso_local i64 @PNG_PASS_ROW_OFFSET(i32) #1

declare dso_local i32 @png_read_row(i32*, i32*, i32*) #1

declare dso_local i32 @print_pixel(i32*, i32*, i32*, i64) #1

declare dso_local i32 @png_free(i32*, i32*) #1

declare dso_local i32 @png_destroy_info_struct(i32*, i32**) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @png_destroy_read_struct(i32**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
