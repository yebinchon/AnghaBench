; ModuleID = '/home/carl/AnghaBench/brotli/c/tools/extr_brotli.c_PrintHelp.c'
source_filename = "/home/carl/AnghaBench/brotli/c/tools/extr_brotli.c_PrintHelp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.1 = private unnamed_addr constant [275 x i8] c"Options:\0A  -#                          compression level (0-9)\0A  -c, --stdout                write on standard output\0A  -d, --decompress            decompress\0A  -f, --force                 force output file overwrite\0A  -h, --help                  display this help and exit\0A\00", align 1
@.str.2 = private unnamed_addr constant [246 x i8] c"  -j, --rm                    remove source file(s)\0A  -k, --keep                  keep source file(s) (default)\0A  -n, --no-copy-stat          do not copy source file(s) attributes\0A  -o FILE, --output=FILE      output file (only if 1 input file)\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"  -q NUM, --quality=NUM       compression level (%d-%d)\0A\00", align 1
@BROTLI_MIN_QUALITY = common dso_local global i32 0, align 4
@BROTLI_MAX_QUALITY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [105 x i8] c"  -t, --test                  test compressed file integrity\0A  -v, --verbose               verbose mode\0A\00", align 1
@.str.5 = private unnamed_addr constant [192 x i8] c"  -w NUM, --lgwin=NUM         set LZ77 window size (0, %d-%d)\0A                              window size = 2**NUM - 16\0A                              0 lets compressor choose the optimal value\0A\00", align 1
@BROTLI_MIN_WINDOW_BITS = common dso_local global i32 0, align 4
@BROTLI_MAX_WINDOW_BITS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [340 x i8] c"  --large_window=NUM          use incompatible large-window brotli\0A                              bitstream with window size (0, %d-%d)\0A                              WARNING: this format is not compatible\0A                              with brotli RFC 7932 and may not be\0A                              decodable with regular brotli decoders\0A\00", align 1
@BROTLI_LARGE_MAX_WINDOW_BITS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [65 x i8] c"  -S SUF, --suffix=SUF        output file suffix (default:'%s')\0A\00", align 1
@DEFAULT_SUFFIX = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [305 x i8] c"  -V, --version               display version and exit\0A  -Z, --best                  use best compression level (11) (default)\0ASimple options could be coalesced, i.e. '-9kf' is equivalent to '-9 -k -f'.\0AWith no FILE, or when FILE is -, read standard input.\0AAll arguments after '--' are treated as files.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @PrintHelp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PrintHelp(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32*, i32** @stderr, align 8
  br label %12

10:                                               ; preds = %2
  %11 = load i32*, i32** @stdout, align 8
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32* [ %9, %8 ], [ %11, %10 ]
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 (i32*, i8*, ...) @fprintf(i32* %17, i8* getelementptr inbounds ([275 x i8], [275 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 (i32*, i8*, ...) @fprintf(i32* %19, i8* getelementptr inbounds ([246 x i8], [246 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @BROTLI_MIN_QUALITY, align 4
  %23 = load i32, i32* @BROTLI_MAX_QUALITY, align 4
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0))
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @BROTLI_MIN_WINDOW_BITS, align 4
  %29 = load i32, i32* @BROTLI_MAX_WINDOW_BITS, align 4
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([192 x i8], [192 x i8]* @.str.5, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @BROTLI_MIN_WINDOW_BITS, align 4
  %33 = load i32, i32* @BROTLI_LARGE_MAX_WINDOW_BITS, align 4
  %34 = call i32 (i32*, i8*, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([340 x i8], [340 x i8]* @.str.6, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load i8*, i8** @DEFAULT_SUFFIX, align 8
  %37 = call i32 (i32*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0), i8* %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %38, i8* getelementptr inbounds ([305 x i8], [305 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
