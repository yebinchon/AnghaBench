; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lstring.c_luaS_newlstr.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lstring.c_luaS_newlstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUAI_MAXSHORTLEN = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @luaS_newlstr(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @LUAI_MAXSHORTLEN, align 8
  %11 = icmp ule i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32* @internshrstr(i32* %13, i8* %14, i64 %15)
  store i32* %16, i32** %4, align 8
  br label %38

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* @MAX_SIZE, align 4
  %20 = sext i32 %19 to i64
  %21 = sub i64 %20, 4
  %22 = udiv i64 %21, 1
  %23 = icmp uge i64 %18, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @luaM_toobig(i32* %25)
  br label %27

27:                                               ; preds = %24, %17
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32* @luaS_createlngstrobj(i32* %28, i64 %29)
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @getstr(i32* %31)
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = mul i64 %34, 1
  %36 = call i32 @memcpy(i32 %32, i8* %33, i64 %35)
  %37 = load i32*, i32** %8, align 8
  store i32* %37, i32** %4, align 8
  br label %38

38:                                               ; preds = %27, %12
  %39 = load i32*, i32** %4, align 8
  ret i32* %39
}

declare dso_local i32* @internshrstr(i32*, i8*, i64) #1

declare dso_local i32 @luaM_toobig(i32*) #1

declare dso_local i32* @luaS_createlngstrobj(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @getstr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
