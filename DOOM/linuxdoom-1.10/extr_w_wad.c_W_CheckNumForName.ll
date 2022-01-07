; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_w_wad.c_W_CheckNumForName.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_w_wad.c_W_CheckNumForName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%union.anon = type { [2 x i32], [4 x i8] }

@lumpinfo = common dso_local global %struct.TYPE_3__* null, align 8
@numlumps = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @W_CheckNumForName(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %union.anon, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %3, align 8
  %8 = bitcast %union.anon* %4 to [9 x i8]*
  %9 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strncpy(i8* %9, i8* %10, i32 8)
  %12 = bitcast %union.anon* %4 to [9 x i8]*
  %13 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 8
  store i8 0, i8* %13, align 4
  %14 = bitcast %union.anon* %4 to [9 x i8]*
  %15 = getelementptr inbounds [9 x i8], [9 x i8]* %14, i64 0, i64 0
  %16 = call i32 @strupr(i8* %15)
  %17 = bitcast %union.anon* %4 to [2 x i32]*
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = bitcast %union.anon* %4 to [2 x i32]*
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lumpinfo, align 8
  %24 = load i32, i32* @numlumps, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %7, align 8
  br label %27

27:                                               ; preds = %55, %1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 -1
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %7, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lumpinfo, align 8
  %31 = icmp ne %struct.TYPE_3__* %28, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %27
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %32
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lumpinfo, align 8
  %50 = ptrtoint %struct.TYPE_3__* %48 to i64
  %51 = ptrtoint %struct.TYPE_3__* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %2, align 4
  br label %57

55:                                               ; preds = %39, %32
  br label %27

56:                                               ; preds = %27
  store i32 -1, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %47
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strupr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
