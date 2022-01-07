; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/compat/extr_compat_getopt.c_shuffle_block.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/compat/extr_compat_getopt.c_shuffle_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8**, i8**)* @shuffle_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shuffle_block(i8** %0, i8** %1, i8** %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = load i8**, i8*** %4, align 8
  %11 = ptrtoint i8** %9 to i64
  %12 = ptrtoint i8** %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @calloc(i32 %16, i32 8)
  %18 = inttoptr i64 %17 to i8**
  store i8** %18, i8*** %8, align 8
  %19 = load i8**, i8*** %8, align 8
  %20 = call i32 @retro_assert(i8** %19)
  %21 = load i8**, i8*** %8, align 8
  %22 = bitcast i8** %21 to i8*
  %23 = bitcast i8* %22 to i8**
  %24 = load i8**, i8*** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @memcpy(i8** %23, i8** %24, i32 %28)
  %30 = load i8**, i8*** %4, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = load i8**, i8*** %6, align 8
  %33 = load i8**, i8*** %5, align 8
  %34 = ptrtoint i8** %32 to i64
  %35 = ptrtoint i8** %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 8
  %38 = mul i64 %37, 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memmove(i8** %30, i8** %31, i32 %39)
  %41 = load i8**, i8*** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = sub i64 0, %43
  %45 = getelementptr inbounds i8*, i8** %41, i64 %44
  %46 = load i8**, i8*** %8, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @memcpy(i8** %45, i8** %46, i32 %50)
  %52 = load i8**, i8*** %8, align 8
  %53 = bitcast i8** %52 to i8*
  %54 = call i32 @free(i8* %53)
  ret void
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @retro_assert(i8**) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

declare dso_local i32 @memmove(i8**, i8**, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
