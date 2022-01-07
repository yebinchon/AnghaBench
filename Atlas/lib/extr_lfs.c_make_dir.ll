; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lfs.c_make_dir.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lfs.c_make_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @make_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_dir(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i8* @luaL_checkstring(i32* %7, i32 1)
  store i8* %8, i8** %4, align 8
  %9 = call i8* @umask(i8* null)
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @S_IRUSR, align 4
  %12 = load i32, i32* @S_IWUSR, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @S_IXUSR, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @S_IRGRP, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @S_IWGRP, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @S_IXGRP, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @S_IROTH, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @S_IXOTH, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @mkdir(i8* %10, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @lua_pushnil(i32* %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 @strerror(i32 %33)
  %35 = call i32 @lua_pushfstring(i32* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 2, i32* %2, align 4
  br label %41

36:                                               ; preds = %1
  %37 = load i8*, i8** %6, align 8
  %38 = call i8* @umask(i8* %37)
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @lua_pushboolean(i32* %39, i32 1)
  store i32 1, i32* %2, align 4
  br label %41

41:                                               ; preds = %36, %29
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i8* @umask(i8*) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
