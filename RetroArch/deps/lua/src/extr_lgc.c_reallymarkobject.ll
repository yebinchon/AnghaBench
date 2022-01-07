; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lgc.c_reallymarkobject.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lgc.c_reallymarkobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_25__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_24__*)* @reallymarkobject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reallymarkobject(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  br label %6

6:                                                ; preds = %61, %2
  %7 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %8 = call i32 @white2gray(%struct.TYPE_24__* %7)
  %9 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %99 [
    i32 131, label %12
    i32 133, label %24
    i32 128, label %37
    i32 134, label %64
    i32 135, label %71
    i32 130, label %78
    i32 129, label %85
    i32 132, label %92
  ]

12:                                               ; preds = %6
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %14 = call i32 @gray2black(%struct.TYPE_24__* %13)
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %16 = call %struct.TYPE_21__* @gco2ts(%struct.TYPE_24__* %15)
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sizelstring(i32 %18)
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %101

24:                                               ; preds = %6
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %26 = call i32 @gray2black(%struct.TYPE_24__* %25)
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %28 = call %struct.TYPE_21__* @gco2ts(%struct.TYPE_24__* %27)
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sizelstring(i32 %31)
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %101

37:                                               ; preds = %6
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %40 = call %struct.TYPE_25__* @gco2u(%struct.TYPE_24__* %39)
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @markobjectN(%struct.TYPE_23__* %38, i32 %42)
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %45 = call i32 @gray2black(%struct.TYPE_24__* %44)
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %47 = call %struct.TYPE_25__* @gco2u(%struct.TYPE_24__* %46)
  %48 = call i32 @sizeudata(%struct.TYPE_25__* %47)
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %57 = call %struct.TYPE_25__* @gco2u(%struct.TYPE_24__* %56)
  %58 = call i32 @getuservalue(i32 %55, %struct.TYPE_25__* %57, i32* %5)
  %59 = call i32 @valiswhite(i32* %5)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %37
  %62 = call %struct.TYPE_24__* @gcvalue(i32* %5)
  store %struct.TYPE_24__* %62, %struct.TYPE_24__** %4, align 8
  br label %6

63:                                               ; preds = %37
  br label %101

64:                                               ; preds = %6
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %66 = call i32 @gco2lcl(%struct.TYPE_24__* %65)
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @linkgclist(i32 %66, i32 %69)
  br label %101

71:                                               ; preds = %6
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %73 = call i32 @gco2ccl(%struct.TYPE_24__* %72)
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @linkgclist(i32 %73, i32 %76)
  br label %101

78:                                               ; preds = %6
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %80 = call i32 @gco2t(%struct.TYPE_24__* %79)
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @linkgclist(i32 %80, i32 %83)
  br label %101

85:                                               ; preds = %6
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %87 = call i32 @gco2th(%struct.TYPE_24__* %86)
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @linkgclist(i32 %87, i32 %90)
  br label %101

92:                                               ; preds = %6
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %94 = call i32 @gco2p(%struct.TYPE_24__* %93)
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @linkgclist(i32 %94, i32 %97)
  br label %101

99:                                               ; preds = %6
  %100 = call i32 @lua_assert(i32 0)
  br label %101

101:                                              ; preds = %99, %92, %85, %78, %71, %64, %63, %24, %12
  ret void
}

declare dso_local i32 @white2gray(%struct.TYPE_24__*) #1

declare dso_local i32 @gray2black(%struct.TYPE_24__*) #1

declare dso_local i32 @sizelstring(i32) #1

declare dso_local %struct.TYPE_21__* @gco2ts(%struct.TYPE_24__*) #1

declare dso_local i32 @markobjectN(%struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_25__* @gco2u(%struct.TYPE_24__*) #1

declare dso_local i32 @sizeudata(%struct.TYPE_25__*) #1

declare dso_local i32 @getuservalue(i32, %struct.TYPE_25__*, i32*) #1

declare dso_local i32 @valiswhite(i32*) #1

declare dso_local %struct.TYPE_24__* @gcvalue(i32*) #1

declare dso_local i32 @linkgclist(i32, i32) #1

declare dso_local i32 @gco2lcl(%struct.TYPE_24__*) #1

declare dso_local i32 @gco2ccl(%struct.TYPE_24__*) #1

declare dso_local i32 @gco2t(%struct.TYPE_24__*) #1

declare dso_local i32 @gco2th(%struct.TYPE_24__*) #1

declare dso_local i32 @gco2p(%struct.TYPE_24__*) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
