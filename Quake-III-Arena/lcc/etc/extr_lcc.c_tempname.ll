; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_lcc.c_tempname.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_lcc.c_tempname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tempname.n = internal global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s/lcc%d%d%s\00", align 1
@tempdir = common dso_local global i32 0, align 4
@com = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"win32\00", align 1
@rmlist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tempname(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @tempdir, align 4
  %5 = call i32 (...) @getpid()
  %6 = load i32, i32* @tempname.n, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @tempname.n, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = call i8* @stringf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %5, i32 %6, i8* %8)
  store i8* %9, i8** %3, align 8
  %10 = load i32*, i32** @com, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32* @strstr(i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i8* @replace(i8* %16, i8 signext 47, i8 signext 92)
  store i8* %17, i8** %3, align 8
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* @rmlist, align 4
  %21 = call i32 @append(i8* %19, i32 %20)
  store i32 %21, i32* @rmlist, align 4
  %22 = load i8*, i8** %3, align 8
  ret i8* %22
}

declare dso_local i8* @stringf(i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32* @strstr(i32, i8*) #1

declare dso_local i8* @replace(i8*, i8 signext, i8 signext) #1

declare dso_local i32 @append(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
