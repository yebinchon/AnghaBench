; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_accumcap.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_accumcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }

@.str = private unnamed_addr constant [41 x i8] c"no initial value for accumulator capture\00", align 1
@Cfunction = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"invalid (non function) capture to accumulate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @accumcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @accumcap(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %4, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 8
  %13 = call i64 @isfullcap(i32 %11)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @isclosecap(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = call i32 @pushcapture(%struct.TYPE_6__* %22)
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %15, %1
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @luaL_error(i32* %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %2, align 4
  br label %62

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %46, %28
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @isclosecap(i32 %32)
  %34 = icmp ne i64 %33, 0
  %35 = xor i1 %34, true
  br i1 %35, label %36, label %57

36:                                               ; preds = %29
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @captype(i32 %39)
  %41 = load i64, i64* @Cfunction, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @luaL_error(i32* %44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 %45, i32* %2, align 4
  br label %62

46:                                               ; preds = %36
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = call i32 @pushluaval(%struct.TYPE_6__* %47)
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @lua_insert(i32* %49, i32 -2)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = call i32 @pushallcaptures(%struct.TYPE_6__* %51, i32 0)
  store i32 %52, i32* %5, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i32 @lua_call(i32* %53, i32 %55, i32 1)
  br label %29

57:                                               ; preds = %29
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  store i32 1, i32* %2, align 4
  br label %62

62:                                               ; preds = %57, %43, %25
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @isfullcap(i32) #1

declare dso_local i64 @isclosecap(i32) #1

declare dso_local i32 @pushcapture(%struct.TYPE_6__*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i64 @captype(i32) #1

declare dso_local i32 @pushluaval(%struct.TYPE_6__*) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @pushallcaptures(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
