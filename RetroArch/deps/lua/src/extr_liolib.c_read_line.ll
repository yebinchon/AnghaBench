; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_liolib.c_read_line.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_liolib.c_read_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@LUAL_BUFFERSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @read_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_line(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @luaL_buffinit(i32* %11, i32* %7)
  br label %13

13:                                               ; preds = %48, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @EOF, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 10
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi i1 [ false, %13 ], [ %19, %17 ]
  br i1 %21, label %22, label %53

22:                                               ; preds = %20
  %23 = call i8* @luaL_prepbuffer(i32* %7)
  store i8* %23, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @l_lockfile(i32* %24)
  br label %26

26:                                               ; preds = %40, %22
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @LUAL_BUFFERSIZE, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @l_getc(i32* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @EOF, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 10
  br label %38

38:                                               ; preds = %35, %30, %26
  %39 = phi i1 [ false, %30 ], [ false, %26 ], [ %37, %35 ]
  br i1 %39, label %40, label %48

40:                                               ; preds = %38
  %41 = load i32, i32* %8, align 4
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  store i8 %42, i8* %47, align 1
  br label %26

48:                                               ; preds = %38
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @l_unlockfile(i32* %49)
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @luaL_addsize(i32* %7, i32 %51)
  br label %13

53:                                               ; preds = %20
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 10
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @luaL_addchar(i32* %7, i32 %60)
  br label %62

62:                                               ; preds = %59, %56, %53
  %63 = call i32 @luaL_pushresult(i32* %7)
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 10
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32*, i32** %4, align 8
  %68 = call i64 @lua_rawlen(i32* %67, i32 -1)
  %69 = icmp sgt i64 %68, 0
  br label %70

70:                                               ; preds = %66, %62
  %71 = phi i1 [ true, %62 ], [ %69, %66 ]
  %72 = zext i1 %71 to i32
  ret i32 %72
}

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i8* @luaL_prepbuffer(i32*) #1

declare dso_local i32 @l_lockfile(i32*) #1

declare dso_local i32 @l_getc(i32*) #1

declare dso_local i32 @l_unlockfile(i32*) #1

declare dso_local i32 @luaL_addsize(i32*, i32) #1

declare dso_local i32 @luaL_addchar(i32*, i32) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

declare dso_local i64 @lua_rawlen(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
