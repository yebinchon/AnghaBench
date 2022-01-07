; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_matchl.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_matchl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IMAXCAPTURES = common dso_local global i32 0, align 4
@SUBJIDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @matchl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matchl(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %14 = load i32, i32* @IMAXCAPTURES, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32* @getpatt(i32* %18, i32 1, i32* null)
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @SUBJIDX, align 4
  %22 = call i8* @luaL_checklstring(i32* %20, i32 %21, i64* %7)
  store i8* %22, i8** %9, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_gettop(i32* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = call i64 @luaL_optinteger(i32* %25, i32 3, i32 1)
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %1
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ule i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i64, i64* %11, align 8
  %35 = sub i64 %34, 1
  br label %38

36:                                               ; preds = %29
  %37 = load i64, i64* %7, align 8
  br label %38

38:                                               ; preds = %36, %33
  %39 = phi i64 [ %35, %33 ], [ %37, %36 ]
  br label %53

40:                                               ; preds = %1
  %41 = load i64, i64* %11, align 8
  %42 = sub nsw i64 0, %41
  %43 = load i64, i64* %7, align 8
  %44 = icmp ule i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %11, align 8
  %48 = sub nsw i64 0, %47
  %49 = sub i64 %46, %48
  br label %51

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %45
  %52 = phi i64 [ %49, %45 ], [ 0, %50 ]
  br label %53

53:                                               ; preds = %51, %38
  %54 = phi i64 [ %39, %38 ], [ %52, %51 ]
  store i64 %54, i64* %12, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @lua_pushnil(i32* %55)
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @lua_pushlightuserdata(i32* %57, i32* %17)
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @lua_getfenv(i32* %59, i32 1)
  %61 = load i32*, i32** %3, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load i64, i64* %12, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8*, i8** %9, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i8* @match(i32* %61, i8* %62, i8* %65, i8* %68, i32* %69, i32* %17, i32 %70)
  store i8* %71, i8** %6, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %53
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @lua_pushnil(i32* %75)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %83

77:                                               ; preds = %53
  %78 = load i32*, i32** %3, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @getcaptures(i32* %78, i8* %79, i8* %80, i32 %81)
  store i32 %82, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %83

83:                                               ; preds = %77, %74
  %84 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @getpatt(i32*, i32, i32*) #2

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #2

declare dso_local i32 @lua_gettop(i32*) #2

declare dso_local i64 @luaL_optinteger(i32*, i32, i32) #2

declare dso_local i32 @lua_pushnil(i32*) #2

declare dso_local i32 @lua_pushlightuserdata(i32*, i32*) #2

declare dso_local i32 @lua_getfenv(i32*, i32) #2

declare dso_local i8* @match(i32*, i8*, i8*, i8*, i32*, i32*, i32) #2

declare dso_local i32 @getcaptures(i32*, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
