; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lgc.c_reallymarkobject.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lgc.c_reallymarkobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_37__ = type { %struct.TYPE_34__, i32* }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_28__ = type { i32*, i32* }
%struct.TYPE_33__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { %struct.TYPE_38__* }
%struct.TYPE_32__ = type { %struct.TYPE_38__* }
%struct.TYPE_30__ = type { %struct.TYPE_38__* }
%struct.TYPE_31__ = type { %struct.TYPE_38__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_36__*, %struct.TYPE_38__*)* @reallymarkobject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reallymarkobject(%struct.TYPE_36__* %0, %struct.TYPE_38__* %1) #0 {
  %3 = alloca %struct.TYPE_36__*, align 8
  %4 = alloca %struct.TYPE_38__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_37__*, align 8
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %3, align 8
  store %struct.TYPE_38__* %1, %struct.TYPE_38__** %4, align 8
  %7 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %8 = call i64 @iswhite(%struct.TYPE_38__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %12 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %13 = call i32 @isdead(%struct.TYPE_36__* %11, %struct.TYPE_38__* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i1 [ false, %2 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @lua_assert(i32 %18)
  %20 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %21 = call i32 @white2gray(%struct.TYPE_38__* %20)
  %22 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %107 [
    i32 132, label %26
    i32 128, label %27
    i32 129, label %47
    i32 134, label %66
    i32 131, label %77
    i32 130, label %87
    i32 133, label %97
  ]

26:                                               ; preds = %16
  br label %109

27:                                               ; preds = %16
  %28 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %29 = call %struct.TYPE_28__* @gco2u(%struct.TYPE_38__* %28)
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %5, align 8
  %32 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %33 = call i32 @gray2black(%struct.TYPE_38__* %32)
  %34 = load i32*, i32** %5, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @markobject(%struct.TYPE_36__* %37, i32* %38)
  br label %40

40:                                               ; preds = %36, %27
  %41 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %42 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %43 = call %struct.TYPE_28__* @gco2u(%struct.TYPE_38__* %42)
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @markobject(%struct.TYPE_36__* %41, i32* %45)
  br label %109

47:                                               ; preds = %16
  %48 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %49 = call %struct.TYPE_37__* @gco2uv(%struct.TYPE_38__* %48)
  store %struct.TYPE_37__* %49, %struct.TYPE_37__** %6, align 8
  %50 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %51 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @markvalue(%struct.TYPE_36__* %50, i32* %53)
  %55 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %59, i32 0, i32 0
  %61 = icmp eq i32* %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %47
  %63 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %64 = call i32 @gray2black(%struct.TYPE_38__* %63)
  br label %65

65:                                               ; preds = %62, %47
  br label %109

66:                                               ; preds = %16
  %67 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_38__*, %struct.TYPE_38__** %68, align 8
  %70 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %71 = call %struct.TYPE_33__* @gco2cl(%struct.TYPE_38__* %70)
  %72 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %72, i32 0, i32 0
  store %struct.TYPE_38__* %69, %struct.TYPE_38__** %73, align 8
  %74 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %75 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %75, i32 0, i32 0
  store %struct.TYPE_38__* %74, %struct.TYPE_38__** %76, align 8
  br label %109

77:                                               ; preds = %16
  %78 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_38__*, %struct.TYPE_38__** %79, align 8
  %81 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %82 = call %struct.TYPE_32__* @gco2h(%struct.TYPE_38__* %81)
  %83 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %82, i32 0, i32 0
  store %struct.TYPE_38__* %80, %struct.TYPE_38__** %83, align 8
  %84 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %85 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %85, i32 0, i32 0
  store %struct.TYPE_38__* %84, %struct.TYPE_38__** %86, align 8
  br label %109

87:                                               ; preds = %16
  %88 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_38__*, %struct.TYPE_38__** %89, align 8
  %91 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %92 = call %struct.TYPE_30__* @gco2th(%struct.TYPE_38__* %91)
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %92, i32 0, i32 0
  store %struct.TYPE_38__* %90, %struct.TYPE_38__** %93, align 8
  %94 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %95 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %95, i32 0, i32 0
  store %struct.TYPE_38__* %94, %struct.TYPE_38__** %96, align 8
  br label %109

97:                                               ; preds = %16
  %98 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_38__*, %struct.TYPE_38__** %99, align 8
  %101 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %102 = call %struct.TYPE_31__* @gco2p(%struct.TYPE_38__* %101)
  %103 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %102, i32 0, i32 0
  store %struct.TYPE_38__* %100, %struct.TYPE_38__** %103, align 8
  %104 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %105 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %105, i32 0, i32 0
  store %struct.TYPE_38__* %104, %struct.TYPE_38__** %106, align 8
  br label %109

107:                                              ; preds = %16
  %108 = call i32 @lua_assert(i32 0)
  br label %109

109:                                              ; preds = %26, %40, %65, %107, %97, %87, %77, %66
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @iswhite(%struct.TYPE_38__*) #1

declare dso_local i32 @isdead(%struct.TYPE_36__*, %struct.TYPE_38__*) #1

declare dso_local i32 @white2gray(%struct.TYPE_38__*) #1

declare dso_local %struct.TYPE_28__* @gco2u(%struct.TYPE_38__*) #1

declare dso_local i32 @gray2black(%struct.TYPE_38__*) #1

declare dso_local i32 @markobject(%struct.TYPE_36__*, i32*) #1

declare dso_local %struct.TYPE_37__* @gco2uv(%struct.TYPE_38__*) #1

declare dso_local i32 @markvalue(%struct.TYPE_36__*, i32*) #1

declare dso_local %struct.TYPE_33__* @gco2cl(%struct.TYPE_38__*) #1

declare dso_local %struct.TYPE_32__* @gco2h(%struct.TYPE_38__*) #1

declare dso_local %struct.TYPE_30__* @gco2th(%struct.TYPE_38__*) #1

declare dso_local %struct.TYPE_31__* @gco2p(%struct.TYPE_38__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
