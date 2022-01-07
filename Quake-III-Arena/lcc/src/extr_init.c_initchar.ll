; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_init.c_initchar.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_init.c_initchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 (i32, i8*)* }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@inttype = common dso_local global %struct.TYPE_8__* null, align 8
@IR = common dso_local global %struct.TYPE_10__* null, align 8
@t = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @initchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initchar(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [16 x i8], align 16
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  store i8* %8, i8** %7, align 8
  br label %9

9:                                                ; preds = %50, %2
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.TYPE_9__* @initvalue(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = trunc i32 %15 to i8
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %7, align 8
  store i8 %16, i8* %17, align 1
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @inttype, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = srem i32 %20, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %9
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** @IR, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32 (i32, i8*)*, i32 (i32, i8*)** %28, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @inttype, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %34 = call i32 %29(i32 %32, i8* %33)
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  store i8* %35, i8** %7, align 8
  br label %36

36:                                               ; preds = %26, %9
  %37 = load i32, i32* %3, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39, %36
  %44 = load i8, i8* @t, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 44
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %39
  br label %54

48:                                               ; preds = %43
  %49 = call signext i8 (...) @gettok()
  store i8 %49, i8* @t, align 1
  br label %50

50:                                               ; preds = %48
  %51 = load i8, i8* @t, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 125
  br i1 %53, label %9, label %54

54:                                               ; preds = %50, %47
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %57 = icmp ugt i8* %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** @IR, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32 (i32, i8*)*, i32 (i32, i8*)** %60, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %69 = call i32 %61(i32 %67, i8* %68)
  br label %70

70:                                               ; preds = %58, %54
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_9__* @initvalue(i32) #1

declare dso_local signext i8 @gettok(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
