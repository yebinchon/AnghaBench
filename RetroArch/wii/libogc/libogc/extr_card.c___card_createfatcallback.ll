; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_createfatcallback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_createfatcallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32 (i64, i64)* }
%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.card_direntry = type { i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.card_dat = type { %struct.card_direntry* }

@cardmap = common dso_local global %struct.TYPE_7__* null, align 8
@card_gamecode = common dso_local global i32* null, align 8
@card_company = common dso_local global i32* null, align 8
@CARD_ATTRIB_PUBLIC = common dso_local global i32 0, align 4
@CARD_SPEED_MASK = common dso_local global i32 0, align 4
@CARD_SPEED_FAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @__card_createfatcallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__card_createfatcallback(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32 (i64, i64)*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.card_direntry*, align 8
  %9 = alloca %struct.card_dat*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 (i64, i64)* null, i32 (i64, i64)** %6, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  store %struct.card_direntry* null, %struct.card_direntry** %8, align 8
  store %struct.card_dat* null, %struct.card_dat** %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cardmap, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i64 %12
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %10, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %16 = load i32 (i64, i64)*, i32 (i64, i64)** %15, align 8
  store i32 (i64, i64)* %16, i32 (i64, i64)** %6, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  store i32 (i64, i64)* null, i32 (i64, i64)** %18, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %20 = call %struct.card_dat* @__card_getdirblock(%struct.TYPE_7__* %19)
  store %struct.card_dat* %20, %struct.card_dat** %9, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %7, align 8
  %24 = load %struct.card_dat*, %struct.card_dat** %9, align 8
  %25 = getelementptr inbounds %struct.card_dat, %struct.card_dat* %24, i32 0, i32 0
  %26 = load %struct.card_direntry*, %struct.card_direntry** %25, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %26, i64 %29
  store %struct.card_direntry* %30, %struct.card_direntry** %8, align 8
  %31 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %32 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %31, i32 0, i32 10
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memset(i32 %33, i32 0, i32 4)
  %35 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %36 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @memset(i32 %37, i32 0, i32 2)
  %39 = load i32*, i32** @card_gamecode, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 255
  br i1 %42, label %43, label %49

43:                                               ; preds = %2
  %44 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %45 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** @card_gamecode, align 8
  %48 = call i32 @memcpy(i32 %46, i32* %47, i32 4)
  br label %49

49:                                               ; preds = %43, %2
  %50 = load i32*, i32** @card_gamecode, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 255
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %56 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** @card_company, align 8
  %59 = call i32 @memcpy(i32 %57, i32* %58, i32 2)
  br label %60

60:                                               ; preds = %54, %49
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %65 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %64, i32 0, i32 8
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @CARD_ATTRIB_PUBLIC, align 4
  %67 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %68 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 8
  %69 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %70 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %69, i32 0, i32 0
  store i32 255, i32* %70, align 8
  %71 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %72 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %71, i32 0, i32 6
  store i64 0, i64* %72, align 8
  %73 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %74 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %73, i32 0, i32 1
  store i32 -1, i32* %74, align 4
  %75 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %76 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %75, i32 0, i32 5
  store i64 0, i64* %76, align 8
  %77 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %78 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %77, i32 0, i32 2
  store i32 0, i32* %78, align 8
  %79 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %80 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %79, i32 0, i32 3
  store i32 65535, i32* %80, align 4
  %81 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %82 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @CARD_SPEED_MASK, align 4
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  %87 = load i32, i32* @CARD_SPEED_FAST, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %90 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = call i32 @time(i32* null)
  %92 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %93 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  store i64 0, i64* %95, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  %101 = load i64, i64* %3, align 8
  %102 = load i32 (i64, i64)*, i32 (i64, i64)** %6, align 8
  %103 = call i64 @__card_updatedir(i64 %101, i32 (i64, i64)* %102)
  store i64 %103, i64* %5, align 8
  %104 = icmp ult i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %60
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %107 = load i64, i64* %5, align 8
  %108 = call i32 @__card_putcntrlblock(%struct.TYPE_7__* %106, i64 %107)
  %109 = load i32 (i64, i64)*, i32 (i64, i64)** %6, align 8
  %110 = icmp ne i32 (i64, i64)* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load i32 (i64, i64)*, i32 (i64, i64)** %6, align 8
  %113 = load i64, i64* %3, align 8
  %114 = load i64, i64* %5, align 8
  %115 = call i32 %112(i64 %113, i64 %114)
  br label %116

116:                                              ; preds = %111, %105
  br label %117

117:                                              ; preds = %116, %60
  ret void
}

declare dso_local %struct.card_dat* @__card_getdirblock(%struct.TYPE_7__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @__card_updatedir(i64, i32 (i64, i64)*) #1

declare dso_local i32 @__card_putcntrlblock(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
