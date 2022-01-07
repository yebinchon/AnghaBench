; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/gregbook/extr_writepng.c_writepng_version_info.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/gregbook/extr_writepng.c_writepng_version_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"   Compiled with libpng %s; using libpng %s.\0A\00", align 1
@PNG_LIBPNG_VER_STRING = common dso_local global i8* null, align 8
@png_libpng_ver = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"   Compiled with zlib %s; using zlib %s.\0A\00", align 1
@ZLIB_VERSION = common dso_local global i8* null, align 8
@zlib_version = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @writepng_version_info() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load i8*, i8** @PNG_LIBPNG_VER_STRING, align 8
  %3 = load i8*, i8** @png_libpng_ver, align 8
  %4 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %2, i8* %3)
  %5 = load i32, i32* @stderr, align 4
  %6 = load i8*, i8** @ZLIB_VERSION, align 8
  %7 = load i8*, i8** @zlib_version, align 8
  %8 = call i32 @fprintf(i32 %5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %6, i8* %7)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
