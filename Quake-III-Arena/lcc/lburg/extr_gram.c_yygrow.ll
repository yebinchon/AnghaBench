; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/lburg/extr_gram.c_yygrow.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/lburg/extr_gram.c_yygrow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yystacksize = common dso_local global i32 0, align 4
@YYMAXSTACKSIZE = common dso_local global i32 0, align 4
@yyss = common dso_local global i16* null, align 8
@yyvs = common dso_local global i32* null, align 8
@yydebug = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @yygrow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yygrow() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i16*, align 8
  %4 = alloca i32*, align 8
  %5 = load i32, i32* @yystacksize, align 4
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* @yystacksize, align 4
  %7 = load i32, i32* @YYMAXSTACKSIZE, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %50

10:                                               ; preds = %0
  %11 = load i32, i32* @yystacksize, align 4
  %12 = add nsw i32 %11, 1
  %13 = sdiv i32 %12, 2
  %14 = load i32, i32* @yystacksize, align 4
  %15 = add nsw i32 %14, %13
  store i32 %15, i32* @yystacksize, align 4
  %16 = load i32, i32* @yystacksize, align 4
  %17 = load i32, i32* @YYMAXSTACKSIZE, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = load i32, i32* @YYMAXSTACKSIZE, align 4
  store i32 %20, i32* @yystacksize, align 4
  br label %21

21:                                               ; preds = %19, %10
  %22 = load i16*, i16** @yyss, align 8
  %23 = bitcast i16* %22 to i8*
  %24 = load i32, i32* @yystacksize, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 2
  %27 = trunc i64 %26 to i32
  %28 = call i64 @yyrealloc(i8* %23, i32 %27)
  %29 = inttoptr i64 %28 to i16*
  store i16* %29, i16** %3, align 8
  %30 = load i16*, i16** %3, align 8
  %31 = icmp eq i16* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  store i32 1, i32* %1, align 4
  br label %50

33:                                               ; preds = %21
  %34 = load i32*, i32** @yyvs, align 8
  %35 = bitcast i32* %34 to i8*
  %36 = load i32, i32* @yystacksize, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i64 @yyrealloc(i8* %35, i32 %39)
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %4, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load i16*, i16** %3, align 8
  %46 = call i32 @yyfree(i16* %45)
  store i32 1, i32* %1, align 4
  br label %50

47:                                               ; preds = %33
  %48 = load i16*, i16** %3, align 8
  store i16* %48, i16** @yyss, align 8
  %49 = load i32*, i32** %4, align 8
  store i32* %49, i32** @yyvs, align 8
  store i32 0, i32* %1, align 4
  br label %50

50:                                               ; preds = %47, %44, %32, %9
  %51 = load i32, i32* %1, align 4
  ret i32 %51
}

declare dso_local i64 @yyrealloc(i8*, i32) #1

declare dso_local i32 @yyfree(i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
