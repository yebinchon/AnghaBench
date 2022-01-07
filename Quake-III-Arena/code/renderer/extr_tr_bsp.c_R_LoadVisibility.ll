; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_bsp.c_R_LoadVisibility.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_bsp.c_R_LoadVisibility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i8*, i32* }
%struct.TYPE_9__ = type { i32* (i32, i32)* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32 }

@s_worldData = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ri = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@h_low = common dso_local global i32 0, align 4
@fileBase = common dso_local global i32* null, align 8
@tr = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @R_LoadVisibility to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @R_LoadVisibility(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_worldData, i32 0, i32 0), align 8
  %7 = add nsw i32 %6, 63
  %8 = and i32 %7, -64
  store i32 %8, i32* %3, align 4
  %9 = load i32* (i32, i32)*, i32* (i32, i32)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @h_low, align 4
  %12 = call i32* %9(i32 %10, i32 %11)
  store i32* %12, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_worldData, i32 0, i32 3), align 8
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_worldData, i32 0, i32 3), align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @Com_Memset(i32* %13, i32 255, i32 %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %55

22:                                               ; preds = %1
  %23 = load i32*, i32** @fileBase, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @LittleLong(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_worldData, i32 0, i32 0), align 8
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @LittleLong(i32 %36)
  store i8* %37, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_worldData, i32 0, i32 2), align 8
  %38 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0), align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %22
  %41 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0), align 8
  store i32* %41, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_worldData, i32 0, i32 1), align 8
  br label %55

42:                                               ; preds = %22
  %43 = load i32* (i32, i32)*, i32* (i32, i32)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %44 = load i32, i32* %3, align 4
  %45 = sub nsw i32 %44, 8
  %46 = load i32, i32* @h_low, align 4
  %47 = call i32* %43(i32 %45, i32 %46)
  store i32* %47, i32** %5, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 8
  %51 = load i32, i32* %3, align 4
  %52 = sub nsw i32 %51, 8
  %53 = call i32 @Com_Memcpy(i32* %48, i32* %50, i32 %52)
  %54 = load i32*, i32** %5, align 8
  store i32* %54, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_worldData, i32 0, i32 1), align 8
  br label %55

55:                                               ; preds = %21, %42, %40
  ret void
}

declare dso_local i32 @Com_Memset(i32*, i32, i32) #1

declare dso_local i8* @LittleLong(i32) #1

declare dso_local i32 @Com_Memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
