; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_crc32-lua.c_crc32_string.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_crc32-lua.c_crc32_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"string:%s, length:%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"crc key:%ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crc32_string(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i8* @luaL_checklstring(i32* %6, i32 1, i64* %3)
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i32 (i8*, ...) @g_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %8, i64 %9)
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @crc32(i8* %11, i64 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (i8*, ...) @g_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @lua_pushnumber(i32* %16, i32 %17)
  ret i32 1
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @g_debug(i8*, ...) #1

declare dso_local i32 @crc32(i8*, i64) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
